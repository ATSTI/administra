unit uCrTituloInclui;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  DBCtrls, dxCore, dxButton, Mask, FMTBcd, DBClient, Provider, SqlExpr,
  Grids, DBGrids, DBXpress, JvExStdCtrls, JvEdit, JvDBSearchEdit, RXCtrls,
  UCHist_Base, UCHistDataset, JvExControls, JvLabel, uUtils;

type
  TfcrTituloInclui = class(TfPai)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    d_3_caixa_banco: TDataSource;
    ds_rateio: TDataSource;
    ds_contas: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    dbeCliente: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label14: TLabel;
    dxButton2: TdxButton;
    Label15: TLabel;
    DBMemo1: TDBMemo;
    Label16: TLabel;
    Label17: TLabel;
    DBGrid1: TDBGrid;
    sds_cr: TSQLDataSet;
    dsp_cr: TDataSetProvider;
    cds_cr: TClientDataSet;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    Label6: TLabel;
    Label18: TLabel;
    BitBtn12: TBitBtn;
    edtcodred: TEdit;
    edtconta: TEdit;
    sds: TSQLDataSet;
    sdsCODIGO: TIntegerField;
    sdsCODREDUZIDO: TStringField;
    sdsNOME: TStringField;
    sds_crCODRECEBIMENTO: TIntegerField;
    sds_crTITULO: TStringField;
    sds_crEMISSAO: TDateField;
    sds_crCODCLIENTE: TIntegerField;
    sds_crDATAVENCIMENTO: TDateField;
    sds_crDATARECEBIMENTO: TDateField;
    sds_crCAIXA: TSmallintField;
    sds_crCONTADEBITO: TIntegerField;
    sds_crCONTACREDITO: TIntegerField;
    sds_crSTATUS: TStringField;
    sds_crVIA: TStringField;
    sds_crFORMARECEBIMENTO: TStringField;
    sds_crDATABAIXA: TDateField;
    sds_crHISTORICO: TStringField;
    sds_crCODVENDA: TIntegerField;
    sds_crCODALMOXARIFADO: TSmallintField;
    sds_crCODVENDEDOR: TSmallintField;
    sds_crCODUSUARIO: TSmallintField;
    sds_crN_DOCUMENTO: TStringField;
    sds_crDATASISTEMA: TSQLTimeStampField;
    sds_crVALORRECEBIDO: TFloatField;
    sds_crJUROS: TFloatField;
    sds_crDESCONTO: TFloatField;
    sds_crPERDA: TFloatField;
    sds_crTROCA: TFloatField;
    sds_crFUNRURAL: TFloatField;
    sds_crVALOR_PRIM_VIA: TFloatField;
    sds_crVALOR_RESTO: TFloatField;
    sds_crVALORTITULO: TFloatField;
    sds_crOUTRO_CREDITO: TFloatField;
    sds_crOUTRO_DEBITO: TFloatField;
    sds_crPARCELAS: TIntegerField;
    sds_crDUP_REC_NF: TStringField;
    sds_crNF: TIntegerField;
    sds_crDP: TIntegerField;
    sds_crBL: TIntegerField;
    cds_crCODRECEBIMENTO: TIntegerField;
    cds_crTITULO: TStringField;
    cds_crEMISSAO: TDateField;
    cds_crCODCLIENTE: TIntegerField;
    cds_crDATAVENCIMENTO: TDateField;
    cds_crDATARECEBIMENTO: TDateField;
    cds_crCAIXA: TSmallintField;
    cds_crCONTADEBITO: TIntegerField;
    cds_crCONTACREDITO: TIntegerField;
    cds_crSTATUS: TStringField;
    cds_crVIA: TStringField;
    cds_crFORMARECEBIMENTO: TStringField;
    cds_crDATABAIXA: TDateField;
    cds_crHISTORICO: TStringField;
    cds_crCODVENDA: TIntegerField;
    cds_crCODALMOXARIFADO: TSmallintField;
    cds_crCODVENDEDOR: TSmallintField;
    cds_crCODUSUARIO: TSmallintField;
    cds_crN_DOCUMENTO: TStringField;
    cds_crDATASISTEMA: TSQLTimeStampField;
    cds_crVALORRECEBIDO: TFloatField;
    cds_crJUROS: TFloatField;
    cds_crDESCONTO: TFloatField;
    cds_crPERDA: TFloatField;
    cds_crTROCA: TFloatField;
    cds_crFUNRURAL: TFloatField;
    cds_crVALOR_PRIM_VIA: TFloatField;
    cds_crVALOR_RESTO: TFloatField;
    cds_crVALORTITULO: TFloatField;
    cds_crOUTRO_CREDITO: TFloatField;
    cds_crOUTRO_DEBITO: TFloatField;
    cds_crPARCELAS: TIntegerField;
    cds_crDUP_REC_NF: TStringField;
    cds_crNF: TIntegerField;
    cds_crDP: TIntegerField;
    cds_crBL: TIntegerField;
    sds_crVALORREC: TFloatField;
    cds_crVALORREC: TFloatField;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    Label19: TLabel;
    sdsCli: TSQLDataSet;
    sdsCliCODCLIENTE: TIntegerField;
    sdsCliNOMECLIENTE: TStringField;
    sdsCliRAZAOSOCIAL: TStringField;
    sdsCliCODBANCO: TSmallintField;
    sdsCliPRAZORECEBIMENTO: TSmallintField;
    sdsCliOBS: TStringField;
    sdsCliSEGMENTO: TSmallintField;
    sdsCliSTATUS: TSmallintField;
    sdsCliNOMEUSUARIO: TStringField;
    sdsCliUF: TStringField;
    sdsCliCODUSUARIO: TIntegerField;
    BuscarConta1: TMenuItem;
    BuscarFornecedor1: TMenuItem;
    ComboBox1: TComboBox;
    Label20: TLabel;
    DBEdit7: TDBEdit;
    DBEdit11: TDBEdit;
    Label21: TLabel;
    DBEdit12: TDBEdit;
    Label22: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    SpeedButton2: TBitBtn;
    Hist_DataSetReceita: TUCHist_DataSet;
    HistoricoReceita: TUCControlHistorico;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    JvLabel1: TJvLabel;
    BitBtn5: TBitBtn;
    procedure DtSrcStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dbeClienteExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure edtcodredExit(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure cds_crSTATUSGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormShow(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    utilcrtitulo : Tutils;
    { Private declarations }
    procedure formarecebimento;
  public
    { Public declarations }
    codigo : integer;
    origem: string;
  end;

var
  fcrTituloInclui: TfcrTituloInclui;
  conta_rateio, usa_rateio: String;
  contacredito, contadebito, ccusto: Integer;

implementation

uses UDm, uListaClientes, uCheques_bol, uFiltro_forn_plano, ufcr,
  uListaCliEscola, ucrTitulo, ucrEscolas, ufcrSaude, ufCrAltera,uListaClientesSaude,
  UDmSaude, sCtrlResize, uProcurar_nf, UDMNF;

{$R *.dfm}

procedure TfcrTituloInclui.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure TfcrTituloInclui.FormCreate(Sender: TObject);
var i, j : integer;
begin
  //inherited;
  sCtrlResize.CtrlResize(TForm(fcrTituloInclui));
  utilcrtitulo := Tutils.Create;
  // Popula Status
  j := utilcrtitulo.Forma.Count;
  for i := 0 to j - 1 do
  begin
    combobox1.Items.Add(utilcrtitulo.Forma.Strings[i]);
  end;

end;

procedure TfcrTituloInclui.FormDestroy(Sender: TObject);
begin
  inherited;
  dm.cds_7_contas.Close;
  dm.cds_ccusto.Close;
  dm.cds_1_contas.Close;
  utilcrtitulo.destroy;
end;

procedure TfcrTituloInclui.dbeClienteExit(Sender: TObject);
begin
 inherited;
  if ((dbeCliente.Text='') and (dbEdit4.Text = '')) then exit;
  if dtsrc.State = dsInsert then
  begin
    if (dbEdit4.Visible = True) then
    begin
      if (sdsCli.Active) then
        sdsCli.Close;
      sdsCli.Params[0].AsString := dbEdit4.Text;
      sdsCli.Open;
      dbEdit5.Text := sdsCliNOMECLIENTE.AsString;
      dm.cds_crCODCLIENTE.AsInteger := sdsCliCODCLIENTE.AsInteger;
      dm.cds_crNOMECLIENTE.AsString := sdsCliNOMECLIENTE.AsString;
      sdsCli.Close;
    end
    else begin
      if dm.scds_cliente_proc.Active then
      dm.scds_cliente_proc.Close;
      dm.scds_cliente_proc.Params[0].Clear;
      dm.scds_cliente_proc.Params[1].Clear;
      dm.scds_cliente_proc.Params[2].AsInteger:=StrToInt(dbeCliente.Text); // troquei prara trazer o RA modulo saude
      dm.scds_cliente_proc.Open;
      if dm.scds_cliente_proc.IsEmpty then begin
        MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
        [mbOk], 0);
        BitBtn1.Click;
        exit;
      end;
      if dm.scds_cliente_procBLOQUEIO.AsString = 'S' then
      begin
        MessageDlg('Cliente com cadastro "BLOQUEADO",  venda não permitida.', mtError, [mbOK], 0);
        exit;
      end;

      dm.cds_crCODCLIENTE.AsInteger:=dm.scds_cliente_procCODCLIENTE.AsInteger;
      dm.cds_crNOMECLIENTE.AsString:=dm.scds_cliente_procNOMECLIENTE.AsString;
      dm.scds_cliente_proc.Close;

    end;
  end
  else
  if dbeCliente.Field.OldValue<>dbeCliente.Field.NewValue then
  begin
    if (dbEdit4.Visible = True) then
    begin
      if (sdsCli.Active) then
        sdsCli.Close;
      sdsCli.Params[0].AsString := dbEdit4.Text;
      sdsCli.Open;
      dbEdit5.Text := sdsCliNOMECLIENTE.AsString;
      dm.cds_crCODCLIENTE.AsInteger := sdsCliCODCLIENTE.AsInteger;
      dm.cds_crNOMECLIENTE.AsString := sdsCliNOMECLIENTE.AsString;
      sdsCli.Close;
    end
    else begin
      if dm.scds_cliente_proc.Active then
      dm.scds_cliente_proc.Close;
      dm.scds_cliente_proc.Params[0].Clear;
      dm.scds_cliente_proc.Params[1].Clear;
      dm.scds_cliente_proc.Params[2].AsInteger:=StrToInt(dbeCliente.Text);
      dm.scds_cliente_proc.Open;
      if dm.scds_cliente_proc.IsEmpty then begin
        MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
        [mbOk], 0);
        BitBtn1.Click;
        exit;
      end;
      dm.cds_crCODCLIENTE.AsInteger:=dm.scds_cliente_procCODCLIENTE.AsInteger;
      dm.cds_crNOMECLIENTE.AsString:=dm.scds_cliente_procNOMECLIENTE.AsString;
      dm.scds_cliente_proc.Close;
    end;
  end;

