unit uDespRec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, DB, SqlExpr, Buttons, Grids,
  DBGrids, JvExDBGrids, JvDBGrid, ComCtrls, ExtCtrls, MMJPanel, DBClient,
  Provider, ImgList, JvExExtCtrls, JvExtComponent, JvPanel;

type
  TfDespRec = class(TForm)
    MMJPanel1: TMMJPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    Label3: TLabel;
    cbColaborador: TComboBox;
    sColaborador: TSQLDataSet;
    sColaboradorCOD_FUNCIONARIO: TIntegerField;
    sColaboradorNOME_FUNCIONARIO: TStringField;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    cbStatus: TComboBox;
    BitBtn4: TBitBtn;
    sds: TSQLDataSet;
    sdsCODRECEBIMENTO: TIntegerField;
    sdsTITULO: TStringField;
    sdsEMISSAO: TDateField;
    sdsDATAVENCIMENTO: TDateField;
    sdsCODCLIENTE: TIntegerField;
    sdsVALORTITULO: TFloatField;
    sdsVALOR_RESTO: TFloatField;
    sdsVALOR_PRIM_VIA: TFloatField;
    sdsSTATUS: TStringField;
    sdsDATARECEBIMENTO: TDateField;
    sdsVALORRECEBIDO: TFloatField;
    sdsN_DOCUMENTO: TStringField;
    sdsDUP_REC_NF: TStringField;
    sdsDP: TIntegerField;
    sdsNOMECLIENTE: TStringField;
    sdsRAZAOSOCIAL: TStringField;
    sdsVALORREC: TFloatField;
    sdsSTATUSP: TStringField;
    sdsHISTORICO: TStringField;
    sdsVIA: TStringField;
    sdsCODVENDA: TIntegerField;
    sdsDESCONTO: TFloatField;
    dsp: TDataSetProvider;
    scdsCr_proc: TClientDataSet;
    scdsCr_procCODRECEBIMENTO: TIntegerField;
    scdsCr_procTITULO: TStringField;
    scdsCr_procEMISSAO: TDateField;
    scdsCr_procDATAVENCIMENTO: TDateField;
    scdsCr_procCODCLIENTE: TIntegerField;
    scdsCr_procVALORTITULO: TFloatField;
    scdsCr_procVALOR_RESTO: TFloatField;
    scdsCr_procVALOR_PRIM_VIA: TFloatField;
    scdsCr_procSTATUS: TStringField;
    scdsCr_procDATARECEBIMENTO: TDateField;
    scdsCr_procVALORRECEBIDO: TFloatField;
    scdsCr_procN_DOCUMENTO: TStringField;
    scdsCr_procDUP_REC_NF: TStringField;
    scdsCr_procDP: TIntegerField;
    scdsCr_procNOMECLIENTE: TStringField;
    scdsCr_procRAZAOSOCIAL: TStringField;
    scdsCr_procVALORREC: TFloatField;
    scdsCr_procSTATUSP: TStringField;
    scdsCr_procHISTORICO: TStringField;
    scdsCr_procVIA: TStringField;
    scdsCr_procCODVENDA: TIntegerField;
    scdsCr_procDESCONTO: TFloatField;
    scdsCr_proctot_titulo: TAggregateField;
    scdsCr_proctot_recebido: TAggregateField;
    scdsCr_procTotPend: TAggregateField;
    ds_Cr: TDataSource;
    JvDBGrid2: TJvDBGrid;
    sCliente: TSQLDataSet;
    sFornecedor: TSQLDataSet;
    sClienteCODCLIENTE: TIntegerField;
    sClienteNOMECLIENTE: TStringField;
    sFornecedorCODFORNECEDOR: TIntegerField;
    sFornecedorNOMEFORNECEDOR: TStringField;
    DtSrc1: TDataSource;
    scdsCr_proc1: TClientDataSet;
    scdsCr_procTotTitulo: TAggregateField;
    scdsCr_procTotPendente: TAggregateField;
    scdsCr_procTotPago: TAggregateField;
    dspDesp: TDataSetProvider;
    sdsDesp: TSQLDataSet;
    sdsDespCODPAGAMENTO: TIntegerField;
    sdsDespDUP_REC_NF: TStringField;
    sdsDespDP: TSmallintField;
    sdsDespStringField: TStringField;
    sdsDespDateField: TDateField;
    sdsDespDateField2: TDateField;
    sdsDespStringField2: TStringField;
    sdsDespStringField3: TStringField;
    sdsDespStringField4: TStringField;
    sdsDespFloatField: TFloatField;
    sdsDespFloatField2: TFloatField;
    sdsDespFloatField3: TFloatField;
    sdsDespFloatField4: TFloatField;
    sdsDespFloatField5: TFloatField;
    sdsDespStringField5: TStringField;
    sdsDespCODFORNECEDOR: TIntegerField;
    sdsDespDATAPAGAMENTO: TDateField;
    JvDBGrid1: TJvDBGrid;
    scdsCr_proc1CODPAGAMENTO: TIntegerField;
    scdsCr_proc1DUP_REC_NF: TStringField;
    scdsCr_proc1DP: TSmallintField;
    scdsCr_proc1TITULO: TStringField;
    scdsCr_proc1EMISSAO: TDateField;
    scdsCr_proc1DATAVENCIMENTO: TDateField;
    scdsCr_proc1STATUS: TStringField;
    scdsCr_proc1VIA: TStringField;
    scdsCr_proc1N_DOCUMENTO: TStringField;
    scdsCr_proc1VALORRECEBIDO: TFloatField;
    scdsCr_proc1VALOR_RESTO: TFloatField;
    scdsCr_proc1VALORTITULO: TFloatField;
    scdsCr_proc1VALORREC: TFloatField;
    scdsCr_proc1VALOR_PRIM_VIA: TFloatField;
    scdsCr_proc1NOMEFORNECEDOR: TStringField;
    scdsCr_proc1CODFORNECEDOR: TIntegerField;
    scdsCr_proc1DATAPAGAMENTO: TDateField;
    ImageList2: TImageList;
    JvPanel1: TJvPanel;
    meDta3: TMaskEdit;
    meDta4: TMaskEdit;
    Label2: TLabel;
    Label8: TLabel;
    BitBtn1: TBitBtn;
    sPag: TSQLDataSet;
    sPagDESCRICAO: TStringField;
    sPagNOMEFUNCIONARIO: TStringField;
    sPagVARLORCOMISSAO: TFloatField;
    sPagTIPO: TStringField;
    sPagTOTALCOLABORADOR: TFloatField;
    sPagCODCOLABORADOR: TIntegerField;
    OpenDialog1: TOpenDialog;
    sPagTOTALGERAL: TFloatField;
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure JvDBGrid1CellClick(Column: TColumn);
    procedure JvDBGrid2CellClick(Column: TColumn);
    procedure JvDBGrid2ColEnter(Sender: TObject);
    procedure JvDBGrid2DblClick(Sender: TObject);
    procedure JvDBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure JvDBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure JvDBGrid1ColEnter(Sender: TObject);
    procedure JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    procedure listadespesas;
    procedure listareceitas;
  public
    { Public declarations }
  end;

  const
