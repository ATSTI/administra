unit uFornecedorEndereco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DBCtrls, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, FMTBcd, Mask, DBClient, Provider, SqlExpr;

type
  TfFornecedorEndereco = class(TfPai)
    DBText1: TDBText;
    DBText2: TDBText;
    sds_endfor: TSQLDataSet;
    sds_endforCODENDERECO: TIntegerField;
    sds_endforCODFORNECEDOR: TIntegerField;
    sds_endforLOGRADOURO: TStringField;
    sds_endforBAIRRO: TStringField;
    sds_endforCOMPLEMENTO: TStringField;
    sds_endforCIDADE: TStringField;
    sds_endforUF: TStringField;
    sds_endforCEP: TStringField;
    sds_endforDDD: TSmallintField;
    sds_endforTELEFONE: TStringField;
    sds_endforTELEFONE1: TStringField;
    sds_endforTELEFONE2: TStringField;
    sds_endforFAX: TStringField;
    sds_endforE_MAIL: TStringField;
    sds_endforRAMAL: TStringField;
    sds_endforTIPOEND: TSmallintField;
    sds_endforDADOSADICIONAIS: TStringField;
    dsp_endfor: TDataSetProvider;
    cds_endfor: TClientDataSet;
    cds_endforCODENDERECO: TIntegerField;
    cds_endforCODFORNECEDOR: TIntegerField;
    cds_endforLOGRADOURO: TStringField;
    cds_endforBAIRRO: TStringField;
    cds_endforCOMPLEMENTO: TStringField;
    cds_endforCIDADE: TStringField;
    cds_endforUF: TStringField;
    cds_endforCEP: TStringField;
    cds_endforDDD: TSmallintField;
    cds_endforTELEFONE: TStringField;
    cds_endforTELEFONE1: TStringField;
    cds_endforTELEFONE2: TStringField;
    cds_endforFAX: TStringField;
    cds_endforE_MAIL: TStringField;
    cds_endforRAMAL: TStringField;
    cds_endforTIPOEND: TSmallintField;
    cds_endforDADOSADICIONAIS: TStringField;
    Label4: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    GroupBox1: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBComboBox1: TDBComboBox;
    procedure cds_endforNewRecord(DataSet: TDataSet);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFornecedorEndereco: TfFornecedorEndereco;

implementation

uses uComercial, UDm, uFornecedorCadastro;

{$R *.dfm}

procedure TfFornecedorEndereco.cds_endforNewRecord(DataSet: TDataSet);
begin
  inherited;
  cds_endforCODFORNECEDOR.AsInteger :=  fFornecedorCadastro.cds_fornecedorCODFORNECEDOR.AsInteger;
  cds_endforTIPOEND.AsInteger := 0;
end;

procedure TfFornecedorEndereco.btnIncluirClick(Sender: TObject);
begin
  inherited;
 cds_endforTELEFONE.EditMask := '0000\-0099;1;_';
 cds_endforTELEFONE1.EditMask := '0000\-0099;1;_';
 cds_endforTELEFONE2.EditMask := '0000\-0099;1;_';
 cds_endforFAX.EditMask := '0000\-0099;1;_';
 DBEdit2.SetFocus;
end;

procedure TfFornecedorEndereco.btnGravarClick(Sender: TObject);
begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_FOR_END, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_endforCODENDERECO.AsInteger := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
  inherited;

end;

procedure TfFornecedorEndereco.FormShow(Sender: TObject);
begin
  inherited;
  if cds_endfor.Active then
     cds_endfor.Close;
  cds_endfor.Params[0].AsInteger := fFornecedorCadastro.cds_fornecedorCODFORNECEDOR.AsInteger;
  cds_endfor.Open;
  btnIncluir.SetFocus;
end;

procedure TfFornecedorEndereco.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

end.
