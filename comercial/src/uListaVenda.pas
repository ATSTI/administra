unit uListaVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, StdCtrls, Mask, DBCtrls, DB, Menus, XPMenu, Buttons,
  ExtCtrls, MMJPanel, Grids, DBGrids, FMTBcd, SqlExpr, Provider, DBClient,
  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvDBDatePickerEdit, rpcompobase, rpvclreport, dbxpress;

type
  TfListaVenda = class(TfPai)
    gbLista: TGroupBox;
    cdsLista_det: TClientDataSet;
    dspLista_det: TDataSetProvider;
    sdsLista_det: TSQLDataSet;
    dtsrcDet: TDataSource;
    sdsListaVenda: TSQLDataSet;
    dspListaVenda: TDataSetProvider;
    cdsListaVenda: TClientDataSet;
    sdsListaVendaCODLISTA: TIntegerField;
    sdsListaVendaNOMELISTA: TStringField;
    sdsListaVendaVALIDADE: TDateField;
    sdsListaVendaDATAINICIAL: TDateField;
    sdsListaVendaDATAFINAL: TDateField;
    cdsListaVendaCODLISTA: TIntegerField;
    cdsListaVendaNOMELISTA: TStringField;
    cdsListaVendaVALIDADE: TDateField;
    cdsListaVendaDATAINICIAL: TDateField;
    cdsListaVendaDATAFINAL: TDateField;
    scds_produto_proc: TSQLDataSet;
    scds_produto_procCODPRODUTO: TIntegerField;
    scds_produto_procCODPRO: TStringField;
    scds_produto_procPRODUTO: TStringField;
    scds_produto_procVALORUNITARIOATUAL: TFloatField;
    scds_produto_procVALOR_PRAZO: TFloatField;
    scds_produto_procVALORMINIMO: TFloatField;
    scds_produto_procESTOQUEATUAL: TFloatField;
    sdsLista_detCODLISTADET: TIntegerField;
    sdsLista_detCODLISTA: TIntegerField;
    sdsLista_detCODPRODUTO: TIntegerField;
    sdsLista_detALTPRECO: TStringField;
    sdsLista_detDESCONTO: TStringField;
    sdsLista_detDESCONTOMAX: TFloatField;
    sdsLista_detDESCONTOMIN: TFloatField;
    sdsLista_detMARGEM: TStringField;
    sdsLista_detMARGEMMAX: TFloatField;
    sdsLista_detMARGEMMIN: TFloatField;
    sdsLista_detESTOQUE: TFloatField;
    sdsLista_detPRECOCOMPRA: TFloatField;
    sdsLista_detPRECOVENDA: TFloatField;
    sdsLista_detPRODUTO: TStringField;
    cdsLista_detCODLISTADET: TIntegerField;
    cdsLista_detCODLISTA: TIntegerField;
    cdsLista_detCODPRODUTO: TIntegerField;
    cdsLista_detALTPRECO: TStringField;
    cdsLista_detDESCONTO: TStringField;
    cdsLista_detDESCONTOMAX: TFloatField;
    cdsLista_detDESCONTOMIN: TFloatField;
    cdsLista_detMARGEM: TStringField;
    cdsLista_detMARGEMMAX: TFloatField;
    cdsLista_detMARGEMMIN: TFloatField;
    cdsLista_detESTOQUE: TFloatField;
    cdsLista_detPRECOCOMPRA: TFloatField;
    cdsLista_detPRECOVENDA: TFloatField;
    cdsLista_detPRODUTO: TStringField;
    GroupBox1: TGroupBox;
    dbgDetalhe: TDBGrid;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    chkPermite: TDBCheckBox;
    Label13: TLabel;
    DBEdit7: TDBEdit;
    Label14: TLabel;
    Label12: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    chkDesconto: TDBCheckBox;
    chkMargem: TDBCheckBox;
    Panel1: TPanel;
    Label15: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit9: TDBEdit;
    dbNomeLista: TDBEdit;
    dbDataInicial: TJvDBDatePickerEdit;
    dbDataFinal: TJvDBDatePickerEdit;
    dbValidade: TJvDBDatePickerEdit;
    btnTodosProd: TButton;
    sdsLista_detCODPRO: TStringField;
    cdsLista_detCODPRO: TStringField;
    edMargem: TEdit;
    Label16: TLabel;
    btnImprimir: TBitBtn;
    VCLReport1: TVCLReport;
    btnAumento: TBitBtn;
    sdsLista_detCOD_P: TStringField;
    cdsLista_detCOD_P: TStringField;
    btnCopiarCusto: TBitBtn;
    cbListaCopia: TComboBox;
    Label17: TLabel;
    BitBtn1: TBitBtn;
    pnCopia: TPanel;
    procedure DtSrcStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure dbValidadeExit(Sender: TObject);
    procedure btnTodosProdClick(Sender: TObject);
    procedure cdsLista_detNewRecord(DataSet: TDataSet);
    procedure cdsListaVendaNewRecord(DataSet: TDataSet);
    procedure chkDescontoClick(Sender: TObject);
    procedure chkMargemClick(Sender: TObject);
    procedure dtsrcDetDataChange(Sender: TObject; Field: TField);
    procedure btnProcurarClick(Sender: TObject);
    procedure dbgDetalheKeyPress(Sender: TObject; var Key: Char);
    procedure btnIncluirClick(Sender: TObject);
    procedure cdsLista_detBeforePost(DataSet: TDataSet);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnAumentoClick(Sender: TObject);
    procedure dbgDetalheTitleClick(Column: TColumn);
    procedure btnCopiarCustoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    cod_det : Integer;
  end;

