unit uRelatorioAsh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, ExtCtrls, MMJPanel, rpcompobase,
  rpvclreport, JvExStdCtrls, JvEdit, JvDBSearchEdit, JvCombobox, DB,
  DBClient, JvFormPlacement, JvComponentBase, JvAppStorage, JvAppXMLStorage,rplabelitem,DateUtils,
  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit;

type
  TfRelatorioAsh = class(TForm)
    MMJPanel3: TMMJPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    MaskEdit2: TMaskEdit;
    MaskEdit1: TMaskEdit;
    edCodCCusto: TComboBox;
    BitBtn3: TBitBtn;
    VCLReport1: TVCLReport;
    Label1: TLabel;
    dbCodigo: TJvDBSearchEdit;
    Label2: TLabel;
    dbNome: TJvDBSearchEdit;
    dbStatus: TJvComboBox;
    Label3: TLabel;
    BitBtn4: TBitBtn;
    ClientDataSet1: TClientDataSet;
    JvAppXMLFileStorage1: TJvAppXMLFileStorage;
    JvFormStorage1: TJvFormStorage;
    DataSource1: TDataSource;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    MaskEdit3: TJvDatePickerEdit;
    MaskEdit4: TJvDatePickerEdit;
    BitBtn5: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edCodCCustoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure edCodCCustoChange(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelatorioAsh: TfRelatorioAsh;

implementation

uses UDm, UDmSaude;

{$R *.dfm}

procedure TfRelatorioAsh.BitBtn3Click(Sender: TObject);
var data1,data2 :TRpLabel;
begin
  MaskEdit1.Color := clYellow;
  MaskEdit2.Color := clYellow;
  edCodCCusto.Color := clYellow;
  dbCodigo.Color := clWhite;
  dbNome.Color := clWhite;
  dbStatus.Color := clWhite;

  VCLReport1.Filename := str_relatorio + 'ash_MensalidadeLista.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;

  VCLReport1.Report.Params.ParamByName('DATAINI').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit1.Text));
  VCLReport1.Report.Params.ParamByName('DATAFIN').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit2.Text));

  data1:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel16'));
  data2:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel17'));

  if Assigned(data1) then
  begin
   data1.Text := formatdatetime('dd/mm/yy', StrToDate(maskedit3.Text));
  end;
  if Assigned(data2) then
  begin
   data2.Text := formatdatetime('dd/mm/yy', StrToDate(maskedit4.Text));
  end;


  // Caixa
  if (edCodCCusto.Text <> '') then
  begin
    if (not dm.cds_ccusto.Active) then
       dm.cds_ccusto.Open;
    dm.cds_ccusto.Locate('NOME', edCodCCusto.Text,[loPartialKey]);
    VCLReport1.Report.Params.ParamByName('PCCUSTO').Value := dm.cds_ccustoCODIGO.asInteger;
  end
  else
    VCLReport1.Report.Params.ParamByName('PCCUSTO').Value := '0';

  VCLReport1.Execute;
  VCLReport1.Report.DatabaseInfo.Items[0].DisConnect;

end;

procedure TfRelatorioAsh.FormShow(Sender: TObject);
  var conta_local: String;
     ano, mes, dia : word;
begin

    decodedate (MaskEdit3.Date , ano, mes, dia);
    mes := mes ;
    dia := 1;
    MaskEdit3.Date := encodedate(ano, mes, dia);
    decodedate (MaskEdit4.Date , ano, mes, dia);
    mes := mes ;
    MaskEdit4.Date := encodedate(ano, mes, dia);


  //Vejo quais são as contas de Receitas para listar no lookupcombobox.
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTRORECEITA';
  dm.cds_parametro.Open;
  conta_local := dm.cds_parametroDADOS.AsString;
  dm.cds_parametro.Close;

  // populo a combobox Centro de Custo
  if dm.cds_ccusto.Active then
    dm.cds_ccusto.Close;
  dm.cds_ccusto.Params[0].AsString := conta_local;
  dm.cds_ccusto.Open;
  DM.cds_ccusto.First;
  while not DM.cds_ccusto.Eof do
  begin
    edCodCCusto.Items.Add(dm.cds_ccustoNOME.AsString);
    DM.cds_ccusto.Next;
  end;
  dm.cds_ccusto.Close;
end;

procedure TfRelatorioAsh.edCodCCustoClick(Sender: TObject);
begin
  if (dmSaude.cdsClienteBuscaP.Active) then
    dmSaude.cdsClienteBuscaP.close;
  dmSaude.cdsClienteBuscaP.Params[0].AsString := edCodCCusto.Text;
  dmSaude.cdsClienteBuscaP.Open;
  dbNome.Text := '';
  dbCodigo.text := '';
end;

