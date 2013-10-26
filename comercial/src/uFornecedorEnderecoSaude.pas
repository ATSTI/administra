unit uFornecedorEnderecoSaude;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, FMTBcd, Mask, DBClient, Provider, SqlExpr, DBLocal, DBLocalS,
  uPai;

type
  TfFornecedorEnderecoSaude = class(TfPai)
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
    BitBtn1: TBitBtn;
    procIBGE: TSQLClientDataSet;
    procIBGENM_MUNICIPIO: TStringField;
    procIBGECD_IBGE: TStringField;
    procIBGECD_UF: TStringField;
    procTLog: TSQLClientDataSet;
    BitBtn2: TBitBtn;
    procTLogCD_TIPO_LOGRADOURO: TStringField;
    procTLogDS_TIPO_LOGRADOURO: TStringField;
    procIBGENM_LOCALIDADE: TStringField;
    procedure cds_endforNewRecord(DataSet: TDataSet);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFornecedorEnderecoSaude: TfFornecedorEnderecoSaude;

implementation

uses uComercial, UDm, uFornecedorCadastroSaude, uProcurar;

{$R *.dfm}

procedure TfFornecedorEnderecoSaude.cds_endforNewRecord(DataSet: TDataSet);
begin
  inherited;
  cds_endforCODFORNECEDOR.AsInteger :=  fFornecedorCadastroSaude.cds_fornecedorCODFORNECEDOR.AsInteger;
  cds_endforTIPOEND.AsInteger := 0;
end;

procedure TfFornecedorEnderecoSaude.btnIncluirClick(Sender: TObject);
begin
  inherited;
 cds_endforTELEFONE.EditMask := '0000\-0099;1;_';
 cds_endforTELEFONE1.EditMask := '0000\-0099;1;_';
 cds_endforTELEFONE2.EditMask := '0000\-0099;1;_';
 cds_endforFAX.EditMask := '0000\-0099;1;_';
 DBEdit2.SetFocus;
end;

procedure TfFornecedorEnderecoSaude.btnGravarClick(Sender: TObject);
begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_FOR_END, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_endforCODENDERECO.AsInteger := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
    cds_endforUF.Text := DBComboBox1.Text;
  inherited;

end;

procedure TfFornecedorEnderecoSaude.FormShow(Sender: TObject);
begin
  inherited;
  if cds_endfor.Active then
     cds_endfor.Close;
  cds_endfor.Params[0].AsInteger := fFornecedorCadastroSaude.cds_fornecedorCODFORNECEDOR.AsInteger;
  cds_endfor.Open;
  btnIncluir.SetFocus;
end;

procedure TfFornecedorEnderecoSaude.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure TfFornecedorEnderecoSaude.BitBtn1Click(Sender: TObject);
begin
  inherited;
  fProcurar:= TfProcurar.Create(self,procIBGE);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NM_MUNICIPIO';
   if fProcurar.ShowModal=mrOk then
   begin
     if(DtSrc.State in [dsbrowse,dsinactive]) then
       cds_endfor.Edit;
     DBEdit4.Text := procIBGENM_MUNICIPIO.AsString;
     DBComboBox1.Text := procIBGECD_UF.AsString;
     DBEdit14.Text := procIBGECD_IBGE.AsString;

   end;
   finally
    procIBGE.Close;
    fProcurar.Free;
   end;
end;

procedure TfFornecedorEnderecoSaude.BitBtn2Click(Sender: TObject);
begin
  inherited;
  fProcurar:= TfProcurar.Create(self,procTLog);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'DS_TIPO_LOGRADOURO';
   if fProcurar.ShowModal=mrOk then
   begin
     if(DtSrc.State in [dsbrowse,dsinactive]) then
       cds_endfor.Edit;
     DBEdit1.Text := procTLogDS_TIPO_LOGRADOURO.AsString;
   end;
   finally
    procTLog.Close;
    fProcurar.Free;
   end;
end;

end.
