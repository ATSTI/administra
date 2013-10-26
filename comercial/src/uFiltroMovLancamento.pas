unit uFiltroMovLancamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, Menus, SqlExpr, Provider, DB, DBClient, XPMenu, Grids,
  DBGrids, StdCtrls, Mask, ExtCtrls, Buttons, MMJPanel, rpcompobase,rplabelitem,
  rpvclreport, JvExMask, JvToolEdit;

type
  TfFiltroMovLancamento = class(TForm)
    MMJPanel2: TMMJPanel;
    btnProcurar: TBitBtn;
    btnSair: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    MMJPanel1: TMMJPanel;
    Label9: TLabel;
    Label10: TLabel;
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
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    edtNF: TEdit;
    Edit8: TEdit;
    BitBtn7: TBitBtn;
    rgStatus: TRadioGroup;
    BitBtn10: TBitBtn;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
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
    cds_cnsSTATUS: TSmallintField;
    cds_cnsDESCNATUREZA: TStringField;
    cds_cnsNOTAFISCAL: TIntegerField;
    cds_cnsSERIE: TStringField;
    cds_cnsVALOR: TFloatField;
    cds_cnsCONTROLE: TStringField;
    Edit5: TEdit;
    Label6: TLabel;
    btnImprimir: TBitBtn;
    rep: TVCLReport;
    Label13: TLabel;
    meDta1: TJvDateEdit;
    meDta2: TJvDateEdit;
    sds_cnsDATAVENCIMENTO: TDateField;
    cds_cnsDATAVENCIMENTO: TDateField;
    sds_cnsDESCONTO: TFloatField;
    cds_cnsDESCONTO: TFloatField;
    sds_cnsVALORTOTAL: TFloatField;
    cds_cnsVALORTOTAL: TFloatField;
    sds_cnsDATACOMPRA: TDateField;
    cds_cnsDATACOMPRA: TDateField;
    BitBtn5: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    procedure btnProcurarClick(Sender: TObject);
    procedure edControleExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
    procedure btnImprimirClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFiltroMovLancamento: TfFiltroMovLancamento;
  SqlTexto , SqlTExto1 : String;
implementation

uses UDm, uProcurar, uEntrada,  ufDlgLogin;

{$R *.dfm}

procedure TfFiltroMovLancamento.btnProcurarClick(Sender: TObject);
 Var DataStr: String;
begin
  sqlTexto := '';
  if cds_cns.Active then
     cds_cns.Close;
     cds_cns.CommandText:= 'select mov.CODMOVIMENTO, comp.NOTAFISCAL, comp.SERIE, ' +
     ' mov.CODNATUREZA, comp.DATAVENCIMENTO,comp.DESCONTO, mov.STATUS, comp.VALOR, ' +
     ' nat.DESCNATUREZA, mov.CODFORNECEDOR, forn.NOMEFORNECEDOR, mov.CONTROLE , ' +
     ' comp.DATACOMPRA , (comp.VALOR + comp.DESCONTO)as VALORTOTAL  from ' +
     ' MOVIMENTO mov ' +
     ' inner join NATUREZAOPERACAO nat on nat.CODNATUREZA ' +
     ' = mov.CODNATUREZA left outer join FORNECEDOR forn on forn.CODFORNECEDOR = mov.CODFORNECEDOR ' +
     ' left outer join COMPRA comp on comp.CODMOVIMENTO = mov.CODMOVIMENTO ';
  //==============================================================================
  {$IFDEF LINUX}
  datastr:='  -  -  ';
  {$ENDIF}
  {$IFDEF MSWINDOWS}
  datastr:='  /  /    ';
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
  sqlTexto := ' where comp.DATAVENCIMENTO between ' +
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
  //Status
  //------------------------------------------------------------------------------
  if sqlTexto='' then
     sqlTexto := sqlTexto + ' where mov.STATUS = '
  else
    sqlTexto := sqlTexto + ' and mov.STATUS = ';
    sqlTexto := sqlTexto + IntToStr(rgStatus.ItemIndex);
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
    dm.cds_ccusto.Locate('NOME',ComboBox1.Text, [loCaseInsensitive]);
    Edit1.Text := dm.cds_ccustoCODIGO.AsString;
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

  sqlTexto1 := sqlTexto;

  sqlTexto1 := sqlTexto1 + ' order by forn.NOMEFORNECEDOR ,prod.CODPRO , cli.cod_faixa ';

  sqlTexto := sqlTexto + ' order by forn.NOMEFORNECEDOR' ; //comp.DATAVENCIMENTO DESC';
  cds_cns.CommandText := cds_cns.CommandText + sqlTexto;
  cds_cns.Open;
  DBGrid1.SetFocus;

