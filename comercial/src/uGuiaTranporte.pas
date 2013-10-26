unit uGuiaTranporte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, SqlExpr, Provider, DB, DBClient, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, StdCtrls, Buttons, DBCtrls, JvExStdCtrls,
  JvGroupBox, Mask, ExtCtrls, MMJPanel, dbxpress, DBLocal, DBLocalS, Menus;

type
  TfGuiaTranporte = class(TForm)
    ds: TDataSource;
    cds: TClientDataSet;
    cdsNOTASERIE: TStringField;
    cdsDTAEMISSAO: TDateField;
    cdsDTASAIDA: TDateField;
    cdsUF: TStringField;
    cdsNUMNF: TIntegerField;
    cdsNOTAFISCAL: TIntegerField;
    cdsVALOR_TOTAL_NOTA: TFloatField;
    cdsCODCLIENTE: TIntegerField;
    cdsCLIFOR: TStringField;
    cdsNATUREZA: TSmallintField;
    cdsIMPRESSA: TStringField;
    cdsSELECIONOU: TStringField;
    dsp: TDataSetProvider;
    sds: TSQLDataSet;
    sdsSELECIONOU: TStringField;
    sdsNOTASERIE: TStringField;
    sdsDTAEMISSAO: TDateField;
    sdsDTASAIDA: TDateField;
    sdsUF: TStringField;
    sdsNUMNF: TIntegerField;
    sdsNOTAFISCAL: TIntegerField;
    sdsVALOR_TOTAL_NOTA: TFloatField;
    sdsCODCLIENTE: TIntegerField;
    sdsCLIFOR: TStringField;
    sdsNATUREZA: TSmallintField;
    sdsIMPRESSA: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    JvGroupBox1: TJvGroupBox;
    JvGroupBox2: TJvGroupBox;
    JvGroupBox3: TJvGroupBox;
    JvGroupBox4: TJvGroupBox;
    JvGroupBox30: TJvGroupBox;
    DBEdit20: TDBEdit;
    JvGroupBox31: TJvGroupBox;
    DBEdit21: TDBEdit;
    JvGroupBox34: TJvGroupBox;
    DBEdit24: TDBEdit;
    JvGroupBox6: TJvGroupBox;
    DBEdit4: TDBEdit;
    JvGroupBox7: TJvGroupBox;
    DBEdit5: TDBEdit;
    JvGroupBox8: TJvGroupBox;
    DBEdit6: TDBEdit;
    JvGroupBox9: TJvGroupBox;
    DBEdit7: TDBEdit;
    JvGroupBox10: TJvGroupBox;
    DBEdit8: TDBEdit;
    JvGroupBox11: TJvGroupBox;
    DBEdit9: TDBEdit;
    JvGroupBox12: TJvGroupBox;
    DBEdit10: TDBEdit;
    JvGroupBox13: TJvGroupBox;
    DBEdit11: TDBEdit;
    JvGroupBox14: TJvGroupBox;
    DBEdit12: TDBEdit;
    JvGroupBox15: TJvGroupBox;
    DBEdit13: TDBEdit;
    JvGroupBox16: TJvGroupBox;
    DBEdit14: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit15: TDBEdit;
    Label6: TLabel;
    DBEdit16: TDBEdit;
    sGuia: TSQLDataSet;
    sGuiaID_GUIA: TIntegerField;
    sGuiaCONHECIMENTO: TIntegerField;
    sGuiaNATOP: TStringField;
    sGuiaCODIGO: TStringField;
    sGuiaEMISSAOLOCAL: TStringField;
    sGuiaCOD_CLIENTE: TIntegerField;
    sGuiaCOD_CONSIGNATARIO: TIntegerField;
    sGuiaCOD_REDESPACHO: TIntegerField;
    sGuiaPAGO: TStringField;
    sGuiaAPAGAR: TStringField;
    sGuiaID_TRANSPORTADORA: TIntegerField;
    sGuiaBASECALCULO: TFloatField;
    sGuiaALIQUOTA: TFloatField;
    sGuiaICMS: TFloatField;
    sGuiaFRETEPESOVOLUME: TStringField;
    sGuiaFRETEVALOR: TFloatField;
    sGuiaCADSCE: TStringField;
    sGuiaDESPACHO: TStringField;
    sGuiaPEDAGIO: TFloatField;
    sGuiaOUTROES: TFloatField;
    sGuiaTOTALPRESTACAO: TFloatField;
    sGuiaCOLETA: TStringField;
    sGuiaENTREGA: TStringField;
    sGuiaOBS: TStringField;
    sGuiaDATA: TDateField;
    pGuia: TDataSetProvider;
    cGuia: TClientDataSet;
    cGuiaID_GUIA: TIntegerField;
    cGuiaCONHECIMENTO: TIntegerField;
    cGuiaNATOP: TStringField;
    cGuiaCODIGO: TStringField;
    cGuiaEMISSAOLOCAL: TStringField;
    cGuiaCOD_CLIENTE: TIntegerField;
    cGuiaCOD_CONSIGNATARIO: TIntegerField;
    cGuiaCOD_REDESPACHO: TIntegerField;
    cGuiaPAGO: TStringField;
    cGuiaAPAGAR: TStringField;
    cGuiaID_TRANSPORTADORA: TIntegerField;
    cGuiaBASECALCULO: TFloatField;
    cGuiaALIQUOTA: TFloatField;
    cGuiaICMS: TFloatField;
    cGuiaFRETEPESOVOLUME: TStringField;
    cGuiaFRETEVALOR: TFloatField;
    cGuiaCADSCE: TStringField;
    cGuiaDESPACHO: TStringField;
    cGuiaPEDAGIO: TFloatField;
    cGuiaOUTROES: TFloatField;
    cGuiaTOTALPRESTACAO: TFloatField;
    cGuiaCOLETA: TStringField;
    cGuiaENTREGA: TStringField;
    cGuiaOBS: TStringField;
    cGuiaDATA: TDateField;
    DtSrc: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBEdit22: TDBEdit;
    BitBtn3: TBitBtn;
    DBEdit25: TDBEdit;
    BitBtn4: TBitBtn;
    dbeCliente: TDBEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    MMJPanel2: TMMJPanel;
    btnGravar: TBitBtn;
    btnIncluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    btnProcurar: TBitBtn;
    btnSair: TBitBtn;
    sGuiaCODTRANSP: TIntegerField;
    sGuiaUF_VEICULO_TRANSP: TStringField;
    cGuiaCODTRANSP: TIntegerField;
    cGuiaUF_VEICULO_TRANSP: TStringField;
    BitBtn5: TBitBtn;
    sdsID_GUIA: TIntegerField;
    cdsID_GUIA: TIntegerField;
    sGuiaNOTAFISCAL: TIntegerField;
    sGuiaVALOR_PROD1: TFloatField;
    sGuiaQUANTIDADE1: TFloatField;
    sGuiaUN1: TStringField;
    sGuiaDESCPRODUTO1: TStringField;
    sGuiaNOTAFISCAL2: TIntegerField;
    sGuiaVALOR_PROD2: TFloatField;
    sGuiaQUANTIDADE2: TFloatField;
    sGuiaUN2: TStringField;
    sGuiaDESCPRODUTO2: TStringField;
    No: TDBEdit;
    Label7: TLabel;
    cGuiaNOTAFISCAL: TIntegerField;
    cGuiaVALOR_PROD1: TFloatField;
    cGuiaQUANTIDADE1: TFloatField;
    cGuiaUN1: TStringField;
    cGuiaDESCPRODUTO1: TStringField;
    cGuiaNOTAFISCAL2: TIntegerField;
    cGuiaVALOR_PROD2: TFloatField;
    cGuiaQUANTIDADE2: TFloatField;
    cGuiaUN2: TStringField;
    cGuiaDESCPRODUTO2: TStringField;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit23: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit26: TDBEdit;
    DBEdit30: TDBEdit;
    sdsDESCPRODUTO: TStringField;
    sdsSUM: TFloatField;
    sdsUN: TStringField;
    cdsDESCPRODUTO: TStringField;
    cdsSUM: TFloatField;
    cdsUN: TStringField;
    sdsPRECO: TFloatField;
    cdsPRECO: TFloatField;
    DBEdit31: TDBEdit;
    Label8: TLabel;
    cGuiaTotal: TFloatField;
    DBEdit32: TDBEdit;
    cGuiaTotal2: TFloatField;
    Label9: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    JvGroupBox5: TJvGroupBox;
    DBEdit34: TDBEdit;
    BitBtn6: TBitBtn;
    Edit1: TEdit;
    sGuiaCOD_REMETENTE: TIntegerField;
    cGuiaCOD_REMETENTE: TIntegerField;
    proc_guia: TSQLClientDataSet;
    proc_guiaID_GUIA: TIntegerField;
    proc_guiaCONHECIMENTO: TIntegerField;
    proc_guiaNOTAFISCAL: TIntegerField;
    proc_guiaNOMECLIENTE: TStringField;
    procClientes: TSQLDataSet;
    procClientesNOMECLIENTE: TStringField;
    procClientesRAZAOSOCIAL: TStringField;
    PopupMenu1: TPopupMenu;
    Incluir1: TMenuItem;
    Gravar1: TMenuItem;
    Excluir1: TMenuItem;
    Cancelar1: TMenuItem;
    Sair1: TMenuItem;
    Procurar1: TMenuItem;
    procCFOP: TSQLClientDataSet;
    procCFOPCFCOD: TStringField;
    procCFOPCFNOME: TStringField;
    btnProdutoProcura: TBitBtn;
    DBEdit35: TDBEdit;
    Label20: TLabel;
    sGuiaUF_TRANSP: TStringField;
    sGuiaTOTAL: TFloatField;
    sGuiaTOTAL2: TFloatField;
    cGuiaUF_TRANSP: TStringField;
    cGuiaCIDADE_TRANSP: TStringField;
    cGuiaPLACA: TStringField;
    CheckBox2: TCheckBox;
    CheckBox1: TCheckBox;
    sGuiaCIDADE_TRANSP: TStringField;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure cGuiaCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NoExit(Sender: TObject);
    procedure dbeClienteExit(Sender: TObject);
    procedure DBEdit22Exit(Sender: TObject);
    procedure DBEdit25Exit(Sender: TObject);
    procedure DBEdit34Change(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);

  private
    { Private declarations }
    procedure geradespesa;
    procedure gerareceita;
  public
    { Public declarations }
  end;