cJustif = #27#97#51;
cEject = #12;
{ Tamanho da fonte }
c10cpi = #18;
c12cpi = #27#77;
c17cpi = #15;
cIExpandido = #14;
cFExpandido = #20;
{ Formatação da fonte }
cINegrito = #27#71;
cFNegrito = #27#72;
cIItalico = #27#52;
cFItalico = #27#53;
var
  fDespRec: TfDespRec;
  SqlCr, sqlTexto, sqlTexto1, DataStr, sqlGrupoCR, impCR: String;
  IMPRESSORA:TextFile;
  Texto,Texto1,Texto2,Texto3,Texto4,texto5, texto6, texto7, logradouro,cep,fone : string;//Para recortar parte da descrição do produto,nome
  total, porc, totgeral : double;
  porta : string;
  vNomeCliente, vEnderecoCliente, vFonecli : string;


implementation

uses UDm, uUtils, sCtrlResize;

{$R *.dfm}

procedure TfDespRec.BitBtn3Click(Sender: TObject);
begin
  listadespesas;
  listareceitas;
end;

procedure TfDespRec.listadespesas;
 Var
 DataStr, sql2,sqlTexto2: String;
 varCpProc : TUtils;
begin
  sqlTexto1 := '';
  sqlTexto := '';
  if scdsCr_proc1.Active then
    scdsCr_proc1.Close;
  sqlTexto1 := 'select rec.dp, rec.dup_rec_nf, rec.CODPAGAMENTO, rec.TITULO, rec.EMISSAO, '
   + ' rec.DATAVENCIMENTO, rec.CODFORNECEDOR, rec.VALORTITULO, rec.VALOR_RESTO, rec.VALOR_PRIM_VIA,rec.CONTACREDITO, '
   + ' CASE rec.STATUS WHEN ' + '''5-''' + ' THEN ' + '''PENDENTE''' + ' when ' + '''6-'''
   + ' then ' + '''PENDENTE CONTAB.''' +  ' when ' + '''7-''' + ' then ' + '''PAGO'''
   + ' when ' + '''8-''' + ' then ' + '''SUSPENSO'''
   + ' END AS STATUS, rec.DATAPAGAMENTO, '
   + 'sum(rec.VALORRECEBIDO + FUNRURAL + JUROS) as VALORRECEBIDO, rec.VIA, rec.N_DOCUMENTO '
   + ' , cli.NOMEFORNECEDOR, ' +
   ' SUM(rec.VALOR_RESTO - rec.VALORRECEBIDO - rec.DESCONTO - rec.PERDA) as VALORREC' +
   ' ,plano.NOME, rec.HISTORICO from PAGAMENTO rec ' +
   ' inner join FORNECEDOR cli on cli.CODFORNECEDOR=rec.CODFORNECEDOR ' +
   ' left outer join PLANO plano on plano.CODIGO = rec.CAIXA ';
   scdsCr_proc1.CommandText := sqlTexto1;
  //==============================================================================
  datastr:='  /  /    ';
  //==============================================================================
  //------------------------------------------------------------------------------
  //Verifica se a data de vencimento foi preenchido
  //------------------------------------------------------------------------------
  try
  if (medta3.Text<>datastr) then
  StrToDate(medta3.Text);
  if (medta4.Text<>datastr) then
  StrToDate(medta4.Text);
  if (medta3.Text<>datastr) then
  if (medta4.Text<>datastr) then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where rec.DATAVENCIMENTO between '
    else
      sqlTexto := sqlTexto + ' and rec.DATAVENCIMENTO between ';
      sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medta3.Text)) + '''';
      sqlTexto := sqlTexto + ' and ';
      sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medta4.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
     ShowMessage ('Data Inválida! dd/mm/aa');
     medTa3.SetFocus;
  end;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Status
  //------------------------------------------------------------------------------
  if (cbStatus.Text <> '') then
  begin
    case (cbStatus.ItemIndex) of
      0:  //Vencido
      begin
        if sqlTexto = '' then
          sqlTexto := sqlTexto + ' WHERE (rec.STATUS = '
        else
          sqlTexto := sqlTexto + ' AND (rec.STATUS = ';
        sqlTexto := sqlTexto + '''' + '5-' + ''')';
        sqlTexto := sqlTexto + ' AND (rec.DATAVENCIMENTO >= CURRENT_DATE)';
      end;
      1:  // Pago
      begin
        if sqlTexto='' then
          sqlTexto := sqlTexto + ' WHERE (rec.STATUS = '
        else
          sqlTexto := sqlTexto + ' AND (rec.STATUS = ';
        sqlTexto := sqlTexto + '''' + '5-' + ''')';
        sqlTexto := sqlTexto + ' AND (rec.DATAVENCIMENTO < CURRENT_DATE)';
      end;
      2:  // A Pagar ()
      begin
        if sqlTexto='' then
          sqlTexto := sqlTexto + ' WHERE (rec.STATUS = '
        else
          sqlTexto := sqlTexto + ' AND (rec.STATUS = ';
        sqlTexto := sqlTexto + '''' + '5-' + ''')';
      end;
      3:  // Pago
      begin
        if sqlTexto='' then
          sqlTexto := sqlTexto + ' WHERE (rec.STATUS = '
        else
          sqlTexto := sqlTexto + ' AND (rec.STATUS = ';
        sqlTexto := sqlTexto + '''' + '7-' + ''')';
      end;
      4:  // Suspenso
      begin
        if sqlTexto='' then
          sqlTexto := sqlTexto + ' WHERE (rec.STATUS = '
        else
          sqlTexto := sqlTexto + ' AND (rec.STATUS = ';
        sqlTexto := sqlTexto + '''' + '8-' + ''')';
      end;
    end;
  end;
  //------------------------------------------------------------------------------
  //Fornecedor
  //------------------------------------------------------------------------------
  if cbColaborador.Text<>'' then
  begin
    if (not sFornecedor.Active) then
      sFornecedor.Open;
    sFornecedor.Locate('NOMEFORNECEDOR', cbColaborador.Text, [loCaseInsensitive]);
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where rec.CODFORNECEDOR = '
    else
      sqlTexto := sqlTexto + ' and rec.CODFORNECEDOR = ';
      sqlTexto := sqlTexto + IntToStr(sFornecedorCODFORNECEDOR.AsInteger);
    sFornecedor.Close;
  end;

  sql2 := ' group by rec.DATAVENCIMENTO, cli.NOMEFORNECEDOR, rec.CODFORNECEDOR, '
            + ' rec.EMISSAO, rec.CODPAGAMENTO, '
            + ' rec.TITULO,  rec.VALOR_RESTO, rec.VALORTITULO, '
            + ' rec.STATUS, rec.DATAPAGAMENTO, '
            + ' rec.VIA, rec.N_DOCUMENTO, rec.VALOR_PRIM_VIA, rec.dp, rec.dup_rec_nf' +
            ' ,plano.NOME ,rec.CONTACREDITO, rec.HISTORICO';

  scdsCr_proc1.CommandText := sqlTexto1 + sqlTexto + sql2;
  scdsCr_proc1.Open;
