unit uRelatorioReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rpcompobase, rpvclreport, StdCtrls, ExtCtrls, Buttons, Mask, DB,
  DBClient, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit;

type
  TfRelatorioReceber = class(TForm)
    VCLContas_pendente: TVCLReport;
    GroupBox1: TGroupBox;
    cbStatus: TComboBox;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    label5: TLabel;
    Label3: TLabel;
    edCodCliente: TEdit;
    edCliente: TEdit;
    BitBtn3: TBitBtn;
    btnClienteProcura: TBitBtn;
    GroupBox2: TGroupBox;
    RadioGroup1: TRadioGroup;
    btnImprimir: TBitBtn;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    BitBtn1: TBitBtn;
    btnSair: TBitBtn;
    BitBtn5: TBitBtn;
    JvDateEdit1: TJvDatePickerEdit;
    Label4: TLabel;
    edCodCCusto: TComboBox;
    Label1: TLabel;
    BitBtn6: TBitBtn;
    procedure btnImprimirClick(Sender: TObject);
    procedure btnClienteProcuraClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure edCodClienteExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    codigo : integer;

  end;

var
  fRelatorioReceber: TfRelatorioReceber;

implementation

uses UDm,UDmSaude ,uListaClientes, uListaClientesSaude, uClienteCadastro;

{$R *.dfm}

procedure TfRelatorioReceber.btnImprimirClick(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
  0:begin
    VCLContas_pendente.Filename  := str_relatorio + 'sp_contas_recebida.rep';
    VCLContas_pendente.Title := VCLContas_pendente.Filename;
    VCLContas_pendente.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLContas_pendente.Report.Params.ParamByName('DTAINI').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit1.Text));
    VCLContas_pendente.Report.Params.ParamByName('DTAFIM').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit2.Text));
    // Ccusto
    if (edCodCCusto.Text <> '') then
    begin
      if (not dm.cds_ccusto.Active) then
         dm.cds_ccusto.Open;
      dm.cds_ccusto.Locate('NOME', edCodCCusto.Text,[loPartialKey]);
      VCLContas_pendente.Report.Params.ParamByName('CCUSTO').Value := dm.cds_ccustoCODIGO.asInteger;
    end
    else
      VCLContas_pendente.Report.Params.ParamByName('CCUSTO').Value := 0;

    VCLContas_pendente.Execute;
  end;
   1:begin
    VCLContas_pendente.Filename := str_relatorio + 'sp_contas_a_receber.rep';
    VCLContas_pendente.Title := VCLContas_pendente.Filename;
    VCLContas_pendente.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLContas_pendente.Report.Params.ParamByName('DTAINI').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit1.Text));
    VCLContas_pendente.Report.Params.ParamByName('DTAFIM').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit2.Text));
    // Ccusto
    if (edCodCCusto.Text <> '') then
    begin
      if (not dm.cds_ccusto.Active) then
         dm.cds_ccusto.Open;
      dm.cds_ccusto.Locate('NOME', edCodCCusto.Text,[loPartialKey]);
      VCLContas_pendente.Report.Params.ParamByName('CCUSTO').Value := dm.cds_ccustoCODIGO.asInteger;
    end
    else
      VCLContas_pendente.Report.Params.ParamByName('CCUSTO').Value := '0';
    VCLContas_pendente.Execute;
  end;
  2:begin
    VCLContas_pendente.Filename := str_relatorio + 'sp_contas_rec_gerais.rep';
    VCLContas_pendente.Title := VCLContas_pendente.Filename;
    VCLContas_pendente.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLContas_pendente.Report.Params.ParamByName('DTAINI').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit1.Text));
    VCLContas_pendente.Report.Params.ParamByName('DTAFIM').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit2.Text));
    // Ccusto
    if (edCodCCusto.Text <> '') then
    begin
      if (not dm.cds_ccusto.Active) then
         dm.cds_ccusto.Open;
      dm.cds_ccusto.Locate('NOME', edCodCCusto.Text,[loPartialKey]);
      VCLContas_pendente.Report.Params.ParamByName('CCUSTO').Value := dm.cds_ccustoCODIGO.asInteger;
    end
    else
      VCLContas_pendente.Report.Params.ParamByName('CCUSTO').Value := '0';
    VCLContas_pendente.Execute;
  end;
  3:begin
    VCLContas_pendente.Filename := str_relatorio + 'sp_contas_pendentes.rep';
    VCLContas_pendente.Title := VCLContas_pendente.Filename;
    VCLContas_pendente.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLContas_pendente.Report.Params.ParamByName('DTAINI').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit1.Text));
    VCLContas_pendente.Report.Params.ParamByName('DTAFIM').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit2.Text));
    // Ccusto
    if (edCodCCusto.Text <> '') then
    begin
      if (not dm.cds_ccusto.Active) then
         dm.cds_ccusto.Open;
      dm.cds_ccusto.Locate('NOME', edCodCCusto.Text,[loPartialKey]);
      VCLContas_pendente.Report.Params.ParamByName('CCUSTO').Value := dm.cds_ccustoCODIGO.asInteger;
    end
    else
      VCLContas_pendente.Report.Params.ParamByName('CCUSTO').Value := '0';
    VCLContas_pendente.Execute;
  end;


  end;