end;

procedure TfcrTituloInclui.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if (dm.moduloUsado = 'ESCOLA') then
  begin
      fListaCliEscola:=TfListaCliEscola.Create(Application);
      Try
        fListaCliEscola.ShowModal;
        DM.cds_crCODCLIENTE.AsInteger := dm.codcli; //IntToStr(fListaCliEscola.cdsCODCLIENTE.asInteger);
        DM.cds_crRA.AsString := dm.RAALUNO;
        DM.cds_crNOMECLIENTE.AsString := dm.nomecli; //fListaCliEscola.cdsNOMECLIENTE.asString;
      Finally
       fListaCliEscola.ListaCliente.close;
       fListaCliEscola.Free;
       DBEdit8.SetFocus;
      end;
  end

  else if (dm.moduloUsado = 'SAUDE') then
  begin
      fListaClienteSaude:=TfListaClienteSaude.Create(Application);
      Try
       fListaClienteSaude.ShowModal;
        DM.cds_crCODCLIENTE.AsInteger := codcli; //IntToStr(fListaCliEscola.cdsCODCLIENTE.asInteger);
        DM.cds_crRA.AsString := RAALUNO;
        DM.cds_crNOMECLIENTE.AsString := nomecli; //fListaCliEscola.cdsNOMECLIENTE.asString;

       Finally
       fListaClienteSaude.ListaCliente.close;
       fListaClienteSaude.Free;
       DBEdit8.SetFocus;
      end;
  end
  else         // NÃO usa o modulo Pedagogico
  begin
    fProcurar_nf := TfProcurar_nf.Create(self,dmnf.scds_cli_proc);
    fProcurar_nf.BtnProcurar.Click;
    fProcurar_nf.EvDBFind1.DataField := 'NOMECLIENTE';
    fProcurar_nf.btnIncluir.Visible := True;
    try
      if (fProcurar_nf.ShowModal = mrOK) then
      begin
        if dmnf.scds_cli_procSTATUS.AsInteger = 2 then
        begin
          MessageDlg('Cliente com status "INATIVO" para efetuar uma venda para '+#13+#10+'esse cliente, antes vc terá que mudar seu status para "ATIVO".', mtError, [mbOK], 0);
          exit;
        end;
        if dmnf.scds_cli_procBLOQUEIO.AsString = 'S' then
        begin
          MessageDlg('Cliente com cadastro "BLOQUEADO",  venda não permitida.', mtError, [mbOK], 0);
          exit;
        end;
        //prazo := dmnf.scds_cli_procPRAZORECEBIMENTO.AsFloat;
        DM.cds_crCODCLIENTE.AsInteger := dm.codcli;
        DM.cds_crNOMECLIENTE.AsString := dm.varNomeCliente;
      end;
    finally
      dmnf.scds_cli_proc.Close;
      fProcurar_nf.Free;
      DBEdit8.SetFocus;
    end;
  end;
end;

procedure TfcrTituloInclui.dxButton2Click(Sender: TObject);
begin
  inherited;
  Cod_orig := dm.cds_crCODRECEBIMENTO.AsInteger;
  tipo_origem := 'T_RECEBER';
  cod_cli_forn := StrToInt(dbeCliente.Text);
  c_f := 'C'; // C=Cliente
  if DtSrc.State in [dsInsert, dsEdit] then
    btnGravar.Click;
  fCheques_bol.ShowModal;
end;

procedure TfcrTituloInclui.BitBtn12Click(Sender: TObject);
begin
  inherited;
 if DtSrc.DataSet.State in [dsInsert, dsEdit] then
 begin
  tipo_for := 'CONTASRECEITAS';
  fFiltro_forn_plano.BitBtn6.Click;
  fFiltro_forn_plano.ShowModal;
  //fFiltro_forn_plano.BitBtn1.Click;
  edtcodred.Text := varconta_cod;
  edtconta.Text := varconta_nome;
  usa_rateio := com_rateio;
  dm.cds_crCONTACREDITO.AsInteger := codigo_conta;
  conta_rateio := varconta;
  dbeCliente.SetFocus;
 end;
   varconta_cod := '';
   varconta_nome := '';
end;

procedure TfcrTituloInclui.btnProcurarClick(Sender: TObject);
var utilCrTitulo : Tutils;
begin
  inherited;
  fcrproc:=Tfcrproc.Create(Application);

  if (dm.moduloUsado = 'ESCOLA') then
  begin
    fcrEscolas := TfcrEscolas.Create(Application);
    try
      fcrEscolas.btnIncluir.Enabled := False;
      fcrEscolas.btnSair.Caption := 'F9-Ver';
      fcrEscolas.ShowModal;
      if dm.cds_cr.Active then
        dm.cds_cr.Close;
      dm.cds_cr.Params[0].AsInteger := fcrEscolas.scdsCr_procCODRECEBIMENTO.AsInteger;
      dm.cds_cr.Open;
      dm.cds_cr.Edit;
      //preenche combobox forma de recebimanto
      formarecebimento;
      if (sds.Active) then
       sds.Close;
      sds.Params[0].AsInteger := dm.cds_crCONTACREDITO.AsInteger;
      sds.Open;
      edtcodred.Text := sds.Fields[1].AsString;
      edtconta.Text := sds.Fields[2].AsString;
      if (sds.Active) then
       sds.Close;

      //aqui mostro parcelas no dbgrig...
      if (cds_cr.Active) then
       cds_cr.Close;
      cds_cr.Params[0].AsString := dm.cds_crTITULO.AsString;
      cds_cr.Open;

    finally
      fcrEscolas.Free;
    end;
  end
  else if (dm.moduloUsado = 'SAUDE') then
  begin
    fcrProcSaude := TfcrProcSaude.Create(Application);
    try
      fcrProcSaude.btnSair.Caption := 'F9-Ver';
      fcrProcSaude.ShowModal;
     // fcrProcSaude.ShowModal;
      if dm.cds_cr.Active then
        dm.cds_cr.Close;
      dm.cds_cr.Params[0].AsInteger := fCrProcSaude.scdsCr_procCODRECEBIMENTO.AsInteger;
      dm.cds_cr.Open;
      dm.cds_cr.Edit;

      //preenche combobox forma de recebimanto
      formarecebimento;

      if (sds.Active) then
       sds.Close;
      sds.Params[0].AsInteger := dm.cds_crCONTACREDITO.AsInteger;
      sds.Open;
      edtcodred.Text := sds.Fields[1].AsString;
      edtconta.Text := sds.Fields[2].AsString;
      if (sds.Active) then
       sds.Close;

      //aqui mostro parcelas no dbgrig...
      if (cds_cr.Active) then
       cds_cr.Close;
      cds_cr.Params[0].AsString := dm.cds_crTITULO.AsString;
      cds_cr.Open;

    finally
      fcrProcSaude.Free;
    end;
  end
  else begin
    try
      fcrproc.btnIncluir.Enabled := False;
      fcrproc.btnSair.Caption := 'F9-Ver';
      fcrproc.ShowModal;
      if dm.cds_cr.Active then
        dm.cds_cr.Close;
      dm.cds_cr.Params[0].AsInteger := fCrProc.scdsCr_procCODRECEBIMENTO.AsInteger;
      dm.cds_cr.Open;
      dm.cds_cr.Edit;
      //preenche combobox forma de recebimanto
      formarecebimento;

      if (sds.Active) then
       sds.Close;
      sds.Params[0].AsInteger := dm.cds_crCONTACREDITO.AsInteger;
      sds.Open;
      edtcodred.Text := sds.Fields[1].AsString;
      edtconta.Text := sds.Fields[2].AsString;
      if (sds.Active) then
       sds.Close;

      //aqui mostro parcelas no dbgrig...
      if (cds_cr.Active) then
       cds_cr.Close;
      cds_cr.Params[0].AsString := dm.cds_crTITULO.AsString;
      cds_cr.Open;
    finally
      fcrproc.Free;
    end;
    ComboBox1.ItemIndex := utilCrTitulo.retornaForma(cds_crFORMARECEBIMENTO.AsString);
    fcrTituloInclui.SetFocus;
  end;
end;

procedure TfcrTituloInclui.btnIncluirClick(Sender: TObject);
begin
  if (dm.cds_cr.Active) then
    dm.cds_cr.Close;
  if (cds_cr.Active) then
    cds_cr.Close;

  edtcodred.Clear;
  edtconta.Clear;
  inherited;
  dm.cds_crVIA.AsString := '1';
  dm.cds_crFORMARECEBIMENTO.AsString := '1';
  dm.cds_crSTATUS.AsString := '5-';
  dm.cds_crEMISSAO.AsDateTime := Now;
  dm.cds_crDATAVENCIMENTO.AsDateTime := Now;  
  dm.cds_crPARCELAS.AsInteger := 1;
  dm.cds_crOUTRO_CREDITO.AsFloat := 0;
  dm.cds_crVALORRECEBIDO.AsFloat := 0;
  if (dm.moduloUsado <> 'ACADEMIA') then
    DBEdit1.SetFocus;
end;

procedure TfcrTituloInclui.btnGravarClick(Sender: TObject);
 var
   varsqlx, str_sql, str_sqla, inclusao, vlr_tit, vlr_rec: string;
   vlr_deb, vlr_cre, vlr_saldo: double;
begin
  dm.cds_crDATASISTEMA.AsDateTime := Now;
  if (dm.cds_crVIA.AsString = '1') then
    dm.cds_crVALOR_PRIM_VIA.AsFloat := dm.cds_crVALORTITULO.AsFloat;
  dm.cds_crVALOR_RESTO.AsFloat := dm.cds_crVALORTITULO.AsFloat;
  if (dm.cds_crOUTRO_CREDITO.AsFloat > 0) then
  begin
    dm.cds_crVALOR_PRIM_VIA.AsFloat := dm.cds_crVALORTITULO.AsFloat - dm.cds_crOUTRO_CREDITO.AsFloat;
    dm.cds_crVALOR_RESTO.AsFloat := dm.cds_crVALORTITULO.AsFloat - dm.cds_crOUTRO_CREDITO.AsFloat;
    dm.cds_crVALORTITULO.AsFloat := dm.cds_crVALORTITULO.AsFloat - dm.cds_crOUTRO_CREDITO.AsFloat;
  end;
  if dm.cds_crVALORRECEBIDO.AsFloat > 0 then
  begin
    if DBLookupComboBox3.Text = '' then
    begin
      MessageDlg('Informe o Caixa ou Banco para a Entrada.', mtWarning, [mbOK], 0);
      exit;
    end;

    if (ComboBox1.Text <> '') then
    begin
      dm.cds_crFORMARECEBIMENTO.AsString := utilcrtitulo.pegaForma(ComboBox1.Text);
    end
    else begin
      MessageDlg('Informe a Forma de Recebimento.', mtWarning, [mbOK], 0);
      exit;
    end;
  end;

  if DtSrc.DataSet.State in [dsInsert] then
  begin
    inclusao := 'SIM';
    if dm.cds_crCONTADEBITO.IsNull then
      dm.cds_crCONTADEBITO.AsInteger := contacredito;
    //Abre a c_genid para pegar o número do CODRECEBIMENTO
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(COD_AREC, 1) as INTEGER) as CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    dm.cds_crCODRECEBIMENTO.AsInteger := dm.c_6_genid.fields[0].AsInteger;
    dm.c_6_genid.Close;
  end;

  if (dm.cds_crTITULO.IsNull) then
    dm.cds_crTITULO.AsString := formatdatetime('yyyy',dm.cds_crEMISSAO.AsDateTime) +
    '-' + IntToStr(dm.cds_crCODRECEBIMENTO.AsInteger);
  vlr_tit := format('%12.2f',[dm.cds_crVALORTITULO.AsFloat]);
  vlr_rec := format('%12.2f',[dm.cds_crVALORRECEBIDO.AsFloat]);
  dm.cds_crDATABAIXA.AsDateTime := date;
  dm.cds_crCODUSUARIO.AsInteger := usulog;
  if ( vlr_tit = vlr_rec ) then
    dm.cds_crSTATUS.AsString := '7-';

  inherited;

  if (inclusao = 'SIM') then
  begin
    // Verifica se a conta de despesa lançada usa rateio
    // Se sim, abre o form de rateio.
    str_sqla := ('execute procedure LANCA_CONT_VENDA_REC (' +
    '''' + dm.cds_crTITULO.AsString + ''',' + '''' + formatDateTime('mm/dd/yyyy',dm.cds_crEMISSAO.AsDateTime) + ''',' + IntTostr(dm.cds_crCODCLIENTE.AsInteger) + ')');
    str_sql := ('execute procedure GERA_PARCELAS_REC (' +
    '''' + dm.cds_crTITULO.AsString + ''',' + '''' + formatDateTime('mm/dd/yyyy',dm.cds_crEMISSAO.AsDateTime) + ''',' + IntTostr(dm.cds_crCODCLIENTE.AsInteger) + ')');
    dm.sqlsisAdimin.ExecuteDirect(str_sqla);
    dm.sqlsisAdimin.ExecuteDirect(str_sql);
  end;

  if (cds_cr.Active) then
     cds_cr.Close;
  cds_cr.Params[0].AsString := dm.cds_crTITULO.AsString;
  cds_cr.Open;