var
  fListaVenda: TfListaVenda;

implementation

uses UDm, uProcurar_nf, UDMNF, uListaVendaProc,
  uProdGeraAumento;

{$R *.dfm}

procedure TfListaVenda.DtSrcStateChange(Sender: TObject);
begin
  inherited;
  {if (dtsrcDet.State in [dsEdit, dsInsert]) then
  begin
    dbDataInicial.Enabled := True;
    dbDataFinal.Enabled := True;
    dbValidade.Enabled := True;
  end
  else
  begin
    dbDataInicial.Enabled := False;
    dbDataFinal.Enabled := False;
    dbValidade.Enabled := False;
  end;}
end;

procedure TfListaVenda.FormCreate(Sender: TObject);
begin
  cod_det := 1999999;
end;

procedure TfListaVenda.btnGravarClick(Sender: TObject);
var linhacds: integer;
  linha_grid: Integer;
begin
  if (cdsListaVendaCODLISTA.AsInteger = 1999999) then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENLISTVEN, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cdsListaVendaCODLISTA.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
  end;

  if (DtSrc.State in [dsInsert, dsEdit]) then
  begin
    cdsListaVenda.ApplyUpdates(0);
    cdsLista_det.First;
    cdsLista_det.DisableControls;
    linhacds := cdsLista_det.RecNo;
    while not cdsLista_det.Eof do
    begin
      if (cdsLista_detCODLISTA.AsInteger = 1999999) then
      begin
        if (cdsLista_det.State in [dsBrowse, dsInactive]) then
          cdsLista_det.Edit;
        cdsLista_detCODLISTA.AsInteger := cdsListaVendaCODLISTA.AsInteger;
      end;
      if (cdsLista_detCODLISTADET.AsInteger >= 1999999) then
      begin
        if (cdsLista_det.State in [dsBrowse, dsInactive]) then
          cdsLista_det.Edit;
        if dm.c_6_genid.Active then
          dm.c_6_genid.Close;
        dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENLISTVEN_DET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
        dm.c_6_genid.Open;
        cdsLista_detCODLISTADET.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
        dm.c_6_genid.Close;
        DecimalSeparator := '.';
        dm.sqlsisAdimin.ExecuteDirect('INSERT INTO LISTAPRECO_VENDADET (CODLISTADET, ' +
          ' CODLISTA, CODPRODUTO, PRODUTO, PRECOVENDA, PRECOCOMPRA)  VALUES ( ' +
        IntToStr(cdsLista_detCODLISTADET.AsInteger) + ', ' +
        IntToStr(cdsListaVendaCODLISTA.AsInteger) + ', ' +
        IntToStr(cdsLista_detCODPRODUTO.AsInteger) + ', ' +
        QuotedStr(cdsLista_detPRODUTO.AsString) + ', ' +
        FloatToStr(cdsLista_detPRECOVENDA.AsFloat) + ', '  +
        FloatToStr(cdsLista_detPRECOCOMPRA.AsFloat) + ')');
        DecimalSeparator := ',';
      end;
      //cdsLista_det.ApplyUpdates(0);
      cdsLista_det.Next;
    end;
    cdsLista_det.RecNo := linhacds;
    cdsLista_det.EnableControls;
  end;
  //inherited;
  if (cdsLista_det.State in [dsEdit, dsInsert]) then
  begin
    cdsLista_det.Post;
  end;
  cdsLista_det.DisableControls;
  linha_grid := cdsLista_det.RecNo;
  cdsLista_det.First;
  DecimalSeparator := '.';
  while not cdsLista_det.Eof do
  begin
    dm.sqlsisAdimin.ExecuteDirect('UPDATE LISTAPRECO_VENDADET SET ' +
      ' PRECOVENDA = ' + floatToStr(cdsLista_detPRECOVENDA.AsFloat) +
      ' ,PRECOCOMPRA = ' + floatToStr(cdsLista_detPRECOCOMPRA.AsFloat) +
      ' WHERE CODLISTADET = ' + IntToStr(cdsLista_detCODLISTADET.AsInteger));
    cdsLista_det.Next;
  end;
  DecimalSeparator := ',';
  cdsLista_det.EnableControls;
  cdsLista_det.RecNo := linha_grid;
  //cdsLista_det.Post;
