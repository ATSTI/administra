unit uRelatorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, rpcompobase, rpvclreport, ExtCtrls, DB,
  MMJPanel, XPMenu, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit;

type
  TfRelatorio = class(TForm)
    MMJPanel1: TMMJPanel;
    BitBtn5: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn6: TBitBtn;
    MMJPanel2: TMMJPanel;
    VCLReport1: TVCLReport;
    edCodCliente: TEdit;
    Label9: TLabel;
    edCliente: TEdit;
    Label10: TLabel;
    BitBtn1: TBitBtn;
    edtcodred: TEdit;
    BitBtn12: TBitBtn;
    edtconta: TEdit;
    BitBtn8: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    edCodCCusto: TComboBox;
    Label11: TLabel;
    ComboBox1: TComboBox;
    Label5: TLabel;
    XPMenu1: TXPMenu;
    BitBtn7: TBitBtn;
    BitBtn9: TBitBtn;
    GroupBox1: TGroupBox;
    BitBtn4: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    cbMes: TComboBox;
    MaskEdit1: TJvDatePickerEdit;
    MaskEdit2: TJvDatePickerEdit;
    Label1: TLabel;
    BitBtn13: TBitBtn;
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure edtcodredExit(Sender: TObject);
    procedure edCodClienteExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure cbMesChange(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelatorio: TfRelatorio;

implementation

uses UDm, uProcurar, uFiltro_forn_plano, sCtrlResize, uUtils;

{$R *.dfm}

procedure TfRelatorio.BitBtn8Click(Sender: TObject);
begin
  fProcurar:=TfProcurar.create(self,dm.scds_forn_proc);
  try
    fProcurar.btnImprimir.Visible := true;
    fProcurar.RadioGroup1.Visible := true;
    dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
    dm.scds_forn_proc.Params.ParamByName('pSegmento').AsInteger := 0;    
    fProcurar.BtnProcurar.Click;
    fProcurar.EvDBFind1.DataField := 'NOMEFORNECEDOR';
    fProcurar.RadioGroup2.Visible := True;
//    fProcurar.ShowModal;
    if fProcurar.ShowModal=mrOk then
    begin
     edCodCliente.Text:=IntToStr(dm.scds_forn_procCODFORNECEDOR.asInteger);
     edCliente.Text:=dm.scds_forn_procNOMEFORNECEDOR.asString;
    end;
  Finally
    dm.scds_forn_proc.close;
    fProcurar.Free;
  end;

end;

procedure TfRelatorio.BitBtn1Click(Sender: TObject);
begin
  edCodCliente.Text:='';
     edCliente.Text:='';
end;

procedure TfRelatorio.BitBtn2Click(Sender: TObject);
begin
  edtcodred.Text:='';
     edtconta.Text:='';
end;

procedure TfRelatorio.BitBtn12Click(Sender: TObject);
begin
  tipo_for := 'CONTASDESPESAS';
  fFiltro_forn_plano.BitBtn6.Click;
  fFiltro_forn_plano.ShowModal;
  edtcodred.Text := varconta_cod_r;
  edtconta.Text := varconta_nome;
  varconta_cod := '';
  varconta_nome := '';
end;

procedure TfRelatorio.edtcodredExit(Sender: TObject);
var strc: string;
begin
  if (edtcodred.text <> '') then
  begin
    if (DM.c_1_planoc.Active) then
      DM.c_1_planoc.Close;
    strc := 'Select * from PLANO ';
    strc := strc + 'WHERE ';
    strc := strc + 'CODIGO = ';
    strc := strc + '''' + edtcodred.Text + '''';
    DM.c_1_planoc.CommandText := strc;
    DM.c_1_planoc.Open;
    if DM.c_1_planoc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      BitBtn12.Click;
      exit;
    end;
    edtconta.Text := dm.c_1_planocNOME.AsString;
    edtcodred.Text := IntToStr(dm.c_1_planocCODIGO.AsInteger);
    dm.c_1_planoc.Close;
  end;
end;

procedure TfRelatorio.edCodClienteExit(Sender: TObject);
begin
   if edCodCliente.Text = '' then exit;
   if dm.scds_forn_proc.Active then
      dm.scds_forn_proc.Close;
   dm.scds_forn_proc.Params[0].Clear;
   dm.scds_forn_proc.Params[1].Clear;
   dm.scds_forn_proc.Params[2].AsInteger := StrToInt(edCodCliente.Text);
   dm.scds_forn_proc.Open;
     edCliente.Text := dm.scds_forn_procNOMEFORNECEDOR.asString;
   dm.scds_forn_proc.Close;
end;

procedure TfRelatorio.FormShow(Sender: TObject);
var conta_local: String;
begin
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
    //============================================ =======

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
    //============================================

end;

procedure TfRelatorio.BitBtn5Click(Sender: TObject);
begin
    VCLReport1.Filename := str_relatorio + 'rel_listapagamentos.rep';
    VCLReport1.Title := VCLReport1.Filename;
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    if MaskEdit1.Text = '  /  /    ' then
    begin
      MessageDlg('Preencha o Campo Período !', mtWarning, [mbOK], 0);
      MaskEdit1.SetFocus;
      exit;
    end
    else
      VCLReport1.Report.Params.ParamByName('DTAINI').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit1.Text));

    if MaskEdit2.Text = '  /  /    ' then
    begin
      MessageDlg('Preencha o Campo Período !', mtWarning, [mbOK], 0);
      MaskEdit2.SetFocus;
      exit;
    end
    else
      VCLReport1.Report.Params.ParamByName('DTAFIM').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit2.Text));

    if edCodCliente.Text <> '' then
      VCLReport1.Report.Params.ParamByName('COD_FOR').Value := StrToInt(edCodCliente.Text)
    else
      VCLReport1.Report.Params.ParamByName('COD_FOR').Value := 9999999;
    if edtcodred.Text <> '' then
      VCLReport1.Report.Params.ParamByName('COD_CONTA').Value := StrToInt(edtcodred.Text)
    else
      VCLReport1.Report.Params.ParamByName('COD_CONTA').Value := 9999999;
    if edCodCCusto.Text <> '' then
    begin
      if (not dm.cds_ccusto.Active) then
         dm.cds_ccusto.Open;
      dm.cds_ccusto.Locate('NOME', edCodCCusto.Text,[loPartialKey]);
      VCLReport1.Report.Params.ParamByName('COD_CCUSTO').Value := dm.cds_ccustoCODIGO.asInteger;
    end
    else
      VCLReport1.Report.Params.ParamByName('COD_CCUSTO').Value := 0;
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
    //  MessageDlg('Não há dados para Imprimir !', mtWarning, [mbOK], 0);
