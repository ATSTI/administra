unit uFiltroMovimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, Grids, DBGrids, Menus, SqlExpr, Provider, DB, DBClient,
  StdCtrls, ExtCtrls, Buttons, MMJPanel, DBLocal, DBLocalS, Mask,
  JvFormPlacement, JvComponentBase, JvAppStorage, JvAppXMLStorage,
  rpcompobase, rpvclreport, JvExDBGrids, JvDBGrid, JvExControls, JvLabel,
  JvExMask, JvToolEdit, JvExStdCtrls, JvCheckBox, dbxpress, DateUtils,
  XPMenu, RLReport, RLFilters, RLXLSFilter;

type
  TfFiltroMovimento = class(TForm)
    MMJPanel1: TMMJPanel;
    Panel1: TPanel;
    Label1: TLabel;
    edControle: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label4: TLabel;
    BitBtn6: TBitBtn;
    XPMenu1: TXPMenu;
    edtNF: TEdit;
    Label7: TLabel;
    Edit8: TEdit;
    Label8: TLabel;
    BitBtn7: TBitBtn;
    ds_Cr: TDataSource;
    cds_cns: TClientDataSet;
    cds_cnsCODCLIENTE: TIntegerField;
    cds_cnsCODMOVIMENTO: TIntegerField;
    cds_cnsCODNATUREZA: TSmallintField;
    cds_cnsDATAMOVIMENTO: TDateField;
    cds_cnsSTATUS: TSmallintField;
    cds_cnsNOMECLIENTE: TStringField;
    cds_cnsDESCNATUREZA: TStringField;
    cds_cnsCODFORNECEDOR: TIntegerField;
    cds_cnsNOMEFORNECEDOR: TStringField;
    cds_cnsNOTAFISCAL: TIntegerField;
    cds_cnsSERIE: TStringField;
    dsp_cns: TDataSetProvider;
    sds_cns: TSQLDataSet;
    sds_cnsCODCLIENTE: TIntegerField;
    sds_cnsCODFORNECEDOR: TIntegerField;
    sds_cnsCODMOVIMENTO: TIntegerField;
    sds_cnsCODNATUREZA: TSmallintField;
    sds_cnsDATAMOVIMENTO: TDateField;
    sds_cnsSTATUS: TSmallintField;
    sds_cnsNOMECLIENTE: TStringField;
    sds_cnsDESCNATUREZA: TStringField;
    sds_cnsNOMEFORNECEDOR: TStringField;
    sds_cnsNOTAFISCAL: TIntegerField;
    sds_cnsSERIE: TStringField;
    PopupMenu1: TPopupMenu;
    Consultar1: TMenuItem;
    VerMovimento1: TMenuItem;
    Fechar1: TMenuItem;
    MMJPanel2: TMMJPanel;
    btnProcurar: TBitBtn;
    btnSair: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    Confirma1: TMenuItem;
    ComboBox1: TComboBox;
    Label5: TLabel;
    Edit1: TEdit;
    RadioGroup1: TRadioGroup;
    GroupBox5: TGroupBox;
    MaskEdit1: TMaskEdit;
    sds_Veiculocli: TSQLDataSet;
    sds_VeiculocliCOD_VEICULO: TIntegerField;
    sds_VeiculocliCOD_CLIENTE: TIntegerField;
    sds_VeiculocliPLACA: TStringField;
    sds_VeiculocliMARCA_MODELO: TStringField;
    sds_VeiculocliTIPO: TStringField;
    sds_VeiculocliCOMBUSTIVEL: TStringField;
    sds_VeiculocliANO_FAB: TStringField;
    sds_VeiculocliANO_MOD: TStringField;
    sds_VeiculocliCOR: TStringField;
    JvAppXMLFileStorage1: TJvAppXMLFileStorage;
    JvFormStorage1: TJvFormStorage;
    BitBtn5: TBitBtn;
    ComboBox2: TComboBox;
    Label6: TLabel;
    sdsRegiao: TSQLDataSet;
    sdsRegiaoCODDADOS: TIntegerField;
    sdsRegiaoDESCRICAO: TStringField;
    sdsRegiaoUSO: TStringField;
    sdsRegiaoCODIGOS: TStringField;
    sdsRegiaoOUTROS: TStringField;
    VCLReport1: TVCLReport;
    Edit5: TEdit;
    sds_cnsVALOR: TFloatField;
    cds_cnsVALOR: TFloatField;
    DBGrid1: TJvDBGrid;
    Label10: TJvLabel;
    BitBtn11: TBitBtn;
    sds_cnsAPAGAR: TFloatField;
    cds_cnsAPAGAR: TFloatField;
    meDta1: TJvDateEdit;
    meDta2: TJvDateEdit;
    rbData: TJvCheckBox;
    BitBtn12: TBitBtn;
    sds_cnsPRECO: TFloatField;
    cds_cnsPRECO: TFloatField;
    sds_cnsDATAVENDA: TDateField;
    cds_cnsDATAVENDA: TDateField;
    scds_NaturezaProcura: TSQLClientDataSet;
    scds_NaturezaProcuraCODNATUREZA: TSmallintField;
    scds_NaturezaProcuraDESCNATUREZA: TStringField;
    scds_NaturezaProcuraGERATITULO: TSmallintField;
    scds_NaturezaProcuraTIPOTITULO: TSmallintField;
    scds_NaturezaProcuraTIPOMOVIMENTO: TSmallintField;
    scds_NaturezaProcuraBAIXAMOVIMENTO: TSmallintField;
    sds_cnsNFE: TStringField;
    cds_cnsNFE: TStringField;
    sds_cnsCODPEDIDO: TIntegerField;
    cds_cnsCODPEDIDO: TIntegerField;
    sds_cnsBLOQUEIO: TStringField;
    cds_cnsBLOQUEIO: TStringField;
    pnDataEntrega: TPanel;
    edDataEntrega: TJvDateEdit;
    Label9: TLabel;
    Label12: TLabel;
    btnDataEntrega: TBitBtn;
    sds_cnsDATA_ENTREGA: TDateField;
    cds_cnsDATA_ENTREGA: TDateField;
    AlterarDataEntrega1: TMenuItem;
    btnFecharPainel: TBitBtn;
    btnDataEntregaLimpa: TBitBtn;
    sds_cnsHIST_MOV: TStringField;
    cds_cnsHIST_MOV: TStringField;
    chkBusca: TCheckBox;
    cbSat: TCheckBox;
    cbSatNao: TCheckBox;
    lblNumReg: TLabel;
    lblValorTotal: TLabel;
    sqTotalFMov: TSQLQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure edControleExit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure JvDBGrid1TitleClick(Column: TColumn);
    procedure BitBtn11Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure edControleKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn12Click(Sender: TObject);
    procedure btnDataEntregaClick(Sender: TObject);
    procedure AlterarDataEntrega1Click(Sender: TObject);
    procedure btnFecharPainelClick(Sender: TObject);
    procedure btnDataEntregaLimpaClick(Sender: TObject);
  private
    { Private declarations }
  public
    fnf_ccusto: String;
    cod_mov : integer;
    ordenar : string ;
    { Public declarations }
  end;