var
  fGuiaTranporte: TfGuiaTranporte;

implementation

uses UDm, uProcurar_nf, UDMNF, uProcurar, sCtrlResize;

{$R *.dfm}

procedure TfGuiaTranporte.BitBtn2Click(Sender: TObject);
begin
  fProcurar_nf := TfProcurar_nf.Create(self,dmnf.scds_cli_proc);
  fProcurar_nf.BtnProcurar.Click;
  fProcurar_nf.EvDBFind1.DataField := 'NOMECLIENTE';
  fProcurar_nf.btnIncluir.Visible := True;
  try
    if (fProcurar_nf.ShowModal = mrOK) then
      if dmnf.scds_cli_procSTATUS.AsInteger = 2 then
      begin
        MessageDlg('Cliente com status "INATIVO" para efetuar uma venda para '+#13+#10+'esse cliente, antes vc terá que mudar seu status para "ATIVO".', mtError, [mbOK], 0);
        exit;
        //dbeCliente.SetFocus;
      end;
    cGuiaCOD_CLIENTE.AsInteger := dmnf.scds_cli_procCODCLIENTE.AsInteger;
    Edit2.Text := dmnf.scds_cli_procNOMECLIENTE.AsString;
  finally
   dmnf.scds_cli_proc.Close;
   fProcurar_nf.Free;
  end;
end;

procedure TfGuiaTranporte.BitBtn3Click(Sender: TObject);
begin
  fProcurar_nf := TfProcurar_nf.Create(self,dmnf.scds_cli_proc);
  fProcurar_nf.BtnProcurar.Click;
  fProcurar_nf.EvDBFind1.DataField := 'NOMECLIENTE';
  fProcurar_nf.btnIncluir.Visible := True;
  try
    if (fProcurar_nf.ShowModal = mrOK) then
      if dmnf.scds_cli_procSTATUS.AsInteger = 2 then
      begin
        MessageDlg('Cliente com status "INATIVO" para efetuar uma venda para '+#13+#10+'esse cliente, antes vc terá que mudar seu status para "ATIVO".', mtError, [mbOK], 0);
        exit;
        //dbeCliente.SetFocus;
      end;
    cGuiaCOD_CONSIGNATARIO.AsInteger := dmnf.scds_cli_procCODCLIENTE.AsInteger;
    Edit3.Text := dmnf.scds_cli_procNOMECLIENTE.AsString;
  finally
   dmnf.scds_cli_proc.Close;
   fProcurar_nf.Free;
  end;
end;

procedure TfGuiaTranporte.BitBtn4Click(Sender: TObject);
begin
  fProcurar_nf := TfProcurar_nf.Create(self,dmnf.scds_cli_proc);
  fProcurar_nf.BtnProcurar.Click;
  fProcurar_nf.EvDBFind1.DataField := 'NOMECLIENTE';
  fProcurar_nf.btnIncluir.Visible := True;
  try
    if (fProcurar_nf.ShowModal = mrOK) then
      if dmnf.scds_cli_procSTATUS.AsInteger = 2 then
      begin
        MessageDlg('Cliente com status "INATIVO" para efetuar uma venda para '+#13+#10+'esse cliente, antes vc terá que mudar seu status para "ATIVO".', mtError, [mbOK], 0);
        exit;
        //dbeCliente.SetFocus;
      end;
    cGuiaCOD_REDESPACHO.AsInteger := dmnf.scds_cli_procCODCLIENTE.AsInteger;
    Edit4.Text := dmnf.scds_cli_procNOMECLIENTE.AsString;
  finally
   dmnf.scds_cli_proc.Close;
   fProcurar_nf.Free;
  end;
end;

procedure TfGuiaTranporte.DtSrcStateChange(Sender: TObject);
begin
  btnIncluir.Enabled:=DtSrc.State in [dsBrowse,dsInactive];
  btnGravar.Enabled:=DtSrc.State in [dsInsert,dsEdit];
  btnCancelar.Enabled:=DtSrc.State in [dsInsert,dsEdit];
  btnExcluir.Enabled:=DtSrc.State in [dsBrowse];
  //btnProcurar.Enabled:=DtSrc.State in [dsBrowse,dsInactive];
  btnSair.Enabled:=DtSrc.State in [dsBrowse,dsInactive];
  if DtSrc.State in [dsInsert, dsEdit] then
  begin
    btnIncluir.Visible := False;
    btnexcluir.Visible := False;
    btngravar.Visible := True;
    btnCancelar.Visible := True;
  end;

  if DtSrc.State in [dsBrowse,dsInactive] then
  begin
    btnIncluir.Visible := True;
    btnexcluir.Visible := True;
    btngravar.Visible := False;
    btnCancelar.Visible := False;
  end;
end;

procedure TfGuiaTranporte.btnIncluirClick(Sender: TObject);
begin
 if btnIncluir.Enabled = false then Exit;
  if not cGuia.Active then
    cGuia.open;
  cGuia.Append;
  cGuiaNOTAFISCAL.AsInteger := cdsNOTAFISCAL.AsInteger;
  cGuiaQUANTIDADE1.AsFloat := cdsSUM.AsFloat;
  cGuiaUN1.AsString := cdsUN.AsString;
  cGuiaDESCPRODUTO1.AsString := cdsDESCPRODUTO.AsString;
  cGuiaVALOR_PROD1.AsFloat := cdsPRECO.AsFloat;
  cGuiaDATA.AsDateTime := cdsDTAEMISSAO.AsDateTime;
end;

procedure TfGuiaTranporte.btnGravarClick(Sender: TObject);
var var_sqla : string;
    TD: TTransactionDesc;
    idGuia : Integer;
begin
    if(Edit1.Text = '')then
    begin
      MessageDlg('O Campo Remetente precisa ter um valor.', mtWarning, [mbOK], 0);
      exit;
    end;
    if(Edit2.Text = '')then
    begin
      MessageDlg('O Campo Destinatario precisa ter um valor.', mtWarning, [mbOK], 0);
      exit;
    end;
    if(DBEdit20.Text = '')then
    begin
      MessageDlg('O Campo Placa precisa ter um valor.', mtWarning, [mbOK], 0);
      exit;
    end;
    if(DBEdit21.Text = '')then
    begin
      MessageDlg('O Campo UF precisa ter um valor.', mtWarning, [mbOK], 0);
      exit;
    end;
    if(DBEdit24.Text = '')then
    begin
      MessageDlg('O Campo Município precisa ter um valor.', mtWarning, [mbOK], 0);
      exit;
    end;

     if dm.c_6_genid.Active then
       dm.c_6_genid.Close;
     dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_GUIA, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
     dm.c_6_genid.Open;
     cGuiaID_GUIA.AsInteger := dm.c_6_genidCODIGO.AsInteger;
     idGuia := dm.c_6_genidCODIGO.AsInteger;
     dm.c_6_genid.Close;

     var_sqla := 'UPDATE NOTAFISCAL SET ID_GUIA = ' + IntToStr(cGuiaID_GUIA.AsInteger) +
                ' where NUMNF = ' + IntToStr(cdsNUMNF.AsInteger);

     if(CheckBox1.Checked)then
       cGuiaPAGO.asString := 'X'
     else
       cGuiaPAGO.asString := '';


     if(CheckBox2.Checked)then
       cGuiaAPAGAR.asString := 'X'
     else
       cGuiaAPAGAR.asString := '';

     dm.sqlsisAdimin.StartTransaction(TD);
     dm.sqlsisAdimin.ExecuteDirect(var_sqla);
     Try
        dm.sqlsisAdimin.Commit(TD);
     except
        dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
        MessageDlg('Erro no sistema, a NF não foi Atualizada.', mtError,
            [mbOk], 0);
     end;
     cGuia.ApplyUpdates(0);
     geradespesa;
     gerareceita;
     cGuia.Close;
     cGuia.Params[0].AsInteger := idGuia;
     cGuia.Open;

end;

procedure TfGuiaTranporte.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     DtSrc.DataSet.Delete;
     (DtSrc.DataSet as TClientDataSet).ApplyUpdates(0);
  end
  else
    exit;
end;

procedure TfGuiaTranporte.btnCancelarClick(Sender: TObject);
begin
  DtSrc.DataSet.Cancel;
end;

procedure TfGuiaTranporte.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfGuiaTranporte.FormKeyPress(Sender: TObject; var Key: Char);
begin
 {** quando clicar enter ele entende que é o tab}
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfGuiaTranporte.FormShow(Sender: TObject);
begin
  sCtrlResize.CtrlResize(TForm(fGuiaTranporte));
  
  if (not cds.Active) then
    cds.Open;
  if(cGuia.Active)then
    cGuia.Close;
  cGuia.Params[0].AsInteger := cdsID_GUIA.AsInteger;
  cGuia.Open;
  if (not cGuia.IsEmpty) then
  begin
     if (procClientes.Active) then
        procClientes.Close;
     procClientes.Params[0].AsInteger := cGuiaCOD_CLIENTE.AsInteger;
     procClientes.Open;
     Edit2.Text := procClientesNOMECLIENTE.AsString;

     procClientes.Close;
     procClientes.Params[0].AsInteger := cGuiaCOD_REDESPACHO.AsInteger;
     procClientes.Open;
     if (DBEdit25.Text <> '') then
       Edit4.Text := procClientesNOMECLIENTE.AsString;

     procClientes.Close;
     procClientes.Params[0].AsInteger := cGuiaCOD_REMETENTE.AsInteger;
     procClientes.Open;
     if (DBEdit34.Text <> '') then
       Edit1.Text := procClientesNOMECLIENTE.AsString;
     procClientes.Close;

     procClientes.Close;
     procClientes.Params[0].AsInteger := cGuiaCOD_CONSIGNATARIO.AsInteger;
     procClientes.Open;
     if (DBEdit22.Text <> '') then
       Edit3.Text := procClientesNOMECLIENTE.AsString;
     procClientes.Close;

  end;

end;

procedure TfGuiaTranporte.BitBtn1Click(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,dm.scds_transp_proc);
  try
  fProcurar.btnIncluir.Visible := False;
  fProcurar.BtnProcurar.Click;
  fProcurar.EvDBFind1.DataField := 'NOMETRANSP';
  if fProcurar.ShowModal=mrOk then
  begin
    if dtSrc.State=dsBrowse then
      cGuia.Edit;
    cGuiaCODTRANSP.AsInteger := dm.scds_transp_procCODTRANSP.AsInteger;
    cGuiaUF_TRANSP.AsString := dm.scds_transp_procUF_VEICULO_TRANSP.AsString;
    cGuiaPLACA.AsString := dm.scds_transp_procPLACATRANSP.AsString;
    cGuiaCIDADE_TRANSP.AsString := dm.scds_transp_procCIDADE_TRANSP.AsString;
    if(cGuiaCODTRANSP.AsInteger > 0) then
    begin
      DBEdit20.Enabled := True;
      DBEdit21.Enabled := True;
      DBEdit24.Enabled := True;
    end
    else
    ShowMessage('É Necessário Preencher Transportadora');

  end;
  finally
    dm.scds_transp_proc.Close;
    fProcurar.Free;
  end;
end;

procedure TfGuiaTranporte.BitBtn5Click(Sender: TObject);
begin
  try
    dmnf.repdm.FileName := str_relatorio + 'nf_transporte.rep';
    dmnf.repdm.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    dmnf.repdm.Report.Params[0].Value := cGuiaID_GUIA.AsInteger;
    dmnf.repdm.Title := dmnf.repdm.FileName;
     dmnf.repdm.Execute;
  except
    // deu erro na impressão então para aqui.
  end;
end;

procedure TfGuiaTranporte.cGuiaCalcFields(DataSet: TDataSet);
begin
  cGuiaTotal.AsFloat := cGuiaQUANTIDADE1.Value * cGuiaVALOR_PROD1.Value;
  cGuiaTotal2.AsFloat := cGuiaQUANTIDADE2.Value * cGuiaVALOR_PROD2.Value;
end;


procedure TfGuiaTranporte.FormClose(Sender: TObject;
  var Action: TCloseAction);
  var str : string;
  TD: TTransactionDesc;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  str := 'UPDATE NOTAFISCAL SET SELECIONOU = ' + QuotedStr('') +
                    ' where SELECIONOU = ' + QuotedStr('S');
  dm.sqlsisAdimin.StartTransaction(TD);
  dm.sqlsisAdimin.ExecuteDirect(str);
end;

procedure TfGuiaTranporte.NoExit(Sender: TObject);
begin
  dbedit17.SetFocus;
end;


procedure TfGuiaTranporte.dbeClienteExit(Sender: TObject);
begin
   if dbeCliente.Text = '' then exit;
   if dm.scds_cliente_proc.Active then
      dm.scds_cliente_proc.Close;
   dm.scds_cliente_proc.Params[0].Clear;
   dm.scds_cliente_proc.Params[1].Clear;
   dm.scds_cliente_proc.Params[2].AsInteger := StrToInt(dbeCliente.Text);
   dm.scds_cliente_proc.Open;
     edit2.Text := dm.scds_cliente_procNOMECLIENTE.asString;
   dm.scds_cliente_proc.Close;

end;

procedure TfGuiaTranporte.DBEdit22Exit(Sender: TObject);
begin
   if dbedit22.Text = '' then exit;
   if dm.scds_cliente_proc.Active then
      dm.scds_cliente_proc.Close;
   dm.scds_cliente_proc.Params[0].Clear;
   dm.scds_cliente_proc.Params[1].Clear;
   dm.scds_cliente_proc.Params[2].AsInteger := StrToInt(dbedit22.Text);
   dm.scds_cliente_proc.Open;
     edit3.Text := dm.scds_cliente_procNOMECLIENTE.asString;
   dm.scds_cliente_proc.Close;
end;

procedure TfGuiaTranporte.DBEdit25Exit(Sender: TObject);
begin
   if dbedit25.Text = '' then exit;
   if dm.scds_cliente_proc.Active then
      dm.scds_cliente_proc.Close;
   dm.scds_cliente_proc.Params[0].Clear;
   dm.scds_cliente_proc.Params[1].Clear;
   dm.scds_cliente_proc.Params[2].AsInteger := StrToInt(dbedit25.Text);
   dm.scds_cliente_proc.Open;
     edit4.Text := dm.scds_cliente_procNOMECLIENTE.asString;
   dm.scds_cliente_proc.Close;
end;


procedure TfGuiaTranporte.DBEdit34Change(Sender: TObject);
begin
    if dbedit34.Text = '' then exit;
    if dm.scds_cliente_proc.Active then
      dm.scds_cliente_proc.Close;
   dm.scds_cliente_proc.Params[0].Clear;
   dm.scds_cliente_proc.Params[1].Clear;
   dm.scds_cliente_proc.Params[2].AsInteger := StrToInt(dbedit34.Text);
   dm.scds_cliente_proc.Open;
   edit1.Text := dm.scds_cliente_procNOMECLIENTE.asString;
   dm.scds_cliente_proc.Close;
end;

procedure TfGuiaTranporte.BitBtn6Click(Sender: TObject);
begin
  fProcurar_nf := TfProcurar_nf.Create(self,dmnf.scds_cli_proc);
  fProcurar_nf.BtnProcurar.Click;
  fProcurar_nf.EvDBFind1.DataField := 'NOMECLIENTE';
  fProcurar_nf.btnIncluir.Visible := True;
  try
    if (fProcurar_nf.ShowModal = mrOK) then
      if dmnf.scds_cli_procSTATUS.AsInteger = 2 then
      begin
        MessageDlg('Cliente com status "INATIVO" para efetuar uma venda para '+#13+#10+'esse cliente, antes vc terá que mudar seu status para "ATIVO".', mtError, [mbOK], 0);
        exit;
        //dbeCliente.SetFocus;
      end;
    cGuiaCOD_REMETENTE.AsInteger := dmnf.scds_cli_procCODCLIENTE.AsInteger;
    Edit1.Text := dmnf.scds_cli_procNOMECLIENTE.AsString;
  finally
   dmnf.scds_cli_proc.Close;
   fProcurar_nf.Free;
  end;
end;

procedure TfGuiaTranporte.btnProcurarClick(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,proc_guia);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOMECLIENTE';
   if fProcurar.ShowModal=mrOk then
   begin
     DM.idguia := proc_guiaID_GUIA.AsInteger;
     if(cGuia.Active)then
      cGuia.Close;
     cGuia.Params[0].AsInteger := DM.idguia;
     cGuia.Open;
     if (procClientes.Active) then
        procClientes.Close;
     procClientes.Params[0].AsInteger := cGuiaCOD_CLIENTE.AsInteger;
     procClientes.Open;
     Edit2.Text := procClientesNOMECLIENTE.AsString;

     procClientes.Close;
     procClientes.Params[0].AsInteger := cGuiaCOD_REDESPACHO.AsInteger;
     procClientes.Open;
     if (DBEdit25.Text <> '') then
       Edit4.Text := procClientesNOMECLIENTE.AsString
     else
       Edit4.Text := '';

     procClientes.Close;
     procClientes.Params[0].AsInteger := cGuiaCOD_REMETENTE.AsInteger;
     procClientes.Open;
     if (DBEdit34.Text <> '') then
       Edit1.Text := procClientesNOMECLIENTE.AsString
     else
       Edit1.Text := '';
     procClientes.Close;

     procClientes.Close;
     procClientes.Params[0].AsInteger := cGuiaCOD_CONSIGNATARIO.AsInteger;
     procClientes.Open;
     if (DBEdit22.Text <> '') then
       Edit3.Text := procClientesNOMECLIENTE.AsString
     else
       Edit3.Text := '';
     procClientes.Close;
   end;
  finally
    proc_guia.Close;
    fProcurar.Free;
  end;
end;

procedure TfGuiaTranporte.geradespesa;
var  strSql : string;
     idFornecedor, idpag, ContaFrete : integer;
     vdata : tDate;
begin
  {  if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'CONTAFRETE';
    dm.cds_parametro.Open;
    if (dm.cds_parametro.IsEmpty) then
    begin
      MessageDlg('Erro ao Lançar Despesa ...Conta Frete não cadastrada', mtWarning, [mbOK], 0);
      exit;
    end;
    ContaFrete := Strtoint(dm.cds_parametroDADOS.AsString);
    dm.parametro.Close;
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_COD_PAGAMENTO, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    idpag := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;

      strSql := 'INSERT INTO PAGAMENTO ' +
        '(CODPAGAMENTO, TITULO, EMISSAO, CODFORNECEDOR, DATAVENCIMENTO, STATUS , VIA, FORMAPAGAMENTO, ' +
        'CODALMOXARIFADO, CODCOMPRADOR, CODUSUARIO, DATASISTEMA, VALOR_PRIM_VIA, ' +
        'VALOR_RESTO, VALORTITULO, JUROS, DESCONTO, PERDA, FUNRURAL, PARCELAS, ' +
        'TROCA, CAIXA, DATACONSOLIDA, CONTACREDITO, SITUACAO) VALUES (';
      strSql := strSql + IntToStr(idpag);       // CodPagamento
      strSql := strSql + ', ' + IntToStr(idpag); // Titulo
      strSql := strSql + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', vdata));// Emissão
      strSql := strSql + ', ' + IntToStr(idFornecedor); //Fornecedor
      strSql := strSql + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', vdata));// Vencimento
      strSql := strSql + ', ' + QuotedStr('5-'); //Status
      strSql := strSql + ', ' + QuotedStr('1');// via
      strSql := strSql + ', ' + QuotedStr('1'); //Formapgto
      strSql := strSql + ', ' + '51'; //CODALMOXARIFADO
      strSql := strSql + ', ' + '1'; //CodComprador
      strSql := strSql + ', ' + '1'; //CodUsuario
      strSql := strSql + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', vdata));// DataSistema
      DecimalSeparator := '.';
      strSql := strSql + ', ' + FloatToStr(porc); //Total Comissao
      strSql := strSql + ', ' + FloatToStr(porc); //Total Comissao
      strSql := strSql + ', ' + FloatToStr(porc); //Total Comissao
      strSql := strSql + ', 0';
      strSql := strSql + ', 0';
      strSql := strSql + ', 0';
      strSql := strSql + ', 0';
      strSql := strSql + ', 1';
      strSql := strSql + ', 0';
      strSql := strSql + ', ' + IntToStr(ContaFrete); //ContaCredito
      strSql := strSql + ', 0';
      strSql := strSql + ')';
      dm.sqlsisAdimin.StartTransaction(TD);
      dm.sqlsisAdimin.ExecuteDirect(strSql);
      Try
         dm.sqlsisAdimin.Commit(TD);
      except
         dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes
         MessageDlg('Erro no sistema, a comissão não foi gerada.', mtError, [mbOk], 0);
      end;  }
end;

procedure TfGuiaTranporte.gerareceita;
begin

end;

end.