end;

procedure TfListaVenda.dbValidadeExit(Sender: TObject);
begin
  inherited;
  if (dtsrc.State in [dsInsert, dsEdit]) then
    btnTodosProd.SetFocus;
end;

procedure TfListaVenda.btnTodosProdClick(Sender: TObject);
//var margem: double;
var   Save_Cursor:TCursor;
begin
  Save_Cursor   := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  try
    if(scds_produto_proc.Active) then
      scds_produto_proc.Close;
    scds_produto_proc.Params[0].AsInteger :=cdsListaVendaCODLISTA.AsInteger;
      scds_produto_proc.Open;
    if(not cdsLista_det.Active) then
      cdsLista_det.Open;
    scds_produto_proc.First;
    while not scds_produto_proc.Eof do
    begin
      cdsLista_det.Append;
      cdsLista_detCODPRODUTO.AsInteger := scds_produto_procCODPRODUTO.AsInteger;
      cdsLista_detESTOQUE.AsFloat := scds_produto_procESTOQUEATUAL.AsFloat;
      cdsLista_detPRECOCOMPRA.AsFloat := scds_produto_procVALOR_PRAZO.AsFloat;
      //if (edMargem.Text <> '') then
      //  margem := 0;
      cdsLista_detPRECOVENDA.AsFloat := scds_produto_procVALORUNITARIOATUAL.AsFloat;
      cdsLista_detPRODUTO.AsString := scds_produto_procPRODUTO.AsString;
      cdsLista_detALTPRECO.AsString := 'F';
      cdsLista_detDESCONTO.AsString := 'F';
      cdsLista_detDESCONTOMAX.AsFloat := 0;
      cdsLista_detDESCONTOMIN.AsFloat := 0;
      cdsLista_detMARGEM.AsString := 'F';
      cdsLista_detMARGEMMAX.AsFloat := 0;
      cdsLista_detMARGEMMIN.AsFloat := 0;
      cdsLista_det.Post;
      scds_produto_proc.Next;
    end;
    MessageDlg('Produtos adicionado com sucesso. Clique em Gravar para finalizar.', mtWarning, [mbOK], 0);
  Finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

procedure TfListaVenda.cdsLista_detNewRecord(DataSet: TDataSet);
begin
  if (cod_det >= 1999999) then
  cod_det := cod_det +1;
  cdsLista_detCODLISTADET.asInteger := cod_det;
  cdsLista_detCODLISTA.AsInteger := cdsListaVendaCODLISTA.AsInteger;
