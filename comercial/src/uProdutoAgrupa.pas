unit uProdutoAgrupa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ComCtrls, JvExComCtrls,
  JvProgressBar, ExtCtrls, MMJPanel, FMTBcd, DB, DBClient, Provider,
  SqlExpr, Grids, DBGrids;

type
  TfProdutoAgrupa = class(TForm)
    Label1: TLabel;
    Label10: TLabel;
    SpeedButton2: TBitBtn;
    Label11: TLabel;
    SpeedButton3: TBitBtn;
    edGrupo: TEdit;
    edSubgrupo: TEdit;
    MMJPanel2: TMMJPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGrid1: TDBGrid;
    sds_familia: TSQLDataSet;
    sds_familiaDESCFAMILIA: TStringField;
    sds_familiaCOD_FAMILIA: TIntegerField;
    dsp_familia: TDataSetProvider;
    cds_familia: TClientDataSet;
    cds_familiaDESCFAMILIA: TStringField;
    cds_familiaCOD_FAMILIA: TIntegerField;
    DataSource1: TDataSource;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    cdsSub: TClientDataSet;
    cdsSubDESCCATEGORIA: TStringField;
    cdsSubCOD_CATEGORIA: TIntegerField;
    cdsSubCOD_FAMILIA: TIntegerField;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    procedure abreSubGrupo;
    { Private declarations }
  public
    grupoAgrupa: String;
    subAgrupa: String;
    { Public declarations }
  end;

var
  fProdutoAgrupa: TfProdutoAgrupa;

implementation

uses uFamilia, uCategoria, UDm;

{$R *.dfm}

procedure TfProdutoAgrupa.SpeedButton2Click(Sender: TObject);
begin
  fFamilia := TfFamilia.Create(Application);
  try
    fFamilia.origem_abriu := 'agrupamento';
    fFamilia.ShowModal;
    edGrupo.Text := fFamilia.origem_abriu;
    abreSubGrupo;
  finally
    fFamilia.Free;
  end;
end;

procedure TfProdutoAgrupa.SpeedButton3Click(Sender: TObject);
begin
  fCategoria := TfCategoria.Create(Application);
  try
    if (fCategoria.cds_familia.Active) then
      fCategoria.cds_familia.Close;
    if (edGrupo.Text <> '') then
    begin
      fCategoria.cds_Familia.CommandText := 'select * from FAMILIAPRODUTOS ' +
        'where DESCFAMILIA = ' + QuotedStr(edGrupo.Text);

    end
    else begin
      fCategoria.cds_Familia.CommandText := 'select * from FAMILIAPRODUTOS';
    end;
    fCategoria.cds_familia.Open;
    if DM.cds_categoria.Active then
      DM.cds_categoria.Close;
    DM.cds_categoria.Params[0].Clear;
    DM.cds_categoria.Params[1].Clear;
    DM.cds_categoria.Params[2].asInteger := fCategoria.cds_familiaCOD_FAMILIA.AsInteger;
    DM.cds_categoria.Open;
    fCategoria.ComboBox1.Text := edGrupo.Text;
    fCategoria.ShowModal;
    edSubGrupo.Text := fCategoria.origem_a_cat;
  finally
    fCategoria.Free;
  end;
end;

procedure TfProdutoAgrupa.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfProdutoAgrupa.BitBtn1Click(Sender: TObject);
begin
  if MessageDlg('Atualizar o GRUPO e o SUBGRUPO de Todos os Itens da Lista ?',mtConfirmation,
              [mbYes,mbNo],0) = mrYes then
  begin
    grupoAgrupa := edGrupo.Text;
    subAgrupa :=  edSubgrupo.Text;
    close;
  end;  
end;

procedure TfProdutoAgrupa.FormShow(Sender: TObject);
begin
  grupoAgrupa := '';
  subAgrupa := '';
end;

procedure TfProdutoAgrupa.edGrupoKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    key:= #0;
    SelectNext((Sender as TwinControl),True,True);
    if (edGrupo.Text <> '') then
      abreSubGrupo;
  end;
end;

procedure TfProdutoAgrupa.DBGrid1CellClick(Column: TColumn);
begin
  edSubgrupo.Text := cdsSubDESCCATEGORIA.asString;
end;

procedure TfProdutoAgrupa.abreSubGrupo;
begin
  if (cdsSub.Active) then
    cdsSub.Close;
  cdsSub.CommandText := ''+
    ' SELECT cp.COD_CATEGORIA, cp.COD_FAMILIA, cp.DESCCATEGORIA, ' +
    ' CASE UDF_ISDIGIT(cp.DESCCATEGORIA) when 1 then (UDF_RIGHT(cp.DESCCATEGORIA, UDF_LEN(cp.DESCCATEGORIA)-9)) ' +
    ' when 0 then cp.DESCCATEGORIA end ' +
    '  FROM CATEGORIAPRODUTO cp ' ;
    //,  FAMILIAPRODUTOS fp ' +
    //' WHERE (cp.COD_FAMILIA = fp.COD_FAMILIA) ' +
    //'   AND fp.DESCFAMILIA = ' + QuotedStr(edGrupo.Text);
  cdsSub.Open;

end;

end.
