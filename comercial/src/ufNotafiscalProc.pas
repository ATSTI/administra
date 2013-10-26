unit ufNotafiscalProc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, MMJPanel, FMTBcd, Menus, DB,
  DBClient, Provider, SqlExpr, Grids, DBGrids, Mask, XPMenu, rpcompobase,
  rpvclreport, JvExControls, JvLabel, DBLocal, DBLocalS, JvExDBGrids,
  JvDBGrid, ImgList, DBxPress;

type
  TfNotaFiscalProc = class(TForm)
    MMJPanel2: TMMJPanel;
    MMJPanel1: TMMJPanel;
    btnProcurar: TBitBtn;
    Edit1: TEdit;
    Label9: TLabel;
    Edit2: TEdit;
    Label10: TLabel;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    Edit3: TEdit;
    Label3: TLabel;
    meDta1: TMaskEdit;
    meDta2: TMaskEdit;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    sds: TSQLDataSet;
    sdsNOTASERIE: TStringField;
    sdsDTAEMISSAO: TDateField;
    sdsDTASAIDA: TDateField;
    sdsUF: TStringField;
    sdsNUMNF: TIntegerField;
    sdsNOTAFISCAL: TIntegerField;
    sdsVALOR_TOTAL_NOTA: TFloatField;
    sdsCODCLIENTE: TIntegerField;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    cdsNOTASERIE: TStringField;
    cdsDTAEMISSAO: TDateField;
    cdsDTASAIDA: TDateField;
    cdsUF: TStringField;
    cdsNUMNF: TIntegerField;
    cdsNOTAFISCAL: TIntegerField;
    cdsVALOR_TOTAL_NOTA: TFloatField;
    cdsCODCLIENTE: TIntegerField;
    ds: TDataSource;
    BitBtn1: TBitBtn;
    btnNotaFiscal: TBitBtn;
    PopupMenu1: TPopupMenu;
    Executarconsulta1: TMenuItem;
    Sair1: TMenuItem;
    XPMenu1: TXPMenu;
    btnSair: TBitBtn;
    btnCancelar: TBitBtn;
    btnImprimir: TBitBtn;
    repNF: TVCLReport;
    CheckBox1: TCheckBox;
    sdsCLIFOR: TStringField;
    cdsCLIFOR: TStringField;
    CheckBox2: TCheckBox;
    sdsNATUREZA: TSmallintField;
    cdsNATUREZA: TSmallintField;
    JvLabel1: TJvLabel;
    sdsIMPRESSA: TStringField;
    cdsIMPRESSA: TStringField;
    cbImpressa: TCheckBox;
    BitBtn3: TBitBtn;
    Label7: TLabel;
    btnSerie: TBitBtn;
    edSerie: TEdit;
    ProcuraForn: TSQLClientDataSet;
    ProcuraFornCODFORNECEDOR: TIntegerField;
    ProcuraFornNOMEFORNECEDOR: TStringField;
    JvDBGrid1: TJvDBGrid;
    sdsSELECIONOU: TStringField;
    cdsSELECIONOU: TStringField;
    ImageList1: TImageList;
    ImageList2: TImageList;
    BitBtn10: TBitBtn;
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnNotaFiscalClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure btnImprimirClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure dsDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btnSerieClick(Sender: TObject);
    procedure JvDBGrid1TitleClick(Column: TColumn);
    procedure JvDBGrid1CellClick(Column: TColumn);
    procedure JvDBGrid1ColEnter(Sender: TObject);
    procedure JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNotaFiscalProc: TfNotaFiscalProc;

implementation

uses UDm, uListaClientes, uNotafiscal, uITENS_NF, uClienteCadastro,
  uProcurar, sCtrlResize, UDMNF, uGuiaTranporte;

{$R *.dfm}