end;

procedure TfFiltroMovLancamento.edControleExit(Sender: TObject);
begin
   if edControle.Text = '' then exit;
   if dm.scds_forn_proc.Active then
      dm.scds_forn_proc.Close;
   dm.scds_forn_proc.Params[0].Clear;
   dm.scds_forn_proc.Params[1].Clear;
   dm.scds_forn_proc.Params[2].AsInteger := StrToInt(edControle.Text);
   dm.scds_forn_proc.Open;
     Edit2.Text := dm.scds_forn_procNOMEFORNECEDOR.asString;
   dm.scds_forn_proc.Close;
end;

procedure TfFiltroMovLancamento.FormShow(Sender: TObject);
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
end;

procedure TfFiltroMovLancamento.FormCreate(Sender: TObject);
begin
  if (dm.usuario.Active) then
     dm.usuario.Close;
  dm.usuario.Params[0].AsString := usuario;
  dm.usuario.Open;
  if (not dm.usuario.IsEmpty) then
  begin
       dm.videoW := dm.UsuarioP1.AsString;
       dm.videoH := dm.UsuarioP2.AsString;
  end;
  if dm.videoW = '800' then
    Position := poDesigned;
  if dm.videoW <> '' then
  begin
   ScreenWidth := StrToInt(dm.videoW);
   ScreenHeight := StrToInt(dm.videoH);
   scaled := true;
   if (screen.width <> ScreenWidth) then
   begin
     height := longint(height) * longint(screen.height) DIV ScreenHeight;
     width := longint(width) * longint(screen.width) DIV ScreenWidth;
     scaleBy(screen.width, ScreenWidth);
   end;
  end;
end;

procedure TfFiltroMovLancamento.Edit3Exit(Sender: TObject);
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

procedure TfFiltroMovLancamento.BitBtn2Click(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,dm.scds_forn_proc);
  try
    dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
    fProcurar.BtnProcurar.Click;
    fProcurar.EvDBFind1.DataField := 'NOMEFORNECEDOR';
    if fProcurar.ShowModal=mrOk then
    begin
      edControle.Text := IntToStr(dm.scds_forn_procCODFORNECEDOR.AsInteger);
      Edit2.Text := dm.scds_forn_procNOMEFORNECEDOR.AsString;
    end;
  finally
    dm.scds_forn_proc.Close;
    fProcurar.Free;
  end;
end;

procedure TfFiltroMovLancamento.BitBtn1Click(Sender: TObject);
begin
  edControle.Text:='';
  Edit2.Text:='';
end;

procedure TfFiltroMovLancamento.BitBtn3Click(Sender: TObject);
begin
  fProcurar := TfProcurar.create(self,dm.scds_NaturezaProcura);
  Try
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

procedure TfFiltroMovLancamento.BitBtn4Click(Sender: TObject);
begin
  Edit3.Text:='';
  Edit4.Text:='';
end;

procedure TfFiltroMovLancamento.BitBtn6Click(Sender: TObject);
begin
  ComboBox1.Text:='';
end;

procedure TfFiltroMovLancamento.BitBtn7Click(Sender: TObject);
begin
  edtNF.Text:='';
  Edit8.Text:='';
end;

procedure TfFiltroMovLancamento.BitBtn10Click(Sender: TObject);
begin
  meDta1.Text:='';
  meDta2.Text:='';
end;

procedure TfFiltroMovLancamento.BitBtn8Click(Sender: TObject);
begin
{  fPdm:= TfPdm.Create(Application);
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
   }
end;

procedure TfFiltroMovLancamento.BitBtn9Click(Sender: TObject);
begin
    fEntrada.cds_Movimento.Close;
    fEntrada.cds_Movimento.Params[0].AsInteger := cds_cnsCODMOVIMENTO.AsInteger;
    fEntrada.cds_Movimento.Open;
    if fEntrada.cds_Movimento.IsEmpty then
     fEntrada.cds_Movimento.Cancel
    else
     fEntrada.cds_Mov_det.Close;
     fEntrada.cds_Mov_det.Params[0].Clear;
     fEntrada.cds_Mov_det.Params[1].AsInteger := cds_cnsCODMOVIMENTO.AsInteger;
     fEntrada.cds_Mov_det.Open;
     if (not DM.cds_ccusto.Active) then
         DM.cds_ccusto.Open;
     dm.cds_ccusto.Locate('CODIGO',fEntrada.cds_MovimentoCODALMOXARIFADO.AsInteger, [loCaseInsensitive]);
     fEntrada.ComboBox1.Text := dm.cds_ccustoNOME.AsString;
     fEntrada.btnClienteProcura.Enabled := true;
     fEntrada.btnProdutoProcura.Enabled := true;
     fEntrada.JvDBSearchComboBox2.Text := cds_cnsNOMEFORNECEDOR.AsString;

     fEntrada.JvCalcEdit1.Value := cds_cnsDESCONTO.Value;

   //  fEntrada.DBEdit2.Text := (fEntrada.cds_Mov_detTotalPedido.Value - cds_cnsDESCONTO.Value);
   //  Edit1.text:=formatfloat('###,###,##0.00', num)
  //   fEntrada.JvCalcEdit2.Value := (fEntrada.cds_Mov_detTotalPedido.Value + cds_cnsDESCONTO.Value);
    fEntrada.JvCalcEdit2.Value := (cds_cnsVALOR.Value - cds_cnsDESCONTO.Value);

    fFiltroMovLancamento.Close;
