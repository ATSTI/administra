unit uFiltroMov_compra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, Menus, SqlExpr, Provider, DB, DBClient, XPMenu, Grids,
  DBGrids, StdCtrls, Mask, ExtCtrls, Buttons, MMJPanel, JvFormPlacement,
  JvComponentBase, JvAppStorage, JvAppXMLStorage, JvExDBGrids, JvDBGrid,
  JvExControls, JvLabel, rpcompobase, rpvclreport;

type
  TfFiltroMov_compra = class(TForm)
    MMJPanel2: TMMJPanel;
    btnProcurar: TBitBtn;
    btnSair: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    MMJPanel1: TMMJPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label5: TLabel;
    edControle: TEdit;
    Edit2: TEdit;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Edit3: TEdit;
    Edit4: TEdit;
    BitBtn6: TBitBtn;
    edtNF: TEdit;
    Edit8: TEdit;
    BitBtn7: TBitBtn;
    meDta1: TMaskEdit;
    meDta2: TMaskEdit;
    BitBtn10: TBitBtn;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    XPMenu1: TXPMenu;
    ds_Cr: TDataSource;
    PopupMenu1: TPopupMenu;
    Consultar1: TMenuItem;
    VerMovimento1: TMenuItem;
    Fechar1: TMenuItem;
    Confirma1: TMenuItem;
    sds_cns: TSQLDataSet;
    sds_cnsCODFORNECEDOR: TIntegerField;
    sds_cnsNOMEFORNECEDOR: TStringField;
    sds_cnsCODMOVIMENTO: TIntegerField;
    sds_cnsCODNATUREZA: TSmallintField;
    sds_cnsDATAMOVIMENTO: TDateField;
    sds_cnsSTATUS: TSmallintField;
    sds_cnsDESCNATUREZA: TStringField;
    sds_cnsNOTAFISCAL: TIntegerField;
    sds_cnsSERIE: TStringField;
    sds_cnsVALOR: TFloatField;
    sds_cnsCONTROLE: TStringField;
    dsp_cns: TDataSetProvider;
    cds_cns: TClientDataSet;
    cds_cnsCODFORNECEDOR: TIntegerField;
    cds_cnsNOMEFORNECEDOR: TStringField;
    cds_cnsCODMOVIMENTO: TIntegerField;
    cds_cnsCODNATUREZA: TSmallintField;
    cds_cnsDATAMOVIMENTO: TDateField;
    cds_cnsSTATUS: TSmallintField;
    cds_cnsDESCNATUREZA: TStringField;
    cds_cnsNOTAFISCAL: TIntegerField;
    cds_cnsSERIE: TStringField;
    cds_cnsVALOR: TFloatField;
    cds_cnsCONTROLE: TStringField;
    Edit5: TEdit;
    Label6: TLabel;
    JvAppXMLFileStorage1: TJvAppXMLFileStorage;
    JvFormStorage1: TJvFormStorage;
    sds_cnsCOD_VEICULO: TIntegerField;
    cds_cnsCOD_VEICULO: TIntegerField;
    RadioGroup1: TRadioGroup;
    Label10: TJvLabel;
    DBGrid1: TJvDBGrid;
    BitBtn5: TBitBtn;
    VCLReport1: TVCLReport;
    btnAprovar: TBitBtn;
    sds_cnsUSER_APROVA: TStringField;
    cds_cnsUSER_APROVA: TStringField;
    GroupBox1: TGroupBox;
    cbStatus: TComboBox;
    sds_cnsDATA_ENTREGA: TDateField;
    cds_cnsDATA_ENTREGA: TDateField;
    sds_cnsSITUACAO: TStringField;
    cds_cnsSITUACAO: TStringField;
    sds_cnsCODPEDIDO: TIntegerField;
    cds_cnsCODPEDIDO: TIntegerField;
    procedure btnProcurarClick(Sender: TObject);
    procedure edControleExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure btnAprovarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
     codigo, SqlTexto : string;
     varCodCompra : integer;
    { Public declarations }
  end;

var
  fFiltroMov_compra: TfFiltroMov_compra;

implementation

uses UDm, uProcurar, uCompra, uComercial, uPdm, uFiltroMovimento,
  ufDlgLogin, uListadeCompra, uAgendamento, sCtrlResize, uRateioPag, dbXpress,
  uAtsAdmin, uCotacaoVer;

{$R *.dfm}

procedure TfFiltroMov_compra.btnProcurarClick(Sender: TObject);
 Var
 DataStr: String;