procedure TfNotaFiscalProc.BitBtn8Click(Sender: TObject);
begin
  if (CheckBox1.Checked = False) then
  begin
    fClienteCadastro:=TfClienteCadastro.Create(Application);
    varform := 'consulta';
    fListaClientes:=TfListaClientes.Create(Application);
    Try
      fListaClientes.ShowModal;
      Edit1.Text:=IntToStr(fListaClientes.cdsCODCLIENTE.asInteger);
      Edit2.Text:=fListaClientes.cdsNOMECLIENTE.asString;
    Finally
     fListaClientes.ListaCliente.close;
     fClienteCadastro.Free;
     fListaClientes.Free;
    end;
  end
  else begin
    fProcurar:= TfProcurar.Create(self,ProcuraForn);
    fProcurar.BtnProcurar.Click;
    fProcurar.EvDBFind1.DataField := 'NOMEFORNECEDOR';
    fProcurar.btnIncluir.Visible := True;
    try
      varForm1 := 'compra';
      cod_forn := 0;
      nome_forn := '';
      fProcurar.ShowModal;
      Edit1.Text := IntToStr(ProcuraFornCODFORNECEDOR.AsInteger);
      Edit2.Text := ProcuraFornNOMEFORNECEDOR.AsString;
    finally
      ProcuraForn.Close;
      fProcurar.Free;
    end;
  end;

end;

procedure TfNotaFiscalProc.BitBtn9Click(Sender: TObject);
begin
  Edit1.Text:='';
  Edit2.Text:='';
end;

procedure TfNotaFiscalProc.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfNotaFiscalProc.BitBtn2Click(Sender: TObject);
begin
 meDta1.Text := '  /  /  ';
 meDta2.Text := '  /  /  ';
end;

