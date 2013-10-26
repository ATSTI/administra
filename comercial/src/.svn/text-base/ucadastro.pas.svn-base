unit ucadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  FMTBcd, SqlExpr, DBCtrls, Mask;

type
  Tfcadastro = class(TfPai)
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label34: TLabel;
    Label36: TLabel;
    Label38: TLabel;
    Label40: TLabel;
    GroupBox2: TGroupBox;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    btnDependente: TBitBtn;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBEdit2: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit33: TDBEdit;
    BitBtn5: TBitBtn;
    dsEndereco: TDataSource;
    sql_PCMSO: TSQLDataSet;
    sql_PCMSORA: TFMTBCDField;
    DBText1: TDBText;
    Label41: TLabel;
    sql_ra: TSQLDataSet;
    sql_raCONCATENATION: TStringField;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcadastro: Tfcadastro;
  grupo : string;
implementation

uses UDm, UDmSaude ,UProcuraGrupo;

{$R *.dfm}

procedure Tfcadastro.btnIncluirClick(Sender: TObject);
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

procedure Tfcadastro.btnExcluirClick(Sender: TObject);
begin
//  inherited;

  if(DMSaude.cdsCliente.State in [dsBrowse]) then
    DMSaude.cdsCliente.Edit;
  DMSaude.cdsClienteSTATUS.AsInteger := 1;
  DMSaude.cdsClienteDATARESC.AsDateTime := now;
  DMSaude.cdsClienteDTAALTERA.AsDateTime := now;
  DMSaude.cdsCliente.ApplyUpdates(0);
end;

procedure Tfcadastro.btnGravarClick(Sender: TObject);
begin
  if (grupo = 'PARTICULAR') then
    dmSaude.cdsClienteGRUPO_CLIENTE.AsString := 'PARTICULAR';
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
//    DMSaude.cdsClienteSITUACAOESCOLAR.AsString := DBEdit32.Text;

  end;
  if(dsEndereco.DataSet.State in [dsEdit]) then
    if(DtSrc.DataSet.State in [dsBrowse]) then
      DtSrc.DataSet.Edit;
  DMSaude.cdsClienteEXIST_COBERT.AsInteger := 2 ;
  DMSaude.cdsClienteEXISTCOPART.AsInteger := 1 ;
  {
  if DBComboBox1.Text = 'ATIVO' then
     DMSaude.cdsClienteSTATUS.AsInteger := 0
   else
     DMSaude.cdsClienteSTATUS.AsInteger := 1 ;
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

procedure Tfcadastro.FormCreate(Sender: TObject);
begin
  inherited;
    Incluir := 'S';
    Alterar := 'S';
    Excluir := 'S';
    Cancelar := 'S';
    Procurar := 'S';

end;

procedure Tfcadastro.btnProcurarClick(Sender: TObject);
begin
  inherited;
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

end.
