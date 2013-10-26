unit uRelatorioCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, ExtCtrls, MMJPanel, rpcompobase,
  rpvclreport, DB, DBClient, JvFormPlacement, JvComponentBase,
  JvAppStorage, JvAppXMLStorage, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, uUtils;

type
  TfRelatorioCaixa = class(TForm)
    MMJPanel3: TMMJPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    VCLReport1: TVCLReport;
    JvAppXMLFileStorage1: TJvAppXMLFileStorage;
    JvFormStorage1: TJvFormStorage;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label7: TLabel;
    cbMes: TComboBox;
    MaskEdit1: TJvDatePickerEdit;
    MaskEdit2: TJvDatePickerEdit;
    GroupBox2: TGroupBox;
    ComboBox1: TComboBox;
    GroupBox3: TGroupBox;
    ComboBox2: TComboBox;
    GroupBox4: TGroupBox;
    edCodCCusto: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure cbMesChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    util: TUtils;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelatorioCaixa: TfRelatorioCaixa;

implementation

uses UDm;

{$R *.dfm}

procedure TfRelatorioCaixa.FormShow(Sender: TObject);
var conta_local: String;
begin
  if (dm.moduloUsado <> 'SAUDE') then
  begin
    BitBtn3.Enabled := False;
    BitBtn4.Enabled := False;
    //ComboBox2.Enabled := True;
    //edCodCCusto.Enabled := False;
    //Label2.Visible := False;
    //Label11.Visible := False;
  end;

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

  // populo a combobox Caixa
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CAIXA_BANCO';
  dm.cds_parametro.Open;
  if dm.cds_7_contas.Active then
    dm.cds_7_contas.Close;
  dm.cds_7_contas.Params[0].AsString := dm.cds_parametroDADOS.AsString;
  dm.cds_7_contas.Open;
  dm.cds_7_contas.First;
  while not dm.cds_7_contas.Eof do
  begin
    ComboBox1.Items.Add(dm.cds_7_contasNOME.AsString);
    dm.cds_7_contas.Next;
  end;
  dm.cds_7_contas.Close;

end;

procedure TfRelatorioCaixa.BitBtn3Click(Sender: TObject);
var   varRelCaixa : TUtils;
begin
  varRelCaixa := TUtils.Create;
  VCLReport1.Filename := str_relatorio + 'caixaResumo.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;

  VCLReport1.Report.Params.ParamByName('DATAINI').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit1.Text));
  VCLReport1.Report.Params.ParamByName('DATAFIN').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit2.Text));
  // Caixa
  if ComboBox1.Text <> '' then
  begin
    if (not dm.cds_7_contas.Active) then
       dm.cds_7_contas.Open;
    dm.cds_7_contas.Locate('NOME', ComboBox1.Text,[loCaseInsensitive]);
    VCLReport1.Report.Params.ParamByName('PCAIXA').Value := dm.cds_7_contasCODIGO.asInteger;
  end
  else
    VCLReport1.Report.Params.ParamByName('PCAIXA').Value := 0;

  // Forma Recebimento
  if ComboBox2.Text <> '' then
  begin
    VCLReport1.Report.Params.ParamByName('PFORMA').Value := varRelCaixa.pegaForma(ComboBox2.Text);
  end
  else
    VCLReport1.Report.Params.ParamByName('PFORMA').Value := '0';

  // Ccusto
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

procedure TfRelatorioCaixa.BitBtn1Click(Sender: TObject);
var   varForma : TUtils;
begin
  try
  varForma := TUtils.Create;

  if ((edCodCCusto.ItemIndex = -1)  and (ComboBox2.ItemIndex = -1) and (ComboBox1.ItemIndex > -1)) then
  begin
    if (RadioGroup1.ItemIndex = 0) then
      VCLReport1.Filename := str_relatorio + 'caixa_movimento.rep'
    else
      VCLReport1.Filename := str_relatorio + 'caixa_movimentoConsolida.rep';
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    vclreport1.Title := vclreport1.Filename;

    VCLReport1.Report.Params.ParamByName('DTAINI').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit1.Text));
    VCLReport1.Report.Params.ParamByName('DTAFIM').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit2.Text));
    if ComboBox1.Text <> '' then
    begin
      if (not dm.cds_7_contas.Active) then
         dm.cds_7_contas.Open;
      dm.cds_7_contas.Locate('NOME', ComboBox1.Text,[loCaseInsensitive]);
      VCLReport1.Report.Params.ParamByName('COD_CAIXA').Value := dm.cds_7_contasCODIGO.asInteger;
    end
    else
      VCLReport1.Report.Params.ParamByName('COD_CAIXA').Value := 0;
  end
  else begin
    if (RadioGroup1.ItemIndex = 0) then
      VCLReport1.Filename := str_relatorio + 'caixa_movimentoC.rep'
    else
      VCLReport1.Filename := str_relatorio + 'caixa_movimentoConsolida.rep';
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    vclreport1.Title := vclreport1.Filename;

    VCLReport1.Report.Params.ParamByName('DTAINI').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit1.Text));
    VCLReport1.Report.Params.ParamByName('DTAFIM').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit2.Text));
    if ComboBox1.Text <> '' then
    begin
      if (not dm.cds_7_contas.Active) then
         dm.cds_7_contas.Open;
      dm.cds_7_contas.Locate('NOME', ComboBox1.Text,[loPartialKey]);
      VCLReport1.Report.Params.ParamByName('COD_CAIXA').Value := dm.cds_7_contasCODIGO.asInteger;
    end
    else
      VCLReport1.Report.Params.ParamByName('COD_CAIXA').Value := 0;

    if (edCodCCusto.Text <> '') then
    begin
      if(not dm.cds_ccusto.Active) then
        dm.cds_ccusto.Open;
      dm.cds_ccusto.Locate('NOME', edCodCCusto.Text, [loCaseInsensitive]);
      VCLReport1.Report.Params.ParamByName('COD_CCUSTO').Value := dm.cds_ccustoCODIGO.asInteger;;
    end
    else
      VCLReport1.Report.Params.ParamByName('COD_CCUSTO').Value := 0;
    VCLReport1.Report.Params.ParamByName('PFORMA').Value := 'T';
    if (ComboBox2.ItemIndex > -1) then
    begin
      VCLReport1.Report.Params.ParamByName('PFORMA').Value := varForma.pegaForma(ComboBox2.Text);
    end;

  end;
  VCLReport1.Execute;
  VCLReport1.Report.DatabaseInfo.Items[0].DisConnect;
  finally
    varForma.Free;
  end;