end;

procedure TfFiltroMovLancamento.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfFiltroMovLancamento.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfFiltroMovLancamento.FormClose(Sender: TObject;
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
end;

procedure TfFiltroMovLancamento.btnImprimirClick(Sender: TObject);
  var data1,data2 :TRpLabel;
begin
  rep.Filename := str_relatorio + 'detalhe_despesa_saude.rep';
  rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  rep.Report.DataInfo.Items[0].SQL := 'select comp.NOTAFISCAL,'+
          ' comp.DATAVENCIMENTO, comp.VALOR,comp.DESCONTO,(comp.VALOR + comp.DESCONTO )as total, comp.DATAVENCIMENTO,'+
          ' forn.RAZAOSOCIAL, prod.CODPRO, prod.PRODUTO, ' +
          ' movd.VALTOTAL, movd.cod_Comissao, movd.Controle, ' +
          ' forn.NOMEFORNECEDOR, cli.codcliente, cli.nomecliente, cli.cod_faixa ' +
          ' from COMPRA  comp ' +
          ' left outer join Movimento mov on mov.codMovimento = comp.CodMovimento ' +
          ' left outer join MovimentoDetalhe movd on movd.codMovimento = comp.CodMovimento ' +
          ' left outer join Produtos prod on prod.CodProduto = movd.CodProduto ' +
          ' left outer join Fornecedor forn on forn.CodFornecedor = comp.codFornecedor ' +
          ' left outer join Clientes cli on cli.codcliente = movd.codalmoxarifado ' +
           SqlTexto1 ;

  data1:=TRpLabel(rep.Report.FindComponent('TRpLabel11'));
  data2:=TRpLabel(rep.Report.FindComponent('TRpLabel12'));

  if meDta1.Text <> '' then
    begin
     if Assigned(data1) then
       data1.Text := meDta1.Text;
     if Assigned(data2) then
       data2.Text := meDta2.Text;
    end;


  rep.Execute;
end;

procedure TfFiltroMovLancamento.BitBtn5Click(Sender: TObject);
begin
  rep.Filename := str_relatorio + 'ash_estatisitica.rep';
  rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  rep.Report.Params.ParamByName('DATAINI').Value := meDta1.Date;
  rep.Report.Params.ParamByName('DATAFIN').Value := meDta2.Date;
  rep.Execute;

end;

procedure TfFiltroMovLancamento.BitBtn11Click(Sender: TObject);
  var data1,data2 :TRpLabel;
begin
  rep.Filename := str_relatorio + 'novo_despesa_saude.rep';
  rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  rep.Report.DataInfo.Items[0].SQL := cds_cns.CommandText;

  data1:=TRpLabel(rep.Report.FindComponent('TRpLabel10'));
  data2:=TRpLabel(rep.Report.FindComponent('TRpLabel11'));

   if meDta1.Text <> '' then
  begin
  if Assigned(data1) then
    data1.Text := meDta1.Text;
  if Assigned(data2) then
    data2.Text := meDta2.Text;
  end;

  rep.Execute;
end;

procedure TfFiltroMovLancamento.BitBtn12Click(Sender: TObject);
begin
  rep.Filename := str_relatorio + 'ash_estatisiticaForn.rep';
  rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  rep.Report.Params.ParamByName('DATAINI').Value := meDta1.Date;
  rep.Report.Params.ParamByName('DATAFIN').Value := meDta2.Date;
  rep.Execute;
end;

procedure TfFiltroMovLancamento.BitBtn13Click(Sender: TObject);
begin
  rep.Filename := str_relatorio + 'ash_estatisitica_exames.rep';
  rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  rep.Report.Params.ParamByName('DATAINI').Value := meDta1.Date;
  rep.Report.Params.ParamByName('DATAFIN').Value := meDta2.Date;
  rep.Execute;
end;

end.