end;

procedure TfDespRec.listareceitas;
var varUtilCrProc : TUtils;
begin
  sqlTexto1 := '';
  SqlCr := '';
  if scdsCr_proc.Active then
     scdsCr_proc.Close;
   sqltexto1 :='select rec.CODRECEBIMENTO, rec.TITULO, rec.EMISSAO, ';
   sqltexto1 := sqltexto1 + ' rec.DATAVENCIMENTO, rec.CODCLIENTE, rec.VALORTITULO, ';
   sqltexto1 := sqltexto1 + ' rec.VALOR_RESTO, rec.VALOR_PRIM_VIA, rec.STATUS, rec.STATUSP,';
   sqltexto1 := sqltexto1 + ' rec.DATARECEBIMENTO, rec.VALORRECEBIDO, rec.DESCONTO, ';
   sqltexto1 := sqltexto1 + ' rec.VIA, rec.HISTORICO ,';
   sqltexto1 := sqltexto1 + ' rec.N_DOCUMENTO, rec.DUP_REC_NF, rec.DP, rec.CODVENDA,';
   sqltexto1 := sqltexto1 + ' rec.NOMECLIENTE, rec.RAZAOSOCIAL, rec.CODMOVIMENTO, ';
   sqltexto1 := sqltexto1 + ' rec.SALDO, rec.valorRec ';
   sqltexto1 := sqltexto1 + 'from RELCONTASRECEBER rec ';
  //==============================================================================
  datastr:='  /  /    ';
  //==============================================================================
  //------------------------------------------------------------------------------
  //Verifica se a data de vencimento foi preenchido
  //------------------------------------------------------------------------------
  try
  if (medta3.Text<>datastr) then
  StrToDate(medta3.Text);
  if (medta4.Text<>datastr) then
  StrToDate(medta4.Text);
  if (medta3.Text<>datastr) then
  if (medta4.Text<>datastr) then
  begin
    if SqlCr='' then
      SqlCr := SqlCr + ' WHERE rec.DATAVENCIMENTO BETWEEN '
    else
      SqlCr := SqlCr + ' AND rec.DATAVENCIMENTO BETWEEN ';
      SqlCr := SqlCr + '''' + formatdatetime('mm/dd/yy', StrToDate(medta3.Text)) + '''';
      SqlCr := SqlCr + ' AND ';
      SqlCr := SqlCr + '''' + formatdatetime('mm/dd/yy', StrToDate(medta4.Text)) + '''';
  end;
  except
    on EConvertError do
    begin
     ShowMessage ('Data Inválida! dd/mm/aa');
     medTa3.SetFocus;
    end;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Status
  //------------------------------------------------------------------------------
  if (cbStatus.Text <> '') then
  begin
    case (cbStatus.ItemIndex) of
      0:  //A Vencer
      begin
        if SqlCr='' then
          SqlCr := SqlCr + ' WHERE (rec.STATUS = '
        else
          SqlCr := SqlCr + ' AND (rec.STATUS = ';
        SqlCr := SqlCr + '''' + '5-' + ''')';
        SqlCr := SqlCr + ' AND (rec.DATAVENCIMENTO >= CURRENT_DATE)';
      end;
      1:  // Vencido
      begin
        if SqlCr='' then
          SqlCr := SqlCr + ' WHERE (rec.STATUS = '
        else
          SqlCr := SqlCr + ' AND (rec.STATUS = ';
        SqlCr := SqlCr + '''' + '5-' + ''')';
        SqlCr := SqlCr + ' AND (rec.DATAVENCIMENTO < CURRENT_DATE)';
      end;
      2:  // A Receber (A Vencer + Vencido)
      begin
        if SqlCr='' then
          SqlCr := SqlCr + ' WHERE (rec.STATUS = '
        else
          SqlCr := SqlCr + ' AND (rec.STATUS = ';
        SqlCr := SqlCr + '''' + '5-' + ''')';
      end;
      3:  // Recebido
      begin
        if SqlCr='' then
          SqlCr := SqlCr + ' WHERE (rec.STATUS = '
        else
          SqlCr := SqlCr + ' AND (rec.STATUS = ';
        SqlCr := SqlCr + '''' + '7-' + ''')';
      end;
      4:  // Suspenso
      begin
        if SqlCr='' then
          SqlCr := SqlCr + ' WHERE (rec.STATUS = '
        else
          SqlCr := SqlCr + ' AND (rec.STATUS = ';
        SqlCr := SqlCr + '''' + '8-' + ''')';
      end;
      5:  // Em Cobrança
      begin
        if SqlCr='' then
          SqlCr := SqlCr + ' WHERE (rec.STATUS = '
        else
          SqlCr := SqlCr + ' AND (rec.STATUS = ';
        SqlCr := SqlCr + '''' + '9-' + ''')';
      end;
      6:  // Duplicata
      begin
        if SqlCr='' then
          SqlCr := SqlCr + ' WHERE (rec.STATUS = '
        else
          SqlCr := SqlCr + ' AND (rec.STATUS = ';
        SqlCr := SqlCr + '''' + '10' + ''')';
      end;
      7:  // Todos
      begin

      end;
      8:  // Protesto
      begin
        if SqlCr='' then
          SqlCr := SqlCr + ' WHERE (rec.STATUS = '
        else
          SqlCr := SqlCr + ' AND (rec.STATUS = ';
        SqlCr := SqlCr + '''' + '3-' + ''')';
      end;
    end;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Cliente
  //------------------------------------------------------------------------------
  if cbColaborador.Text<>'' then
  begin
    if (not sCliente.Active) then
      sCliente.Open;
    sCliente.Locate('NOMECLIENTE', cbColaborador.Text, [loCaseInsensitive]);
    if SqlCr = '' then
      SqlCr := SqlCr + ' WHERE rec.CODCLIENTE = '
    else
      SqlCr := SqlCr + ' AND rec.CODCLIENTE = ';
      SqlCr := SqlCr + IntToStr(sClienteCODCLIENTE.AsInteger);
      sCliente.Close;
  end;
  //==============================================================================
  impCR := sqlTexto1;
  scdsCr_proc.CommandText := sqlTexto1 + SqlCr + ' order by  rec.DATAVENCIMENTO;';
  sds.CommandText := scdsCr_proc.CommandText;
  scdsCr_proc.Open;
