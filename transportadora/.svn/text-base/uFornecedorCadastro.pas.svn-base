unit uFornecedorCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  FMTBcd, DBClient, Provider, SqlExpr, DBCtrls, Mask, rpcompobase,
  rpvclreport;

type
  TfFornecedorCadastro = class(TfPai)
    sds_fornecedor: TSQLDataSet;
    sds_fornecedorCODFORNECEDOR: TIntegerField;
    sds_fornecedorNOMEFORNECEDOR: TStringField;
    sds_fornecedorRAZAOSOCIAL: TStringField;
    sds_fornecedorCONTATO: TStringField;
    sds_fornecedorTIPOFIRMA: TSmallintField;
    sds_fornecedorCPF: TStringField;
    sds_fornecedorCNPJ: TStringField;
    sds_fornecedorINSCESTADUAL: TStringField;
    sds_fornecedorRG: TStringField;
    sds_fornecedorSEGMENTO: TSmallintField;
    sds_fornecedorREGIAO: TSmallintField;
    sds_fornecedorLIMITECREDITO: TFloatField;
    sds_fornecedorDATACADASTRO: TDateField;
    sds_fornecedorCODUSUARIO: TIntegerField;
    sds_fornecedorSTATUS: TSmallintField;
    sds_fornecedorHOMEPAGE: TStringField;
    sds_fornecedorPRAZOPAGAMENTO: TSmallintField;
    sds_fornecedorPRAZOENTREGA: TSmallintField;
    dsp_fornecedor: TDataSetProvider;
    cds_fornecedor: TClientDataSet;
    cds_fornecedorCODFORNECEDOR: TIntegerField;
    cds_fornecedorNOMEFORNECEDOR: TStringField;
    cds_fornecedorRAZAOSOCIAL: TStringField;
    cds_fornecedorCONTATO: TStringField;
    cds_fornecedorTIPOFIRMA: TSmallintField;
    cds_fornecedorCPF: TStringField;
    cds_fornecedorCNPJ: TStringField;
    cds_fornecedorINSCESTADUAL: TStringField;
    cds_fornecedorRG: TStringField;
    cds_fornecedorSEGMENTO: TSmallintField;
    cds_fornecedorREGIAO: TSmallintField;
    cds_fornecedorLIMITECREDITO: TFloatField;
    cds_fornecedorDATACADASTRO: TDateField;
    cds_fornecedorCODUSUARIO: TIntegerField;
    cds_fornecedorSTATUS: TSmallintField;
    cds_fornecedorHOMEPAGE: TStringField;
    cds_fornecedorPRAZOPAGAMENTO: TSmallintField;
    cds_fornecedorPRAZOENTREGA: TSmallintField;
    DBText1: TDBText;
    DBText2: TDBText;
    sds_fornecedorCONTA_FORNECEDOR: TStringField;
    cds_fornecedorCONTA_FORNECEDOR: TStringField;
    Ficha1: TMenuItem;
    VCLReport1: TVCLReport;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    Label6: TLabel;
    dbeCNPJ: TDBEdit;
    SpeedButton2: TSpeedButton;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    dtsrce: TDataSource;
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
    dsp_endfor: TDataSetProvider;
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
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBRadioGroup2: TDBRadioGroup;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    GroupBox1: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBComboBox1: TDBComboBox;
    ComboBox1: TComboBox;
    Label27: TLabel;
    BitBtn2: TBitBtn;
    DBRadioGroup3: TDBRadioGroup;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DBRadioGroup1Click(Sender: TObject);
    procedure Ficha1Click(Sender: TObject);
    procedure dtsrceStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFornecedorCadastro: TfFornecedorCadastro;
  vartipo: integer;

implementation

uses UDm, uProcurar;

{$R *.dfm}