end;

procedure TfRelatorio.BitBtn3Click(Sender: TObject);
begin
    VCLReport1.Filename := str_relatorio + 'rel_listapagamentos_pendente.rep';
    VCLReport1.Title := VCLReport1.Filename;
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport1.Report.Params.ParamByName('DTAINI').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit1.Text));
    VCLReport1.Report.Params.ParamByName('DTAFIM').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit2.Text));
    if edCodCliente.Text <> '' then
      VCLReport1.Report.Params.ParamByName('COD_FOR').Value := StrToInt(edCodCliente.Text)
    else
      VCLReport1.Report.Params.ParamByName('COD_FOR').Value := 9999999;
    if edtcodred.Text <> '' then
      VCLReport1.Report.Params.ParamByName('COD_CONTA').Value := StrToInt(edtcodred.Text)
    else
      VCLReport1.Report.Params.ParamByName('COD_CONTA').Value := 9999999;
    if edCodCCusto.Text <> '' then
    begin
      if (not dm.cds_ccusto.Active) then
         dm.cds_ccusto.Open;
      dm.cds_ccusto.Locate('NOME', edCodCCusto.Text,[loPartialKey]);
      VCLReport1.Report.Params.ParamByName('COD_CCUSTO').Value := dm.cds_ccustoCODIGO.asInteger;
    end
    else
      VCLReport1.Report.Params.ParamByName('COD_CCUSTO').Value := 0;
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
end;