procedure TfNotaFiscalProc.BitBtn1Click(Sender: TObject);
var str_sql, stra, datastr : String;
begin
  if (CheckBox1.Checked = False) then
  begin
  str_sql := 'select nf.SELECIONOU, nf.IMPRESSA, nf.NOTASERIE, nf.DTAEMISSAO, nf.DTASAIDA, nf.UF, ' +
    ' nf.NUMNF, nf.NOTAFISCAL, nf.VALOR_TOTAL_NOTA, nf.codCliente, ' +
    ' cli.NOMECLIENTE as CLIFOR, nf.NATUREZA from NOTAFISCAL nf ' +
    ' inner join CLIENTES cli on  cli.CODCLIENTE = nf.CODCLIENTE ' +
    ' inner join VENDA v on v.codVenda = nf.codVenda ' +
    ' inner join MOVIMENTO m on m.codmovimento = v.codmovimento' ;
  end
  else
  begin
    str_sql := 'select nf.SELECIONOU, nf.IMPRESSA, nf.NOTASERIE, nf.DTAEMISSAO, nf.DTASAIDA, nf.UF, ' +
    ' nf.NUMNF, nf.NOTAFISCAL, nf.VALOR_TOTAL_NOTA, nf.codCliente, ' +
    ' forn.NOMEFORNECEDOR as CLIFOR, nf.NATUREZA from NOTAFISCAL nf ' +
    ' inner join FORNECEDOR forn on  forn.CODFORNECEDOR = nf.CODCLIENTE' +
    ' inner join COMPRA c on c.codCompra = nf.codVenda' +
    ' inner join MOVIMENTO m on m.codmovimento = c.codmovimento';
  end;
  if (edit1.Text <> '') then
  begin
    stra := ' where nf.CODCLIENTE = ';
    stra := stra + edit1.Text;
  end;
  // Se tem o codigo do cliente nao precisa procurar pelo nome
  if (edit1.Text = '') then
  if (edit2.Text <> '') then
  begin
    if (CheckBox1.Checked = False) then
      stra := ' where cli.NOMECLIENTE like '
    else
      stra := ' where forn.NOMEFORNECEDOR like ';
    stra := stra + '''' + edit2.Text + '%''';
  end;
  if (edit3.Text <> '') then
  begin
    if (stra <> '') then
    begin
      stra := stra + ' and nf.NOTASERIE like ';
      stra := stra + '''' + edit3.Text + '%''';
    end
    else begin
      stra := ' where nf.NOTASERIE like ';
      stra := stra + '''' + edit3.Text + '%''';
    end;
  end;
  datastr:='  /  /  ';
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
    if (stra = '') then
    begin
      stra := ' where nf.DTAEMISSAO between ' +
        '''' + formatdatetime('mm/dd/yy', StrToDate(medta1.Text)) + '''' +
        ' and ' +
        '''' + formatdatetime('mm/dd/yy', StrToDate(medta2.Text)) + '''';
    end
    else begin
      stra := stra + ' and nf.DTAEMISSAO between ' +
        '''' + formatdatetime('mm/dd/yy', StrToDate(medta1.Text)) + '''' +
        ' and ' +
        '''' + formatdatetime('mm/dd/yy', StrToDate(medta2.Text)) + '''';
    end;
  end;
  except
  on EConvertError do
    begin
      ShowMessage ('Data Inválida! dd/mm/aa');
      meDta1.SetFocus;
    end;
  end;
  //==============================================================================
  {if (cbImpressa.Checked) then
  begin
    if (stra = '') then
      stra := ' where nf.IMPRESSA = ' + QuotedStr('S')
    else
      stra := stra + ' and nf.IMPRESSA = ' + QuotedStr('S');
  end
  else begin
    if (stra = '') then
      stra := ' where ((nf.IMPRESSA = ' + QuotedStr('N')  +  ') OR (nf.IMPRESSA is null))'
    else
      stra := stra + ' and ((nf.IMPRESSA = ' + QuotedStr('N')  +  ') OR (nf.IMPRESSA is null))';
  end;}
  if (CheckBox2.Checked = True) then
  begin
    if (stra = '') then
      stra := ' where ((nf.NATUREZA = 3) or (nf.NATUREZA = 15) or (nf.NATUREZA = 12))'
    else
      stra := stra + ' and ((nf.NATUREZA = 3) or (nf.NATUREZA = 15) or (nf.NATUREZA = 12)) ';
  end;

  if (CheckBox1.Checked = True) then
  begin
    if (stra = '') then
      stra := ' where (nf.NATUREZA = 4) '
    else
      stra := stra + ' and (nf.NATUREZA = 4) ';
  end;

  if (edSerie.Text <> '') then
  begin
    if (CheckBox1.Checked = False) then
    begin
      if (stra = '') then
        stra := ' where (v.SERIE = ' + QuotedStr(edSerie.Text) + ')'
      else
        stra := stra + ' and (v.SERIE = ' + QuotedStr(edSerie.Text) + ')';
    end
    else begin
      if (stra = '') then
        stra := ' where (c.SERIE = ' + QuotedStr(edSerie.Text) + ')'
      else
        stra := stra + ' and (c.SERIE = ' + QuotedStr(edSerie.Text) + ')';
    end;
  end;

  if (cds.Active) then
    cds.Close;
  cds.CommandText := str_sql + stra + ' order by  nf.NOTAFISCAL desc';
  cds.Open;
  cds.CommandText := str_sql;
end;

procedure TfNotaFiscalProc.btnNotaFiscalClick(Sender: TObject);
begin
  if (CheckBox1.Checked = False) then
  begin
    tipo_form := 'PROCURA';
    fNotaFiscal := TfNotaFiscal.Create(Application);
    codigo_NF := cdsNUMNF.AsInteger;
    fITENS_NF := TfITENS_NF.Create(Application);
    try
      fNotaFiscal.showmodal;
    finally
      tipo_form := '';
      fITENS_NF.Free;
      fNotaFiscal.Free;
    end;
  end;
  if (CheckBox1.Checked = True) then
  begin
    fNotaFiscal := TfNotaFiscal.Create(Application);
    codigo_NF := cdsNUMNF.AsInteger;
    fITENS_NF := TfITENS_NF.Create(Application);
    tipo_form := 'COMPRA_NF';
    fatura_NF := '';
    try
      fNotaFiscal.ShowModal;
    finally
      fITENS_NF.Free;
      fNotaFiscal.Free;
    end;
  end;