end;

procedure TfcrTituloInclui.edtcodredExit(Sender: TObject);
var str: string;
begin
  inherited;
  if (DM.c_1_planoc.Active) then
    DM.c_1_planoc.Close;
  str := 'Select * from PLANO ';
  str := str + 'WHERE ';
  str := str + 'CODREDUZIDO = ';
  str := str + '''' + edtcodred.Text + '''';
  DM.c_1_planoc.CommandText := str;
  DM.c_1_planoc.Open;
  edtconta.Text := dm.c_1_planocNOME.AsString;
  dm.cds_crCONTACREDITO.AsInteger := dm.c_1_planocCODIGO.AsInteger;
  dm.c_1_planoc.Close;
end;

procedure TfcrTituloInclui.btnExcluirClick(Sender: TObject);
var
  deleta : String;
  TD: TTransactionDesc;
begin

  if  MessageDlg('Confirma a exclusão do Título? ' ,
    mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;

  deleta := 'SELECT * FROM RECEBIMENTO WHERE TITULO = ';
  deleta := deleta + '''' + DM.cds_crTITULO.AsString + '''';
  deleta := deleta + ' and CODCLIENTE = ';
  deleta := deleta +  IntToStr(DM.cds_crCODCLIENTE.AsInteger);
  deleta := deleta + ' and EMISSAO = ';
  deleta := deleta + '''' + formatdatetime('mm/dd/yy',DM.cds_crEMISSAO.AsDateTime) + '''';
  deleta := deleta + ' and STATUS = ' + QuotedStr('5-');
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  if (dm.cdsBusca.Active) then
    dm.cdsBusca.Close;
  dm.cdsBusca.CommandText := deleta;
  dm.cdsBusca.Open;
  if (dm.cdsBusca.RecordCount = 0) then
  begin
    MessageDlg('Nenhum Título a ser excluído.', mtInformation, [mbOK], 0);
  end;
  Try
    dm.sqlsisAdimin.StartTransaction(TD);
    While not dm.cdsBusca.Eof do
    begin
      dm.cdsBusca.Delete;
      if (dm.cdsBusca.ApplyUpdates(0) > 0) then
        exit;
    end;
    dm.sqlsisAdimin.Commit(TD);
    if (dm.cds_cr.Active) then
      dm.cds_cr.Close;

    if (cds_cr.Active) then
      cds_cr.Close;

    MessageDlg('Título excluído com sucesso.', mtInformation, [mbOK], 0);
  except
    dm.sqlsisAdimin.Rollback(TD);
    //MessageDlg('Erro para excluir, exclusão não efetuada.', mtError, [mbOK], 0);
  end;

end;

procedure TfcrTituloInclui.formarecebimento;
begin
    if (dm.cds_crFORMARECEBIMENTO.asString <> '') then
    begin
        if (dm.cds_crFORMARECEBIMENTO.AsString = '1') then
          ComboBox1.ItemIndex := 0
        else if (dm.cds_crFORMARECEBIMENTO.AsString = '2') then
          ComboBox1.ItemIndex := 1
        else if (dm.cds_crFORMARECEBIMENTO.AsString = '3') then
          ComboBox1.ItemIndex := 2
        else if (dm.cds_crFORMARECEBIMENTO.AsString = '4') then
          ComboBox1.ItemIndex := 3
        else if (dm.cds_crFORMARECEBIMENTO.AsString = '5') then
          ComboBox1.ItemIndex := 4
        else if (dm.cds_crFORMARECEBIMENTO.AsString = '6') then
          ComboBox1.ItemIndex := 5
        else if (dm.cds_crFORMARECEBIMENTO.AsString = '7') then
          ComboBox1.ItemIndex := 6
        else if (dm.cds_crFORMARECEBIMENTO.AsString = '8') then
          ComboBox1.ItemIndex := 7
        else if (dm.cds_crFORMARECEBIMENTO.AsString = '9') then
          ComboBox1.ItemIndex := 8
        else if (dm.cds_crFORMARECEBIMENTO.AsString = 'A') then
          ComboBox1.ItemIndex := 9
        else if (dm.cds_crFORMARECEBIMENTO.AsString = 'B') then
          ComboBox1.ItemIndex := 10
        else if (dm.cds_crFORMARECEBIMENTO.AsString = 'C') then
          ComboBox1.ItemIndex := 11
        else if (dm.cds_crFORMARECEBIMENTO.AsString = 'D') then
          ComboBox1.ItemIndex := 12
        else if (dm.cds_crFORMARECEBIMENTO.AsString = 'E') then
          ComboBox1.ItemIndex := 13
        else if (dm.cds_crFORMARECEBIMENTO.AsString = 'F') then
          ComboBox1.ItemIndex := 14;
    end;

end;

procedure TfcrTituloInclui.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  fCrAltera := TfCrAltera.Create(Application);
  try
    if (not fCrAltera.cds.Active) then
      fCrAltera.cds.Close;
    fCrAltera.DBGrid1.Columns[3].FieldName := 'DATARECEBIMENTO';
    fCrAltera.DBEdit3.DataField := 'DATARECEBIMENTO';
    fCrAltera.cds.Params[0].AsString := cds_crTITULO.AsString;
    fCrAltera.cds.Params[1].AsInteger := cds_crCODCLIENTE.AsInteger;
    fCrAltera.cds.Params[2].AsDateTime := cds_crEMISSAO.AsDateTime;
    fCrAltera.cds.Open;
    fCrAltera.Label1.Caption := cds_crTITULO.AsString;
    fCrAltera.Label2.Caption := cds_crTITULO.AsString;
    fCrAltera.ShowModal;
    cds_cr.Refresh;
  finally
    fCrAltera.Free;
  end;

end;

procedure TfcrTituloInclui.DBEdit10Exit(Sender: TObject);
begin
  inherited;
  if (dm.cds_crVALORRECEBIDO.AsFloat > 0) then
  begin
    dm.cds_crDATARECEBIMENTO.AsDateTime := dm.cds_crDATAVENCIMENTO.AsDateTime;
    dm.cds_crDATACONSOLIDA.AsDateTime := dm.cds_crDATAVENCIMENTO.AsDateTime;
  end;
  if (dm.cds_crVALORRECEBIDO.AsFloat = 0) then
  begin
    dm.cds_crDATARECEBIMENTO.Clear;
    dm.cds_crDATACONSOLIDA.Clear;
  end;
end;

procedure TfcrTituloInclui.BitBtn2Click(Sender: TObject);
begin
  inherited;
  dbEdit12.Clear;
  dm.cds_crDATACONSOLIDA.Clear;
end;

procedure TfcrTituloInclui.BitBtn3Click(Sender: TObject);
begin
  inherited;
  dbEdit11.Clear;
  dm.cds_crDATACONSOLIDA.Clear;
end;

procedure TfcrTituloInclui.cds_crSTATUSGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = '5-' then
    begin
     Text:='PENDENTE';
     exit;
    end;
  if Sender.AsString = '6-' then
    begin
     Text:='PENDENTE CONTABILIZADO';
     exit;
    end;
  if Sender.AsString = '7-' then
    begin
     Text:='RECEBIDO';
     exit;
    end;
  if Sender.AsString = '1-' then
    begin
     Text:='AGUARDANDO';
     exit;
    end;
  if Sender.AsString = '4-' then
    begin
     Text:='CARTÓRIO';
     exit;
    end;
  if Sender.AsString = '2-' then
    begin
     Text:='ANULADO';
     exit;
    end;
  if Sender.AsString = '3-' then
    begin
     Text:='CANCELADO';
     exit;
    end;
  if Sender.AsString = '8-' then
    begin
     Text:='SUSPENSO';
     exit;
    end;

end;

procedure TfcrTituloInclui.FormShow(Sender: TObject);
begin
 // inherited;
  // Local que gerou as receitas
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTRORECEITA';
  dm.cds_parametro.Open;
  if dm.cds_ccusto.Active then
    dm.cds_ccusto.Close;
  dm.cds_ccusto.Params[0].AsString := dm.cds_parametroDADOS.AsString;
  dm.cds_ccusto.Open;
  // Listas as contas de receitas
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CONTASRECEITAS';
  dm.cds_parametro.Open;
  if dm.cds_1_contas.Active then
    dm.cds_1_contas.Close;
  dm.cds_1_contas.Params[0].AsString := dm.cds_parametroDADOS.AsString;
  dm.cds_1_contas.Open;
  // Listo as Contas Caixa
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CAIXA_BANCO';
  dm.cds_parametro.Open;
  if dm.cds_7_contas.Active then
    dm.cds_7_contas.Close;
  dm.cds_7_contas.Params[0].AsString := dm.cds_parametroDADOS.AsString;
  dm.cds_7_contas.Open;
  //Usa centro de Custo
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTRO CUSTO';
  dm.cds_parametro.Open;
  if dm.cds_parametroDADOS.AsString = 'N' then
  begin
    DBLookupComboBox1.Enabled := false;
  end;
  dm.cds_parametro.Close;

  if (dm.moduloUsado = 'ACADEMIA') then
  begin
    formaRecebimento;
    //aqui mostro parcelas no dbgrig...
  end;
end;

procedure TfcrTituloInclui.BitBtn5Click(Sender: TObject);
var
  deleta : String;
  TD: TTransactionDesc;
begin

  if  MessageDlg('Confirma a exclusão do Título? ' ,
    mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;

  deleta := 'SELECT * FROM RECEBIMENTO WHERE CODRECEBIMENTO = ';
  deleta := deleta +  IntToStr(DM.cds_crCODRECEBIMENTO.AsInteger);
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  if (dm.cdsBusca.Active) then
    dm.cdsBusca.Close;
  dm.cdsBusca.CommandText := deleta;
  dm.cdsBusca.Open;
  if (dm.cdsBusca.RecordCount = 0) then
  begin
    MessageDlg('Nenhum Título a ser excluído.', mtInformation, [mbOK], 0);
  end;
  Try
    dm.sqlsisAdimin.StartTransaction(TD);
    While not dm.cdsBusca.Eof do
    begin
      dm.cdsBusca.Delete;
      if (dm.cdsBusca.ApplyUpdates(0) > 0) then
        exit;
    end;
    dm.sqlsisAdimin.Commit(TD);
    if (dm.cds_cr.Active) then
      dm.cds_cr.Close;

    if (cds_cr.Active) then
      cds_cr.Close;

    MessageDlg('Título excluído com sucesso.', mtInformation, [mbOK], 0);
  except
    dm.sqlsisAdimin.Rollback(TD);
    //MessageDlg('Erro para excluir, exclusão não efetuada.', mtError, [mbOK], 0);
  end;

end;

end.