end;

procedure TfRelatorioCaixa.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfRelatorioCaixa.MaskEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;

end;

procedure TfRelatorioCaixa.BitBtn4Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'caixaDetalhado.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  vclreport1.Title := vclreport1.Filename;

  VCLReport1.Report.Params.ParamByName('DATAINI').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit1.Text));
  VCLReport1.Report.Params.ParamByName('DATAFIN').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit2.Text));
  // Ccusto
  if (edCodCCusto.Text <> '') then
  begin
    if (not dm.cds_ccusto.Active) then
       dm.cds_ccusto.Open;
    dm.cds_ccusto.Locate('NOME', edCodCCusto.Text,[loPartialKey]);
    VCLReport1.Report.Params.ParamByName('PCCUSTO').Value := dm.cds_ccustoCODIGO.asInteger;
  end
  else
    VCLReport1.Report.Params.ParamByName('PCCUSTO').Value := '0';


  if ComboBox1.Text <> '' then
  begin
    if (not dm.cds_7_contas.Active) then
       dm.cds_7_contas.Open;
    dm.cds_7_contas.Locate('NOME', ComboBox1.Text,[loPartialKey]);
    VCLReport1.Report.Params.ParamByName('COD_CAIXA').Value := dm.cds_7_contasCODIGO.asInteger;
  end
  else
    VCLReport1.Report.Params.ParamByName('COD_CAIXA').Value := 0;
  VCLReport1.Execute;
  VCLReport1.Report.DatabaseInfo.Items[0].DisConnect;

end;

procedure TfRelatorioCaixa.FormCreate(Sender: TObject);
var
  i, j : integer;
begin
  util := TUtils.Create;
  // Popula Status
  j := util.Forma.Count;
  for i := 0 to j - 1 do
  begin
    ComboBox2.Items.Add(util.Forma.Strings[i]);
  end;
end;

procedure TfRelatorioCaixa.BitBtn5Click(Sender: TObject);
begin
  if (RadioGroup1.ItemIndex = 0) then
      VCLReport1.Filename := str_relatorio + 'caixa_movimentoSintetico.rep'
  else
    VCLReport1.Filename := str_relatorio + 'caixa_movimentoSinteticoConsolida.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  vclreport1.Title := vclreport1.Filename;


  VCLReport1.Report.Params.ParamByName('DTAINI').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit1.Text));
  VCLReport1.Report.Params.ParamByName('DTAFIM').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit2.Text));
  if ComboBox1.Text <> '' then
  begin
    if (not dm.cds_7_contas.Active) then
       dm.cds_7_contas.Open;
    dm.cds_7_contas.Locate('NOME', ComboBox1.Text,[loPartialKey]);
    VCLReport1.Report.Params.ParamByName('COD_CAIXA').Value := dm.cds_7_contasCODIGO.asInteger;
  end
  else
    VCLReport1.Report.Params.ParamByName('COD_CAIXA').Value := 0;
  VCLReport1.Execute;
  VCLReport1.Report.DatabaseInfo.Items[0].DisConnect;


end;

procedure TfRelatorioCaixa.cbMesChange(Sender: TObject);
begin
  util.criaIni(cbMes.text);
  util.criaFim(cbMes.text);
  MaskEdit1.Text := util.PeriodoIni;
  MaskEdit2.Text := util.PeriodoFim;
end;

procedure TfRelatorioCaixa.FormDestroy(Sender: TObject);
begin
  util.Destroy;
end;

end.
