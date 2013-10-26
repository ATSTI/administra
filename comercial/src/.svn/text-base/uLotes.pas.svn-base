unit uLotes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, FMTBcd, DBClient, Provider, DB, SqlExpr, Menus, XPMenu,
  StdCtrls, Buttons, ExtCtrls, MMJPanel, Grids, DBGrids, Mask, DBCtrls,
  JvExControls, JvLabel, JvExDBGrids, JvDBGrid, DateUtils;

type
  TfLotes = class(TfPai)
    sdslote: TSQLDataSet;
    dsplotes: TDataSetProvider;
    cdslotes: TClientDataSet;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    btnProdutoProcura: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    JvLabel1: TJvLabel;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    scds_produto_proc: TSQLDataSet;
    scds_produto_procCODPRODUTO: TIntegerField;
    scds_produto_procFAMILIA: TStringField;
    scds_produto_procCATEGORIA: TStringField;
    scds_produto_procMARCA: TStringField;
    scds_produto_procUNIDADEMEDIDA: TStringField;
    scds_produto_procDATAULTIMACOMPRA: TDateField;
    scds_produto_procESTOQUEMAXIMO: TFloatField;
    scds_produto_procESTOQUEATUAL: TFloatField;
    scds_produto_procESTOQUEREPOSICAO: TFloatField;
    scds_produto_procESTOQUEMINIMO: TFloatField;
    scds_produto_procVALORUNITARIOATUAL: TFloatField;
    scds_produto_procVALORUNITARIOANTERIOR: TFloatField;
    scds_produto_procICMS: TFloatField;
    scds_produto_procCODALMOXARIFADO: TIntegerField;
    scds_produto_procIPI: TFloatField;
    scds_produto_procCLASSIFIC_FISCAL: TStringField;
    scds_produto_procCST: TStringField;
    scds_produto_procBASE_ICMS: TFloatField;
    scds_produto_procPRODUTO: TStringField;
    scds_produto_procPRECOMEDIO: TBCDField;
    scds_produto_procCOD_COMISSAO: TIntegerField;
    scds_produto_procMARGEM_LUCRO: TFloatField;
    scds_produto_procCOD_BARRA: TStringField;
    scds_produto_procVALOR_PRAZO: TFloatField;
    scds_produto_procTIPO: TStringField;
    scds_produto_procCONTA_DESPESA: TStringField;
    scds_produto_procCONTA_RECEITA: TStringField;
    scds_produto_procCONTA_ESTOQUE: TStringField;
    scds_produto_procRATEIO: TStringField;
    scds_produto_procCODPRO: TStringField;
    scds_produto_procQTDE_PCT: TFloatField;
    scds_produto_procPESO_QTDE: TFloatField;
    scds_produto_procDATACADASTRO: TSQLTimeStampField;
    scds_produto_procMARGEM: TFloatField;
    scds_produto_procPRO_COD: TStringField;
    scds_produto_procDATAGRAV: TDateField;
    scds_produto_procCODFORN: TStringField;
    scds_produto_procFOTOPRODUTO: TStringField;
    scds_produto_procLOTES: TStringField;
    scds_produto_procUSA: TStringField;
    scds_produto_procLOCALIZACAO: TStringField;
    scds_produto_procTIPOPRECOVENDA: TStringField;
    DBGrid1: TDBGrid;
    cdslotesCODPRO: TStringField;
    cdslotesCODPRODUTO: TIntegerField;
    cdslotesPRODUTO: TStringField;
    cdslotesLOTE: TStringField;
    cdslotesENTRADA: TFloatField;
    cdslotesSAIDA: TFloatField;
    cdslotesSALDOLOTE: TFloatField;
    procedure btnProdutoProcuraClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    codProdutoLt: Integer;
    codCCustoLt : Integer;
    { Public declarations }
  end;

var
  fLotes: TfLotes;

implementation

uses UDm, ufprocura_prod, uVendas, uCompra, uEntra_Sai_estoque,
  sCtrlResize;

{$R *.dfm}

procedure TfLotes.btnProdutoProcuraClick(Sender: TObject);
begin
  inherited;
  IF (dtSrc.State = dsInsert) Then
  Begin
    if (fProcura_prod.cds_proc.Active) then
      fProcura_prod.cds_proc.Close;
    var_F := 'Lotes';
    fProcura_prod.btnIncluir.Visible := true;
    fProcura_prod.Panel1.Visible := true;
    fProcura_prod.Panel2.Visible := false;
    fProcura_prod.BitBtn1.Click;
    fProcura_prod.ShowModal;
  end;
  DBEdit2.SetFocus;