end;

procedure TfNotaFiscalProc.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TfNotaFiscalProc.btnCancelarClick(Sender: TObject);
begin
  if (cds.Active) then
    cds.Close;
end;

procedure TfNotaFiscalProc.Edit1Exit(Sender: TObject);
begin
  // Busca
  if (CheckBox1.Checked = False) then
  begin
    if edit1.Text = '' then exit;
    if dm.scds_cliente_proc.Active then
      dm.scds_cliente_proc.Close;
    dm.scds_cliente_proc.Params[0].Clear;
    dm.scds_cliente_proc.Params[1].Clear;
    dm.scds_cliente_proc.Params[2].AsInteger := StrToInt(edit1.Text);
    dm.scds_cliente_proc.Open;
      Edit2.Text := dm.scds_cliente_procNOMECLIENTE.asString;
    dm.scds_cliente_proc.Close;
  end
  else begin
    if (Edit1.Text = '') then exit;
    if ProcuraForn.Active then
      ProcuraForn.Close;
    ProcuraForn.Params[0].Clear;
    ProcuraForn.Params[1].AsInteger := StrToInt(Edit1.Text);
    ProcuraForn.Open;
    if ProcuraForn.IsEmpty then
    begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
        [mbOk], 0);
      bitBtn8.Click;
      exit;
    end;
    Edit2.Text := ProcuraFornNOMEFORNECEDOR.AsString;
    ProcuraForn.Close;
  end;
end;

procedure TfNotaFiscalProc.DBGrid1TitleClick(Column: TColumn);
begin
  cds.IndexFieldNames := Column.FieldName;
end;

procedure TfNotaFiscalProc.btnImprimirClick(Sender: TObject);
begin
  if ((medta1.Text = '  /  /  ') or (medta2.Text = '  /  /  ')) then
  begin
    MessageDlg('Pôr favor, preecha um período para imprimir..', mtWarning, [mbOK], 0);
    exit;
  end;
  repNF.FileName := str_relatorio + 'notaFiscalVendaRel.rep';
  repNF.Title := repNF.FileName;
  repNF.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  repNF.Report.Params.ParamByName('PDTA1').Value := StrToDate(meDta1.Text);
  repNF.Report.Params.ParamByName('PDTA2').Value := StrToDate(meDta2.Text);
  if (Edit1.Text <> '') then
    repNF.Report.Params.ParamByName('CODCLIFOR').Value := Edit1.Text
  else
    repNF.Report.Params.ParamByName('CODCLIFOR').Value := 0;
  if (EdSerie.Text <> '') then
    repNF.Report.Params.ParamByName('SERIE').Value := EdSerie.Text
  else
    repNF.Report.Params.ParamByName('SERIE').Value := 'Z';

  repNF.Execute;
end;

procedure TfNotaFiscalProc.CheckBox1Click(Sender: TObject);
begin
  if (CheckBox1.Checked) then
  begin
    Label10.Caption := 'Fornecedor';
    CheckBox2.Checked := False;    
  end
  else
    Label10.Caption := 'Cliente';
end;

procedure TfNotaFiscalProc.CheckBox2Click(Sender: TObject);
begin
  if (CheckBox2.Checked) then
  begin
    Label10.Caption := 'Cliente';
    CheckBox1.Checked := False;
  end
  else begin
    Label10.Caption := 'Fornecedor';
  end;
end;

procedure TfNotaFiscalProc.dsDataChange(Sender: TObject; Field: TField);
begin
 { if (cdsNATUREZA.asInteger = 3) then
  begin
    Label10.Caption := 'Cliente';
    CheckBox1.Checked := False;
    CheckBox2.Checked := True;
  end
  else begin
    Label10.Caption := 'Fornecedor';
    CheckBox1.Checked := True;
    CheckBox2.Checked := False;
  end;}
end;

