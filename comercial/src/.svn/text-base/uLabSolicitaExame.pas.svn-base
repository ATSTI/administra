 unit uLabSolicitaExame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, DBCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, ComCtrls,
  JvExComCtrls, JvDateTimePicker, JvDBDateTimePicker, JvExStdCtrls,
  JvCombobox, JvDBSearchComboBox, FMTBcd, DBClient, Provider, SqlExpr, DateUtils;

type
  TfLabSolicitaExame = class(TfPai_new)
    JvDBGrid1: TJvDBGrid;
    sdsClienteBusca: TSQLDataSet;
    dspBuscaCliente: TDataSetProvider;
    cdsClienteBusca: TClientDataSet;
    cdsClienteBuscaCODCLIENTE: TIntegerField;
    cdsClienteBuscaNOMECLIENTE: TStringField;
    cdsClienteBuscaRA: TStringField;
    dsClienteBusca: TDataSource;
    sdsMedico: TSQLDataSet;
    dspMedico: TDataSetProvider;
    cdsMedico: TClientDataSet;
    dsMedico: TDataSource;
    cdsMedicoCOD_REPRFOR: TIntegerField;
    cdsMedicoNOME_REPRFOR: TStringField;
    cdsMedicoFUNCAO: TStringField;
    cdsClienteBuscaGRUPO_CLIENTE: TStringField;
    DBText1: TDBText;
    DBText2: TDBText;
    sdsexame: TSQLDataSet;
    dstexame: TDataSetProvider;
    cdsexame: TClientDataSet;
    dtsexame: TDataSource;
    Panel1: TPanel;
    cbCliente: TJvDBSearchComboBox;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    cbExame: TDBComboBox;
    Label2: TLabel;
    cbMedico: TJvDBSearchComboBox;
    Label3: TLabel;
    JvDBDateTimePicker1: TJvDBDateTimePicker;
    Label4: TLabel;
    JvDBDateTimePicker2: TJvDBDateTimePicker;
    Label5: TLabel;
    procMedico: TSQLDataSet;
    procMedicoCOD_REPRFOR: TIntegerField;
    procMedicoNOME_REPRFOR: TStringField;
    procMedicoFUNCAO: TStringField;
    cdsexameCODDADOS: TIntegerField;
    cdsexameDESCRICAO: TStringField;
    cdsexameUSO: TStringField;
    cdsexameCODIGOS: TStringField;
    cdsexameOUTROS: TStringField;
    cdsexameCODHOS: TIntegerField;
    cdsexameDIVERSOS: TStringField;
    DBRadioGroup1: TDBRadioGroup;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    data1 , data2 : TDateTime; 
  end;

var
  fLabSolicitaExame: TfLabSolicitaExame;

implementation

uses uClientePlano, UDmSaude, UDm, uLabExameLocaliza, ucadastro;

{$R *.dfm}

procedure TfLabSolicitaExame.BitBtn1Click(Sender: TObject);
begin
//  inherited;
  fcadastro:=Tfcadastro.Create(Application);
  grupo := 'PARTICULAR';
  try
   fcadastro.Label15.Visible := false;
   fcadastro.DBEdit13.Visible := false;
   fcadastro.Label16.Visible := false;
   fcadastro.DBEdit14.Visible := false;
   fcadastro.Label17.Visible := false;
   fcadastro.DBEdit15.Visible := false;
   fcadastro.Label8.Visible := false;
   fcadastro.DBEdit6.Visible := false;
   fcadastro.Label7.Visible := false;
   fcadastro.DBEdit5.Visible := false;
   fcadastro.Label5.Visible := false;
   fcadastro.DBEdit3.Visible := false;
   fcadastro.Label13.Caption := 'CPF';
   fcadastro.Label14.Caption := 'RG';
   fcadastro.DBEdit20.Visible := false;
   fcadastro.GroupBox2.Visible := false;
   fcadastro.btnDependente.Visible := false;

   fcadastro.Label18.Visible := false;
   fcadastro.Label32.Visible := false;
 //  fcadastro.Label33.Visible := false;
 //  fcadastro.Label35.Visible := false;
   fcadastro.Label36.Visible := false;
 //  fcadastro.Label37.Visible := false;
   fcadastro.DBEdit31.Visible := false;