end;

procedure TfLotes.btnProcurarClick(Sender: TObject);
begin
  inherited;
  if (fProcura_prod.cds_proc.Active) then
    fProcura_prod.cds_proc.Close;
  fProcura_prod.btnIncluir.Visible := true;
  fProcura_prod.Panel1.Visible := true;
  fProcura_prod.Panel2.Visible := false;
  fProcura_prod.BitBtn1.Click;
  if fProcura_prod.ShowModal = mrOk then
  begin
    IF (cdslotes.Active) then
      cdsLotes.Close;
    cdslotes.Params[0].AsInteger := fProcura_prod.cds_procCODPRODUTO.AsInteger;
    cdsLotes.Open;
  end;
end;

procedure TfLotes.FormCreate(Sender: TObject);
begin
//  inherited;
  Incluir  := 'S';
  Excluir  := 'S';
  Alterar  := 'S';
  Cancelar := 'S';
  Procurar := 'S';
end;

procedure TfLotes.btnGravarClick(Sender: TObject);
var sql_texto :string;
begin
 {if cdslotesLOTES.AsString = '' then
 begin
   MessageDlg('Informe o Lote', mtError, [mbOK], 0);
   DBEdit2.SetFocus;
   exit;
 end;}

 if DBEdit3.Text = '  /  /  ' then
 begin
   MessageDlg('Informe a data de Fabricação', mtError, [mbOK], 0);
   DBEdit3.SetFocus;
   exit;
 end;

 if DBEdit4.Text = '  /  /  ' then
 begin
   MessageDlg('Informe a data de Vencimento', mtError, [mbOK], 0);
   DBEdit4.SetFocus;
   exit;
 end;

 {if (cdslotes.State in [dsEdit]) then
 begin
   DecimalSeparator := '.';
   sql_texto := 'Update LOTES set LOTE = ' + QuotedStr(cdslotesLOTE.AsString);
   sql_texto := sql_texto + ', ESTOQUE = ' + FloatToStr(cdslotesESTOQUE.AsFloat);
   sql_texto := sql_texto + ', PRECO = ' + FloatToStr(cdslotesPRECO.AsFloat);
   if ( cdslotesSERIEINI.AsInteger > 0 ) then
     sql_texto := sql_texto + ', SERIEINI = ' + IntToStr(cdslotesSERIEINI.AsInteger);
   if ( cdslotesSERIEFIM.AsInteger > 0 ) then
   sql_texto := sql_texto + ', SERIEFIM = ' + IntToStr(cdslotesSERIEFIM.AsInteger);
   sql_texto := sql_texto + ' WHERE CODLOTE = ' + IntToStr(cdslotesCODLOTE.AsInteger);
   dm.sqlsisAdimin.ExecuteDirect(sql_texto);
   DecimalSeparator := ',';
  end
  else
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_LOTE, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cdslotesCODLOTE.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
    inherited;
  end; }
    cdslotes.DisableControls;
    cdslotes.Close;
    cdslotes.Open;
    cdslotes.EnableControls;
end;

procedure TfLotes.btnSairClick(Sender: TObject);
begin
  //dm.LOTENF := cdslotesLOTES.AsString;
  //dm.LOTEQTDE := cdslotesSALDOFIMACUM.Value;
  inherited;
  close;

end;