procedure TfNotaFiscalProc.FormShow(Sender: TObject);
  var str : string;
  TD: TTransactionDesc;
begin
  sCtrlResize.CtrlResize(TForm(fNotaFiscalProc));

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  str := 'UPDATE NOTAFISCAL SET SELECIONOU = ' + QuotedStr('') +
                    ' where SELECIONOU = ' + QuotedStr('S');
  dm.sqlsisAdimin.StartTransaction(TD);
  dm.sqlsisAdimin.ExecuteDirect(str);
end;

procedure TfNotaFiscalProc.BitBtn3Click(Sender: TObject);
begin
  dmnf.repdm.FileName := str_relatorio + 'nf_new.rep';
  dmnf.repdm.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  dmnf.repdm.Report.Params[0].Value := cdsNUMNF.AsInteger;
  dmnf.repdm.Execute;
end;

procedure TfNotaFiscalProc.btnSerieClick(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,dm.scds_serie_proc);
  fProcurar.BtnProcurar.Click;
  try
    fProcurar.EvDBFind1.DataField := 'SERIE';
    if fProcurar.ShowModal=mrOk then
    begin
      edSerie.Text := dm.scds_serie_procSERIE.AsString;
    end;
  finally
    dm.scds_serie_proc.Close;
    fProcurar.Free;
  end;
end;

procedure TfNotaFiscalProc.JvDBGrid1TitleClick(Column: TColumn);
begin
  cds.IndexFieldNames := Column.FieldName;
end;

procedure TfNotaFiscalProc.JvDBGrid1CellClick(Column: TColumn);
var var_sqla : string;
  TD: TTransactionDesc;
begin
  if Column.Field = cdsSELECIONOU then
  begin
     cds.Edit;
     if cdsSELECIONOU.AsString = 'S' then
     begin
       cdsSELECIONOU.AsString := '';
        var_sqla := 'UPDATE NOTAFISCAL SET SELECIONOU = ' + QuotedStr('') +
                    ' where NUMNF = ' + IntToStr(cdsNUMNF.AsInteger);
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(var_sqla);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, a NF não foi Atualizada.', mtError,
               [mbOk], 0);
        end;
     end
     else
     begin
       cdsSELECIONOU.AsString := 'S';
        var_sqla := 'UPDATE NOTAFISCAL SET SELECIONOU = ' + QuotedStr('S') +
                    ' where NUMNF = ' + IntToStr(cdsNUMNF.AsInteger);
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(var_sqla);
        Try
           dm.sqlsisAdimin.Commit(TD);
        except
           dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
           MessageDlg('Erro no sistema, a NF não foi Atualizada.', mtError,
               [mbOk], 0);
        end;
     end;
  end;
end;

procedure TfNotaFiscalProc.JvDBGrid1ColEnter(Sender: TObject);
begin
   if JvDBGrid1.SelectedField = cdsSELECIONOU then
     JvDBGrid1.Options := JvDBGrid1.Options - [dgEditing]
   else
      JvDBGrid1.Options := JvDBGrid1.Options + [dgEditing];
end;

procedure TfNotaFiscalProc.JvDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  // Selecionou ?
   if Column.Field = cdsSELECIONOU then
   begin
       JvDBGrid1.Canvas.FillRect(Rect);
       ImageList2.Draw(JvDBGrid1.Canvas,Rect.Left+10,Rect.top, 1);
       if cdsSELECIONOU.AsString = 'S' then
         ImageList2.Draw(JvDBGrid1.Canvas,Rect.Left+10,Rect.top, 2)
       else
         ImageList2.Draw(JvDBGrid1.Canvas,Rect.Left+10,Rect.top, 0);
   end;

end;

procedure TfNotaFiscalProc.BitBtn10Click(Sender: TObject);
begin
   fGuiaTranporte := TfGuiaTranporte.Create(Application);
   try
     fGuiaTranporte.ShowModal;
   finally
     fGuiaTranporte.Free;
     BitBtn1.Click;
   end;
end;

end.
