unit ufcpproc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, SqlExpr, Provider, Menus, DB, DBLocal, DBLocalS,
  DBClient, Grids, DBGrids, DBCtrls, ExtCtrls, MMJPanel, Mask, StdCtrls,
  Buttons, rpcompobase, rpvclreport, JvAppStorage, JvAppXMLStorage,
  JvComponentBase, JvFormPlacement, JvExStdCtrls, JvCombobox, JvExMask,
  JvToolEdit, JvBaseEdits, ImgList, JvExExtCtrls, JvRadioGroup,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, DBXpress;

type
  TfCpProc = class(TForm)
    MMJPanel1: TMMJPanel;
    btnGravar: TBitBtn;
    btnIncluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    btnProcurar: TBitBtn;
    btnSair: TBitBtn;
    Panel2: TPanel;
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    Panel4: TPanel;
    MMJPanel2: TMMJPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    BitBtn10: TBitBtn;
    BitBtn15: TBitBtn;
    s_1: TSQLDataSet;
    s_1CODRECEBIMENTO: TIntegerField;
    s_1TITULO: TStringField;
    s_1EMISSAO: TDateField;
    s_1CODCLIENTE: TIntegerField;
    s_1DATAVENCIMENTO: TDateField;
    s_1DATARECEBIMENTO: TDateField;
    s_1CAIXA: TSmallintField;
    s_1CONTADEBITO: TIntegerField;
    s_1CONTACREDITO: TIntegerField;
    s_1STATUS: TStringField;
    s_1VIA: TStringField;
    s_1FORMARECEBIMENTO: TStringField;
    s_1DATABAIXA: TDateField;
    s_1HISTORICO: TStringField;
    s_1CODVENDA: TIntegerField;
    s_1CODALMOXARIFADO: TSmallintField;
    s_1CODVENDEDOR: TSmallintField;
    s_1CODUSUARIO: TSmallintField;
    s_1N_DOCUMENTO: TStringField;
    s_1DATASISTEMA: TSQLTimeStampField;
    s_1VALORRECEBIDO: TFloatField;
    s_1JUROS: TFloatField;
    s_1DESCONTO: TFloatField;
    s_1PERDA: TFloatField;
    s_1TROCA: TFloatField;
    s_1FUNRURAL: TFloatField;
    s_1VALOR_PRIM_VIA: TFloatField;
    s_1VALOR_RESTO: TFloatField;
    s_1VALORTITULO: TFloatField;
    s_1OUTRO_CREDITO: TFloatField;
    s_1OUTRO_DEBITO: TFloatField;
    s_1PARCELAS: TSmallintField;
    s_1NOMECLIENTE: TStringField;
    s_1VALORREC: TFloatField;
    d_1: TDataSetProvider;
    scdsCr_proc2: TClientDataSet;
    scdsCr_proc2CODRECEBIMENTO: TIntegerField;
    scdsCr_proc2TITULO: TStringField;
    scdsCr_proc2EMISSAO: TDateField;
    scdsCr_proc2CODCLIENTE: TIntegerField;
    scdsCr_proc2DATAVENCIMENTO: TDateField;
    scdsCr_proc2DATARECEBIMENTO: TDateField;
    scdsCr_proc2CAIXA: TSmallintField;
    scdsCr_proc2CONTADEBITO: TIntegerField;
    scdsCr_proc2CONTACREDITO: TIntegerField;
    scdsCr_proc2STATUS: TStringField;
    scdsCr_proc2VIA: TStringField;
    scdsCr_proc2FORMARECEBIMENTO: TStringField;
    scdsCr_proc2DATABAIXA: TDateField;
    scdsCr_proc2HISTORICO: TStringField;
    scdsCr_proc2CODVENDA: TIntegerField;
    scdsCr_proc2CODALMOXARIFADO: TSmallintField;
    scdsCr_proc2CODVENDEDOR: TSmallintField;
    scdsCr_proc2CODUSUARIO: TSmallintField;
    scdsCr_proc2N_DOCUMENTO: TStringField;
    scdsCr_proc2DATASISTEMA: TSQLTimeStampField;
    scdsCr_proc2VALORRECEBIDO: TFloatField;
    scdsCr_proc2JUROS: TFloatField;
    scdsCr_proc2DESCONTO: TFloatField;
    scdsCr_proc2PERDA: TFloatField;
    scdsCr_proc2TROCA: TFloatField;
    scdsCr_proc2FUNRURAL: TFloatField;
    scdsCr_proc2VALOR_PRIM_VIA: TFloatField;
    scdsCr_proc2VALOR_RESTO: TFloatField;
    scdsCr_proc2VALORTITULO: TFloatField;
    scdsCr_proc2OUTRO_CREDITO: TFloatField;
    scdsCr_proc2OUTRO_DEBITO: TFloatField;
    scdsCr_proc2PARCELAS: TSmallintField;
    scdsCr_proc2NOMECLIENTE: TStringField;
    scdsCr_proc2VALORREC: TFloatField;
    DataSource1: TDataSource;
    ds_Cr: TDataSource;
    PopupMenu1: TPopupMenu;
    Executarconsulta1: TMenuItem;
    Receber1: TMenuItem;
    Cancelar1: TMenuItem;
    Sair1: TMenuItem;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    scdsCr_proc: TClientDataSet;
    scdsCr_procTITULO: TStringField;
    scdsCr_procEMISSAO: TDateField;
    scdsCr_procDATAVENCIMENTO: TDateField;
    scdsCr_procSTATUS: TStringField;
    scdsCr_procN_DOCUMENTO: TStringField;
    scdsCr_procVALORRECEBIDO: TFloatField;
    scdsCr_procVALOR_PRIM_VIA: TFloatField;
    scdsCr_procVALOR_RESTO: TFloatField;
    scdsCr_procVALORTITULO: TFloatField;
    scdsCr_procVIA: TStringField;
    scdsCr_procNOMEFORNECEDOR: TStringField;
    scdsCr_procVALORREC: TFloatField;
    scdsCr_procCODPAGAMENTO: TIntegerField;
    repContasReceber: TVCLReport;
    scdsCr_procTotTitulo: TAggregateField;
    scdsCr_procTotPendente: TAggregateField;
    scdsCr_procTotPago: TAggregateField;
    scdsCr_procCODFORNECEDOR: TIntegerField;
    scdsCr_procDATAPAGAMENTO: TDateField;
    sds_total: TSQLDataSet;
    dspTotal: TDataSetProvider;
    cds_total: TClientDataSet;
    JvCalcEdit1: TJvCalcEdit;
    JvCalcEdit3: TJvCalcEdit;
    JvCalcEdit2: TJvCalcEdit;
    ImageList1: TImageList;
    SQLDataSet1CODPAGAMENTO: TIntegerField;
    SQLDataSet1DUP_REC_NF: TStringField;
    SQLDataSet1DP: TSmallintField;
    scdsCr_procDUP_REC_NF: TStringField;
    scdsCr_procDP: TSmallintField;
    SQLDataSet1StringField: TStringField;
    SQLDataSet1DateField: TDateField;
    SQLDataSet1DateField2: TDateField;
    SQLDataSet1StringField2: TStringField;
    SQLDataSet1StringField3: TStringField;
    SQLDataSet1StringField4: TStringField;
    SQLDataSet1FloatField: TFloatField;
    SQLDataSet1FloatField2: TFloatField;
    SQLDataSet1FloatField3: TFloatField;
    SQLDataSet1FloatField4: TFloatField;
    SQLDataSet1FloatField5: TFloatField;
    SQLDataSet1StringField5: TStringField;
    SQLDataSet1CODFORNECEDOR: TIntegerField;
    SQLDataSet1DATAPAGAMENTO: TDateField;
    BitBtn9: TBitBtn;
    JvFormStorage1: TJvFormStorage;
    JvAppXMLFileStorage1: TJvAppXMLFileStorage;
    confirma1: TMenuItem;
    Panel3: TPanel;
    Label3: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label23: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Edit1: TEdit;
    cbStatus: TComboBox;
    BitBtn4: TBitBtn;
    edTitulo: TEdit;
    edCodCliente: TEdit;
    edCliente: TEdit;
    BitBtn8: TBitBtn;
    edCodCCusto: TComboBox;
    edVendedor: TEdit;
    edcodVendedor: TEdit;
    BitBtn12: TBitBtn;
    BitBtn11: TBitBtn;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    meDta1: TMaskEdit;
    meDta2: TMaskEdit;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    meDta5: TMaskEdit;
    meDta6: TMaskEdit;
    BitBtn6: TBitBtn;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    meDta3: TMaskEdit;
    meDta4: TMaskEdit;
    BitBtn7: TBitBtn;
    BitBtn1: TBitBtn;
    cbConta: TJvComboBox;
    cbForma: TComboBox;
    edValor: TEdit;
    BitBtn3: TBitBtn;
    edNumeroDocumento: TEdit;
    cbTipoFornecedor: TJvComboBox;
    sdsTipoForn: TSQLDataSet;
    sdsTipoFornCODDADOS: TIntegerField;
    sdsTipoFornDESCRICAO: TStringField;
    sdsTipoFornUSO: TStringField;
    sdsTipoFornCODIGOS: TStringField;
    sdsTipoFornOUTROS: TStringField;
    dspTipoForn: TDataSetProvider;
    cdsTipoForn: TClientDataSet;
    cdsTipoFornCODDADOS: TIntegerField;
    cdsTipoFornDESCRICAO: TStringField;
    cdsTipoFornUSO: TStringField;
    cdsTipoFornCODIGOS: TStringField;
    cdsTipoFornOUTROS: TStringField;
    rbTipoConta: TJvRadioGroup;
    SQLDataSet1HISTORICO: TStringField;
    scdsCr_procHISTORICO: TStringField;
    DbGrid1: TJvDBUltimGrid;
    BitBtn5: TBitBtn;
    edtSelPago: TJvCalcEdit;
    Label16: TLabel;
    edtSelPend: TJvCalcEdit;
    Label2: TLabel;
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure btnImprimirClick(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure edCodClienteExit(Sender: TObject);
    procedure cbStatusKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure meDta1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure edValorKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    procedure ChkDBGridDrawColumnCell(DBGrid: TDBGrid;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure ChkDBGridColEnter(DBGrid: TDBGrid);
    procedure ChkDBGridColExit(DBGrid: TDBGrid);
    procedure ChkDBGridCellClick(Column: TColumn);
    procedure ChkDBGridKeyPress(DBGrid: TDBGrid; var Key: Char);
    { Private declarations }
  public
    usuarioCPProc: String;
    { Public declarations }
  end;

var
  fCpProc: TfCpProc;
  SqlTexto, sqlTexto1: String;

implementation

uses UDm, ufcrtitulo, uProcurar, ufDlgLogin, UUtils, sCtrlResize,
  uAtsAdmin;

{$R *.dfm}

Procedure FormResize(Sender: TObject); var R : TRect; DC : HDc; Canv : TCanvas;
begin
  R := Rect( 0, 0, Screen.Width, Screen.Height );
  DC := GetWindowDC( GetDeskTopWindow );
  Canv := TCanvas.Create;
  Canv.Handle := DC;
  Canv.CopyRect(R,Canv,R);
  ReleaseDC( GetDeskTopWindow, DC );
end;

procedure TfCpProc.BitBtn11Click(Sender: TObject);
begin
     edCodVendedor.Text:='';
     edVendedor.Text:='';
end;

procedure TfCpProc.BitBtn9Click(Sender: TObject);
begin
   if dm.cds_4_pagar.Active then
      dm.cds_4_pagar.Close;
   dm.cds_4_pagar.Params[0].AsInteger := fCpProc.scdsCr_procCODPAGAMENTO.AsInteger;
   dm.cds_4_pagar.Open;
   dm.cds_4_pagar.Edit;
   close;
end;

procedure TfCpProc.BitBtn4Click(Sender: TObject);
begin
   cbStatus.Text := '';
end;

procedure TfCpProc.btnIncluirClick(Sender: TObject);
  var vlr, vlrrec, vlrdesc, vlrjuros, vlrfunrural, vlrperda: double;
  i, j , fornecedorSelecionado: integer;
begin
 try
   fornecedorSelecionado := 0;
   i := 1;
   vlr := 0;
   vlrrec := 0;
   vlrdesc := 0;
   vlrjuros := 0;
   vlrfunrural := 0;
   vlrperda := 0;
   // Se houve selecao de titulos entao gravo.
   if (scdsCr_proc.ChangeCount > 0) then
   begin
     //teste := scdsCr_proc.CommandText;
     //scdsCr_proc.ApplyUpdates(-1);
   end
   else begin
     MessageDlg('Marque o título a ser baixado!', mtWarning, [mbOK], 0);
     exit;
   end;
   if (dm.cds_4_pagar.Active) then
     dm.cds_4_pagar.Close;
   dm.cds_4_pagar.Params[0].AsInteger := scdsCr_procCODPAGAMENTO.AsInteger;
   dm.cds_4_pagar.Open;
   dm.cds_4_pagar.Edit;
   scdsCr_proc.DisableControls;
   scdsCr_proc.First;
   While not scdsCr_proc.Eof do
   begin
     if (scdsCr_procDUP_REC_NF.AsString = 'S') then
     begin
       if (fornecedorSelecionado = 0) then
         fornecedorSelecionado := scdsCr_procCODFORNECEDOR.AsInteger;
       if (fornecedorSelecionado <> scdsCr_procCODFORNECEDOR.AsInteger) then
       begin
         MessageDlg('Fornecedores diferentes selecionados.' + #10#13 +
           ' Operação disponível somente para o mesmo Fornecedor!', mtWarning, [mbOK], 0);
         scdsCr_proc.EnableControls;
         exit;
       end;
       setlength(nrec, i);
       nrec[i - 1] := scdsCr_procCODPAGAMENTO.AsInteger;
       if (fcptitulo.cds.active) then
         fcptitulo.cds.close;
       fcptitulo.cds.Params[0].AsInteger := scdsCr_procCODPAGAMENTO.AsInteger;
       fcptitulo.cds.Open;
       //if (fcrtitulo.cdsSUM.AsFloat = scdsCr_procVALORREC.AsFloat) then
       //begin
          vlr := vlr + fcptitulo.cdsSUM.AsFloat;
          vlrfunrural := vlrfunrural + fcptitulo.cdsSUM_1.AsFloat;
          vlrjuros := vlrjuros + fcptitulo.cdsSUM_2.AsFloat;
          vlrperda := vlrperda +  fcptitulo.cdsSUM_3.AsFloat;
          vlrdesc := vlrdesc +  fcptitulo.cdsSUM_4.AsFloat;
          if (fcptitulo.cdsSUM_5.AsFloat > 0) then
            vlrrec := vlrrec +  fcptitulo.cdsSUM_5.AsFloat;
       //end;
       i := i + 1;
     end;
     scdsCr_proc.Next;
   end;
  scdsCr_proc.EnableControls;
  if (dm.cds_4_pagar.State in [dsBrowse, dsInactive]) then
    dm.cds_4_pagar.Edit;
  // adicionei esse If em 05/10/06  "Edson"
  if (dm.cds_4_pagarSTATUS.AsString <> '1-') then
  dm.cds_4_pagarVALOR_RESTO.AsFloat := vlr;
  dm.cds_4_pagarFUNRURAL.AsFloat := vlrfunrural;
  dm.cds_4_pagarJUROS.AsFloat := vlrjuros;
  dm.cds_4_pagarPERDA.AsFloat := vlrperda;
  dm.cds_4_pagarDESCONTO.AsFloat := vlrdesc;
  if (fcptitulo.cdsSUM_5.AsFloat > 0) then
    dm.cds_4_pagarVALORRECEBIDO.AsFloat := vlrrec;
  dm.cds_4_pagarTITULO.AsString := 'Diversos';
  dm.cds_4_pagarCODCOMPRA.AsInteger := 0;
  fcptitulo.cds.close;
  if (dm.cds_4_pagarSTATUS.AsString = '7-') then
  begin
    fcpTitulo.btnCancela_Baixa.Enabled := True;
    fcpTitulo.BitBtn2.Enabled := False;
  end;
  fCpTitulo.ShowModal;
  finally
   fCpProc.DBGrid1.SetFocus;
   scdsCr_proc.Close;
   scdscr_Proc.Open;
  end;

end;

procedure TfCpProc.btnProcurarClick(Sender: TObject);
 Var
 DataStr, sql2,sqlTexto2: String;
 varCpProc : TUtils;
begin
  edtSelPago.Value := 0;
  edtSelPend.Value := 0;
  sqlTexto1 := '';
  sqlTexto := '';
  if scdsCr_proc.Active then
    scdsCr_proc.Close;
  sqlTexto1 := 'select rec.dp, rec.dup_rec_nf, rec.CODPAGAMENTO, rec.TITULO, rec.EMISSAO, '
   + ' rec.DATAVENCIMENTO, rec.CODFORNECEDOR, rec.VALORTITULO, rec.VALOR_RESTO, rec.VALOR_PRIM_VIA,rec.CONTACREDITO, '
   + ' CASE rec.STATUS WHEN ' + '''5-''' + ' THEN ' + '''PENDENTE''' + ' when ' + '''6-'''
   + ' then ' + '''PENDENTE CONTAB.''' +  ' when ' + '''7-''' + ' then ' + '''PAGO'''
   + ' when ' + '''8-''' + ' then ' + '''SUSPENSO''' + ' when ' + '''14''' + ' then ' + '''CANCELADO'''
   + ' END AS STATUS, rec.DATAPAGAMENTO, '
   + 'sum(rec.VALORRECEBIDO + FUNRURAL + JUROS) as VALORRECEBIDO, rec.VIA, rec.N_DOCUMENTO '
   + ' , cli.NOMEFORNECEDOR, ' +
   ' UDF_ROUNDDEC(SUM(rec.VALOR_RESTO - rec.VALORRECEBIDO - rec.DESCONTO - rec.PERDA),2) as VALORREC' +
   ' ,plano.NOME, rec.HISTORICO, comp.SERIE from PAGAMENTO rec ' +
   ' inner join FORNECEDOR cli on cli.CODFORNECEDOR=rec.CODFORNECEDOR ' +
   ' left outer join PLANO plano on plano.CODIGO = rec.CAIXA ' +
   ' left outer join compra comp on comp.codCompra = rec.CODCompra ';
  { case rbTipoConta.ItemIndex of
     0 : sqlTexto1 := sqlTexto1 + ' inner join PLANO plano on plano.CODIGO = rec.CAIXA ';
     1 : sqlTexto1 := sqlTexto1 + ' left outer join PLANO plano on plano.CODIGO = rec.CAIXA ' +
       ' inner join compra comp on comp.codCompra = rec.CODCompra ';
     2 : sqlTexto1 := sqlTexto1 + ' left outer join PLANO plano on plano.CODIGO = rec.CAIXA ';
   end; }
   scdsCr_proc.CommandText := sqlTexto1;

   if (usuarioCPProc <> 'GERAL') then
   begin
     sqlTexto := ' Where rec.CODUSUARIO = ' + InttoStr(Dm.varUSERID);
   end;

   if (cbConta.Text <> '') then
   begin
     if (not DM.c_1_planoc.Active) then
     begin
       if Dm.cds_parametro.Active then
         dm.cds_parametro.Close;
       dm.cds_parametro.Params[0].Clear;
       dm.cds_parametro.Params[0].AsString := 'CONTASDESPESAS';
       dm.cds_parametro.Open;
       DM.c_1_planoc.CommandText := 'Select * from PLANO WHERE ' +
         'plnctaroot(conta) = ''' + dm.cds_parametroDADOS.AsString + '''' +
         ' and CONSOLIDA = ''S''' + ' order by NOME';
       DM.c_1_planoc.Open;
       dm.cds_parametro.Close;
     end;
     dm.c_1_planoc.Locate('NOME', cbConta.text, [loCaseInsensitive]);
     if (sqlTexto <> '') then
       sqlTexto := ' and rec.CONTACREDITO = ' + IntToStr(Dm.c_1_planocCODIGO.AsInteger)
     else
       sqlTexto := ' Where rec.CONTACREDITO = ' + IntToStr(Dm.c_1_planocCODIGO.AsInteger);
   end;

  //==============================================================================
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
    if (sqlTexto <> '') then
      sqlTexto := SqlTexto + ' and rec.EMISSAO between '
    else
      sqlTexto := ' Where rec.EMISSAO between ';

    sqlTexto := SqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medta1.Text)) + '''' +
      ' and ' +
      '''' + formatdatetime('mm/dd/yy', StrToDate(medta2.Text)) + '''';
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
  //Verifica se a data de Recebimento foi preenchido
  //------------------------------------------------------------------------------
  try
  if (medta5.Text<>datastr) then
  StrToDate(medta5.Text);
  if (medta6.Text<>datastr) then
  StrToDate(medta6.Text);
  if (medta5.Text<>datastr) then
  if (medta6.Text<>datastr) then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where rec.DATAPAGAMENTO between '
    else
      sqlTexto := sqlTexto + ' and rec.DATAPAGAMENTO between ';
      sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medta5.Text)) + '''';
      sqlTexto := sqlTexto + ' and ';
      sqlTexto := sqlTexto + '''' + formatdatetime('mm/dd/yy', StrToDate(medta6.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
     ShowMessage ('Data Inválida! dd/mm/aa');
     medTa5.SetFocus;
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
      6:  // Cancelado
      begin
        if sqlTexto='' then
          sqlTexto := sqlTexto + ' WHERE (rec.STATUS = '
        else
          sqlTexto := sqlTexto + ' AND (rec.STATUS = ';
        sqlTexto := sqlTexto + '''' + '14' + ''')';
      end;
    end;
  end;

  // Tipo da Conta
  if (rbTipoConta.ItemIndex < 2) then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' WHERE '
    else
      sqlTexto := sqlTexto + ' AND ';

    case rbTipoConta.ItemIndex of
       0 : sqlTexto := sqlTexto + ' rec.CONTACREDITO is not null ';
       1 : sqlTexto := sqlTexto + ' rec.CODCOMPRA is not null ';
     end;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Forma
  //------------------------------------------------------------------------------
  if (cbForma.Text <> '') then
  begin
    varCpProc := TUtils.create;
    if SqlTexto='' then
      SqlTexto := SqlTexto + ' WHERE (rec.FORMAPAGAMENTO = '
    else
      SqlTexto := SqlTexto + ' AND (rec.FORMAPAGAMENTO = ';
    SqlTexto := SqlTexto + QuotedStr(varCpProc.pegaForma(cbForma.Text))  + ')';
  end;
  //==============================================================================

    //------------------------------------------------------------------------------
  //Numero Documento
  //------------------------------------------------------------------------------
  if (edNumeroDocumento.Text <> '') then
  begin
    varCpProc := TUtils.create;
    if SqlTexto='' then
      SqlTexto := SqlTexto + ' WHERE (rec.N_DOCUMENTO  = '
    else
      SqlTexto := SqlTexto + ' AND (rec.N_DOCUMENTO  = ';
    SqlTexto := SqlTexto + QuotedStr(edNumeroDocumento.Text) + ')';
  end;
  //==============================================================================
  //Tipo Fornecedor
  //------------------------------------------------------------------------------
  if (not cdsTipoForn.Active) then
     cdsTipoForn.Open;
  cdsTipoForn.Locate('DESCRICAO', cbTipoFornecedor.Text,[loCaseInsensitive]);
  if (cbTipoFornecedor.Text <> '') then
  begin
    if (sqlTexto = '') then
      sqlTexto := sqlTexto + ' WHERE cli.REGIAO = '
    else
      sqlTexto := sqlTexto + ' AND cli.REGIAO = ';
      sqlTexto := sqlTexto + IntToStr(cdsTipoFornCODDADOS.AsInteger);
  end;
  //==============================================================================

  //------------------------------------------------------------------------------
  //Fornecedor
  //------------------------------------------------------------------------------
  if edCodCliente.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where rec.CODFORNECEDOR = '
    else
      sqlTexto := sqlTexto + ' and rec.CODFORNECEDOR = ';
      sqlTexto := sqlTexto + edCodCliente.Text;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Centro de Custo
  //------------------------------------------------------------------------------
  if (not dm.cds_ccusto.Active) then
     dm.cds_ccusto.Open;
  dm.cds_ccusto.Locate('NOME', edCodCCusto.Text,[loPartialKey]);
  if edCodCCusto.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' WHERE CODALMOXARIFADO = '
    else
      sqlTexto := sqlTexto + ' AND CODALMOXARIFADO = ';
      sqlTexto := sqlTexto + IntToStr(dm.cds_ccustoCODIGO.AsInteger);
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Vendedor
  //------------------------------------------------------------------------------
  if edCodVendedor.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where CODCOMPRADOR = '
    else
      sqlTexto := sqlTexto + ' and CODCOMPRADOR = ';
      sqlTexto := sqlTexto + edCodVendedor.Text;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Título
  //------------------------------------------------------------------------------
  if edTitulo.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where TITULO = '
    else
      sqlTexto := sqlTexto + ' and TITULO = ';
      sqlTexto := sqlTexto + '''' + edTitulo.Text + '''';
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Valor
  //------------------------------------------------------------------------------

  if edValor.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where VALORTITULO = '
    else
      sqlTexto := sqlTexto + ' and VALORTITULO = ';
      sqlTexto := sqlTexto +   edValor.Text;

  end;

  //==============================================================================

  //------------------------------------------------------------------------------
  //Somente títulos com valores > 0
  //------------------------------------------------------------------------------
    {11/12/07 - Carlos }
    {if sqlTexto='' then
      sqlTexto := sqlTexto + ' where VALORTITULO > 0 '
    else
      sqlTexto := sqlTexto + ' and VALORTITULO > 0 ';}
  //==============================================================================

  sql2 := ' group by rec.DATAVENCIMENTO, cli.NOMEFORNECEDOR, rec.CODFORNECEDOR, '
            + ' rec.EMISSAO, rec.CODPAGAMENTO, '
            + ' rec.TITULO,  rec.VALOR_RESTO, rec.VALORTITULO, '
            + ' rec.STATUS, rec.DATAPAGAMENTO, '
            + ' rec.VIA, rec.N_DOCUMENTO, rec.VALOR_PRIM_VIA, rec.dp, rec.dup_rec_nf' +
            ' ,plano.NOME ,rec.CONTACREDITO, rec.HISTORICO, comp.SERIE ';

  scdsCr_proc.CommandText := sqlTexto1 + sqlTexto + sql2;
  scdsCr_proc.Open;

  {sqlTexto2 := 'SELECT SUM(TOTALTITULO), SUM(TOTALPAGO), SUM(TOTALPENDENTE)' +
    ' FROM PAG_TOTAIS(';
  if cbStatus.Text<>'' then
  begin
    if copy(cbStatus.Text,0,2) <> '11' then
    begin
      if ((copy(cbStatus.Text,0,2) = '1-') or (copy(cbStatus.Text,0,2) = '2-')) then
        sqlTexto2 := sqlTexto2 + '''' + '5-' + ''')'
      else
        sqlTexto2 := sqlTexto2 + '''' + copy(cbStatus.Text,0,2) + ''')';
    end
    else
      sqlTexto2 := sqlTexto2 + QuotedStr('00') + ')';
  end
  else
    sqlTexto2 := sqlTexto2 + QuotedStr('00') + ')';
    }
  Try
    {if (cds_total.Active) then
      cds_total.Close;

    cds_total.CommandText := sqlTexto2 + ' REC ' + SqlTexto;
    {cds_total.Open;}
    if (not scdsCr_proc.IsEmpty) then
    begin
      if (scdsCr_procTotTitulo.Value > 0) then
        JvCalcEdit1.Text := scdsCr_procTotTitulo.Value
      else
        JvCalcEdit1.Text := '0';

      if (scdsCr_procTotPendente.Value > 0) then
        JvCalcEdit2.Text := scdsCr_procTotPendente.Value
      else
        JvCalcEdit2.Text := '0';

      if (scdsCr_procTotPago.Value > 0) then
        JvCalcEdit3.Text := scdsCr_procTotPago.Value
      else
        JvCalcEdit3.Text := '0';
    end;
  Except
    ShowMessage ('Não existe dados para essa consulta');
  end;
  DBGrid1.SetFocus;
end;

procedure TfCpProc.FormCreate(Sender: TObject);
var conta_local, str_sql2: String;
 varCpProc : TUtils;
  i, j : integer;
begin
  MMJPanel1.Background.EndColor   := dm.corEnd;
  MMJPanel1.Background.StartColor := dm.corStart;
  MMJPanel2.Background.EndColor   := dm.corStart;
  MMJPanel2.Background.StartColor := dm.corEnd;


  // Popula Status
  j := varCpProc.Forma.Count;
  for i := 0 to j - 1 do
  begin
    cbForma.Items.Add(varCpProc.Forma.Strings[i]);
  end;

  j := varCpProc.StatusPag.Count;
  for i := 0 to j - 1 do
  begin
    cbStatus.Items.Add(varCpProc.StatusPag.Strings[i]);
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

  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].Clear;
  dm.cds_parametro.Params[0].AsString := 'CONTASDESPESAS';
  dm.cds_parametro.Open;

  if DM.c_1_planoc.Active then
    DM.c_1_planoc.Close;
  str_sql2 := 'Select * from PLANO ';
  str_sql2 := str_sql2 + 'WHERE ';
  str_sql2 := str_sql2 + 'plnctaroot(conta) = ''' + dm.cds_parametroDADOS.AsString + '''';
  str_sql2 := str_sql2 + ' and CONSOLIDA = ''S'' ';
  str_sql2 := str_sql2 + ' order by NOME';
  DM.c_1_planoc.CommandText := str_sql2;
  DM.c_1_planoc.Open;
  cbConta.Items.clear;
  while not (DM.c_1_planoc.eof) do
  begin
    cbConta.Items.add(dm.c_1_planocNOME.AsString);
    dm.c_1_planoc.Next;
  end;
  dm.cds_parametro.Close;

  if (dm.moduloUsado = 'SAUDE') then
  begin
    DBGrid1.Columns[1].Visible := False;
    DBGrid1.Columns[2].Visible := False;
  end;

  if (not sdsTipoForn.Active) then
    sdsTipoForn.open;
  while not (sdsTipoForn.eof) do
  begin
    cbTipoFornecedor.Items.add(sdsTipoFornDESCRICAO.AsString);
    sdsTipoForn.Next;
  end;
  sdsTipoForn.Close;
end;

procedure TfCpProc.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TfCpProc.DBGrid1TitleClick(Column: TColumn);
begin
     scdsCr_proc.IndexFieldNames := Column.FieldName;
end;

procedure TfCpProc.btnImprimirClick(Sender: TObject);
begin
  if (scdsCr_proc.Active) then
  begin
    repContasReceber.FileName := str_relatorio + 'rel_cpFiltro.rep';
    repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    If (scdsCr_proc.IndexFieldNames = '') then
      repContasReceber.Report.DataInfo.Items[0].SQL:= scdsCr_proc.CommandText
    else
      repContasReceber.Report.DataInfo.Items[0].SQL:= scdsCr_proc.CommandText + ' order by ' + scdsCr_proc.IndexFieldNames;
    repContasReceber.Execute;
  end
  else
    MessageDlg('Efetue a busca antes de imprimir.', mtWarning, [mbOK], 0);
end;

procedure TfCpProc.BitBtn8Click(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,dm.scds_forn_proc);
  try
    dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
    dm.scds_forn_proc.Params.ParamByName('pSegmento').AsInteger := 0;    
    fProcurar.BtnProcurar.Click;
    fProcurar.EvDBFind1.DataField := 'NOMEFORNECEDOR';
    fProcurar.btnIncluir.Visible := True;
    if (dm.moduloUsado = 'SAUDE') then    //manoel 15/01 Acertar para abrir o form Correto
      fProcurar.btnIncluir.Visible := False;
    fProcurar.RadioGroup2.Visible := True;
    fProcurar.ShowModal;
    edCodCliente.Text:=IntToStr(dm.scds_forn_procCODFORNECEDOR.asInteger);
    edCliente.Text:=dm.scds_forn_procNOMEFORNECEDOR.asString;
  Finally
    dm.scds_forn_proc.close;
    fProcurar.Free;
  end;
end;

procedure TfCpProc.BitBtn1Click(Sender: TObject);
begin
  edCodCliente.Text:='';
     edCliente.Text:='';
end;

procedure TfCpProc.BitBtn12Click(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,dm.scds_usuario_proc);
  fProcurar.BtnProcurar.Click;
  try
   fProcurar.EvDBFind1.DataField := 'NOMEUSUARIO';
   if fProcurar.ShowModal=mrOk then
    begin
     edCodVendedor.Text:=IntToStr(dm.scds_usuario_procCODUSUARIO.asInteger);
     edVendedor.Text:=dm.scds_usuario_procNOMEUSUARIO.asString;
    end;
   finally
    dm.scds_usuario_proc.Close;
    fProcurar.Free;
   end;
end;

procedure TfCpProc.edCodClienteExit(Sender: TObject);
begin
   if edCodCliente.Text = '' then exit;
   if dm.scds_forn_proc.Active then
      dm.scds_forn_proc.Close;
   dm.scds_forn_proc.Params[0].Clear;
   dm.scds_forn_proc.Params[1].Clear;
   dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;   
   dm.scds_forn_proc.Params[2].AsInteger := StrToInt(edCodCliente.Text);
   dm.scds_forn_proc.Open;
     edCliente.Text := dm.scds_forn_procNOMEFORNECEDOR.asString;
   dm.scds_forn_proc.Close;
end;

procedure TfCpProc.cbStatusKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   //key:= #0;
   //SelectNext((Sender as TwinControl),True,True);
   btnProcurar.Click;
 end;

end;

procedure TfCpProc.BitBtn6Click(Sender: TObject);
begin
  medta5.Clear;
  medta6.Clear;  
end;

procedure TfCpProc.BitBtn7Click(Sender: TObject);
begin
  medta3.Clear;
  medta4.Clear;
end;

procedure TfCpProc.BitBtn2Click(Sender: TObject);
begin
  medta1.Clear;
  medta2.Clear;  
end;

procedure TfCpProc.ChkDBGridCellClick(Column: TColumn);
var
  Field: TField;
begin
  Field := Column.Field;
  if (Field <> nil) and (Field.Name = 'scdsCr_procDUP_REC_NF')
      and Field.CanModify and not Column.ReadOnly then
  with Field.Dataset do
  begin
    if State = dsBrowse then
      Edit;
    if (scdsCr_procDUP_REC_NF.AsString <> 'S') then
    begin
      scdsCr_procDUP_REC_NF.AsString := 'S';
      edtSelPend.Value := edtSelPend.Value + scdsCr_procVALORREC.AsFloat;
      edtSelPago.Value := edtSelPago.Value + scdsCr_procVALORRECEBIDO.AsFloat;
      scdsCr_procDP.AsInteger := 0;
      scdsCr_proc.Post;
    end
    else
    begin
      edtSelPend.Value := edtSelPend.Value - scdsCr_procVALORREC.AsFloat;
      edtSelPago.Value := edtSelPago.Value - scdsCr_procVALORRECEBIDO.AsFloat;
      scdsCr_procDUP_REC_NF.AsString := '';
      scdsCr_procDP.Clear;;
    end;
  end;
end;

procedure TfCpProc.ChkDBGridColEnter(DBGrid: TDBGrid);
var
  Field: TField;
begin
  Field := DBGrid.SelectedField;
  if (Field <> nil) and (Field.Name = 'scdsCr_procDUP_REC_NF') then
    DBGrid.Options := DBGrid.Options - [dgEditing];
end;

procedure TfCpProc.ChkDBGridColExit(DBGrid: TDBGrid);
var
  Field: TField;
begin
  Field := DBGrid.SelectedField;
  if (Field <> nil) and (Field.Name = 'scdsCr_procDUP_REC_NF') then
    DBGrid.Options := DBGrid.Options + [dgEditing];
end;

procedure TfCpProc.ChkDBGridDrawColumnCell(DBGrid: TDBGrid;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  X, Y, Index: integer;
  Field: TField;
begin
  Field := Column.Field;
  if (Field <> nil) and (Field.Name = 'scdsCr_procDUP_REC_NF') then
  begin
    // Fill the cell with the background color
    DBGrid.Canvas.FillRect(Rect);
    // Determine the position of the graphic inside the cell
    case Column.Alignment of
      taRightJustify:
        X := Rect.Right - 2 - 16;
      taCenter:
        X := (Rect.Right - Rect.Left - 16) div 2 + Rect.Left;
      else // taLeftJustify:
        X := Rect.Left + 2;
    end;
    Y := (Rect.Bottom - Rect.Top - 16) div 2 + Rect.Top;
    // Determine the image to be used
    // if Field.AsBoolean then Index := 1 else Index := 0;
    if scdsCr_procDUP_REC_NF.AsString <> 'S' then Index := 1 else Index := 0;
    // Draw the graphic
    ImageList1.Draw(DBGrid.Canvas, X, Y, Index);
  end else // Default drawing
    DBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfCpProc.ChkDBGridKeyPress(DBGrid: TDBGrid; var Key: Char);
var
  Field: TField;
begin
  Field := DBGrid.SelectedField;
  if (Field <> nil) and (Field.Name = 'scdsCr_procDUP_REC_NF') then
    if (Key = ' ') and Field.CanModify and
        not DBGrid.Columns[DBGrid.SelectedIndex].ReadOnly then
      with Field.Dataset do begin
        if State = dsBrowse then
          Edit;
        //Field.AsBoolean := not Field.AsBoolean;
      if (scdsCr_procDUP_REC_NF.AsString <> 'S') then
      begin
        scdsCr_procDUP_REC_NF.AsString := 'S';
        scdsCr_procDP.AsInteger := 0;
        scdsCr_proc.Post;
      end
      else begin
        scdsCr_procDUP_REC_NF.AsString := '';
        scdsCr_procDP.Clear;;
      end;
  end;
end;

procedure TfCpProc.DBGrid1CellClick(Column: TColumn);
begin
  ChkDBGridCellClick(Column);
end;

procedure TfCpProc.DBGrid1ColEnter(Sender: TObject);
begin
  ChkDBGridColEnter(Sender as TDBGrid);
end;

procedure TfCpProc.DBGrid1ColExit(Sender: TObject);
begin
 ChkDBGridColEnter(Sender as TDBGrid);
end;

procedure TfCpProc.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
//***************************************************
// destacando Campos
//***************************************************
  if Column.Field = scdsCr_procSTATUS then
  begin
   if ((scdsCr_procSTATUS.AsString = '5-')) then
   begin
     DBGrid1.Canvas.Font.Color := clRed;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end
   else if (scdsCr_procSTATUS.AsString = '7-') then
   begin
     DBGrid1.Canvas.Font.Color := clBlue;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end
   else if (scdsCr_procSTATUS.AsString = '8-') then
   begin
     DBGrid1.Canvas.Font.Color := clYellow;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end
   else if (scdsCr_procSTATUS.AsString = '14') then
   begin
     DBGrid1.Canvas.Font.Color := clRed;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
  end;
  ChkDBGridDrawColumnCell(Sender as TDBGrid, Rect,
    DataCol, Column, State);

end;

procedure TfCpProc.meDta1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    key:= #0;
    SelectNext((Sender as TwinControl),True,True);
  end;
end;

procedure TfCpProc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
     ChkDBGridKeyPress(Sender as TDBGrid, Key);
end;

procedure TfCpProc.edValorKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [','] then Key := '.';
end;

procedure TfCpProc.BitBtn3Click(Sender: TObject);
begin
  edValor.Text := '';
end;

procedure TfCpProc.FormShow(Sender: TObject);
begin
  if (DM.videoW <> '1920') then
    sCtrlResize.CtrlResize(TForm(fCpProc));
end;

procedure TfCpProc.BitBtn5Click(Sender: TObject);
Var  TD: TTransactionDesc;
    str_sql, idusuario: String;
begin
  Try
    scdsCr_proc.DisableControls;
    scdsCr_proc.First;
    While not scdsCr_proc.Eof do
    begin
      if (scdsCr_procDUP_REC_NF.AsString = 'S') then
      begin
        idusuario :=  IntToStr(fAtsAdmin.UserControlComercial.CurrentUser.UserID);
        str_sql := 'UPDATE PAGAMENTO SET DP = 0 , USERID = ' + QuotedStr(idusuario);
        str_sql := str_sql + ' WHERE CODPAGAMENTO = ' + IntToStr(scdsCr_procCODPAGAMENTO.AsInteger);
        dm.sqlsisAdimin.StartTransaction(TD);
        try
          dm.sqlsisAdimin.ExecuteDirect(str_sql);
          dm.sqlsisAdimin.Commit(TD);
        except
          dm.sqlsisAdimin.Rollback(TD);
          MessageDlg('Erro para marcar os titulos.', mtError, [mbOK], 0);
          exit;
        end;
      end;
      scdsCr_proc.Next;
    end;

    repContasReceber.FileName := str_relatorio + 'recibo_pgto.rep';
    repContasReceber.Title    := repContasReceber.FileName;
    repContasReceber.Report.Params.ParamByName('USUARIO').Value := idusuario;
    repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    repContasReceber.Execute;
  finally
    scdsCr_proc.EnableControls;
    str_sql := 'UPDATE PAGAMENTO SET DP = NULL , USERID = NULL ';
    str_sql := str_sql + ' WHERE DP = 0 AND USERID = ' + QuotedStr(idusuario);
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(str_sql);
    dm.sqlsisAdimin.Commit(TD);
  end;
end;

end.