end;

procedure TfRelatorioReceber.btnClienteProcuraClick(Sender: TObject);
begin
  if (dm.moduloUsado = 'SAUDE') then
  begin
   fListaClienteSaude := TfListaClienteSaude.Create(Application);
   try
     fListaClienteSaude.ShowModal;
    edCodCliente.Text:=fListaClienteSaude.JvDBSearchComboBox2.Text;
    edCliente.Text:=fListaClienteSaude.JvDBSearchComboBox1.Text;
    codigo := fListaClienteSaude.cdsCODCLIENTE.AsInteger;
   finally
     fListaClienteSaude.Free;
   end;
  end
  else begin
  fListaClientes:=TfListaClientes.Create(Application);
  Try
    fListaClientes.ShowModal;
    edCodCliente.Text:=IntToStr(fListaClientes.cdsCODCLIENTE.asInteger);
    edCliente.Text:=fListaClientes.cdsNOMECLIENTE.asString;
  Finally
   fListaClientes.ListaCliente.close;
   fListaClientes.Free;
  end;
end;

{
  fListaClientes:=TfListaClientes.Create(Application);
  Try
    fListaClientes.ShowModal;
    edCodCliente.Text:=IntToStr(fListaClientes.cdsCODCLIENTE.asInteger);
    edCliente.Text:=fListaClientes.cdsNOMECLIENTE.asString;
  Finally
   fListaClientes.ListaCliente.close;
   fListaClientes.Free;
  end;
 }
end;

procedure TfRelatorioReceber.BitBtn2Click(Sender: TObject);
begin
  try
    VCLContas_pendente.Filename := str_relatorio + 'REL_CR.rep';
    VCLContas_pendente.Title := VCLContas_pendente.Filename;
    VCLContas_pendente.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLContas_pendente.Report.Params.ParamByName('DATA1').Value := StrToDate(MaskEdit1.Text);
    VCLContas_pendente.Report.Params.ParamByName('DATA2').Value := StrToDate(MaskEdit2.Text);
    VCLContas_pendente.Report.Params.ParamByName('DATADIA').Value := StrToDate(JvDateEdit1.Text);

       // Ccusto
    if (edCodCCusto.Text <> '') then
    begin
      if (not dm.cds_ccusto.Active) then
         dm.cds_ccusto.Open;
      dm.cds_ccusto.Locate('NOME', edCodCCusto.Text,[loPartialKey]);
      VCLContas_pendente.Report.Params.ParamByName('CODCCUSTO').Value := dm.cds_ccustoCODIGO.asInteger;
    end
    else
      VCLContas_pendente.Report.Params.ParamByName('CODCCUSTO').Value := '0';


    if edCodCliente.Text <> '' then
      VCLContas_pendente.Report.Params.ParamByName('PCLI').Value := strToInt(edCodCliente.Text)
    else
      VCLContas_pendente.Report.Params.ParamByName('PCLI').Value := 9999999;
    if cbStatus.Text = '5-PENDENTE' then
    begin
      VCLContas_pendente.Report.Params.ParamByName('PSTATUS').Value := '5-';
    end;
    if cbStatus.Text = '7-RECEBIDO' then
    begin
      VCLContas_pendente.Report.Params.ParamByName('PSTATUS').Value := '7-';
    end;
    if cbStatus.Text = '8-SUSPENSO' then
      VCLContas_pendente.Report.Params.ParamByName('PSTATUS').Value := '8-';

  except
    on EConvertError do
    begin
       ShowMessage ('Data Inválida! dd/mm/aa');
       MaskEdit1.SetFocus;
    end;
  end;
  VCLContas_pendente.Execute;

end;

procedure TfRelatorioReceber.BitBtn3Click(Sender: TObject);
begin
  edCodCliente.Text:='';
  edCliente.Text:='';
end;

procedure TfRelatorioReceber.BitBtn4Click(Sender: TObject);
begin
   cbStatus.Text := '';
end;