procedure TfRelatorio.BitBtn4Click(Sender: TObject);
begin
    VCLReport1.Filename := str_relatorio + 'rel_lista_pag_periodo.rep';
    VCLReport1.Title := VCLReport1.Filename;
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport1.Report.Params.ParamByName('DTAINI').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit1.Text));
    VCLReport1.Report.Params.ParamByName('DTAFIM').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit2.Text));
    if edCodCliente.Text <> '' then
      VCLReport1.Report.Params.ParamByName('COD_FOR').Value := StrToInt(edCodCliente.Text)
    else
      VCLReport1.Report.Params.ParamByName('COD_FOR').Value := 9999999;

    if edCodCCusto.Text <> '' then
    begin
      if (not dm.cds_ccusto.Active) then
         dm.cds_ccusto.Open;
      dm.cds_ccusto.Locate('NOME', edCodCCusto.Text,[loPartialKey]);
      VCLReport1.Report.Params.ParamByName('COD_CCUSTO').Value := dm.cds_ccustoCODIGO.asInteger;
    end
    else
      VCLReport1.Report.Params.ParamByName('COD_CCUSTO').Value := 0;

    if edtcodred.Text <> '' then
      VCLReport1.Report.Params.ParamByName('COD_CONTA').Value := StrToInt(edtcodred.Text)
    else
      VCLReport1.Report.Params.ParamByName('COD_CONTA').Value := 9999999;

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
end;

procedure TfRelatorio.BitBtn6Click(Sender: TObject);
begin
   Close;
end;

procedure TfRelatorio.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfRelatorio.BitBtn9Click(Sender: TObject);
begin

VCLReport1.Filename := str_relatorio + 'rel_contas_pagar.rep';
    VCLReport1.Title := VCLReport1.Filename;
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport1.Report.Params.ParamByName('DTAINI').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit1.Text));
    VCLReport1.Report.Params.ParamByName('DTAFIM').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit2.Text));
    if edCodCliente.Text <> '' then
      VCLReport1.Report.Params.ParamByName('COD_FOR').Value := StrToInt(edCodCliente.Text)
    else
      VCLReport1.Report.Params.ParamByName('COD_FOR').Value := 9999999;

    if edCodCCusto.Text <> '' then
    begin
      if (not dm.cds_ccusto.Active) then
         dm.cds_ccusto.Open;
      dm.cds_ccusto.Locate('NOME', edCodCCusto.Text,[loPartialKey]);
      VCLReport1.Report.Params.ParamByName('COD_CCUSTO').Value := dm.cds_ccustoCODIGO.asInteger;
    end
    else
      VCLReport1.Report.Params.ParamByName('COD_CCUSTO').Value := 0;

    if edtcodred.Text <> '' then
      VCLReport1.Report.Params.ParamByName('COD_CONTA').Value := StrToInt(edtcodred.Text)
    else
      VCLReport1.Report.Params.ParamByName('COD_CONTA').Value := 9999999;

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

end;

procedure TfRelatorio.BitBtn7Click(Sender: TObject);
begin

VCLReport1.Filename := str_relatorio + 'rel_despesas_pagar.rep';
    VCLReport1.Title := VCLReport1.Filename;
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport1.Report.Params.ParamByName('DTAINI').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit1.Text));
    VCLReport1.Report.Params.ParamByName('DTAFIM').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit2.Text));
    if edCodCliente.Text <> '' then
      VCLReport1.Report.Params.ParamByName('COD_FOR').Value := StrToInt(edCodCliente.Text)
    else
      VCLReport1.Report.Params.ParamByName('COD_FOR').Value := 9999999;

    if edCodCCusto.Text <> '' then
    begin
      if (not dm.cds_ccusto.Active) then
         dm.cds_ccusto.Open;
      dm.cds_ccusto.Locate('NOME', edCodCCusto.Text,[loPartialKey]);
      VCLReport1.Report.Params.ParamByName('COD_CCUSTO').Value := dm.cds_ccustoCODIGO.asInteger;
    end
    else
      VCLReport1.Report.Params.ParamByName('COD_CCUSTO').Value := 0;

    if edtcodred.Text <> '' then
      VCLReport1.Report.Params.ParamByName('COD_CONTA').Value := StrToInt(edtcodred.Text)
    else
      VCLReport1.Report.Params.ParamByName('COD_CONTA').Value := 9999999;

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

end;

