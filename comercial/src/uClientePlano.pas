unit uClientePlano;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Menus, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  FMTBcd, Provider, DBClient, SqlExpr, Mask, DBCtrls, DBLocal, DBLocalS,
  uPai, XPMenu, JvExStdCtrls, JvDBCombobox, JvComponentBase, JvBalloonHint,
  JvHint, UCHistDataset, UCHist_Base;

type
  TfClientePlano = class(TfPai)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    Label17: TLabel;
    DBEdit15: TDBEdit;
    Label18: TLabel;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    Label23: TLabel;
    DBEdit21: TDBEdit;
    Label24: TLabel;
    DBEdit22: TDBEdit;
    Label25: TLabel;
    DBEdit23: TDBEdit;
    Label26: TLabel;
    DBEdit24: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    dsEndereco: TDataSource;
    DBEdit28: TDBEdit;
    Label30: TLabel;
    btnDependente: TBitBtn;
    DBText1: TDBText;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    Dependente1: TMenuItem;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    GroupBox2: TGroupBox;
    DBEdit2: TDBEdit;
    Label19: TLabel;
    sql_ra: TSQLDataSet;
    sql_raCONCATENATION: TStringField;
    DBEdit7: TDBEdit;
    Label20: TLabel;
    DBEdit8: TDBEdit;
    Label21: TLabel;
    DBEdit29: TDBEdit;
    Label22: TLabel;
    DBEdit30: TDBEdit;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    Label38: TLabel;
    Label39: TLabel;
    Hist_titular: TUCHist_DataSet;
    sql_PCMSO: TSQLDataSet;
    sql_PCMSORA: TFMTBCDField;
    Hist_Endereco: TUCHist_DataSet;
    HistoricoTitular: TUCControlHistorico;
    Label40: TLabel;
    BitBtn5: TBitBtn;
    DBEdit34: TDBEdit;
    Label41: TLabel;
    BitBtn1: TBitBtn;
    procIBGE: TSQLClientDataSet;
    procIBGENM_MUNICIPIO: TStringField;
    procIBGENM_LOCALIDADE: TStringField;
    procIBGECD_UF: TStringField;
    procIBGECD_IBGE: TStringField;
    DBEdit35: TDBEdit;
    Label42: TLabel;
    procedure btnProcurarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnDependenteClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure dsEnderecoStateChange(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    codCliente: integer;
    nomeCliente: String;
    { Public declarations }
  end;

var
  fClientePlano: TfClientePlano;
  grupo : string;
implementation

uses UDmSaude, uprocurarSaude, uDependente, UProcuraGrupo, UDm,
  uPlanoSaude, uProcurar;

{$R *.dfm}


procedure TfClientePlano.btnProcurarClick(Sender: TObject);
begin
  inherited;
  {
    fProcurarSaude:= TfProcurarSaude.Create(self,DMSaude.scdCliente);
    fProcurarSaude.BtnProcurar.Click;
    fProcurarSaude.EvDBFind1.DataField := 'NOMECLIENTE';
  try
    fProcurarSaude.ShowModal;
  if DMSaude.cdsCliente.Active then
    DMSaude.cdsCliente.Close;
     DMSaude.cdsCliente.Params[0].AsInteger := DMSaude.scdClienteCODCLIENTE.AsInteger;
     DMSaude.cdsCliente.Open;
  if DMSaude.cdsEndereco.Active then
    DMSaude.cdsEndereco.Close;
     DMSaude.cdsEndereco.Params[0].AsInteger := DMSaude.cdsClienteCODCLIENTE.AsInteger;
     DMSaude.cdsEndereco.Open;
 finally
    fProcurarSaude.Free;
  end;
  }

  fProcuraGrupo := TfProcuraGrupo.Create(Application);
  if ( grupo = 'ASH') then  begin
  fProcuraGrupo.Color := clSkyBlue;
  end;
  if DMSaude.procgrupo.Active then
    DMSaude.procgrupo.Close;
     DMSaude.procgrupo.Params[0].AsString := grupo;
     DMSaude.procgrupo.Open;
   try
     fProcuraGrupo.ShowModal;
   if DMSaude.cdsCliente.Active then
    DMSaude.cdsCliente.Close;
     DMSaude.cdsCliente.Params[0].AsInteger := DMSaude.procgrupoCODCLIENTE.AsInteger;
     DMSaude.cdsCliente.Open;

  if DMSaude.cdsEndereco.Active then
    DMSaude.cdsEndereco.Close;
     DMSaude.cdsEndereco.Params[0].AsInteger := DMSaude.cdsClienteCODCLIENTE.AsInteger;
     DMSaude.cdsEndereco.Open;
  finally
    fProcuraGrupo.Free;
  end;
end;

procedure TfClientePlano.FormCreate(Sender: TObject);
begin
  inherited;
    Incluir := 'S';
    Alterar := 'S';
    Excluir := 'S';
    Cancelar := 'S';
    Procurar := 'S';

 end;

procedure TfClientePlano.btnDependenteClick(Sender: TObject);
begin
  inherited;
//   fDependente:=TfDependente.Create(Application);
   if ( grupo = 'ASH') then  begin
      if fDependente.DBEdit8.Visible = false then
      fDependente.DBEdit8.Visible:= true;
      fDependente.MMJPanel2.Background.StartColor := clSkyBlue;
      fDependente.MMJPanel1.Background.EndColor := clSkyBlue;
      fDependente.Panel1.Color := clSkyBlue;
      fDependente.Color := clSkyBlue;
      fDependente.DBEdit1.Visible := FALSE;
      fDependente.Label6.Visible := FALSE;
      fDependente.DBRadioGroup1.Visible := false;
      fDependente.DBEdit11.Visible := FALSE;

      /// apos usercontrol

      fDependente.Label10.Visible:= True;
      fDependente.DBEdit7.Visible:= True;
      fDependente.GroupBox2.Visible:= True;
      fDependente.DBEdit9.Visible:= True;
      fDependente.Label11.Visible:= True;
      fDependente.DBEdit6.Visible:= True;
      fDependente.Label8.Visible:= True;
      fDependente.DBEdit4.Visible:= True;
      fDependente.DBRadioGroup2.Visible := True;
      fDependente.Label36.Visible:= True;
      fDependente.Label32.Visible:= True;
      fDependente.DBEdit12.Visible:= True;
      fDependente.Label34.Visible:= True;
      fDependente.DBGrid1.Columns[0].Title.caption := 'DEPENDENTE';
      fDependente.Label3.Caption := 'DEPENDENTE';
     ///

   end
    else begin

      if fDependente.DBEdit8.Visible = true then
        fDependente.DBEdit8.Visible:= false;
        fDependente.Label10.Visible:= false;
        fDependente.DBEdit7.Visible:= false;
        fDependente.GroupBox2.Visible:= false;
        fDependente.DBEdit9.Visible:= false;
        fDependente.Label11.Visible:= false;
        fDependente.DBEdit6.Visible:= false;
        fDependente.Label8.Visible:= false;
        fDependente.DBEdit4.Visible:= false;
        fDependente.Label9.Caption := 'CODIGO';
        fDependente.Label3.Caption := 'FUNÇÃO';
        fDependente.Label7.Caption := 'DATA ADMISSÃO';
        fDependente.Label12.Caption := 'DATA RESCISÃO';
        fDependente.DBGrid1.Columns[0].Title.caption := 'FUNÇÃO';
        fDependente.DBRadioGroup2.Visible := false;
        fDependente.MMJPanel2.Background.StartColor := clTeal ;
        fDependente.MMJPanel1.Background.EndColor := clTeal ;

        fDependente.Label36.Visible:= false;
        fDependente.Label32.Visible:= false;
        fDependente.DBEdit12.Visible:= false;
        fDependente.Label34.Visible:= false;

    end;
//  try
   fDependente.ShowModal;
// finally
//   fDependente.Free;
  end;


procedure TfClientePlano.btnIncluirClick(Sender: TObject);
begin
  if sql_ra.Active then
    sql_ra.Close;
  sql_ra.Params[0].AsString := grupo ;
  sql_ra.Open;
  inherited;

  DMSaude.cdsClienteGRUPO_CLIENTE.AsString := grupo;
  if(grupo = 'PARTICULAR') then
  begin
    DBEdit9.SetFocus;
    DMSaude.cdsClienteRA.AsString := sql_raCONCATENATION.AsString;
  end;
  if grupo = 'ASH' then
  begin
    DBEdit9.SetFocus;
    DBEdit13.Text := '15'; // Codigo de inclusão ANS
    DMSaude.cdsClienteTIPOFIRMA.AsString :='0';
    DMSaude.cdsClienteSTATUS.AsString := '0';
    DMSaude.cdsClienteCONTATO.AsString := 'BENEFICIAR';
    DMSaude.cdsClienteEXIST_COBERT.AsInteger := 2 ;
    DMSaude.cdsClienteEXISTCOPART.AsInteger := 1 ;
    DMSaude.cdsClienteESTADORG.AsString := '00';
    DMSaude.cdsClienteSITUACAOESCOLAR.AsString := '01';
    DMSaude.cdsClienteID_COB.AsInteger := 0;
    DMSaude.cdsClienteRA.AsString := sql_raCONCATENATION.AsString;
end;
  sql_ra.Close;

  if grupo = 'PCMSO' then
  begin
    if sql_PCMSO.Active then
      sql_PCMSO.Close;
    sql_PCMSO.Params[0].AsString := grupo ;
    sql_PCMSO.Open;

    DBEdit9.SetFocus;
   // DBEdit2.ReadOnly := False;
   // DBEdit13.Text := '15'; // Codigo de inclusão ANS
    DMSaude.cdsClienteTIPOFIRMA.AsString :='0';
    DMSaude.cdsClienteSTATUS.AsString := '0';
    DMSaude.cdsClienteCONTATO.AsString := 'BENEFICIAR';
    DMSaude.cdsClienteEXIST_COBERT.AsInteger := 2 ;
    DMSaude.cdsClienteEXISTCOPART.AsInteger := 1 ;
    DMSaude.cdsClienteESTADORG.AsString := '00';
    DMSaude.cdsClienteSITUACAOESCOLAR.AsString := '01';
    DMSaude.cdsClienteID_COB.AsInteger := 0 ;
    DMSaude.cdsClienteRA.AsString := sql_PCMSORA.AsString;
    sql_PCMSO.Close;
  end;

{
  if (DtSrc.State in [dsInsert]) then
  begin
   if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CLI, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    DMSaude.cdsClienteCODCLIENTE.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
  end;
}
  if DMSaude.cdsEndereco.Active then
    DMSaude.cdsEndereco.Close;
  DMSaude.cdsEndereco.Params[0].Clear;
  if not DMSaude.cdsEndereco.Active then
    DMSaude.cdsEndereco.open;
  DMSaude.cdsEndereco.Append;
  DMSaude.cdsEnderecoUF.AsString := 'SP';
end;

procedure TfClientePlano.btnGravarClick(Sender: TObject);
begin
  if (grupo = 'PARTICULAR') then
    dmSaude.cdsClienteGRUPO_CLIENTE.AsString := 'PARTICULAR';
 //   DMSaude.cdsClienteCODCLIENTE.AsInteger := DMSaude.cdsClienteRA.AsInteger  ;
   // dmS
  if (DMSaude.cdsCliente.State in [dsInsert]) then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CLI, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    DMSaude.cdsClienteCODCLIENTE.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
    DMSaude.cdsClienteRAZAOSOCIAL.AsString := DMSaude.cdsClienteNOMECLIENTE.AsString;

    if (grupo = 'PARTICULAR') then
    DMSaude.cdsClienteRA.AsInteger := DMSaude.cdsClienteCODCLIENTE.AsInteger ;

    DMSaude.cdsClienteSEGMENTO.AsString :='0' ;
    DMSaude.cdsClienteREGIAO.AsString := '0';
    DMSaude.cdsClienteCODUSUARIO.AsInteger := 1;
    DMSaude.cdsClienteESTADORG.AsString := DBEdit31.Text;
    DMSaude.cdsClienteSITUACAOESCOLAR.AsString := DBEdit32.Text;

  end;
  if(dsEndereco.DataSet.State in [dsEdit]) then
    if(DtSrc.DataSet.State in [dsBrowse]) then
      DtSrc.DataSet.Edit;
  DMSaude.cdsClienteEXIST_COBERT.AsInteger := 2 ;
  DMSaude.cdsClienteEXISTCOPART.AsInteger := 1 ;
 // DMSaude.cdsClienteID_COB.AsInteger := 0

  {
  if DBRadioGroup1.ItemIndex = 1 then
    DMSaude.cdsClienteID_COB.AsInteger := 1
   else
     DMSaude.cdsClienteID_COB.AsInteger := 0 ;
 }
   ///falta fazer gravar data alteração

    MessageDlg('Data de  Alteração  Será Atualizado  ', mtConfirmation, [mbYes, mbNo], 0);

    DMSaude.cdsClienteDTAALTERA.AsDateTime := now ;


  inherited;
   if (DMSaude.cdsEndereco.State in [dsInsert, dsEdit]) then
   begin
   if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_END_CLI, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      DMSaude.cdsEnderecoCODENDERECO.AsInteger := dm.c_6_genidCODIGO.AsInteger;
      dm.c_6_genid.Close;
      if (DMsaude.cdsEnderecoCODCLIENTE.AsInteger = 0) then
        DMSaude.cdsEnderecoCODCLIENTE.AsInteger := DMSaude.cdsClienteCODCLIENTE.AsInteger;
        DMSaude.cdsEnderecoTIPOEND.AsString := '0';
      DMSaude.cdsEndereco.ApplyUpdates(0);
   end;

end;

procedure TfClientePlano.dsEnderecoStateChange(Sender: TObject);

begin
   btnIncluir.Enabled:=dsEndereco.State in [dsBrowse,dsInactive];

   btnGravar.Enabled:=dsEndereco.State in [dsInsert,dsEdit];

   btnCancelar.Enabled:=dsEndereco.State in [dsInsert,dsEdit];

   btnExcluir.Enabled:=dsEndereco.State in [dsBrowse];

   btnProcurar.Enabled := dsEndereco.State in [dsBrowse,dsInactive];

   btnSair.Enabled:=dsEndereco.State in [dsBrowse,dsInactive];
     if dsEndereco.State in [dsInsert, dsEdit] then
  begin
    btnIncluir.Visible := False;
    btnexcluir.Visible := False;
    btngravar.Visible := True;
    btnCancelar.Visible := True;
  end;

  if dsEndereco.State in [dsBrowse,dsInactive] then
  begin
    btnIncluir.Visible := True;
    btnexcluir.Visible := True;
    btngravar.Visible := False;
    btnCancelar.Visible := False;
  end;

end;

procedure TfClientePlano.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if(dsEndereco.DataSet.State in [dsEdit]) then
    dsEndereco.DataSet.Cancel;
end;

procedure TfClientePlano.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  codCliente := dmSaude.cdsClienteCODCLIENTE.AsInteger;
  nomeCliente := dmSaude.cdsClienteNOMECLIENTE.AsString;
  inherited;
  if(dsEndereco.DataSet.Active) then
    dsEndereco.DataSet.Close;
end;

procedure TfClientePlano.FormShow(Sender: TObject);
begin
  inherited;
 // fPlanoSaude.UserControlSaude.
  Label40.Caption := fPlanoSaude.UserControlSaude.CurrentUser.UserName; //usercontrol1.CurrentUser;
  if (grupo = 'PARTICULAR') then
  begin
    label1.Caption := 'PARTICULAR';
    label2.Caption := 'PARTICULAR';
    GroupBox1.Visible := False;
    GroupBox2.Visible := False;
    dbEdit17.Visible := False;
    dbEdit18.Visible := False;
    dbEdit19.Visible := False;
    dbEdit20.Visible := False;
  end;
  Application.HintHidePause := 100000;
end;

procedure TfClientePlano.btnExcluirClick(Sender: TObject);
begin
//  inherited;

  if(DMSaude.cdsCliente.State in [dsBrowse]) then
    DMSaude.cdsCliente.Edit;
  DMSaude.cdsClienteSTATUS.AsInteger := 1;
  DMSaude.cdsClienteDATARESC.AsDateTime := now;
  DMSaude.cdsClienteDTAALTERA.AsDateTime := now;  
  DMSaude.cdsCliente.ApplyUpdates(0);

end;

procedure TfClientePlano.DBEdit3Exit(Sender: TObject);
begin
  inherited;
    if(StrToDate(DBEdit3.Text) > (now - 1)) then
    MessageDlg('Data Invalida', mtWarning, [mbOK], 0);

end;

procedure TfClientePlano.Button1Click(Sender: TObject);
begin
 // inherited;
/// DBEdit4.Text := '__/__/____';
 end;

procedure TfClientePlano.BitBtn5Click(Sender: TObject);
begin
//  inherited;
  if(DtSrc.DataSet.State in [dsBrowse]) then
    DtSrc.DataSet.Edit;
  DMSaude.cdsClienteDATARESC.Text := '';
end;

procedure TfClientePlano.BitBtn1Click(Sender: TObject);
begin
  inherited;
  fProcurar:= TfProcurar.Create(self,procIBGE);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NM_MUNICIPIO';
   if fProcurar.ShowModal=mrOk then
   begin
     if(DtSrc.State in [dsbrowse,dsinactive]) then
       DMSaude.cdsEndereco.Edit;
     DBEdit23.Text := procIBGENM_MUNICIPIO.AsString;
     DBEdit26.Text := procIBGECD_UF.AsString;
     DBEdit35.Text := procIBGECD_IBGE.AsString;

   end;
   finally
    procIBGE.Close;
    fProcurar.Free;
   end;
end;

end.