//   fcadastro.DBEdit32.Visible := false;
   fcadastro.DBEdit16.Visible := false;
   fcadastro.Label1.Caption := 'Particular';
   fcadastro.Label2.Caption := 'Particular';

   fcadastro.MMJPanel2.Background.StartColor := clMaroon ;
   fcadastro.MMJPanel1.Background.EndColor := clMaroon ;
   fcadastro.Color := clBtnface;
   fcadastro.ShowModal;
  finally
   fcadastro.Free;
  end;

end;

procedure TfLabSolicitaExame.FormCreate(Sender: TObject);
begin
  inherited;
  JvDBDateTimePicker1.Date := Today;
  JvDBDateTimePicker2.Date := Today;



  if (cdsClienteBusca.Active) then
    cdsClienteBusca.close;
  cdsClienteBusca.CommandText := 'SELECT RA, CODCLIENTE, NOMECLIENTE, GRUPO_CLIENTE ' +
    'FROM CLIENTES WHERE STATUS = 0 ORDER BY NOMECLIENTE';
  cdsClienteBusca.Open;
  cbCliente.ItemIndex := -1;
 
   if (cdsexame.Active) then
    cdsexame.close;
  cdsexame.Params[0].AsString := 'EXAMES';
  cdsexame.Open;

  While not cdsexame.Eof do
  begin
    cbExame.Items.Add(cdsexameDESCRICAO.AsString);
    cdsexame.Next;
{
  if (dmSaude.cdsCombo.Active) then
    dmSaude.cdsCombo.close;
  dmSaude.cdsCombo.Params[0].AsString := 'EXAMES';
  dmSaude.cdsCombo.Open;

  While not dmSaude.cdsCombo.Eof do
  begin
    cbExame.Items.Add(dmSaude.cdsComboDESCRICAO.AsString);
    dmSaude.cdsCombo.Next;
}
 end;

end;

procedure TfLabSolicitaExame.btnIncluirClick(Sender: TObject);
begin
{  if(DMSaude.cdsExame.Active) then
  begin
    DMSaude.cdsExame.Close;
    DMSaude.cdsExame.Params[0].Clear;
  end;
 }
  inherited;
{
  if (cdsClienteBusca.Active) then
    cdsClienteBusca.close;
  cdsClienteBusca.CommandText := 'SELECT RA, CODCLIENTE, NOMECLIENTE, GRUPO_CLIENTE ' +
    'FROM CLIENTES WHERE STATUS = 0 ORDER BY NOMECLIENTE';
  cdsClienteBusca.Open;
//  cbCliente.ItemIndex := -1;
 }
  JvDBDateTimePicker1.Date := data1 ;
  JvDBDateTimePicker2.Date := data2 ;
 //  JvDBDateTimePicker1.Date := Today;
 //  JvDBDateTimePicker2.Date := Today;
 // JvDBDateTimePicker1.DropDownDate := Today;
 // JvDBDateTimePicker2.DropDownDate := Today;
  dmSaude.cdsExameSITUACAO.AsString := 'NÃO COLETADO';
  dmSaude.cdsExameCONVENIO.AsString := cdsClienteBuscaGRUPO_CLIENTE.AsString;
  dmSaude.cdsExameCOBRANCA.AsString := '0';
 // dmSaude.cdsExameVALOR.AsString := cdsexameOUTROS.AsString;

  cbCliente.SetFocus;
end;