procedure TfLotes.btnIncluirClick(Sender: TObject);
begin
  inherited;
  if var_F = 'venda' then
  begin
    cdslotesCODPRODUTO.AsInteger := fVendas.cds_Mov_detCODPRODUTO.AsInteger;
    cdslotesCODPRO.AsString := fVendas.cds_Mov_detCODPRO.AsString;
    cdslotesPRODUTO.Value := fVendas.cds_Mov_detDESCPRODUTO.Value;
    //cdslotesDATAFABRICACAO.AsDateTime := Now;
    //cdslotesDATAVENCIMENTO.AsDateTime := Now;
  end;

  if var_F = 'compra' then
  begin
    cdslotesCODPRODUTO.AsInteger := fCompra.cds_Mov_detCODPRODUTO.AsInteger;
    cdslotesCODPRO.AsString := fCompra.cds_Mov_detCODPRO.AsString;
    cdslotesPRODUTO.Value := fCompra.cds_Mov_detDESCPRODUTO.Value;
    //cdslotesDATAFABRICACAO.AsDateTime := Now;
    //cdslotesDATAVENCIMENTO.AsDateTime := Now;
  end;

  if var_F = 'procura' then
  begin
    cdslotesCODPRODUTO.AsInteger := fProcura_prod.cds_procCODPRODUTO.AsInteger;
    cdslotesCODPRO.AsString := fProcura_prod.cds_procCODPRO.AsString;
    cdslotesPRODUTO.Value := fProcura_prod.cds_procPRODUTO.Value;
    //cdslotesDATAFABRICACAO.AsDateTime := Now;
    //cdslotesDATAVENCIMENTO.AsDateTime := Now;
  end;

  if var_F = 'estoque' then
  begin
    cdslotesCODPRODUTO.AsInteger := fEntra_Sai_estoque.cds_Mov_detCODPRODUTO.AsInteger;
    cdslotesCODPRO.AsString := fEntra_Sai_estoque.cds_Mov_detCODPRO.AsString;
    cdslotesPRODUTO.Value := fEntra_Sai_estoque.cds_Mov_detPRODUTO.Value;
    //cdslotesDATAFABRICACAO.AsDateTime := Now;
    //cdslotesDATAVENCIMENTO.AsDateTime := Now;
  end;

  DBEdit1.SetFocus;
end;

procedure TfLotes.DBEdit1Exit(Sender: TObject);
begin
  inherited;
 if ((var_f <> 'venda') and (var_f <> 'compra') and (var_f <> 'produto')) then
  if DtSrc.DataSet.State in [dsInsert, dsEdit] then
  begin
    if DBEdit1.Text='' then
       btnProdutoProcura.Click;
    if DBEdit1.Field.OldValue<>DBEdit1.Field.NewValue then
    begin
      if scds_produto_proc.Active then
        scds_produto_proc.Close;
      scds_produto_proc.Params[0].AsInteger := StrToInt(DBEdit1.Text);
      scds_produto_proc.Open;
      if scds_produto_proc.IsEmpty then
      begin
        MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
        [mbOk], 0);
        btnProdutoProcura.Click;
        exit;
      end;
      cdslotesCODPRODUTO.AsInteger := scds_produto_procCODPRODUTO.AsInteger;
      cdslotesCODPRO.AsString := scds_produto_procCODPRO.AsString;
      cdslotesPRODUTO.Value := scds_produto_procPRODUTO.Value;
    end;
    dm.scds_produto_proc.Close;
  end;
end;

procedure TfLotes.FormShow(Sender: TObject);
begin
  //inherited;
  sCtrlResize.CtrlResize(TForm(fLotes));
  cdsLotes.CommandText := 'SELECT r.CODPRO, r.CODPRODUTO, r.PRODUTO, ' +
    ' r.LOTE, r.ENTRADA, r.SAIDA, r.SALDO AS SALDOLOTE ' +
    ' FROM VIEW_ESTOQUELOTE(' + IntToStr(codProdutoLt) + ', ' + QuotedStr('0') + ') r ' +
    ' WHERE (r.SALDO > 0) ' +
    ' ORDER BY r.LOTE ';
  cdsLotes.Open;
  if not cdslotes.IsEmpty then
    DBGrid1.SetFocus;
end;