end;

procedure TfDespRec.FormShow(Sender: TObject);
begin
  sCtrlResize.CtrlResize(TForm(fDespRec));
  if (not sColaborador.Active) then
    sColaborador.Open;
  sColaborador.First;
  while not sColaborador.Eof do
  begin
     cbColaborador.Items.Add(sColaboradorNOME_FUNCIONARIO.AsString);
     sColaborador.Next;
  end;
  sColaborador.Close;
end;

procedure TfDespRec.JvDBGrid1CellClick(Column: TColumn);
begin
  if Column.Field = scdsCr_proc1DUP_REC_NF then
  begin
     scdsCr_proc1.Edit;
     if scdsCr_proc1DUP_REC_NF.AsString = 'S' then
       scdsCr_proc1DUP_REC_NF.AsString := ''
     else
       scdsCr_proc1DUP_REC_NF.AsString := 'S';
  end;
end;

procedure TfDespRec.JvDBGrid2CellClick(Column: TColumn);
begin
  if Column.Field = scdsCr_procDUP_REC_NF then
  begin
     scdsCr_proc.Edit;
     if scdsCr_procDUP_REC_NF.AsString = 'S' then
       scdsCr_procDUP_REC_NF.AsString := ''
     else
       scdsCr_procDUP_REC_NF.AsString := 'S';
  end;