procedure TfFornecedorCadastro.btnIncluirClick(Sender: TObject);
begin
  inherited;

  if cds_endfor.Active then
     cds_endfor.Close;
  cds_endfor.Params[0].Clear;

  ComboBox1.Text := '';
  if (vartipo = 0) then
  begin
    cds_fornecedorCNPJ.EditMask := '000.000.000-00;1;_';
    cds_fornecedorTIPOFIRMA.AsInteger := 0;
  end
  else
  begin
    cds_fornecedorCNPJ.EditMask := '00.000.000/0000-00;1;_';
    cds_fornecedorTIPOFIRMA.AsInteger := 1;
  end;

  if not cds_endfor.Active then
     cds_endfor.open;
  cds_endfor.Append;
  cds_endforUF.AsString := 'SP';
  cds_endforTELEFONE.EditMask := '0000\-0099;1;_';
  cds_endforTELEFONE1.EditMask := '0000\-0099;1;_';
  cds_endforTELEFONE2.EditMask := '0000\-0099;1;_';
  cds_endforFAX.EditMask := '0000\-0099;1;_';

  cds_FoRNECEDORSEGMENTO.Value:=1;
  cds_FoRNECEDORREGIAO.Value:=1;
  cds_FoRNECEDORCODUSUARIO.Value:=1;
  cds_FoRNECEDORSTATUS.Value:=1;
  cds_FoRNECEDORDATACADASTRO.Value:=Date;

  dbEdit2.SetFocus;
end;

procedure TfFornecedorCadastro.btnGravarClick(Sender: TObject);
begin
  if DtSrc.DataSet.State in [dsInsert] then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_FOR, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_fornecedorCODFORNECEDOR.AsInteger := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;

    if (cds_fornecedorTIPOFIRMA.AsInteger <> 0) or (cds_fornecedorTIPOFIRMA.AsInteger <> 1)  then
    begin
       cds_fornecedorTIPOFIRMA.AsInteger := DBRadioGroup1.ItemIndex;
       vartipo := DBRadioGroup1.ItemIndex;
    end;
  end;
  if (dtsrce.State in [dsInsert]) then
  begin
    // Endereço
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_FOR_END, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_endforCODENDERECO.AsInteger := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
    cds_endforCODFORNECEDOR.AsInteger :=  cds_fornecedorCODFORNECEDOR.AsInteger;
    cds_endforTIPOEND.AsInteger := 0;
  end;
  if DtSrc.DataSet.State in [dsInsert, dsEdit] then
  begin
    if (ComboBox1.Text <> '') then
    begin
      dm.cds_ccusto.Locate('NOME', ComboBox1.Text, [loCaseInsensitive]);
      cds_fornecedorCONTA_FORNECEDOR.AsString := dm.cds_ccustoCONTA.AsString;
    end;
    if ((CheckBox1.Checked) and (CheckBox2.Checked)) then
      cds_fornecedorSEGMENTO.AsInteger := 1
    else if ((CheckBox1.Checked) and (CheckBox2.Checked = False)) then
      cds_fornecedorSEGMENTO.AsInteger := 2
    else
      cds_fornecedorSEGMENTO.AsInteger := 3;
  end;
  try
    DtSrce.DataSet.Post;
    (DtSrce.DataSet as TClientDataset).ApplyUpdates(0);
  except
    MessageDlg('Erro ao gravar o Endereço !', mterror,[mbOk],0);
  end;

  inherited;
end;

procedure TfFornecedorCadastro.FormShow(Sender: TObject);
begin
  inherited;
  vartipo := 1;
 if varForm1 <> 'compra' then
  btnIncluir.SetFocus;
end;

procedure TfFornecedorCadastro.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  if (dtsrc.State in [dsEdit]) then
    if (dtsrce.State in [dsBrowse, dsInactive]) then
      dtsrce.DataSet.Edit;
  inherited;

end;