end;

procedure TfListaVenda.cdsListaVendaNewRecord(DataSet: TDataSet);
begin
  cdsListaVendaCODLISTA.asInteger := 1999999;
  cdsListaVendaDATAINICIAL.AsDateTime := Now;
  cdsListaVendaDATAFINAL.AsDateTime := Now;
  cdsListaVendaVALIDADE.AsDateTime := Now;    
end;

procedure TfListaVenda.chkDescontoClick(Sender: TObject);
begin
  inherited;
  if (dtsrcDet.State in [dsEdit, dsInsert]) then
    if(chkDesconto.Checked)then
    begin
      DBEdit2.Enabled := True;
      DBEdit3.Enabled := True;
    end
    else
    begin
      DBEdit2.Enabled := False;
      DBEdit3.Enabled := False;
      cdsLista_detDESCONTOMAX.Clear;
      cdsLista_detDESCONTOMIN.Clear;
    end
end;

procedure TfListaVenda.chkMargemClick(Sender: TObject);
begin
  inherited;
  if (dtsrcDet.State in [dsEdit, dsInsert]) then
    if(chkMargem.Checked)then
    begin
      DBEdit4.Enabled := True;
      DBEdit5.Enabled := True;
    end
    else
    begin
      DBEdit4.Enabled := False;
      DBEdit5.Enabled := False;
      cdsLista_detMARGEMMAX.Clear;
      cdsLista_detMARGEMMIN.Clear;
    end
end;

procedure TfListaVenda.dtsrcDetDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if(cdsLista_detMARGEM.AsString = 'T') then
    chkMargem.Checked := True
  else
    chkMargem.Checked := False;

  if(cdsLista_detDESCONTO.AsString = 'T') then
    chkDesconto.Checked := True
  else
    chkDesconto.Checked := False;

  if(cdsLista_detALTPRECO.AsString = 'T') then
    chkPermite.Checked := True
  else
    chkPermite.Checked := False;
  if (dtsrcDet.State in [dsEdit]) then
    if (DtSrc.State in [dsBrowse]) then
      cdsListaVenda.Edit;
end;

procedure TfListaVenda.btnProcurarClick(Sender: TObject);
begin
  fListaVendaProc := TfListaVendaProc.Create(Application);
  try
    fListaVendaProc.ShowModal;
  finally
    if (cdsListaVenda.Active ) then
      cdsListaVenda.Close;
    cdsListaVenda.Params[0].AsInteger := fListaVendaProc.codlista;
    cdsListaVenda.Open;
    if (cdsLista_det.Active) then
      cdsLista_det.Close;
    cdsLista_det.CommandText := ' SELECT UDF_STRZERO(UDF_DIGITS(p.CODPRO),12) AS COD_P,  l.*, p.CODPRO' +
      '  FROM LISTAPRECO_VENDADET  l, PRODUTOS P ' +
      ' where l.codproduto = p.codproduto ' +
      '   and l.CODLISTA = ' + IntToSTr(fListaVendaProc.codlista) +
      ' order by COD_P  ';
    cdsLista_det.Open;
    fListaVendaProc.Free;
  end;
end;

