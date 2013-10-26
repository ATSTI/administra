unit uFamilia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  DBCtrls, Grids, DBGrids, Mask, JvExStdCtrls, JvCombobox,
  JvDBSearchComboBox, JvExControls, JvLabel;

type
  TfFamilia = class(TfPai)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label4: TLabel;
    dsMarca: TDataSource;
    JvLabel1: TJvLabel;
    btnConfirma: TBitBtn;
    edMarca: TEdit;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cbMarcaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFamilia: TfFamilia;
  origem_abriu: String;  

implementation

uses uComercial, UDm, sCtrlResize;

{$R *.dfm}

procedure TfFamilia.btnIncluirClick(Sender: TObject);
begin
  inherited;
   DBEdit1.SetFocus;
end;

procedure TfFamilia.btnGravarClick(Sender: TObject);
begin
  //dm.cds_familiaMARCA.AsString := cbMarca.Text;
  inherited;
  btnIncluir.SetFocus;
end;

procedure TfFamilia.FormCreate(Sender: TObject);
begin
  //inherited;
  {if DM.cds_familia.Active then
    DM.cds_familia.Close;
  dm.cds_Familia.CommandText := 'select * from FAMILIAPRODUTOS';
  DM.cds_familia.Open; }
end;

procedure TfFamilia.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure TfFamilia.BitBtn1Click(Sender: TObject);
//var sqlFam: string;
begin
  inherited;
  {if (cbMarca.Text = '') then
  begin
    if DM.cds_familia.Active then
      DM.cds_familia.Close;
    sqlFam := dm.sds_familia.CommandText;
    dm.cds_Familia.CommandText := 'select * from FAMILIAPRODUTOS';
    DM.cds_familia.Open;
  end
  else
  begin
    if DM.cds_familia.Active then
      DM.cds_familia.Close;
    sqlFam := dm.sds_familia.CommandText;
    dm.cds_Familia.CommandText := 'select * from FAMILIAPRODUTOS ' +
      'where MARCA = ' + QuotedStr(cbMarca.Text);
    DM.cds_familia.Open;
  end; }

end;

procedure TfFamilia.cbMarcaChange(Sender: TObject);
begin
  inherited;
  if (DtSrc.State in [dsBrowse, dsInactive]) then
    DtSrc.DataSet.Edit;
end;

procedure TfFamilia.FormShow(Sender: TObject);
begin
  //inherited;
  if(not DM.cds_familia.Active) then
    DM.cds_familia.Open;
  sCtrlResize.CtrlResize(TForm(fFamilia));
end;

procedure TfFamilia.btnConfirmaClick(Sender: TObject);
begin
  if origem_abriu = 'planocontas' then
    exit;
  if dm.cds_produto.State = dsbrowse then
    dm.cds_produto.Edit;
  if ( not DM.cds_familiaDESCFAMILIA.IsNull) then
    dm.cds_produtoFAMILIA.AsString :=  DM.cds_familiaDESCFAMILIA.AsString;
  btnSair.Click;
end;

end.