procedure TfFornecedorCadastro.btnProcurarClick(Sender: TObject);
begin
  inherited;
  fProcurar:= TfProcurar.Create(self,dm.scds_forn_proc);
  try
    fProcurar.btnImprimir.Visible := true;
    fProcurar.RadioGroup1.Visible := true;
    dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
    fProcurar.BtnProcurar.Click;
    fProcurar.EvDBFind1.DataField := 'NOMEFORNECEDOR';
    fProcurar.ShowModal;
    if cds_fornecedor.Active then
     cds_fornecedor.Close;
    cds_fornecedor.Params[0].AsInteger := dm.scds_forn_procCODFORNECEDOR.AsInteger;
    cds_fornecedor.Open;
    if cds_fornecedorTIPOFIRMA.AsInteger = 0 then
     cds_FORNECEDORCNPJ.EditMask := '000.000.000-00;1;_'
    else
     cds_FORNECEDORCNPJ.EditMask := '00.000.000/0000-00;1;_';
    if (not cds_fornecedorCONTA_FORNECEDOR.IsNull) then
    begin
     if (dm.cds_ccusto.Locate('CONTA', cds_fornecedorCONTA_FORNECEDOR.AsString, [loCaseInsensitive])) then
        ComboBox1.Text := dm.cds_ccustoNOME.AsString
     else
        ComboBox1.Text := '';
    end;
    if (cds_fornecedorSEGMENTO.AsInteger = 1) then
    begin
      CheckBox1.Checked := True;
      CheckBox2.Checked := True;
    end
    else if (cds_fornecedorSEGMENTO.AsInteger = 2) then
    begin
      CheckBox1.Checked := True;
      CheckBox2.Checked := False;
    end
    else if (cds_fornecedorSEGMENTO.AsInteger = 3) then
    begin
      CheckBox2.Checked := True;
      CheckBox1.Checked := False;
    end;

    //Endereço
  if (cds_endfor.Active) then
     cds_endfor.Close;
  cds_endfor.Params[0].AsInteger := cds_fornecedorCODFORNECEDOR.AsInteger;
  cds_endfor.Open;
  if (cds_endfor.IsEmpty) then
    dtsrce.DataSet.Append;
  finally
    dm.scds_forn_proc.Close;
    fProcurar.Free;
  end;
end;

procedure TfFornecedorCadastro.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  if DtSrc.State=dsInsert then
  cds_fornecedorRAZAOSOCIAL.AsString := cds_fornecedorNOMEFORNECEDOR.AsString;
end;

procedure TfFornecedorCadastro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (dm.scds_forn_proc.Active) then
    dm.scds_forn_proc.Close;
  dm.scds_forn_proc.Params[0].clear;
  dm.scds_forn_proc.Params[1].clear;
  dm.scds_forn_proc.Params[2].asInteger := cds_fornecedorCODFORNECEDOR.AsInteger;
  dm.scds_forn_proc.Open;
  inherited;
  dm.cds_ccusto.close;
end;

procedure TfFornecedorCadastro.FormCreate(Sender: TObject);
begin
  inherited;
  //Vejo quais são as contas de Receitas para listar no lookupcombobox.
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTRORECEITA';
  dm.cds_parametro.Open;
  if (dm.cds_ccusto.Active) then
    dm.cds_ccusto.Close;
  dm.cds_ccusto.Params[0].AsString := dm.cds_parametroDADOS.AsString;
  dm.cds_ccusto.Open;
  dm.cds_ccusto.First;
  while not dm.cds_ccusto.Eof do
  begin
    ComboBox1.Items.Add(dm.cds_ccustoNOME.AsString);
    dm.cds_ccusto.Next;
  end;
end;

procedure TfFornecedorCadastro.ComboBox1Change(Sender: TObject);
begin
  inherited;
  if (DtSrc.State in [dsBrowse, dsInactive]) then
    DtSrc.Edit;
end;

procedure TfFornecedorCadastro.DBRadioGroup1Click(Sender: TObject);
begin
  inherited;
  if (dbRadioGroup1.ItemIndex = 0) then
  begin
    cds_FORNECEDORCNPJ.EditMask := '000.000.000-00;1;_';
    cds_fornecedorTIPOFIRMA.AsInteger := 0;
  end
  else begin
    cds_FORNECEDORCNPJ.EditMask := '00.000.000/0000-00;1;_';
    cds_fornecedorTIPOFIRMA.AsInteger := 1;
  end;
end;

procedure TfFornecedorCadastro.Ficha1Click(Sender: TObject);
begin
  inherited;
  if (cds_fornecedor.State in [dsBrowse]) then
  begin
    VCLReport1.Filename := str_relatorio + 'fichafornecedor.rep';
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport1.Report.Params.ParamByName('COD').Value := cds_fornecedorCODFORNECEDOR.AsInteger;
    VCLReport1.Execute;
  end;
end;

procedure TfFornecedorCadastro.dtsrceStateChange(Sender: TObject);
begin
  inherited;
  if (dtsrce.State in [dsEdit, dsInsert]) then
   if (dtsrc.State in [dsBrowse, dsInactive]) then
     dtsrc.DataSet.Edit;
end;

end.