procedure TfListaVenda.dbgDetalheKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  {if (key = #13) then
  begin
    DecimalSeparator := '.';
    dm.sqlsisAdimin.ExecuteDirect('UPDATE LISTAPRECO_VENDADET SET PRECOVENDA = ' +
      floatToStr(cdsLista_detPRECOVENDA.AsFloat) + ' WHERE CODLISTADET = ' +
      IntToStr(cdsLista_detCODLISTADET.AsInteger));
    DecimalSeparator := ',';
    cdsLista_det.Next;
 end;}

end;

procedure TfListaVenda.btnIncluirClick(Sender: TObject);
begin
  inherited;
  dbNomeLista.SetFocus;
end;

procedure TfListaVenda.cdsLista_detBeforePost(DataSet: TDataSet);
begin
  inherited;
  if  (DtSrc.State in [dsBrowse]) then
    cdsListaVenda.Edit;
end;

procedure TfListaVenda.btnImprimirClick(Sender: TObject);
begin
  inherited;
  VCLReport1.Filename := str_relatorio + 'listaprecovenda.rep';
  VCLReport1.Title := VCLReport1.Filename;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('CODLISTA').Value := cdsListaVendaCODLISTA.AsInteger;
  VCLReport1.Execute;
end;

procedure TfListaVenda.btnAumentoClick(Sender: TObject);
begin
  inherited;
  fProdGeraAumento := TfProdGeraAumento.Create(Application);
  try
    fprodGeraAumento.codListaPreco := IntToStr(cdsLista_detCODLISTA.AsInteger);
    fProdGeraAumento.ShowModal;
  finally
    fProdGeraAumento.Free;
  end;
end;

procedure TfListaVenda.dbgDetalheTitleClick(Column: TColumn);
begin
  //inherited;
  if (Column.FieldName = 'CODPRO') then
  begin
    cdsLista_det.IndexFieldNames := 'COD_P';
  end
  else begin
    cdsLista_det.IndexFieldNames := Column.FieldName;
  end;
end;

procedure TfListaVenda.btnCopiarCustoClick(Sender: TObject);
var sqlC: String;
begin
  if (dbNomeLista.Text = '') then
  begin
    MessageDlg('Informe a Lista que sera usada para fazer a Cópia.', mtWarning, [mbOK], 0);
    exit;
  end;
  sqlC := 'SELECT * FROM LISTAPRECO_VENDA';
  sqlC := sqlC + ' where NOMELISTA not like ' + QuotedStr('BKP%');
  sqlC := sqlC + '   and NOMELISTA <> ' + QuotedStr(dbNomeLista.Text);
  if (dm.cdsBusca.Active) then
    dm.cdsBusca.Close;
  dm.cdsBusca.CommandText := sqlC;
  dm.cdsBusca.Open;
  cbListaCopia.Items.Clear;
  while not dm.cdsBusca.Eof do
  begin
    cbListaCopia.Items.Add(dm.cdsBusca.FieldByName('NOMELISTA').AsString);
    dm.cdsBusca.Next;
  end;
  pnCopia.Visible := True;
end;

procedure TfListaVenda.BitBtn1Click(Sender: TObject);
var vcodLista: Integer;
  Save_Cursor:TCursor;
  TD : TTransactionDesc;
begin
  vCodLista := 0;
  if (cbListaCopia.Text = '') then
  begin
    MessageDlg('Informe a Lista para onde sera copiado os valores.', mtWarning, [mbOK], 0);
    exit;
  end;
  if (dm.cdsBusca.Active) then
    dm.cdsBusca.Close;
  dm.cdsBusca.CommandText := 'SELECT CODLISTA FROM LISTAPRECO_VENDA  ' +
    '  WHERE NOMELISTA = ' + QuotedStr(cbListaCopia.Text);
  dm.cdsBusca.Open;
  vCodLista := dm.cdsBusca.fieldByName('CODLISTA').asInteger;

  if (vCodLista = 0) then
  begin
    MessageDlg('Lista Informada não existe.', mtWarning, [mbOK], 0);
    exit;
  end;
  cdsLista_det.First;
  Save_Cursor   := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  try
    try
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      dm.sqlsisAdimin.StartTransaction(TD);
      DecimalSeparator := '.';
      while not cdsLista_det.Eof do
      begin
        dm.sqlsisAdimin.ExecuteDirect('UPDATE LISTAPRECO_VENDADET SET ' +
          ' PRECOCOMPRA = ' + floatToStr(cdsLista_detPRECOCOMPRA.AsFloat) +
          ' WHERE CODLISTA = ' + IntToStr(vCodLista) +
          '   AND CODPRODUTO = ' + IntToStr(cdsLista_detCODPRODUTO.AsInteger));
        cdsLista_det.Next;
      end;
      DecimalSeparator := ',';
      pnCopia.Visible := False;
      dm.sqlsisAdimin.Commit(TD);
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
      end;
    end;
  Finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
  MessageDlg('Cópia realizada com sucesso.', mtInformation, [mbOK], 0);
end;

end.