var
  fFiltroMovimento: TfFiltroMovimento;
  SqlImprimi : string;

implementation

uses uComercial, UDm, uProcurar, uListaClientes, uVendas, uPdm, ufDlgLogin,
   sCtrlResize, UDMNF, uTerminal_Delivery, uProcurar_nf, UDM_MOV,
  ufRelFortes;

{$R *.dfm}

procedure TfFiltroMovimento.FormCreate(Sender: TObject);
begin
  JvAppXMLFileStorage1.FileName := 'fVenda_' + dm.empresa + '.xml';
  sCtrlResize.CtrlResize(TForm(fFiltroMovimento));  
  //MMJPanel1.Background.EndColor   := dm.corStart;
  //MMJPanel1.Background.StartColor := dm.corEnd;
  //MMJPanel2.Background.EndColor   := dm.corEnd;
  //MMJPanel2.Background.StartColor := dm.corStart;
  fnf_ccusto := '';
  if (dm.moduloUsado = 'AUTOMOTIVA') then
    GroupBox5.Visible := True;

  if (not sdsRegiao.Active) then
      sdsRegiao.Open;
  sdsRegiao.First;
  while not sdsRegiao.Eof do
  begin
    ComboBox2.Items.Add(sdsRegiaoDESCRICAO.AsString);
    sdsRegiao.Next;
  end;
  sdsRegiao.Close;
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'SAT';
  dm.cds_parametro.Open;
  //se sim mostrar op��o de filtro para o SAT
  
  if (not dm.cds_parametro.IsEmpty) then
  begin
    cbSAT.Visible := True;
    cbSATNao.Visible := True;
  end;
end;

procedure TfFiltroMovimento.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfFiltroMovimento.DBGrid1TitleClick(Column: TColumn);
begin
    cds_cns.IndexFieldNames := Column.FieldName;
end;

procedure TfFiltroMovimento.edControleExit(Sender: TObject);
begin
   if edControle.Text = '' then exit;
   if dm.scds_cliente_proc.Active then
      dm.scds_cliente_proc.Close;
   dm.scds_cliente_proc.Params[0].Clear;
   dm.scds_cliente_proc.Params[1].Clear;
   dm.scds_cliente_proc.Params[2].AsInteger := StrToInt(edControle.Text);
   dm.scds_cliente_proc.Open;
     Edit2.Text := dm.scds_cliente_procNOMECLIENTE.asString;
   dm.scds_cliente_proc.Close;
end;

procedure TfFiltroMovimento.Edit3Exit(Sender: TObject);
begin
   if Edit3.Text = '' then exit;
   if dm.scds_NaturezaProcura.Active then
      dm.scds_NaturezaProcura.Close;
   dm.scds_NaturezaProcura.Params[0].Clear;
   dm.scds_NaturezaProcura.Params[1].AsInteger := StrToInt(Edit3.Text);
   dm.scds_NaturezaProcura.Open;
   Edit4.Text := dm.scds_NaturezaProcuraDESCNATUREZA.asString;
   dm.scds_NaturezaProcura.Close;
end;

procedure TfFiltroMovimento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fFiltroMovimento.cds_cns.Close;
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'FM-'+micro;
  dm.cds_parametro.Open;
  if (dm.cds_parametroCONFIGURADO.AsString = 'S') then
  begin
    dm.cds_parametro.Edit;
    dm.cds_parametroD1.AsString := meDta1.Text;
    dm.cds_parametroD2.AsString := meDta2.Text;
    try
      dm.cds_parametro.ApplyUpdates(0);
    except
      MessageDlg('Erro na grava��o dos par�metros.', mtError, [mbOK], 0);
    end;
  end;