procedure TfLabSolicitaExame.btnGravarClick(Sender: TObject);
begin
  data1 := JvDBDateTimePicker1.Date;
  data2 := JvDBDateTimePicker2.Date;
  dmSaude.cdsExameCodCliente.AsInteger := cdsClienteBuscaCodCliente.asInteger;
  dmSaude.cdsExameNOMECLIENTE.AsString := cdsClienteBuscaNomeCliente.asString;
  dmSaude.cdsExameDATASOLICITACAO.AsDateTime := JvDBDateTimePicker1.Date;
  dmSaude.cdsExameDATAPREVISTAENTREGA.AsDateTime := JvDBDateTimePicker2.Date;
  dmSaude.cdsExameTIPOEXAME.AsString := cbExame.Text;

  if (dmSaude.cdsExameCOBRANCA.AsString = '1') then
  dmSaude.cdsExameVALOR.AsString := cdsexameDIVERSOS.AsString; // 100% valor
  if (dmSaude.cdsExameCOBRANCA.AsString = '2') then
  dmSaude.cdsExameVALOR.AsString := cdsexameOUTROS.AsString;  // 50 % valor

  if (not procMedico.Active) then
     procMedico.Open;
  procMedico.Locate('NOME_REPRFOR', cbMedico.Text,[loCaseInsensitive]);
  dmSaude.cdsExameMEDICOSOLICITANTE.AsInteger := procMedicoCOD_REPRFOR.AsInteger;
  if (DtSrc.State in [dsInsert]) then
  begin
   if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(LABEXAMECOD, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    DMSaude.cdsExameCODEXAME.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
  end;
  inherited;
end;

procedure TfLabSolicitaExame.btnProcurarClick(Sender: TObject);
begin
  inherited;
{
  if (cdsClienteBusca.Active) then
    cdsClienteBusca.close;
  cdsClienteBusca.CommandText := 'SELECT RA, CODCLIENTE, NOMECLIENTE, GRUPO_CLIENTE ' +
    'FROM CLIENTES WHERE STATUS = 0 ORDER BY NOMECLIENTE';
  cdsClienteBusca.Open;

 }
  fLabExameLocaliza := TfLabExameLocaliza.Create(Application);
  try
    fLabExameLocaliza.ShowModal;
    if (dmSaude.cdsExame.Active) then
      dmSaude.cdsExame.Close;
    dmSaude.cdsExame.Params[0].AsInteger := fLabExameLocaliza.codExame;
    dmSaude.cdsExame.open;
    if ( not DMSaude.cdsExame.IsEmpty) then
    BEGIN
      DMSaude.cdsExame.Edit;
      cdsClienteBusca.Locate('CODCLIENTE',DMSaude.cdsExameCODCLIENTE.AsInteger,[loPartialKey]);
      cdsMedico.Locate('COD_REPRFOR',DMSaude.cdsExameMEDICOSOLICITANTE.AsInteger,[loPartialKey]);
      cdsexame.Locate('DESCRICAO', DMSaude.cdsExameTIPOEXAME.AsString,[loCaseInsensitive]);
    END;

  finally
    fLabExameLocaliza.Free;
  end;

end;

procedure TfLabSolicitaExame.FormShow(Sender: TObject);
begin
  inherited;
  data1 := Today;
  data2 := Today;
  JvDBDateTimePicker1.Date := Today;
  JvDBDateTimePicker2.Date := Today;
  if (cdsexame.Active) then
      cdsexame.Close;
  cdsexame.Params[0].AsString := 'EXAMES';
  cdsexame.Open;
  if (not cdsMedico.Active) then
    cdsMedico.Open;

  if(not DMSaude.cdsExame.Active) then
  begin
    DMSaude.cdsExame.Close;
    DMSaude.cdsExame.Params[0].Clear;
  end;
  cbCliente.SetFocus;

end;

procedure TfLabSolicitaExame.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if (cdsexame.Active) then
      cdsexame.Close;
  if (cdsMedico.Active) then
    cdsMedico.Close;

end;

end.