procedure TfRelatorioAsh.BitBtn1Click(Sender: TObject);
begin
  MaskEdit1.Color := clWhite;
  MaskEdit2.Color := clWhite;
  edCodCCusto.Color := clYellow;
  dbCodigo.Color := clYellow;
  dbNome.Color := clYellow;
  dbStatus.Color := clYellow;
  VCLReport1.Filename := str_relatorio + 'ash_ListaPCMSO.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;

  // Centro de Custo
  if (edCodCCusto.Text <> '') then
  begin
    VCLReport1.Report.Params.ParamByName('PCCUSTO').Value := edCodCCusto.Text;
  end
  else
    VCLReport1.Report.Params.ParamByName('PCCUSTO').Value := '0';

  // Associado ou Empresa
  if ((dbNome.Text <> '') or (dbCodigo.Text <> '')) then
  begin
    VCLReport1.Report.Params.ParamByName('PEMPRESA').Value := dmSaude.cdsClienteBuscaPCODCLIENTE.asInteger;
  end
  else
    VCLReport1.Report.Params.ParamByName('PEMPRESA').Value := 0;

  // STatus (0 Ativo, 1 - Inativo e 2 Todos
  if ((dbStatus.Text <> '')) then
  begin
    VCLReport1.Report.Params.ParamByName('PATIVO').Value := dbStatus.ItemIndex;
  end
  else
    VCLReport1.Report.Params.ParamByName('PATIVO').Value := 0;

  VCLReport1.Execute;
  VCLReport1.Report.DatabaseInfo.Items[0].DisConnect;

end;

procedure TfRelatorioAsh.BitBtn4Click(Sender: TObject);
begin
  MaskEdit1.Color := clYellow;
  MaskEdit2.Color := clYellow;
  edCodCCusto.Color := clYellow;
  dbCodigo.Color := clYellow;
  dbNome.Color := clYellow;
  dbStatus.Color := clWhite;
  VCLReport1.Filename := str_relatorio + 'ash_MensalidadeListaPCMSOEmpresa.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;

  VCLReport1.Report.Params.ParamByName('DATAINI').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit1.Text));
  VCLReport1.Report.Params.ParamByName('DATAFIN').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit2.Text));

  // Centro de Custo
  if (edCodCCusto.Text <> '') then
  begin
    if (not dm.cds_ccusto.Active) then
       dm.cds_ccusto.Open;
    dm.cds_ccusto.Locate('NOME', edCodCCusto.Text,[loPartialKey]);
    VCLReport1.Report.Params.ParamByName('PCCUSTO').Value := dm.cds_ccustoCODIGO.asInteger;
  end
  else
    VCLReport1.Report.Params.ParamByName('PCCUSTO').Value := '0';

  // Associado ou Empresa
  if ((dbNome.Text <> '') or (dbCodigo.Text <> '')) then
  begin
    VCLReport1.Report.Params.ParamByName('PEMPRESA').Value := dmSaude.cdsClienteBuscaPCODCLIENTE.asInteger;
  end
  else
    VCLReport1.Report.Params.ParamByName('PEMPRESA').Value := 0;

  VCLReport1.Execute;
  VCLReport1.Report.DatabaseInfo.Items[0].DisConnect;

end;

procedure TfRelatorioAsh.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;

end;

procedure TfRelatorioAsh.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfRelatorioAsh.edCodCCustoChange(Sender: TObject);
  //var  ano, mes, dia : word;
begin
  {
  if(edCodCCusto.Text = 'PCMSO') then
  begin
    decodedate (MaskEdit3.Date , ano, mes, dia);
    mes := mes ;
    dia := 1;
    MaskEdit3.Date := encodedate(ano, mes, dia);
    decodedate (MaskEdit4.Date , ano, mes, dia);
    mes := mes ;
    MaskEdit4.Date := encodedate(ano, mes, dia);

  end
  else begin
    decodedate(MaskEdit3.Date, ano, mes, dia);
    mes := mes +1;
    dia := 1;
    MaskEdit3.Date:=encodedate(ano, mes, dia);

    decodedate(MaskEdit4.Date, ano, mes, dia);
    mes := mes +1;
    MaskEdit4.Date := encodedate(ano, mes, dia);
  end
   }
end;

procedure TfRelatorioAsh.BitBtn5Click(Sender: TObject);
var data1,data2 :TRpLabel;
begin
  MaskEdit1.Color := clYellow;
  MaskEdit2.Color := clYellow;
  edCodCCusto.Color := clYellow;
  dbCodigo.Color := clWhite;
  dbNome.Color := clWhite;
  dbStatus.Color := clWhite;

  VCLReport1.Filename := str_relatorio + 'ash_MensalidadeLista_atrazada.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;

  VCLReport1.Report.Params.ParamByName('DATAINI').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit1.Text));
  VCLReport1.Report.Params.ParamByName('DATAFIN').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit2.Text));

  data1:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel16'));
  data2:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel17'));

  if Assigned(data1) then
  begin
   data1.Text := formatdatetime('dd/mm/yy', StrToDate(maskedit3.Text));
  end;
  if Assigned(data2) then
  begin
   data2.Text := formatdatetime('dd/mm/yy', StrToDate(maskedit4.Text));
  end;


  // Caixa
  if (edCodCCusto.Text <> '') then
  begin
    if (not dm.cds_ccusto.Active) then
       dm.cds_ccusto.Open;
    dm.cds_ccusto.Locate('NOME', edCodCCusto.Text,[loPartialKey]);
    VCLReport1.Report.Params.ParamByName('PCCUSTO').Value := dm.cds_ccustoCODIGO.asInteger;
  end
  else
    VCLReport1.Report.Params.ParamByName('PCCUSTO').Value := '0';

  VCLReport1.Execute;
  VCLReport1.Report.DatabaseInfo.Items[0].DisConnect;

end;

end.
