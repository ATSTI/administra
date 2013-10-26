unit uListaAlunos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, MMJPanel, FMTBcd, StdCtrls, Buttons, SqlExpr,
  Provider, DB, DBClient, Grids, DBGrids, XPMenu;

type
  TfListaAlunos = class(TForm)
    MMJPanel1: TMMJPanel;
    MMJPanel2: TMMJPanel;
    dsUniaoClasseAluno: TDataSource;
    XPMenu1: TXPMenu;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    cdsAlunoClasse: TClientDataSet;
    cdsAlunoClasseRA: TStringField;
    cdsAlunoClasseNOME: TStringField;
    cdsAlunoClasseNUMERO: TSmallintField;
    cdsAlunoClasseSERIE: TStringField;
    cdsAlunoClasseSITUACAOESCOLAR: TStringField;
    cdsAlunoClasseDATANASCIMENTO: TSQLTimeStampField;
    cdsAlunoClasseLANCADOCLASSE: TSmallintField;
    dspAlunoClasse: TDataSetProvider;
    sdsAlunoClasse: TSQLDataSet;
    sdsAlunoClasseRA: TStringField;
    sdsAlunoClasseNOME: TStringField;
    sdsAlunoClasseNUMERO: TSmallintField;
    sdsAlunoClasseSERIE: TStringField;
    sdsAlunoClasseSITUACAOESCOLAR: TStringField;
    sdsAlunoClasseDATANASCIMENTO: TSQLTimeStampField;
    sdsAlunoClasseLANCADOCLASSE: TSmallintField;
    BotaoContinuar: TBitBtn;
    lblSerie: TLabel;
    BitBtn3: TBitBtn;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fListaAlunos: TfListaAlunos;

implementation

uses UDm;

{$R *.dfm}

procedure TfListaAlunos.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then
     begin
       Close;
     end;
end;

procedure TfListaAlunos.DBGrid1TitleClick(Column: TColumn);
begin
   cdsAlunoClasse.IndexFieldNames := column.FieldName;
end;

procedure TfListaAlunos.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

end.