end;

procedure TfFiltroMovimento.BitBtn1Click(Sender: TObject);
begin
  edControle.Text:='';
  Edit2.Text:='';
end;

procedure TfFiltroMovimento.BitBtn6Click(Sender: TObject);
begin
  ComboBox1.Text:='';
end;

procedure TfFiltroMovimento.BitBtn7Click(Sender: TObject);
begin
  edtNF.Text:='';
  Edit8.Text:='';
end;

procedure TfFiltroMovimento.BitBtn10Click(Sender: TObject);
begin
  meDta1.Text:='';
  meDta2.Text:='';
end;

procedure TfFiltroMovimento.BitBtn3Click(Sender: TObject);
begin
  {fProcurar := TfProcurar.create(self,scds_NaturezaProcura);
  Try
     fProcurar.BtnProcurar.Click;
     fProcurar.EvDBFind1.DataField := 'DESCNATUREZA';
     if fProcurar.ShowModal=mrOk then
     begin
       Edit3.Text := IntToStr(scds_NaturezaProcuraCODNATUREZA.asInteger);
       Edit4.Text := scds_NaturezaProcuraDESCNATUREZA.asString;
     end;
  Finally
  scds_NaturezaProcura.Close;
  fProcurar.Free;
  end;}
end;

procedure TfFiltroMovimento.BitBtn2Click(Sender: TObject);
begin
{  fListaClientes:=TfListaClientes.Create(Application);
  Try
    fListaClientes.ShowModal;
    edControle.Text := IntToStr(codcli); //IntToStr(fListaClientes.ListaClienteCODCLIENTE.asInteger);
    Edit2.Text := nomecli; //fListaClientes.ListaClienteNOMECLIENTE.asString;
  Finally
   fListaClientes.ListaCliente.close;
   fListaClientes.Free;
  end;}
  DM.varNomeCliente := '';
  dm.codcli := 0;
  fProcurar_nf := TfProcurar_nf.Create(self,dmnf.scds_cli_proc);
  fProcurar_nf.BtnProcurar.Click;
  fProcurar_nf.EvDBFind1.DataField := 'NOMECLIENTE';
  fProcurar_nf.btnIncluir.Visible := True;
  try
    if (fProcurar_nf.ShowModal = mrOK) then
    begin
      edControle.Text := IntToStr(dmnf.scds_cli_procCODCLIENTE.AsInteger);
      Edit2.Text := dmnf.scds_cli_procNOMECLIENTE.AsString;
    end;  
  finally
    dmnf.scds_cli_proc.Close;
    fProcurar_nf.Free;
  end;


end;

procedure TfFiltroMovimento.BitBtn9Click(Sender: TObject);
begin
    if (fVendas <> nil) then
    begin
    fVendas.cds_Movimento.Close;
    fVendas.cds_Movimento.Params[0].AsInteger := cds_cnsCODMOVIMENTO.AsInteger;
    fVendas.cds_Movimento.Open;
    if fVendas.cds_Movimento.IsEmpty then
     fVendas.cds_Movimento.Cancel
    else
      if (fVendas.cds_MovimentoSTATUS.AsInteger = 1) then
           fVendas.RadioPedido.Checked := True;
    end;
    cod_mov := cds_cnsCODMOVIMENTO.AsInteger;
    DM_MOV.ID_DO_MOVIMENTO := cds_cnsCODMOVIMENTO.AsInteger;
    DM.totalpago := cds_cnsVALOR.Value;
    fVendas.clienteEstaBloqueado := 'NAO';
    if (cds_cns.FieldByName('BLOQUEIO').AsString = 'S') then
      fVendas.clienteEstaBloqueado := 'SIM';
    fFiltroMovimento.Close;
end;

procedure TfFiltroMovimento.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfFiltroMovimento.BitBtn8Click(Sender: TObject);
begin
  fPdm:= TfPdm.Create(Application);
  try
    if fPdm.cds_Movimento.Active then
       fPdm.cds_movimento.Close;
    fPdm.cds_Movimento.Params[0].Clear;
    fPdm.cds_movimento.Params[0].AsInteger:= cds_cns.Fields[0].AsInteger;
    fPdm.cds_movimento.Open;
    if fPdm.cds_Mov_det.Active then
       fPdm.cds_Mov_det.Close;
    fPdm.cds_Mov_det.Params[0].Clear;
    fPdm.cds_Mov_det.Params[1].AsInteger := cds_cns.Fields[0].AsInteger;
    fPdm.cds_Mov_det.Open;
    fPdm.dbeCliente.DataField := 'CODCLIENTE';
    fPdm.DBEdit4.DataField := 'NOMECLIENTE';
    fPdm.JvLabel1.Caption := 'C�d. Movimento - ' + IntToStr(cds_cns.Fields[0].AsInteger);
    fPdm.ShowModal;
   finally
    fPdm.Free;
   end;
end;

procedure TfFiltroMovimento.btnProcurarClick(Sender: TObject);
 Var
 SqlTexto, DataStr, sql_buscaLimite : String;