procedure TfRelatorioReceber.edCodClienteExit(Sender: TObject);
begin
  if (dm.moduloUsado = 'SAUDE') then
  begin
  if edCodCliente.Text = '' then exit;
  if(DMSaude.cdsCliente.Active) then
    DMSaude.cdsCliente.Close;
    DMSaude.cdsCliente.Params[0].AsInteger := StrToInt(edCodCliente.Text);
    DMSaude.cdsCliente.Open;
    edCliente.Text := DMSaude.cdsClienteRAZAOSOCIAL.asString;
    DMSaude.cdsCliente.Close;
  end
  else begin
   if edCodCliente.Text = '' then exit;
   if dm.scds_cliente_proc.Active then
      dm.scds_cliente_proc.Close;
   dm.scds_cliente_proc.Params[0].Clear;
   dm.scds_cliente_proc.Params[1].Clear;
   dm.scds_cliente_proc.Params[2].AsInteger := StrToInt(edCodCliente.Text);
   dm.scds_cliente_proc.Open;
     edCliente.Text := dm.scds_cliente_procNOMECLIENTE.asString;
   dm.scds_cliente_proc.Close;
end;
end;

procedure TfRelatorioReceber.FormShow(Sender: TObject);
var conta_local: String;
begin
  cbStatus.Text := '5-PENDENTE';
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

procedure TfRelatorioReceber.BitBtn1Click(Sender: TObject);
begin
  try
    VCLContas_pendente.Filename := str_relatorio + 'REL_crPorEmissao.rep';
    VCLContas_pendente.Title := VCLContas_pendente.Filename;
    VCLContas_pendente.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLContas_pendente.Report.Params.ParamByName('DATA1').Value := StrToDate(MaskEdit1.Text);
    VCLContas_pendente.Report.Params.ParamByName('DATA2').Value := StrToDate(MaskEdit2.Text);

  // Ccusto
  if (edCodCCusto.Text <> '') then
  begin
    if (not dm.cds_ccusto.Active) then
       dm.cds_ccusto.Open;
    dm.cds_ccusto.Locate('NOME', edCodCCusto.Text,[loPartialKey]);
    VCLContas_pendente.Report.Params.ParamByName('CODCCUSTO').Value := dm.cds_ccustoCODIGO.asInteger;
  end
  else
    VCLContas_pendente.Report.Params.ParamByName('CODCCUSTO').Value := '0';

//  if (dm.moduloUsado = 'SAUDE') then


   if edCodCliente.Text <> '' then
      VCLContas_pendente.Report.Params.ParamByName('PCLI').Value := codigo
    else
      VCLContas_pendente.Report.Params.ParamByName('PCLI').Value := 9999999;

{
      if edCodCliente.Text <> '' then
      VCLContas_pendente.Report.Params.ParamByName('PCLI').Value := strToInt(edCodCliente.Text)
    else
      VCLContas_pendente.Report.Params.ParamByName('PCLI').Value := 9999999;


 }


    if cbStatus.Text = '' then
    begin
      VCLContas_pendente.Report.Params.ParamByName('PSTATUS').Value := '00';
    end;

    if cbStatus.Text = '5-PENDENTE' then
    begin
      VCLContas_pendente.Report.Params.ParamByName('PSTATUS').Value := '5-';
    end;
    if cbStatus.Text = '7-RECEBIDO' then
    begin
      VCLContas_pendente.Report.Params.ParamByName('PSTATUS').Value := '7-';
    end;
    if cbStatus.Text = '8-SUSPENSO' then
      VCLContas_pendente.Report.Params.ParamByName('PSTATUS').Value := '8-';

   except
    on EConvertError do
    begin
       ShowMessage ('Data Inválida! dd/mm/aa');
       MaskEdit1.SetFocus;
    end;
  end;
  VCLContas_pendente.Execute;

end;

procedure TfRelatorioReceber.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfRelatorioReceber.MaskEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;

end;

procedure TfRelatorioReceber.BitBtn5Click(Sender: TObject);
begin
  VCLContas_pendente.Filename := str_relatorio + 'resumo.rep';
  VCLContas_pendente.Title := VCLContas_pendente.Filename;
  VCLContas_pendente.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLContas_pendente.Report.Params.ParamByName('DATAINI').Value := StrToDate(MaskEdit1.Text);
  VCLContas_pendente.Report.Params.ParamByName('DATAFIN').Value := StrToDate(MaskEdit2.Text);
  VCLContas_pendente.Report.Params.ParamByName('CODCLI').Value := 100000;
  VCLContas_pendente.Execute;
end;

procedure TfRelatorioReceber.BitBtn6Click(Sender: TObject);
begin
   edCodCCusto.Text := '';
end;

end.
