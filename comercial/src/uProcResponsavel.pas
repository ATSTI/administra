unit uProcResponsavel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls, Buttons,
  Grids, DBGrids, ExtCtrls, MMJPanel, Menus;

type
  TfProcResponsavel = class(TForm)
    Label1: TLabel;
    MMJPanel1: TMMJPanel;
    DBGrid1: TDBGrid;
    MMJPanel3: TMMJPanel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    DBGrid2: TDBGrid;
    Edit1: TEdit;
    Label2: TLabel;
    sdsResponsavel: TSQLDataSet;
    sdsResponsavelCOD_RESPONSAVEL: TIntegerField;
    sdsResponsavelRESPONSAVEL: TStringField;
    sdsResponsavelENDERECO: TStringField;
    sdsResponsavelBAIRRO: TStringField;
    sdsResponsavelCEP: TStringField;
    sdsResponsavelCIDADE: TStringField;
    sdsResponsavelUF: TStringField;
    sdsResponsavelTIPO_RESPONSAVEL: TStringField;
    sdsResponsavelCPF: TStringField;
    sdsResponsavelRG: TStringField;
    sdsResponsavelTELEFONE: TStringField;
    sdsResponsavelTELEFONE1: TStringField;
    sdsResponsavelEMAIL: TStringField;
    sdsResponsavelLOCALTRABALHO: TStringField;
    sdsResponsavelCAIXAPOSTAL: TStringField;
    sdsResponsavelTELEFONE_COMERCIAL: TStringField;
    dspResponsavel: TDataSetProvider;
    cdsResponsavel: TClientDataSet;
    cdsResponsavelCOD_RESPONSAVEL: TIntegerField;
    cdsResponsavelRESPONSAVEL: TStringField;
    cdsResponsavelENDERECO: TStringField;
    cdsResponsavelBAIRRO: TStringField;
    cdsResponsavelCEP: TStringField;
    cdsResponsavelCIDADE: TStringField;
    cdsResponsavelUF: TStringField;
    cdsResponsavelTIPO_RESPONSAVEL: TStringField;
    cdsResponsavelCPF: TStringField;
    cdsResponsavelRG: TStringField;
    cdsResponsavelTELEFONE: TStringField;
    cdsResponsavelTELEFONE1: TStringField;
    cdsResponsavelEMAIL: TStringField;
    cdsResponsavelLOCALTRABALHO: TStringField;
    cdsResponsavelCAIXAPOSTAL: TStringField;
    cdsResponsavelTELEFONE_COMERCIAL: TStringField;
    DataSource1: TDataSource;
    cdsAlu: TClientDataSet;
    dspAlu: TDataSetProvider;
    DataSource2: TDataSource;
    sdsAlu: TSQLDataSet;
    cdsAluNOMECLIENTE: TStringField;
    cdsAluRA: TStringField;
    cdsAluSERIE: TStringField;
    sdsAluNOMECLIENTE: TStringField;
    sdsAluRA: TStringField;
    sdsAluSERIE: TStringField;
    btnIncluir: TBitBtn;
    BitBtn1: TBitBtn;
    PopupMenu1: TPopupMenu;
    Procurar1: TMenuItem;
    Incuir1: TMenuItem;
    Gravar1: TMenuItem;
    Sair1: TMenuItem;
    Label3: TLabel;
    Label4: TLabel;
    procedure BitBtn5Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure btnIncluirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fProcResponsavel: TfProcResponsavel;

implementation

uses UDm, uResponsalvel;

{$R *.dfm}

procedure TfProcResponsavel.BitBtn5Click(Sender: TObject);
var
  sql_texto, varCondicao :string;
begin
  if (cdsResponsavel.Active) then
     cdsResponsavel.Close;
  cdsResponsavel.CommandText := '';
  sql_texto := 'select * from RESPONSAVEL';
  //********************************************************************************************
  if Edit1.Text <> '' then
     varCondicao := ' where UDF_COLLATEBR(RESPONSAVEL) containing ' + '''' + Edit1.Text + ''''
  else
     varCondicao := '';
  //********************************************************************************************
  cdsResponsavel.CommandText := sql_texto + varCondicao;
  cdsResponsavel.Open;
end;

procedure TfProcResponsavel.DBGrid1DblClick(Sender: TObject);
begin
  if (cdsAlu.Active) then
    cdsAlu.Close;
  cdsAlu.Params[0].AsInteger := cdsResponsavelCOD_RESPONSAVEL.AsInteger;
  cdsAlu.Open;  
end;

procedure TfProcResponsavel.DBGrid1TitleClick(Column: TColumn);
begin
    cdsResponsavel.IndexFieldNames := Column.FieldName;
end;

procedure TfProcResponsavel.btnIncluirClick(Sender: TObject);
begin
  fResponsalvel := TfResponsalvel.Create(Application);
  try
    fResponsalvel.ShowModal;
  finally
    fResponsalvel.Free;
  end;    
end;

procedure TfProcResponsavel.BitBtn1Click(Sender: TObject);
begin
   if dm.cds_aluno.State in [dsBrowse] then
     dm.cds_aluno.Edit;
   dm.cds_alunoCODRESPONSAVEL.AsInteger := cdsResponsavelCOD_RESPONSAVEL.AsInteger;
   dm.cds_aluno.ApplyUpdates(0);
   close;
end;

procedure TfProcResponsavel.BitBtn6Click(Sender: TObject);
begin
  close;
end;

end.