begin

  {if ((RadioGroup1.ItemIndex = 0) or (RadioGroup1.ItemIndex = 1)) then
  begin
     DBGrid1.Columns[8].Visible := True;
     DBGrid1.Columns[9].Visible := False;
  end
  else
  begin
     DBGrid1.Columns[9].Visible := True;
     DBGrid1.Columns[8].Visible := False;
  end;
  if (RadioGroup1.ItemIndex = 4) then
  begin
     DBGrid1.Columns[8].Visible := True;
     DBGrid1.Columns[9].Visible := True;
  end;}
  if (sqTotalFMov.Active) then
    sqTotalFMov.Close;
  sqTotalFMov.SQL.Clear;

  if cds_cns.Active then
     cds_cns.Close;
  if (rbData.Checked) then
  begin
    if (chkBusca.Checked) then
    begin
      sql_buscaLimite := 'select FIRST 80 ' ;
    end
    else begin
      sql_buscaLimite := 'select ';
    end;
    cds_cns.CommandText:= sql_buscaLimite + ' mov.CODCLIENTE, mov.CODMOVIMENTO, mov.CODPEDIDO,' +
      ' mov.CODNATUREZA, mov.DATAMOVIMENTO, mov.STATUS, ' +
      ' SUM(COALESCE(movd.QUANTIDADE,0) * COALESCE(movd.VLR_BASE,0)) as PRECO, ' +
      ' cli.NOMECLIENTE, mov.NFE, ' +
      ' nat.DESCNATUREZA, mov.CODFORNECEDOR, ' + QuotedStr('Fornecedor') +
      ' as NOMEFORNECEDOR, ven.NOTAFISCAL,' +
      ' ven.SERIE, ven.VALOR, sum(ven.VALOR-ven.DESCONTO+'+
      ' ven.VALOR_FRETE) APAGAR, ven.DATAVENDA  ' +
      ' , cli.BLOQUEIO, mov.DATA_ENTREGA, MOV.HIST_MOV  ' +
      ' from MOVIMENTO mov inner join CLIENTES cli on cli.CODCLIENTE = ' +
      ' mov.CODCLIENTE  inner join NATUREZAOPERACAO nat on nat.CODNATUREZA ' +
      ' = mov.CODNATUREZA left outer join VENDA ven on ven.CODMOVIMENTO = mov.CODMOVIMENTO ' +
      ' left outer join MOVIMENTODETALHE movd on movd.CODMOVIMENTO = mov.CODMOVIMENTO';
    sqTotalFMov.SQL.Add('SELECT SUM(COALESCE(movd.QUANTIDADE,0) * COALESCE(movd.VLR_BASE,0)) ' +
      ' from MOVIMENTO mov inner join CLIENTES cli on cli.CODCLIENTE = ' +
      ' mov.CODCLIENTE  inner join NATUREZAOPERACAO nat on nat.CODNATUREZA ' +
      ' = mov.CODNATUREZA left outer join VENDA ven on ven.CODMOVIMENTO = mov.CODMOVIMENTO ' +
      ' left outer join MOVIMENTODETALHE movd on movd.CODMOVIMENTO = mov.CODMOVIMENTO');
  end
  else begin
    cds_cns.CommandText:= sql_buscaLimite + ' mov.CODCLIENTE, mov.CODMOVIMENTO, mov.CODPEDIDO,' +
      ' mov.CODNATUREZA, ven.DATAVENDA as DATAMOVIMENTO, mov.STATUS, ' +
      ' SUM(COALESCE(movd.QUANTIDADE,0) * COALESCE(movd.VLR_BASE,0)) as PRECO, ' +
      ' cli.NOMECLIENTE, mov.NFE, ' +
      ' nat.DESCNATUREZA, mov.CODFORNECEDOR, , ' + QuotedStr('Fornecedor') +
      ' as NOMEFORNECEDOR, ven.NOTAFISCAL, ' +
      ' ven.SERIE, ven.VALOR, sum(ven.VALOR-ven.DESCONTO+ven.VALOR_FRETE) APAGAR, ven.DATAVENDA  ' +
      ' , cli.BLOQUEIO , mov.DATA_ENTREGA, MOV.HIST_MOV ' +
      ' from MOVIMENTO mov left outer join CLIENTES cli on cli.CODCLIENTE = ' +
      ' mov.CODCLIENTE  inner join NATUREZAOPERACAO nat on nat.CODNATUREZA ' +
      ' = mov.CODNATUREZA left outer join FORNECEDOR forn on forn.CODFORNECEDOR = ' +
      ' mov.CODFORNECEDOR left outer join VENDA ven on ven.CODMOVIMENTO = mov.CODMOVIMENTO ' +
      ' left outer join MOVIMENTODETALHE movd on movd.CODMOVIMENTO = mov.CODMOVIMENTO';
    sqTotalFMov.SQL.Add('SELECT SUM(COALESCE(movd.QUANTIDADE,0) * COALESCE(movd.VLR_BASE,0)) ' +
      ' from MOVIMENTO mov left outer join CLIENTES cli on cli.CODCLIENTE = ' +
      ' mov.CODCLIENTE  inner join NATUREZAOPERACAO nat on nat.CODNATUREZA ' +
      ' = mov.CODNATUREZA left outer join FORNECEDOR forn on forn.CODFORNECEDOR = ' +
      ' mov.CODFORNECEDOR left outer join VENDA ven on ven.CODMOVIMENTO = mov.CODMOVIMENTO ' +
      ' left outer join MOVIMENTODETALHE movd on movd.CODMOVIMENTO = mov.CODMOVIMENTO');
  end;

  if (dm.moduloUsado = 'CITRUS') then
  begin

   cds_cns.CommandText:= sql_buscaLimite + ' mov.CODCLIENTE, mov.CODMOVIMENTO, mov.CODPEDIDO, ' +
      ' mov.CODNATUREZA, ven.DATAVENDA as DATAMOVIMENTO, mov.STATUS, ' +
      ' SUM((movd.QUANTIDADE * movd.PRECO)) as PRECO, ' +
      ' cli.NOMECLIENTE, mov.NFE, ' +
      ' nat.DESCNATUREZA, mov.CODFORNECEDOR, forn.NOMEFORNECEDOR, ven.NOTAFISCAL, ' +
      ' ven.SERIE, ven.VALOR, sum(ven.VALOR-ven.DESCONTO) APAGAR, ven.DATAVENDA  ' +
      ' , cli.BLOQUEIO, mov.DATA_ENTREGA , MOV.HIST_MOV  ' +
      ' from MOVIMENTO mov left outer join CLIENTES cli on cli.CODCLIENTE = ' +
      ' mov.CODCLIENTE  inner join NATUREZAOPERACAO nat on nat.CODNATUREZA ' +
      ' = mov.CODNATUREZA left outer join FORNECEDOR forn on forn.CODFORNECEDOR = ' +
      ' mov.CODFORNECEDOR left outer join VENDA ven on ven.CODMOVIMENTO = mov.CODMOVIMENTO ' +
      ' left outer join MOVIMENTODETALHE movd on movd.CODMOVIMENTO = mov.CODMOVIMENTO';
   end;

  //==============================================================================
  {$IFDEF LINUX}
  datastr:='  -  -  ';
  {$ENDIF}
  {$IFDEF MSWINDOWS}
  datastr:='  /  /    ';
  {$ENDIF}
  //------------------------------------------------------------------------------
  //Verifica se a data de emiss�o foi preenchido
  //------------------------------------------------------------------------------
  if (RadioGroup1.ItemIndex <> 3) then
  begin
    if (medta1.Text<>datastr) then
    if (medta2.Text<>datastr) then
    begin
      if (rbData.Checked) then
        sqlTexto := ' where mov.DATAMOVIMENTO between '
      else
        sqlTexto := ' where ven.DATAVENDA between ';
      sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', medta1.Date) + '''' +
        ' and ' +
        '''' + formatdatetime('mm/dd/yy', medta2.Date) + '''';
    end;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Status
  //------------------------------------------------------------------------------
 { if sqlTexto='' then
     sqlTexto := sqlTexto + ' where mov.STATUS = '
  else
    sqlTexto := sqlTexto + ' and mov.STATUS = ';
    sqlTexto := sqlTexto + IntToStr(rgStatus.ItemIndex);  }
  //==============================================================================
  //------------------------------------------------------------------------------
  //Natureza da opera��o
  //------------------------------------------------------------------------------
  if ((Edit3.Text <> '') and (RadioGroup1.ItemIndex <> 3)) then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where mov.CODNATUREZA = '
    else
      sqlTexto := sqlTexto + ' and mov.CODNATUREZA = ';
      sqlTexto := sqlTexto + '' + Edit3.Text + '';
  end;
  if (RadioGroup1.ItemIndex = 3) then
  begin
    if (sqlTexto = '') then
      sqlTexto := sqlTexto + ' where mov.CODNATUREZA = '
    else
      sqlTexto := sqlTexto + ' and mov.CODNATUREZA = ';
    sqlTexto := sqlTexto + '14';

    if (medta1.Text<>datastr) then
    if (medta2.Text<>datastr) then
    begin
      sqlTexto := sqlTexto + ' AND ((mov.DATAMOVIMENTO between ';
      sqlTexto := sqlTexto + QuotedStr(formatdatetime('mm/dd/yy', medta1.Date)) +
        ' and ' + QuotedStr(formatdatetime('mm/dd/yy', medta2.Date)) + ')';

      sqlTexto := sqlTexto + ' OR (mov.VAL_PROP between ';
      sqlTexto := sqlTexto + QuotedStr(formatdatetime('mm/dd/yy', medta1.Date)) +
        ' and ' + QuotedStr(formatdatetime('mm/dd/yy', medta2.Date)) + '))';
    end;

  end;

  //==============================================================================
  //------------------------------------------------------------------------------
  //Centro de Custo
  //------------------------------------------------------------------------------
  if ComboBox1.Text<>'' then
  begin
    if (dm.tipoVenda = 'NF') then
    begin
      if (not dmnf.cds_ccusto.Active) then
      begin
        dmnf.cds_ccusto.Params[0].AsString := dm.dmCentroReceita;
        dmnf.cds_ccusto.Open;
      end;
      dmnf.cds_ccusto.Locate('NOME',ComboBox1.Text, [loCaseInsensitive]);
      Edit1.Text := dmnf.cds_ccustoCODIGO.AsString;
    end
    else begin
      fVendas.cds_ccusto.Locate('NOME',ComboBox1.Text, [loCaseInsensitive]);
      Edit1.Text := fVendas.cds_ccustoCODIGO.AsString;
    end;

    if (Edit1.Text <> '') then
    begin
      if (sqlTexto='') then
        sqlTexto := sqlTexto + ' where mov.CODALMOXARIFADO = '
      else
        sqlTexto := sqlTexto + ' and mov.CODALMOXARIFADO = ';
      sqlTexto := sqlTexto + '' + Edit1.Text + '';
    end;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Cliente
  //------------------------------------------------------------------------------
  if edControle.Text <> '' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where mov.CODCLIENTE = '
    else
      sqlTexto := sqlTexto + ' and mov.CODCLIENTE = ';
      sqlTexto := sqlTexto + '' + edControle.Text + '';
  end;
  if edtNF.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where ven.NOTAFISCAL = '
    else
      sqlTexto := sqlTexto + ' and ven.NOTAFISCAL = ';
      sqlTexto := sqlTexto + '' + edtNF.Text + '';
  end;
  if Edit8.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where ven.SERIE like ' + '''' + Edit8.Text + '%' + ''''
    else
      sqlTexto := sqlTexto + ' and ven.SERIE like ' + '''' + Edit8.Text + '%' + '''';
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Finalizado
  //------------------------------------------------------------------------------
  case RadioGroup1.ItemIndex of
    0 : begin
      if sqlTexto='' then
         sqlTexto := sqlTexto + ' where mov.STATUS = 0 and ven.NOTAFISCAL is null '
      else
        sqlTexto := sqlTexto + ' and mov.STATUS = 0 and ven.NOTAFISCAL is null ';
    end;
    1:begin
      if sqlTexto='' then
         sqlTexto := sqlTexto + ' where mov.STATUS = 1 and ven.NOTAFISCAL is null '
      else
        sqlTexto := sqlTexto + ' and mov.STATUS = 1 and ven.NOTAFISCAL is null ';
    end;
    2:begin
      if sqlTexto='' then
         sqlTexto := sqlTexto + ' where ven.NOTAFISCAL is not null '
      else
        sqlTexto := sqlTexto + ' and ven.NOTAFISCAL is not null ';
     end;
    3:begin
      if sqlTexto='' then
         sqlTexto := sqlTexto + ' where mov.STATUS = 2'
      else
        sqlTexto := sqlTexto + ' and mov.STATUS = 2 ';
    end;
   end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //REGIAO
  //------------------------------------------------------------------------------
  if ComboBox2.Text<>'' then
  begin
    if (not sdsRegiao.Active) then
        sdsRegiao.Open;
    sdsRegiao.Locate('DESCRICAO',ComboBox2.Text, [loCaseInsensitive]);
    edit5.Text := IntToStr(sdsRegiaoCODDADOS.AsInteger);
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where cli.REGIAO = '
    else
      sqlTexto := sqlTexto + ' and cli.REGIAO = ';
      sqlTexto := sqlTexto + '' + Edit5.Text + '';
    sdsRegiao.Close;
  end;

  //==============================================================================
  if (dm.somente_sua_venda = 'S') then
  begin
    if (dm.usu_tipovendedor > 1) then
    begin
      if sqlTexto='' then
      begin
        sqlTexto := sqlTexto + ' where ((ven.CODVENDEDOR = ' + IntToStr(usulog) +
          ') or (mov.CODVENDEDOR = ' + IntToStr(usulog) + '))';
      end
      else begin
        sqlTexto := sqlTexto + ' and ((ven.CODVENDEDOR = ' + IntToStr(usulog) +
          ') or (mov.CODVENDEDOR = ' + IntToStr(usulog) + '))';
      end;
    end;
  end;
  //------------------------------------------------------------------------------
  //Busca por Placa
  //------------------------------------------------------------------------------
  if (dm.moduloUsado = 'AUTOMOTIVA') then
  begin
    if (maskedit1.Text <> '   -    ') then
    begin
     if (sds_Veiculocli.Active) then
       sds_Veiculocli.Close;
     sds_Veiculocli.Params[1].Clear;
     sds_Veiculocli.Params[0].AsString := MaskEdit1.Text;
     sds_Veiculocli.Open;
     if (sds_VeiculoCli.IsEmpty) then
     begin
       MessageDlg('N�o existe ve�culo com esta placa no Cadastro.', mtWarning, [mbOK], 0);
       Exit;
     end
     else begin
       if (sqlTexto = '') then
         sqlTexto := sqlTexto + ' where mov.COD_VEICULO = '
       else
         sqlTexto := sqlTexto + ' and mov.COD_VEICULO = ';
       sqlTexto := sqlTexto + IntToStr(sds_VeiculocliCOD_VEICULO.AsInteger);
     end;
    end;
  end;
  if ((cbSat.Visible = True) and (cbSat.Checked)) then
  begin
    if (sqlTexto = '') then
      sqlTexto := sqlTexto + ' where ven.STATUS1 = '
    else
      sqlTexto := sqlTexto + ' and ven.STATUS1 = ';
      sqlTexto := sqlTexto + QuotedStr('E');
  end;
  if ((cbSat.Visible = True) and (cbSatNao.Checked)) then
  begin
    if (sqlTexto = '') then
      sqlTexto := sqlTexto + ' where ((ven.STATUS1 = '
    else
      sqlTexto := sqlTexto + ' and ((ven.STATUS1 = ';
      sqlTexto := sqlTexto + QuotedStr('T');
    sqlTexto := sqlTexto + ' ) OR (ven.STATUS1 is null))';
  end;
  sqTotalFMov.SQL.Add(sqlTexto);
  sqlTexto := sqlTexto + ' group by mov.CODMOVIMENTO, mov.CODCLIENTE, mov.CODNATUREZA, ' +
      'mov.DATAMOVIMENTO, mov.STATUS, cli.NOMECLIENTE, nat.DESCNATUREZA, ' +
      'mov.CODFORNECEDOR, NOMEFORNECEDOR, ven.NOTAFISCAL, ven.SERIE, ' +
      'ven.VALOR, ven.DATAVENDA, mov.NFE, mov.CODPEDIDO, cli.BLOQUEIO, mov.DATA_ENTREGA , MOV.HIST_MOV  ';

  ordenar := '';

  SqlImprimi :=   cds_cns.CommandText + sqlTexto;

  sqlTexto := sqlTexto + ' order by mov.CODMOVIMENTO DESC ' ;
  cds_cns.CommandText := cds_cns.CommandText + sqlTexto;
 // SqlImprimi := cds_cns.CommandText;
  cds_cns.Open;
  if not cds_cns.IsEmpty then
  begin
    BitBtn8.Enabled := True;
    lblNumReg.Caption := 'N�mero de Registros : ' + IntToStr(cds_cns.RecordCount);
    sqTotalFMov.Open;
    if ((dm.vendaVerTotal = 'adm') or (dm.vendaVerTotal = dm.varLogado)) then
      lblValorTotal.Caption := 'Total : ' + Format('%-6.2n', [sqTotalFMov.Fields[0].AsFloat]);
  end;
  DBGrid1.SetFocus;
end;

procedure TfFiltroMovimento.ComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if (key = #13) then
 begin
   //key:= #0;
   //SelectNext((Sender as TwinControl),True,True);
   btnProcurar.Click;
 end;
end;

procedure TfFiltroMovimento.BitBtn5Click(Sender: TObject);
begin
  VCLReport1.FileName := str_relatorio + 'listamovimento.rep';
  if ((medta1.Text = '  /  /  ') or (medta2.Text = '  /  /  ')) then
  begin
    MessageDlg('Preencha o Campo Data do Movimento', mtWarning, [mbOK], 0);
    exit;
  end;
  if (FileExists(str_relatorio + 'romaneioporregiao.rep')) then
  begin
    VCLReport1.FileName := str_relatorio + 'romaneioporregiao.rep';
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport1.Report.Params.ParamByName('DATA1').Value := StrToDate(medta1.Text);
    VCLReport1.Report.Params.ParamByName('DATA2').Value := StrToDate(medta2.Text);;
    if (edControle.Text <> '') then
       VCLReport1.Report.Params.ParamByName('PRO1').Value := StrToInt(edControle.Text)
    else
       VCLReport1.Report.Params.ParamByName('PRO1').Value := 9999999;
    if (ComboBox2.Text = '') then
      VCLReport1.Report.Params.ParamByName('REG').Value := 0
    else
    begin
      if (not sdsRegiao.Active) then
          sdsRegiao.Open;
      sdsRegiao.Locate('DESCRICAO',ComboBox2.Text, [loCaseInsensitive]);
      edit5.Text := IntToStr(sdsRegiaoCODDADOS.AsInteger);
      sdsRegiao.Close;
      VCLReport1.Report.Params.ParamByName('REG').Value := StrToInt(Edit5.Text);
    end;
    if (ComboBox1.Text = '') then
    begin
      VCLReport1.Report.Params.ParamByName('CCUSTO').AsString := 'TOTAL GERAL EMPRESA';
    end
    else begin
      VCLReport1.Report.Params.ParamByName('CCUSTO').AsString := ComboBox1.Text;
    end;
    VCLReport1.Execute;
  end
  else begin
    if (dm.rel_romaneio = 'FORTES') then
    begin
      fRelFortes := TfRelFortes.Create(Application);
      try
        if (fRelFortes.cdsRel.Active) then
          fRelFortes.cdsRel.Close;
        fRelFortes.cdsRel.Params[0].AsDate := StrToDate(medta1.Text);
        fRelFortes.cdsRel.Params[1].AsDate := StrToDate(medta2.Text);
        fRelFortes.cdsRel.Params[2].AsInteger := 9999999;
        fRelFortes.cdsRel.Params[4].AsInteger := 0;
        //fRelFortes.ShowModal;
        fRelFortes.RLReport1.PreviewModal();
        //fRelFortes.Close;
      finally
        fRelFortes.Free;
      end;
    end
    else begin
      VCLReport1.Title := str_relatorio + 'romaneioporregiao.rep';
      VCLReport1.Report.Params.ParamByName('CCUSTO').AsString := ComboBox1.Text;
      VCLReport1.Execute;
    end;
  end;
end;

procedure TfFiltroMovimento.FormShow(Sender: TObject);
var varsql:String;
begin
  if (DM.tipoVenda = 'VENDA') then
  begin
    edit3.Text := '3';
    edit4.Text := 'VENDA';
  end;

  if (DM.tipoVenda = 'NF') then
  begin
    edit3.Text := '12';
    edit4.Text := 'NOTA FISCAL';
    if (fnf_ccusto <> '') then
      ComboBox1.Text := fnf_ccusto;
  end;

  if (DM.tipoVenda = 'CUPOM') then
  begin
    edit3.Text := '7';
    edit4.Text := 'CUPOM FISCAL';
  end;
  if (DM.tipoVenda = 'DEVOLUCAO') then
  begin
    edit3.Text := '10';
    edit4.Text := 'DEVOLUCAO';
  end;
  if (meDta1.Date = 0) then
  begin
    meDta1.Date := Today;
    meDta2.Date := Today;
  end;
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'FM-'+micro;
  dm.cds_parametro.Open;
  if dm.cds_parametro.IsEmpty then
  begin
    varsql :=  'Insert into PARAMETRO (PARAMETRO,CONFIGURADO,DADOS,D1,D2) ' ;
    varsql := varsql + ' values (' + QuotedStr('FM-'+Micro);
    varsql := varsql + ',' + QuotedStr('S') + ',' + QuotedStr('RegFiltroMovimento');
    varsql := varsql + ',' + QuotedStr('01/01/18') + ',' + QuotedStr('01/10/18') + ')';
    dm.sqlsisAdimin.executedirect(varsql);
  end;
  if (dm.parametroCONFIGURADO.AsString = 'S') then
  begin
    meDta1.Text := dm.cds_parametroD1.AsString;
    meDta2.Text := dm.cds_parametroD2.AsString;
  end;
  btnProcurar.Click;
end;

procedure TfFiltroMovimento.JvDBGrid1TitleClick(Column: TColumn);
begin
    cds_cns.IndexFieldNames := Column.FieldName;
    ordenar := Column.FieldName;
end;

procedure TfFiltroMovimento.BitBtn11Click(Sender: TObject);
begin
  MaskEdit1.Clear;
end;

procedure TfFiltroMovimento.RadioGroup1Click(Sender: TObject);
begin
  btnProcurar.Click;
end;

procedure TfFiltroMovimento.edControleKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = #13) then
  begin
    if (edControle.Text <> '') then
      btnProcurar.Click
    else
      bitBtn2.Click;  
  end;
end;

procedure TfFiltroMovimento.BitBtn12Click(Sender: TObject);
begin
  VCLReport1.FileName := str_relatorio + 'listavenda.rep';
  if ((RadioGroup1.ItemIndex = 0) or (RadioGroup1.ItemIndex = 1)) then
    VCLReport1.FileName := str_relatorio + 'listamovimento.rep';
  VCLReport1.Title := VCLReport1.FileName;    
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  if (ordenar = '') then
  begin
  VCLReport1.Report.DataInfo.Items[0].SQL:= SqlImprimi + ' order by mov.CODMOVIMENTO DESC'
  end else
  VCLReport1.Report.DataInfo.Items[0].SQL:= SqlImprimi + ' order by '+ ordenar ;
  if (ComboBox1.Text <> '') then
  begin
    VCLReport1.Report.Params.ParamByName('CCUSTO').AsString := ComboBox1.Text;
  end;
  VCLReport1.Execute;
end;

procedure TfFiltroMovimento.btnDataEntregaClick(Sender: TObject);
var   TDA: TTransactionDesc;
  logvelho, logNovo: String;
  varSqlDataEntrega: String;
begin

  TDA.TransactionID  := 1;
  TDA.IsolationLevel := xilREADCOMMITTED;

  Try
    dm.sqlsisAdimin.StartTransaction(TDA);
    //cds_cns.First;
    //while not cds_cns.Eof do
    //begin
      varSqlDataEntrega := 'UPDATE MOVIMENTO SET DATA_ENTREGA = ';
      if (edDataEntrega.Date > StrToDate('01/01/2001')) then
        varSqlDataEntrega := varSqlDataEntrega + QuotedStr(formatdatetime('mm/dd/yy', edDataEntrega.Date))
      else
        varSqlDataEntrega := varSqlDataEntrega + ' null';
      varSqlDataEntrega := varSqlDataEntrega + ' WHERE CODMOVIMENTO = ' + IntToStr(cds_cnsCODMOVIMENTO.asInteger);
      logVelho := 'Data Anterior : ' + formatdatetime('dd/mm/yyyy', cds_cnsDATA_ENTREGA.AsDateTime);
      logNovo := ' Data nova: ' + formatdatetime('dd/mm/yyyy', edDataEntrega.Date);
      dm.sqlsisAdimin.ExecuteDirect(varSqlDataEntrega);
      dm.gravaLog(Now, dm.varLogado, 'MOVIMENTO', MICRO, logVelho, logNovo ,IntToStr(cds_cnsCODMOVIMENTO.asInteger), 'ALTERADO');
      //cds_cns.Next;
    //end;
    dm.sqlsisAdimin.Commit(TDA);
    MessageDlg('Data de Entrega alterada com sucesso.', mtInformation, [mbOk], 0);
  except
    on E : Exception do
    begin
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      dm.sqlsisAdimin.Rollback(TDA); //on failure, undo the changes}
    end;
  end;
  btnProcurar.Click;
  pnDataEntrega.Visible := False;
end;

procedure TfFiltroMovimento.AlterarDataEntrega1Click(Sender: TObject);
begin
  pnDataEntrega.Visible := True;
end;

procedure TfFiltroMovimento.btnFecharPainelClick(Sender: TObject);
begin
  pnDataEntrega.Visible := False;
end;

procedure TfFiltroMovimento.btnDataEntregaLimpaClick(Sender: TObject);
begin
  edDataEntrega.Clear;
end;

end.
