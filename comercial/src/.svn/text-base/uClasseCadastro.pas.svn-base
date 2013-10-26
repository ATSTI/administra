unit uClasseCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, FMTBcd, Grids, DBGrids, DBClient, Provider, Mask, DBCtrls,
  SqlExpr;

type
  TfClasseCadastro = class(TfPai_new)
    DataSource1: TDataSource;
    dsMaterias: TDataSource;
    sds: TSQLDataSet;
    dblSerie: TDBLookupComboBox;
    DBEditSerieLetra: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    dsp: TDataSetProvider;
    TableMaterias_proc: TClientDataSet;
    TableMaterias_procMATERIAS: TStringField;
    TableMaterias_procTIPOENSINO: TStringField;
    TableMaterias_procIDMATERIAS: TIntegerField;
    sdsMATERIAS: TStringField;
    sdsTIPOENSINO: TStringField;
    sdsIDMATERIAS: TIntegerField;
    DBGridSeries: TDBGrid;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    DBTextDestaque: TDBText;
    DBText1: TDBText;
    procedure dblSerieClick(Sender: TObject);
    procedure DBEditSerieLetraExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fClasseCadastro: TfClasseCadastro;

implementation

uses UDm;

{$R *.dfm}

procedure TfClasseCadastro.dblSerieClick(Sender: TObject);
begin
  inherited;
  if dtsrc.State in [dsEdit] then
  if  MessageDlg('Deseja alterar esta Classe/Turma : ''' + dm.TableSeriesSERIELETRA.AsSTring + '''',
    mtConfirmation, [mbYes, mbNo],1) = mrNo then
  begin
      dm.TableSeries.Cancel;
      exit;
  end;
    if TableMaterias_proc.Active then
       TableMaterias_proc.Close;
    TableMaterias_proc.Params[0].AsString := dm.TableTipoSerieTIPOENSINO.AsString;
    TableMaterias_proc.Open;
    dm.TableSeriesTIPOENSINO.AsString := dm.TableTipoSerieTIPOENSINO.AsString;
end;

procedure TfClasseCadastro.DBEditSerieLetraExit(Sender: TObject);
begin
  inherited;
  if dtSrc.State in [dsInsert] then
     dbedit1.Text := dbeditSerieLetra.Text;
end;

procedure TfClasseCadastro.FormShow(Sender: TObject);
begin
  inherited;
  DataSource1.DataSet.Open;
  if not Dtsrc.DataSet.Active then
         Dtsrc.DataSet.Open;
  if TableMaterias_proc.Active then
     TableMaterias_proc.Close;
  TableMaterias_proc.Params[0].AsString := dm.TableSeriesTIPOENSINO.AsString;
  TableMaterias_proc.Open;
end;

procedure TfClasseCadastro.btnIncluirClick(Sender: TObject);
begin
  inherited;
  dblSerie.SetFocus;
end;

procedure TfClasseCadastro.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if not dm.TableSeries.Active then
         dm.TableSeries.Open;
  if TableMaterias_proc.Active then
     TableMaterias_proc.Close;
  TableMaterias_proc.Params[0].AsString := dm.TableSeriesTIPOENSINO.AsString;
  TableMaterias_proc.Open;
end;

end.