end;

procedure TfDespRec.JvDBGrid2ColEnter(Sender: TObject);
begin
   if JvDBGrid2.SelectedField = scdsCr_procDUP_REC_NF then
     JvDBGrid2.Options := JvDBGrid1.Options - [dgEditing]
   else
      JvDBGrid2.Options := JvDBGrid1.Options + [dgEditing];

end;

procedure TfDespRec.JvDBGrid2DblClick(Sender: TObject);
begin
 {  fMostraDetalhe := TfMostraDetalhe.Create(Application);
   try
     codigovenda := scdsCr_procCODVENDA.AsInteger;
     fMostraDetalhe.ShowModal;
   finally
     fMostraDetalhe.Free;
   end; }
end;

procedure TfDespRec.JvDBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
//***************************************************
// destacando Campos
//***************************************************
  if Column.Field = scdsCr_procSTATUSP then
   if ((scdsCr_procSTATUS.AsString = '5-')) then
   begin
     JvDBGrid2.Canvas.Font.Color := clRed;
     JvDBGrid2.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
  if Column.Field = scdsCr_procSTATUSP then
   if (scdsCr_procSTATUS.AsString = '7-') then
   begin
     JvDBGrid2.Canvas.Font.Color := clBlue;
     JvDBGrid2.DefaultDrawDataCell(Rect, Column.Field,State);
   end;

  if Column.Field = scdsCr_procSTATUSP then
   if (scdsCr_procSTATUS.AsString = '8-') then
   begin
     JvDBGrid2.Canvas.Font.Color := clYellow;
     JvDBGrid2.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
  // Selecionou ?
   if Column.Field = scdsCr_procDUP_REC_NF then
   begin
       JvDBGrid2.Canvas.FillRect(Rect);
       ImageList2.Draw(JvDBGrid2.Canvas,Rect.Left+10,Rect.top, 1);
       if scdsCr_procDUP_REC_NF.AsString = 'S' then
         ImageList2.Draw(JvDBGrid2.Canvas,Rect.Left+10,Rect.top, 2)
       else
         ImageList2.Draw(JvDBGrid2.Canvas,Rect.Left+10,Rect.top, 0);
   end;