procedure TfRelatorio.BitBtn10Click(Sender: TObject);
begin
    VCLReport1.Filename := str_relatorio + 'rel_lista_pag_vctoSintetico.rep';
    VCLReport1.Title := VCLReport1.Filename;
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport1.Report.Params.ParamByName('DTAINI').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit1.Text));
    VCLReport1.Report.Params.ParamByName('DTAFIM').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit2.Text));
    if edCodCliente.Text <> '' then
      VCLReport1.Report.Params.ParamByName('COD_FOR').Value := StrToInt(edCodCliente.Text)
    else
      VCLReport1.Report.Params.ParamByName('COD_FOR').Value := 9999999;

    if edCodCCusto.Text <> '' then
    begin
      if (not dm.cds_ccusto.Active) then
         dm.cds_ccusto.Open;
      dm.cds_ccusto.Locate('NOME', edCodCCusto.Text,[loPartialKey]);
      VCLReport1.Report.Params.ParamByName('COD_CCUSTO').Value := dm.cds_ccustoCODIGO.asInteger;
    end
    else
      VCLReport1.Report.Params.ParamByName('COD_CCUSTO').Value := 0;

    if edtcodred.Text <> '' then
      VCLReport1.Report.Params.ParamByName('COD_CONTA').Value := StrToInt(edtcodred.Text)
    else
      VCLReport1.Report.Params.ParamByName('COD_CONTA').Value := 9999999;

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

end;

procedure TfRelatorio.BitBtn11Click(Sender: TObject);
begin
    VCLReport1.Filename := str_relatorio + 'rel_lista_pag_vcto.rep';
    VCLReport1.Title := VCLReport1.Filename;
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport1.Report.Params.ParamByName('DTAINI').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit1.Text));
    VCLReport1.Report.Params.ParamByName('DTAFIM').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit2.Text));
    if edCodCliente.Text <> '' then
      VCLReport1.Report.Params.ParamByName('COD_FOR').Value := StrToInt(edCodCliente.Text)
    else
      VCLReport1.Report.Params.ParamByName('COD_FOR').Value := 9999999;

    if edCodCCusto.Text <> '' then
    begin
      if (not dm.cds_ccusto.Active) then
         dm.cds_ccusto.Open;
      dm.cds_ccusto.Locate('NOME', edCodCCusto.Text,[loPartialKey]);
      VCLReport1.Report.Params.ParamByName('COD_CCUSTO').Value := dm.cds_ccustoCODIGO.asInteger;
    end
    else
      VCLReport1.Report.Params.ParamByName('COD_CCUSTO').Value := 0;

    if edtcodred.Text <> '' then
      VCLReport1.Report.Params.ParamByName('COD_CONTA').Value := StrToInt(edtcodred.Text)
    else
      VCLReport1.Report.Params.ParamByName('COD_CONTA').Value := 9999999;

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

end;

procedure TfRelatorio.cbMesChange(Sender: TObject);
var  periodo : TUtils;
begin
  periodo := TUtils.Create;
  periodo.criaIni(cbMes.text);
  periodo.criaFim(cbMes.text);
  MaskEdit1.Text := periodo.PeriodoIni;
  MaskEdit2.Text := periodo.PeriodoFim;
  periodo.Destroy;
end;

procedure TfRelatorio.BitBtn13Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'extrato_pag.rep';
  VCLReport1.Title := VCLReport1.Filename;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('DATAINI').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit1.Text));
  VCLReport1.Report.Params.ParamByName('DATAFIN').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit2.Text));
  if edCodCliente.Text <> '' then
    VCLReport1.Report.Params.ParamByName('COD_FORNEC').Value := StrToInt(edCodCliente.Text)
  else
    VCLReport1.Report.Params.ParamByName('COD_FORNEC').Value := 9999999;

  if edCodCCusto.Text <> '' then
  begin
    if (not dm.cds_ccusto.Active) then
       dm.cds_ccusto.Open;
    dm.cds_ccusto.Locate('NOME', edCodCCusto.Text,[loPartialKey]);
    VCLReport1.Report.Params.ParamByName('PCCUSTO').Value := dm.cds_ccustoCODIGO.asInteger;
  end
  else
    VCLReport1.Report.Params.ParamByName('PCCUSTO').Value := 0;

  if edtcodred.Text <> '' then
    VCLReport1.Report.Params.ParamByName('CONTA').Value := StrToInt(edtcodred.Text)
  else
    VCLReport1.Report.Params.ParamByName('CONTA').Value := 9999999;

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
end;

end.