procedure TfLotes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if var_F = 'venda' then
  IF (fVendas.cds_Mov_det.State in [dsInsert, dsEdit]) then
  begin
    if var_F = 'venda' then
    begin
      if (cdslotesSALDOLOTE.AsFloat > 0) then
      begin
       fVendas.cds_Mov_detLOTE.AsString := cdslotesLOTE.AsString;
       //fVendas.cds_Mov_detDTAFAB.AsDateTime := cdslotesDATAFABRICACAO.AsDateTime;
       //fVendas.cds_Mov_detDTAVCTO.AsDateTime := cdslotesDATAVENCIMENTO.AsDateTime;
       //fVendas.cds_Mov_detPRECO.AsFloat := cdslotesPRECO.AsFloat;
       if (cdslotesSALDOLOTE.AsFloat > 0) then
         dm.estoq := cdslotesSALDOLOTE.AsFloat;
       close;
      end
      else
      begin
       MessageDlg('Não há estoque deste Lote.', mtWarning, [mbOK], 0);
       fVendas.dbeProduto.Text := '';
       close;
      end;
    end;
  end;
  if var_F = 'compra' then
  begin
    if cdslotesLOTE.AsString <> '' then
    begin
      fCompra.cds_Mov_detLOTE.AsString := cdslotesLOTE.AsString;
      //fCompra.cds_Mov_detDTAFAB.AsDateTime := cdslotesDATAFABRICACAO.AsDateTime;
      //fCompra.cds_Mov_detDTAVCTO.AsDateTime := cdslotesDATAVENCIMENTO.AsDateTime;
      close;
    end
    else
    begin
     fCompra.dbeProduto.Text := '';
     close;
    end;
  end;

  if var_F = 'procura' then
  begin
    if cdslotesLOTE.AsString <> '' then
    begin
      fCompra.cds_Mov_detLOTE.AsString := cdslotesLOTE.AsString;
      dm.estoq := cdslotesSALDOLOTE.AsFloat;
      //fCompra.cds_Mov_detDTAFAB.AsDateTime := cdslotesDATAFABRICACAO.AsDateTime;
      //fCompra.cds_Mov_detDTAVCTO.AsDateTime := cdslotesDATAVENCIMENTO.AsDateTime;
      close;
    end
    else
    begin
     MessageDlg('o Lote tem que ter uma quantidade', mtError, [mbOK], 0);
     fCompra.est_compra := cdslotesSALDOLOTE.AsFloat;
     fProcura_prod.Edit3.Text := '';
     close;
    end;
  end;

  if var_F = 'procura_venda' then
  begin
    if cdslotesLOTE.AsString <> '' then
    begin
      fVendas.cds_Mov_detLOTE.AsString := cdslotesLOTE.AsString;
      dm.estoq := cdslotesSALDOLOTE.AsFloat;
      //fVendas.cds_Mov_detDTAFAB.AsDateTime := cdslotesDATAFABRICACAO.AsDateTime;
      //fVendas.cds_Mov_detDTAVCTO.AsDateTime := cdslotesDATAVENCIMENTO.AsDateTime;
      //fVendas.cds_Mov_detPRECO.AsFloat := cdslotesPRECO.AsFloat;
      close;
    end
    else
    begin
     MessageDlg('o Lote tem que ter uma quantidade', mtError, [mbOK], 0);
     dm.estoq := cdslotesSALDOLOTE.AsFloat;
     fProcura_prod.Edit3.Text := '';
     close;
    end;
  end;

  if var_F = 'procura_estoque' then
  begin
    if cdslotesLOTE.AsString <> '' then
    begin
      fEntra_Sai_estoque.cds_Mov_detLOTE.AsString := cdslotesLOTE.AsString;
      //fEntra_Sai_estoque.cds_Mov_detDTAFAB.AsDateTime := cdslotesDATAFABRICACAO.AsDateTime;
      //fEntra_Sai_estoque.cds_Mov_detDTAVCTO.AsDateTime := cdslotesDATAVENCIMENTO.AsDateTime;
      fEntra_Sai_estoque.estoq1 := cdslotesSALDOLOTE.AsFloat;
      close;
    end
    else
    begin
     MessageDlg('o Lote tem que ter uma quantidade', mtError, [mbOK], 0);
     fEntra_Sai_estoque.estoq1 := cdslotesSALDOLOTE.AsFloat;
     fProcura_prod.Edit3.Text := '';
     close;
    end;
  end;

  if var_F = 'estoque' then
  begin
     fEntra_Sai_estoque.cds_Mov_detLOTE.AsString := cdslotesLOTE.AsString;
     //fEntra_Sai_estoque.cds_Mov_detDTAFAB.AsDateTime := cdslotesDATAFABRICACAO.AsDateTime;
     //fEntra_Sai_estoque.cds_Mov_detDTAVCTO.AsDateTime := cdslotesDATAVENCIMENTO.AsDateTime;
     close;
  end;
  if var_F = 'procura_nf' then
    begin
      if (cdslotesSALDOLOTE.AsFloat > 0) then
      begin
       if (cdslotesSALDOLOTE.AsFloat > 0) then
         fprocura_prod.fprocuraprodestq := cdslotesSALDOLOTE.AsFloat;
       close;
      end
      else
      begin
       MessageDlg('Não há estoque deste Lote.', mtWarning, [mbOK], 0);
       close;
      end;
    end;
  inherited;
end;

end.