end;

procedure TfDespRec.JvDBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
{ if (key = #13) then
 begin
   fMostraDetalhe := TfMostraDetalhe.Create(Application);
   try
     codigovenda := scdsCr_procCODVENDA.AsInteger;
     fMostraDetalhe.ShowModal;
   finally
     fMostraDetalhe.Free;
   end;}
end;

procedure TfDespRec.JvDBGrid1ColEnter(Sender: TObject);
begin
   if JvDBGrid1.SelectedField = scdsCr_proc1DUP_REC_NF then
     JvDBGrid1.Options := JvDBGrid1.Options - [dgEditing]
   else
      JvDBGrid1.Options := JvDBGrid1.Options + [dgEditing];

end;

procedure TfDespRec.JvDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
//***************************************************
// destacando Campos
//***************************************************
  if Column.Field = scdsCr_proc1STATUS then
   if ((scdsCr_procSTATUS.AsString = '5-')) then
   begin
     JvDBGrid1.Canvas.Font.Color := clRed;
     JvDBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
  if Column.Field = scdsCr_proc1STATUS then
   if (scdsCr_procSTATUS.AsString = '7-') then
   begin
     JvDBGrid1.Canvas.Font.Color := clBlue;
     JvDBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;

  if Column.Field = scdsCr_proc1STATUS then
   if (scdsCr_procSTATUS.AsString = '8-') then
   begin
     JvDBGrid1.Canvas.Font.Color := clYellow;
     JvDBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
  // Selecionou ?
   if Column.Field = scdsCr_proc1DUP_REC_NF then
   begin
       JvDBGrid1.Canvas.FillRect(Rect);
       ImageList2.Draw(JvDBGrid1.Canvas,Rect.Left+10,Rect.top, 1);
       if scdsCr_proc1DUP_REC_NF.AsString = 'S' then
         ImageList2.Draw(JvDBGrid1.Canvas,Rect.Left+10,Rect.top, 2)
       else
         ImageList2.Draw(JvDBGrid1.Canvas,Rect.Left+10,Rect.top, 0);
   end;

end;

procedure TfDespRec.FormCreate(Sender: TObject);
var utilcrtitulo : Tutils;
  i, j : integer;
begin
  utilcrtitulo := Tutils.Create;
  // Popula Status
  j := utilcrtitulo.StatusRec.Count;
  for i := 0 to j - 1 do
  begin
    cbStatus.Items.Add(utilcrtitulo.StatusRec.Strings[i]);
  end;

end;

procedure TfDespRec.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.