begin
  SqlTexto := '';
  if cds_cns.Active then
     cds_cns.Close;
  cds_cns.CommandText:= 'select mov.CODMOVIMENTO, mov.codpedido, comp.NOTAFISCAL, comp.SERIE, ' +
     ' mov.CODNATUREZA, mov.DATAMOVIMENTO, mov.STATUS, comp.VALOR, mov.COD_VEICULO,' +
     ' nat.DESCNATUREZA, mov.CODFORNECEDOR, forn.NOMEFORNECEDOR, mov.CONTROLE, mov.USER_APROVA, ';
  if (dm.tipoCompra = 'COTACAO') then
  begin
    cds_cns.CommandText := cds_cns.CommandText + ' mov.data_entrega, CASE mov.STATUS WHEN 0 THEN ' + QuotedStr('PENDENTE') +
     ' WHEN 3 THEN ' + QuotedStr('APROVADO') + ' WHEN 4 THEN ' + QuotedStr('REC. PARCIAL') +
     ' WHEN 5 THEN ' + QuotedStr('RECEBIDO') + ' END SITUACAO ' ;
  end
  else
  begin
    cds_cns.CommandText := cds_cns.CommandText + ' mov.data_entrega, CASE mov.STATUS WHEN 0 THEN ' + QuotedStr('PENDENTE') +
     ' WHEN 3 THEN ' + QuotedStr('APROVADO') + ' WHEN 4 THEN ' + QuotedStr('FINALIZADO') +
     ' WHEN 5 THEN ' + QuotedStr('OUTROS') + ' END SITUACAO ' ;
  end;
  cds_cns.CommandText := cds_cns.CommandText + ' from MOVIMENTO mov ' +
     ' inner join NATUREZAOPERACAO nat on nat.CODNATUREZA ' +
     ' = mov.CODNATUREZA left outer join FORNECEDOR forn on forn.CODFORNECEDOR = mov.CODFORNECEDOR ' +
     ' left outer join COMPRA comp on comp.CODMOVIMENTO = mov.CODMOVIMENTO ';
  //==============================================================================
  {$IFDEF LINUX}
  datastr:='  -  -  ';
  {$ENDIF}
  {$IFDEF MSWINDOWS}
  datastr:='  /  /  ';
  {$ENDIF}
  //------------------------------------------------------------------------------
  //Verifica se a data de emissão foi preenchido
  //------------------------------------------------------------------------------
  try
  if (medta1.Text<>datastr) then
  StrToDate(medta1.Text);
  if (medta2.Text<>datastr) then
  StrToDate(medta2.Text);
  if (medta1.Text<>datastr) then
  if (medta2.Text<>datastr) then
  begin
  sqlTexto := ' where mov.DATAMOVIMENTO between ' +
  '''' + formatdatetime('mm/dd/yyyy', StrToDate(medta1.Text)) + '''' +
  ' and ' +
  '''' + formatdatetime('mm/dd/yyyy', StrToDate(medta2.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
  ShowMessage ('Data Inválida! dd/mm/aa');
  meDta1.SetFocus;
  end;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Finalizado : Sim ,Nao
  //------------------------------------------------------------------------------
  if (RadioGroup1.ItemIndex  < 2) then
  begin
    if sqlTexto='' then
       sqlTexto := sqlTexto + ' where comp.NOTAFISCAL '
    else
      sqlTexto := sqlTexto + ' and comp.NOTAFISCAL ';

    Case RadioGroup1.ItemIndex of
      0 : sqlTexto := sqlTexto + ' IS NOT NULL ';
      1 : sqlTexto := sqlTexto + ' IS NULL ';
    end;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Status
  //------------------------------------------------------------------------------
  if (cbStatus.ItemIndex = -1) then
    cbStatus.ItemIndex := 0;
  if (cbStatus.ItemIndex <> 2) then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where mov.STATUS = '
    else
      sqlTexto := sqlTexto + ' and mov.STATUS = ';
      sqlTexto := sqlTexto + IntToStr(cbStatus.ItemIndex);
  end;    
  //==============================================================================
  //------------------------------------------------------------------------------
  //Natureza da operação
  //------------------------------------------------------------------------------
  if Edit3.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where mov.CODNATUREZA = '
    else
      sqlTexto := sqlTexto + ' and mov.CODNATUREZA = ';
      sqlTexto := sqlTexto + '' + Edit3.Text + '';
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Centro de Custo
  //------------------------------------------------------------------------------
  if ComboBox1.Text<>'' then
  begin
    if (not fCompra.cds_ccusto.Active) then
    begin
      fCompra.cds_ccusto.Params[0].AsString := conta_desp;
      fCompra.cds_ccusto.Open;
    end;
    fCompra.cds_ccusto.Locate('NOME',ComboBox1.Text, [loCaseInsensitive]);
    Edit1.Text := fCompra.cds_ccustoCODIGO.AsString;
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where mov.CODALMOXARIFADO = '
    else
      sqlTexto := sqlTexto + ' and mov.CODALMOXARIFADO = ';
      sqlTexto := sqlTexto + '' + Edit1.Text + '';
  end;
 
  //==============================================================================
  //------------------------------------------------------------------------------
  //Fornecedor
  //------------------------------------------------------------------------------
  if edControle.Text <> '' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where mov.CODFORNECEDOR = '
    else
      sqlTexto := sqlTexto + ' and mov.CODFORNECEDOR = ';
      sqlTexto := sqlTexto + '' + edControle.Text + '';
    end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Nota fiscal
  //------------------------------------------------------------------------------
  if edtNF.Text <> '' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where comp.NOTAFISCAL = '
    else
      sqlTexto := sqlTexto + ' and comp.NOTAFISCAL = ';
  sqlTexto := sqlTexto + '' + edtNF.Text + '';
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Serie
  //------------------------------------------------------------------------------
  if Edit8.Text <> '' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where comp.SERIE = '
    else
      sqlTexto := sqlTexto + ' and comp.SERIE = ';
  sqlTexto := sqlTexto + '''' + edit8.Text + '''';
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Ordem Compra
  //------------------------------------------------------------------------------
  if Edit5.Text <> '' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where mov.CONTROLE = '
    else
      sqlTexto := sqlTexto + ' and mov.CONTROLE = ';
  sqlTexto := sqlTexto + '''' + edit5.Text + '''';
  end;
  //==============================================================================

  cds_cns.CommandText := cds_cns.CommandText + sqlTexto + ' order by mov.CODMOVIMENTO DESC';
  cds_cns.Open;
  DBGrid1.SetFocus;

end;

procedure TfFiltroMov_compra.edControleExit(Sender: TObject);
begin
   if edControle.Text = '' then exit;
   if dm.scds_forn_proc.Active then
      dm.scds_forn_proc.Close;
   dm.scds_forn_proc.Params[0].Clear;
   dm.scds_forn_proc.Params[1].Clear;
   dm.scds_forn_proc.Params[2].AsInteger := StrToInt(edControle.Text);
   dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
   dm.scds_forn_proc.Params.ParamByName('pSegmento').AsInteger := 1;

   dm.scds_forn_proc.Open;

   Edit2.Text := dm.scds_forn_procNOMEFORNECEDOR.asString;
   dm.scds_forn_proc.Close;
end;

procedure TfFiltroMov_compra.FormShow(Sender: TObject);
begin
  if (not dm.parametro.Active) then
    dm.parametro.Open;
  if (dm.parametro.Locate('PARAMETRO', 'PADRAOFILTROCOMPRA', [loCaseInsensitive])) then
    if (dm.parametroCONFIGURADO.AsString = 'S') then
    begin
      if (dm.parametroD1.AsString <> '') then
        meDta1.Text := dm.parametroD1.AsString;
      if (dm.parametroD2.AsString <> '') then
        meDta2.Text := dm.parametroD2.AsString;
    end;
    btnProcurar.Click;
end;

procedure TfFiltroMov_compra.Edit3Exit(Sender: TObject);
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

procedure TfFiltroMov_compra.BitBtn2Click(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,dm.scds_forn_proc);
  try
   dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
   dm.scds_forn_proc.Params.ParamByName('pSegmento').AsInteger := 0;
   fProcurar.RadioGroup2.Visible := True;   
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOMEFORNECEDOR';
   fProcurar.ShowModal;
   edControle.Text := IntToStr(dm.scds_forn_procCODFORNECEDOR.AsInteger);
   Edit2.Text := dm.scds_forn_procNOMEFORNECEDOR.asString;

   finally
    dm.scds_forn_proc.Close;
    fProcurar.Free;
   end;
end;

procedure TfFiltroMov_compra.BitBtn1Click(Sender: TObject);
begin
  edControle.Text:='';
  Edit2.Text:='';
end;

procedure TfFiltroMov_compra.BitBtn3Click(Sender: TObject);
begin
  fProcurar := TfProcurar.create(self,dm.scds_NaturezaProcura);
  Try
     fProcurar.BtnProcurar.Click;
     fProcurar.EvDBFind1.DataField := 'DESCNATUREZA';
     if fProcurar.ShowModal=mrOk then
     begin
       Edit3.Text := IntToStr(dm.scds_NaturezaProcuraCODNATUREZA.asInteger);
       Edit4.Text := dm.scds_NaturezaProcuraDESCNATUREZA.asString;
     end;
  Finally
  dm.scds_NaturezaProcura.Close;
  fProcurar.Free;
  end;
end;

procedure TfFiltroMov_compra.BitBtn4Click(Sender: TObject);
begin
  Edit3.Text := '';
  Edit4.Text := '';
end;

procedure TfFiltroMov_compra.BitBtn6Click(Sender: TObject);
begin
  ComboBox1.Text:='';
end;

procedure TfFiltroMov_compra.BitBtn7Click(Sender: TObject);
begin
  edtNF.Text:='';
  Edit8.Text:='';
end;

procedure TfFiltroMov_compra.BitBtn10Click(Sender: TObject);
begin
  meDta1.Text:='';
  meDta2.Text:='';
end;

procedure TfFiltroMov_compra.BitBtn8Click(Sender: TObject);
begin
  fPdm:= TfPdm.Create(Application);
  try
    if fPdm.cds_Movimento.Active then
       fPdm.cds_movimento.Close;
    fPdm.cds_movimento.Params[0].AsInteger:= cds_cns.Fields[0].AsInteger;
    fPdm.cds_movimento.Open;
    if fPdm.cds_Mov_det.Active then
       fPdm.cds_Mov_det.Close;
    fPdm.cds_Mov_det.Params[0].Clear;
    fPdm.cds_Mov_det.Params[1].AsInteger := cds_cns.Fields[0].AsInteger;
    fPdm.cds_Mov_det.Open;
    fPdm.ShowModal;
   finally
    fPdm.Free;
   end;
end;

procedure TfFiltroMov_compra.BitBtn9Click(Sender: TObject);
begin
   varCodCompra := cds_cnsCODMOVIMENTO.AsInteger; // para uso no form fNFCompra
   if (fFiltroMov_compra.codigo <> 'LISTACOMPRA') then
   begin
      fCompra.cds_Movimento.Close;
      fCompra.cds_Movimento.Params[0].AsInteger := cds_cnsCODMOVIMENTO.AsInteger;
      fCompra.cds_Movimento.Open;
      if fCompra.cds_Movimento.IsEmpty then
       fCompra.cds_Movimento.Cancel
      else
       fFiltroMovimento.cod_mov := cds_cnsCODMOVIMENTO.AsInteger;
       fCompra.cds_Mov_det.Close;
       fCompra.cds_Mov_det.Params[0].Clear;
       fCompra.cds_Mov_det.Params[1].AsInteger := fFiltroMovimento.cod_mov;
       fCompra.cds_Mov_det.Open;
       if (not DM.cds_ccusto.Active) then
           DM.cds_ccusto.Open;
       dm.cds_ccusto.Locate('CODIGO',fCompra.cds_MovimentoCODALMOXARIFADO.AsInteger, [loCaseInsensitive]);
       fCompra.ComboBox1.Text := dm.cds_ccustoNOME.AsString;
       fCompra.btnClienteProcura.Enabled := true;
       fCompra.btnProdutoProcura.Enabled := true;
   end
   else
   begin
      fListadeCompra.cds_Movimento.Close;
      fListadeCompra.cds_Movimento.Params[0].AsInteger := cds_cnsCODMOVIMENTO.AsInteger;
      fListadeCompra.cds_Movimento.Open;
      if fListadeCompra.cds_Movimento.IsEmpty then
       fListadeCompra.cds_Movimento.Cancel
      else
       fFiltroMovimento.cod_mov := cds_cnsCODMOVIMENTO.AsInteger;
       fListadeCompra.cds_Mov_det.Close;
       fListadeCompra.cds_Mov_det.Params[0].Clear;
       fListadeCompra.cds_Mov_det.Params[1].AsInteger := fFiltroMovimento.cod_mov;
       fListadeCompra.cds_Mov_det.Open;
       fListadeCompra.Label9.Caption := cds_cnsNOMEFORNECEDOR.AsString;
       fListadeCompra.DataEdit.Text := DateTimeToStr(cds_cnsDATAMOVIMENTO.AsDateTime);
       fListadeCompra.cds_Movimento.Edit;
   end;
   fFiltroMov_compra.Close;
end;

procedure TfFiltroMov_compra.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfFiltroMov_compra.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfFiltroMov_compra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (not dm.parametro.Active) then
    dm.parametro.Open;
  if (dm.parametro.Locate('PARAMETRO', 'PADRAOFILTROCOMPRA', [loCaseInsensitive])) then
    if (dm.parametroCONFIGURADO.AsString = 'S') then
    begin
      dm.parametro.Edit;
      dm.parametroD1.AsString := meDta1.Text;
      dm.parametroD2.AsString := meDta2.Text;
      try
        dm.parametro.ApplyUpdates(0);
      except
        MessageDlg('Erro na gravação dos parâmetros.', mtError, [mbOK], 0);
      end;
    end;
    fFiltroMov_compra.codigo := '';
end;

procedure TfFiltroMov_compra.ComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if (key = #13) then
 begin
   //key:= #0;
   //SelectNext((Sender as TwinControl),True,True);
   btnProcurar.Click;
 end;
end;

procedure TfFiltroMov_compra.FormCreate(Sender: TObject);
begin
  sCtrlResize.CtrlResize(TForm(fFiltroMov_compra));
  MMJPanel1.Background.EndColor   := dm.corStart;
  MMJPanel1.Background.StartColor := dm.corEnd;
  MMJPanel2.Background.EndColor   := dm.corEnd;
  MMJPanel2.Background.StartColor := dm.corStart;
end;

procedure TfFiltroMov_compra.BitBtn5Click(Sender: TObject);
var sql:string;
begin
  VCLReport1.FileName := str_relatorio + 'filtroCompras.rep';
  //Relatorio recebe o CAMINHO do relatorio, a CONEXÃO so sistema e o SQL da pesquisa na Tela do sistema
  VCLReport1.Title := VCLReport1.FileName;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.DataInfo.Items[1].SQL := cds_cns.CommandText;
  VCLReport1.Execute;
end;

procedure TfFiltroMov_compra.btnAprovarClick(Sender: TObject);
var td : TTransactionDesc;
begin
  // Aprovar Pedido
  if (fAtsAdmin.UserControlComercial.CurrentUser.UserLogin = cds_cnsUSER_APROVA.AsString) then
  begin
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    try
      dm.sqlsisAdimin.StartTransaction(TD);
      dm.sqlsisAdimin.ExecuteDirect('UPDATE MOVIMENTO SET STATUS = 3' +
        ' WHERE CODMOVIMENTO = ' + IntToStr(cds_cnsCODMOVIMENTO.AsInteger));
      dm.sqlsisAdimin.Commit(TD);
      MessageDlg('Pedido Aprovado com sucesso.', mtInformation, [mbOK], 0);
    except
      dm.sqlsisAdimin.Rollback(TD);
      MessageDlg('Erro para aprovar o pedido.', mtError, [mbOK], 0);
    end;
  end
  else begin
      MessageDlg('Responsável pela aprovação diferente do usuário atual;', mtWarning, [mbOK], 0);
  end;
end;

procedure TfFiltroMov_compra.DBGrid1DblClick(Sender: TObject);
begin
  // Abre as cotações se existirem
  if (dm.tipoCompra = 'COTACAO') then
  begin
     fCotacaoVer :=TfCotacaoVer.Create(Application);
     fCotacaoVer.cotacao := StrToInt(cds_cnsCONTROLE.AsString);
     try
       fCotacaoVer.ShowModal;
     finally
       fCotacaoVer.Free;
     end;
  end;

  if (dm.tipoCompra = 'COMPRA') then
    BitBtn9Click(Sender);
end;

procedure TfFiltroMov_compra.DBGrid1TitleClick(Column: TColumn);
var
  enum_IndexOption: TIndexOptions;
  str_IndexAsc,
  str_IndexDesc,
  str_IndexName: String;
begin
//  cds_cns.IndexFieldNames := Column.FieldName;
  if (Column.Field.FieldKind = fkData) then
  begin
    str_IndexAsc := Concat('asc_',Column.FieldName);
    str_IndexDesc := Concat('desc_',Column.FieldName);

    str_IndexName := '';
    enum_IndexOption := [];

    if (cds_cns.IndexName = str_IndexAsc) then
    begin
    str_IndexName := str_IndexDesc;
    enum_IndexOption := [ixDescending];
    end
    else if (cds_cns.IndexName = str_IndexDesc) then
    begin
    str_IndexName := str_IndexAsc;
    end
    else
    begin
    str_IndexName := str_IndexAsc;
    end;

    cds_cns.IndexDefs.Clear;

    cds_cns.IndexDefs.Add(str_IndexName,Column.FieldName,enum_IndexOption);
    cds_cns.IndexName := str_IndexName;
  end;
end;

end.
