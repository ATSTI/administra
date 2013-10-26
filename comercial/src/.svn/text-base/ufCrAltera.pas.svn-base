unit ufCrAltera;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  FMTBcd, DBClient, Provider, SqlExpr, Grids, DBGrids, Mask, DBCtrls, DBxpress,
  JvExControls, JvLabel;

type
  TfCrAltera = class(TfPai)
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBGrid1: TDBGrid;
    sdscp: TSQLDataSet;
    dspcp: TDataSetProvider;
    cdscp: TClientDataSet;
    Panel1: TPanel;
    ComboBox1: TComboBox;
    Label24: TLabel;
    cbConta: TComboBox;
    Label13: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    cds1: TSQLDataSet;
    cds1MAX: TIntegerField;
    cds1TITULO: TStringField;
    cds1EMISSAO: TDateField;
    cds1DATAVENCIMENTO: TDateField;
    cds1DATARECEBIMENTO: TDateField;
    cds1CAIXA: TSmallintField;
    cds1CONTACREDITO: TIntegerField;
    cds1STATUS: TStringField;
    cds1FORMARECEBIMENTO: TStringField;
    cds1DATABAIXA: TDateField;
    cds1HISTORICO: TStringField;
    cds1CODALMOXARIFADO: TSmallintField;
    cds1N_DOCUMENTO: TStringField;
    cds1VALORRECEBIDO: TFloatField;
    cds1JUROS: TFloatField;
    cds1DESCONTO: TFloatField;
    cds1PERDA: TFloatField;
    cds1FUNRURAL: TFloatField;
    cds1VALOR_PRIM_VIA: TFloatField;
    cds1VALOR_RESTO: TFloatField;
    cds1VALORTITULO: TFloatField;
    cds1PARCELAS: TIntegerField;
    cds1VIA: TStringField;
    cds1VALORPAG: TFloatField;
    cds1CODVENDA: TIntegerField;
    DBNavigator1: TDBNavigator;
    sdsPag: TSQLDataSet;
    sdsPagMAX: TIntegerField;
    sdsPagCODCOMPRA: TIntegerField;
    sdsPagTITULO: TStringField;
    sdsPagEMISSAO: TDateField;
    sdsPagDATAVENCIMENTO: TDateField;
    sdsPagDATAPAGAMENTO: TDateField;
    sdsPagCAIXA: TSmallintField;
    sdsPagSTATUS: TStringField;
    sdsPagFORMAPAGAMENTO: TStringField;
    sdsPagCODALMOXARIFADO: TSmallintField;
    sdsPagVALOR_RESTO: TFloatField;
    sdsPagVALORTITULO: TFloatField;
    sdsPagPARCELAS: TIntegerField;
    sdsPagVIA: TStringField;
    cdsCODRECEBIMENTO: TIntegerField;
    cdsCODVENDA: TIntegerField;
    cdsCODCLIENTE: TIntegerField;
    cdsTITULO: TStringField;
    cdsEMISSAO: TDateField;
    cdsDATAVENCIMENTO: TDateField;
    cdsDATARECEBIMENTO: TDateField;
    cdsCAIXA: TSmallintField;
    cdsSTATUS: TStringField;
    cdsFORMARECEBIMENTO: TStringField;
    cdsCODALMOXARIFADO: TSmallintField;
    cdsN_DOCUMENTO: TStringField;
    cdsVALORRECEBIDO: TFloatField;
    cdsJUROS: TFloatField;
    cdsDESCONTO: TFloatField;
    cdsVALOR_RESTO: TFloatField;
    cdsVALORTITULO: TFloatField;
    cdsPARCELAS: TIntegerField;
    cdsVIA: TStringField;
    cdsDP: TIntegerField;
    sdscpCODPAGAMENTO: TIntegerField;
    sdscpCODFORNECEDOR: TIntegerField;
    sdscpTITULO: TStringField;
    sdscpEMISSAO: TDateField;
    sdscpDATAVENCIMENTO: TDateField;
    sdscpDATAPAGAMENTO: TDateField;
    sdscpCAIXA: TSmallintField;
    sdscpCONTACREDITO: TIntegerField;
    sdscpSTATUS: TStringField;
    sdscpFORMAPAGAMENTO: TStringField;
    sdscpDATABAIXA: TDateField;
    sdscpHISTORICO: TStringField;
    sdscpCODALMOXARIFADO: TSmallintField;
    sdscpN_DOCUMENTO: TStringField;
    sdscpVALORRECEBIDO: TFloatField;
    sdscpJUROS: TFloatField;
    sdscpDESCONTO: TFloatField;
    sdscpPERDA: TFloatField;
    sdscpFUNRURAL: TFloatField;
    sdscpVALOR_PRIM_VIA: TFloatField;
    sdscpVALOR_RESTO: TFloatField;
    sdscpVALORTITULO: TFloatField;
    sdscpPARCELAS: TIntegerField;
    sdscpVIA: TStringField;
    cdscpCODPAGAMENTO: TIntegerField;
    cdscpCODFORNECEDOR: TIntegerField;
    cdscpTITULO: TStringField;
    cdscpEMISSAO: TDateField;
    cdscpDATAVENCIMENTO: TDateField;
    cdscpDATAPAGAMENTO: TDateField;
    cdscpCAIXA: TSmallintField;
    cdscpCONTACREDITO: TIntegerField;
    cdscpSTATUS: TStringField;
    cdscpFORMAPAGAMENTO: TStringField;
    cdscpDATABAIXA: TDateField;
    cdscpHISTORICO: TStringField;
    cdscpCODALMOXARIFADO: TSmallintField;
    cdscpN_DOCUMENTO: TStringField;
    cdscpVALORRECEBIDO: TFloatField;
    cdscpJUROS: TFloatField;
    cdscpDESCONTO: TFloatField;
    cdscpPERDA: TFloatField;
    cdscpFUNRURAL: TFloatField;
    cdscpVALOR_PRIM_VIA: TFloatField;
    cdscpVALOR_RESTO: TFloatField;
    cdscpVALORTITULO: TFloatField;
    cdscpPARCELAS: TIntegerField;
    cdscpVIA: TStringField;
    sdscpCODCOMPRA: TIntegerField;
    cdscpCODCOMPRA: TIntegerField;
    sdscpSTATUSP: TStringField;
    cdscpSTATUSP: TStringField;
    cdsSTATUSP: TStringField;
    sdsCODRECEBIMENTO: TIntegerField;
    sdsCODVENDA: TIntegerField;
    sdsCODCLIENTE: TIntegerField;
    sdsTITULO: TStringField;
    sdsEMISSAO: TDateField;
    sdsDATAVENCIMENTO: TDateField;
    sdsDATARECEBIMENTO: TDateField;
    sdsCAIXA: TSmallintField;
    sdsSTATUS: TStringField;
    sdsFORMARECEBIMENTO: TStringField;
    sdsCODALMOXARIFADO: TSmallintField;
    sdsN_DOCUMENTO: TStringField;
    sdsVALORRECEBIDO: TFloatField;
    sdsJUROS: TFloatField;
    sdsDESCONTO: TFloatField;
    sdsVALOR_RESTO: TFloatField;
    sdsVALORTITULO: TFloatField;
    sdsPARCELAS: TIntegerField;
    sdsVIA: TStringField;
    sdsDP: TIntegerField;
    sdsSTATUSP: TStringField;
    sdsDATACONSOLIDA: TDateField;
    cdsDATACONSOLIDA: TDateField;
    sdscpDATACONSOLIDA: TDateField;
    cdscpDATACONSOLIDA: TDateField;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    JvLabel1: TJvLabel;
    sdsVALOR_RESTO_SST: TFloatField;
    cdsVALOR_RESTO_SST: TFloatField;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    Label20: TLabel;
    DBComboBox2: TDBComboBox;
    sdsVALST: TFloatField;
    cdsVALST: TFloatField;
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ComboBox1Change(Sender: TObject);
    procedure cdsReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure DBEdit5Exit(Sender: TObject);
  private
    { Private declarations }
  public
   ntitulo, nvia, uso, formaRec : string;
   nparcela, nVia1, codVenda, codcliente, codCCusto : integer;
   demissao : TDate;
   vTitulo : double;

    { Public declarations }
  end;

var
  fCrAltera: TfCrAltera;

implementation

uses UDm, uUtils, sCtrlResize;

{$R *.dfm}

procedure TfCrAltera.btnGravarClick(Sender: TObject);
var
  utilcrtitulo : Tutils;
  str_sql: String;
  TD: TTransactionDesc;
  i, num: Integer;
  statusCrTitulo : TUtils;
begin
  if (uso = 'PAGAR') then
  begin
    if (cdscpVALORRECEBIDO.Value > 0) then
    begin
      statusCrTitulo := TUtils.Create;
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      i := 0;
      Try
        if (cdscpSTATUS.AsString = '7-') then
        begin
          MessageDlg('Título já pago.', mtWarning, [mbOK], 0);
          exit;
        end;
        //Confirmando a baixa
        str_sql := 'UPDATE PAGAMENTO SET DP = 0 ';
        str_sql := str_sql + ' WHERE CODPAGAMENTO = ' + IntToStr(cdscpCODPAGAMENTO.AsInteger);
        dm.sqlsisAdimin.StartTransaction(TD);
        try
          dm.sqlsisAdimin.ExecuteDirect(str_sql);
          dm.sqlsisAdimin.Commit(TD);
        except
          dm.sqlsisAdimin.Rollback(TD);
          MessageDlg('Erro para efetuar a baixa.', mtError, [mbOK], 0);
          exit;
        end;

        if (cdscp.State in [dsBrowse, dsInactive]) then
          cdscp.Edit;

        if (ComboBox1.Text = '') then
        begin
          MessageDlg('Escolha a forma de Pagamento.', mtError, [mbOK], 0);
          exit;
        end
        else
          cdscpFORMAPAGAMENTO.AsString := (statusCrTitulo.pegaForma(ComboBox1.Text));
        if (dm.cds_7_contas.Locate('NOME', cbConta.Text, [loCaseInsensitive])) then
          cdscpCAIXA.Value := dm.cds_7_contas.Fields[0].asInteger;
        cdscpSTATUS.AsString := '7-';
        cdscp.Post;

        //Faco a baixa pela SP
        DecimalSeparator := '.';
        str_sql := 'EXECUTE PROCEDURE BAIXATITULOSPAG1(';
        str_sql := str_sql + FloatToStr(cdscpVALORRECEBIDO.AsFloat);
        str_sql := str_sql + ',' + '0';
        str_sql := str_sql + ',' + '0';
        str_sql := str_sql + ',' + '0';
        str_sql := str_sql + ',' + '0';
        str_sql := str_sql + ',''' + formatdatetime('mm/dd/yy', now) + ''''; //dm.cds_crDATABAIXA.AsDateTime) + '''';
        str_sql := str_sql + ',''' + formatdatetime('mm/dd/yy', cdscpDATAPAGAMENTO.AsDateTime) + '''';
        str_sql := str_sql + ',''' + formatdatetime('mm/dd/yy', cdscpDATAVENCIMENTO.AsDateTime) + '''';
        str_sql := str_sql + ',''' + cdscpFORMAPAGAMENTO.AsString + '''';
        str_sql := str_sql + ',''' + cdscpN_DOCUMENTO.AsString + '''';
        str_sql := str_sql + ',' + FloatToStr(cdscpCAIXA.AsFloat);
        str_sql := str_sql + ',' + IntToStr(cdscpCODFORNECEDOR.AsInteger);
        str_sql := str_sql + ',''' + cdscpSTATUS.AsString + '''';
        str_sql := str_sql + ')';
        DecimalSeparator := ',';
        dm.sqlsisAdimin.StartTransaction(TD);
        try
          dm.sqlsisAdimin.ExecuteDirect(str_sql);
          dm.sqlsisAdimin.Commit(TD);
        except
          dm.sqlsisAdimin.Rollback(TD);
          MessageDlg('Erro para efetuar a baixa.', mtError, [mbOK], 0);
          exit;
        end;
      except
        MessageDlg('Erro na baixa , execute o processo novamenteo.', mtError, [mbOK], 0);
      end;
    end
    else
    begin
       cdscp.ApplyUpdates(0);
       exit;
    end;
    if (cdscp.Active) then
      cdscp.Close;
    cdscp.Params[0].AsString := fCrAltera.ntitulo;
    cdscp.Params[1].AsInteger :=  fCrAltera.codcliente;
    cdscp.Params[2].AsDateTime := fCrAltera.demissao;
    cdscp.Open;

    if (sdsPag.Active) then
      sdsPag.Close;
    sdsPag.Params[0].AsString := fCrAltera.ntitulo;
    sdsPag.Params[1].AsInteger := fCrAltera.codcliente;
    sdsPag.Params[2].AsDateTime := fCrAltera.demissao;
    sdsPag.Open;

  end
  { FIM DO PAGAR ###############################################################}
  else begin
    if (cdsVALORRECEBIDO.Value > 0) then
    begin
      statusCrTitulo := TUtils.Create;
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      i := 0;
      Try
        if (cdsSTATUS.AsString = '7-') then
        begin
          MessageDlg('Título já recebido.', mtWarning, [mbOK], 0);
          exit;
        end;
        //Confirmando a baixa
        str_sql := 'UPDATE RECEBIMENTO SET DP = 0 ';
        str_sql := str_sql + ' WHERE CODRECEBIMENTO = ' + IntToStr(cdsCODRECEBIMENTO.AsInteger);
        dm.sqlsisAdimin.StartTransaction(TD);
        try
          dm.sqlsisAdimin.ExecuteDirect(str_sql);
          dm.sqlsisAdimin.Commit(TD);
        except
          dm.sqlsisAdimin.Rollback(TD);
          MessageDlg('Erro para efetuar a baixa.', mtError, [mbOK], 0);
          exit;
        end;

        if (cds.State in [dsBrowse, dsInactive]) then
          cds.Edit;

        if (ComboBox1.Text = '') then
        begin
          MessageDlg('Escolha a forma de Recebimento.', mtError, [mbOK], 0);
          exit;
        end
        else
          cdsFORMARECEBIMENTO.AsString := (statusCrTitulo.pegaForma(ComboBox1.Text));
        if (dm.cds_7_contas.Locate('NOME', cbConta.Text, [loCaseInsensitive])) then
          cdsCAIXA.Value := dm.cds_7_contas.Fields[0].asInteger;
        cdsSTATUS.AsString := '7-';
        cds.Post;

        //Faco a baixa pela SP
        DecimalSeparator := '.';
        str_sql := 'EXECUTE PROCEDURE BAIXATITULOSREC1(';
        str_sql := str_sql + FloatToStr(cdsVALORRECEBIDO.AsFloat);
        str_sql := str_sql + ',' + '0';
        str_sql := str_sql + ',' + '0';
        str_sql := str_sql + ',' + '0';
        str_sql := str_sql + ',' + '0';
        str_sql := str_sql + ',''' + formatdatetime('mm/dd/yy', now) + ''''; //dm.cds_crDATABAIXA.AsDateTime) + '''';
        str_sql := str_sql + ',''' + formatdatetime('mm/dd/yy', cdsDATARECEBIMENTO.AsDateTime) + '''';
        str_sql := str_sql + ',''' + formatdatetime('mm/dd/yy', cdsDATAVENCIMENTO.AsDateTime) + '''';
        str_sql := str_sql + ',''' + cdsFORMARECEBIMENTO.AsString + '''';
        str_sql := str_sql + ',''' + cdsN_DOCUMENTO.AsString + '''';
        str_sql := str_sql + ',' + FloatToStr(cdsCAIXA.AsFloat);
        str_sql := str_sql + ',' + IntToStr(cdsCODCLIENTE.AsInteger);
        str_sql := str_sql + ',''' + cdsSTATUS.AsString + '''';
        str_sql := str_sql + ')';
        DecimalSeparator := ',';
        dm.sqlsisAdimin.StartTransaction(TD);
        try
          dm.sqlsisAdimin.ExecuteDirect(str_sql);
          dm.sqlsisAdimin.Commit(TD);
        except
          dm.sqlsisAdimin.Rollback(TD);
          MessageDlg('Erro para efetuar a baixa.', mtError, [mbOK], 0);
          exit;
        end;
      except
        MessageDlg('Erro na baixa , execute o processo novamenteo.', mtError, [mbOK], 0);
      end;
    end
    else
    begin
      if (ComboBox1.ItemIndex > -1) then
        cdsFORMARECEBIMENTO.AsString := (statusCrTitulo.pegaForma(ComboBox1.Text));
      if (dm.cds_7_contas.Locate('NOME', cbConta.Text, [loCaseInsensitive])) then
        cdsCAIXA.Value := dm.cds_7_contas.Fields[0].asInteger;
      cds.ApplyUpdates(0);
      exit;
    end;
    if (cds.Active) then
      cds.Close;
    cds.Params[0].AsString := fCrAltera.ntitulo;
    cds.Params[1].AsInteger :=  fCrAltera.codcliente;
    cds.Params[2].AsDateTime := fCrAltera.demissao;
    cds.Open;

    if (cds1.Active) then
      cds1.Close;
    cds1.Params[0].AsString := fCrAltera.ntitulo;
    cds1.Params[1].AsInteger := fCrAltera.codcliente;
    cds1.Params[2].AsDateTime := fCrAltera.demissao;
    cds1.Open;

  end;
end;

procedure TfCrAltera.FormCreate(Sender: TObject);
var utilcrtitulo : Tutils;
  i, j : integer;
begin
  //inherited;
  uso := '';
  // Listo as Contas Caixa
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CAIXA_BANCO';
  dm.cds_parametro.Open;
  if dm.cds_7_contas.Active then
    dm.cds_7_contas.Close;
  dm.cds_7_contas.Params[0].AsString := dm.cds_parametroDADOS.AsString;
  dm.cds_7_contas.Open;
  while not dm.cds_7_contas.Eof do
  begin
    cbConta.Items.Add(dm.cds_7_contas.Fields[2].asString);
    dm.cds_7_contas.Next;
  end;

  utilcrtitulo := Tutils.Create;
  // Popula Status
  j := utilcrtitulo.Forma.Count;
  for i := 0 to j - 1 do
  begin
    combobox1.Items.Add(utilcrtitulo.Forma.Strings[i]);
  end;

  // Popula Status
  j := utilcrtitulo.StatusRec.Count;
  for i := 0 to j - 1 do
  begin
    DbComboBox2.Items.Add(utilcrtitulo.StatusRec.Strings[i]);
  end;
end;

procedure TfCrAltera.btnIncluirClick(Sender: TObject);
begin
  if (uso = 'PAGAR') then
  begin
    if (sdspag.State in [dsBrowse]) then
    begin
      codVenda := sdspagCODCOMPRA.AsInteger;
      ntitulo := sdsPagTITULO.AsString;
      demissao := sdsPagEMISSAO.AsDateTime;
      vTitulo := sdsPagVALORTITULO.AsFloat;
    end;
    inherited;
    cdscpCODCOMPRA.AsInteger := codVenda;
    cdscpTITULO.AsString := ntitulo;
    cdscpEMISSAO.AsDateTime := demissao;
    cdscpVALORTITULO.Value := vTitulo;
    cdscpVALORRECEBIDO.Value := 0;
    cdscpVALOR_RESTO.Value := 0;
    cdscpCODALMOXARIFADO.AsInteger := 1;
  end
  else begin
    if (cds1.State in [dsBrowse]) then
    begin
      codVenda := cds1CODVENDA.AsInteger;
      ntitulo := cds1TITULO.AsString;
      demissao := cds1EMISSAO.AsDateTime;
      vTitulo := cds1VALORTITULO.AsFloat;
    end;
    inherited;
    cdsCODVENDA.AsInteger := codVenda;
    cdsTITULO.AsString := ntitulo;
    cdsEMISSAO.AsDateTime := demissao;
    cdsVALORTITULO.Value := vTitulo;
    cdsVALORRECEBIDO.Value := 0;
    cdsVALOR_RESTO.Value := 0;
    cdsCODALMOXARIFADO.AsInteger := 1;
  end;
  DBEdit2.SetFocus;
end;

procedure TfCrAltera.FormShow(Sender: TObject);
var utilcrtitulo : Tutils;
begin
  inherited;
  if (DM.videoW <> '1920') then
    sCtrlResize.CtrlResize(TForm(fCrAltera));
  if (uso = 'PAGAR') then
  begin
    if (cdscpFORMAPAGAMENTO.asString <> '') then
    begin
        utilcrtitulo := Tutils.Create;
        ComboBox1.ItemIndex := utilcrtitulo.retornaForma(cdscpFORMAPAGAMENTO.asString);
    end;
  end
  else begin
    if (cdsFORMARECEBIMENTO.asString <> '') then
    begin
        utilcrtitulo := Tutils.Create;
        ComboBox1.ItemIndex := utilcrtitulo.retornaForma(cdsFORMARECEBIMENTO.asString);
    end;
  end;  
  JvLabel1.Caption := Label1.Caption;
  if (not cds.IsEmpty) then
  begin
    codcliente := cdsCODCLIENTE.AsInteger;
    ntitulo    := cdsTITULO.AsString;
    formaRec   := cdsFORMARECEBIMENTO.AsString;
    nvia       := cdsVIA.AsString;
    statusdavenda := cdsSTATUS.AsString;
    codCCusto  := cdsCODALMOXARIFADO.AsInteger;
  end;
end;

procedure TfCrAltera.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var utilcrtitulo : Tutils;
begin
  inherited;
  if (uso = 'PAGAR') then
  begin
    if (cdscpFORMAPAGAMENTO.asString <> '') then
    begin
        utilcrtitulo := Tutils.Create;
        ComboBox1.ItemIndex := utilcrtitulo.retornaForma(cdscpFORMAPAGAMENTO.asString);
    end;
  end
  else begin
    if (cdsFORMARECEBIMENTO.asString <> '') then
    begin
        utilcrtitulo := Tutils.Create;
        ComboBox1.ItemIndex := utilcrtitulo.retornaForma(cdsFORMARECEBIMENTO.asString);
    end;
  end;
end;

procedure TfCrAltera.DBGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var utilcrtitulo : Tutils;
begin
  inherited;
  if (uso = 'PAGAR') then
  begin
    if (cdscpFORMAPAGAMENTO.asString <> '') then
    begin
        utilcrtitulo := Tutils.Create;
        ComboBox1.ItemIndex := utilcrtitulo.retornaForma(cdscpFORMAPAGAMENTO.asString);
    end;
  end
  else begin
    if (cdsFORMARECEBIMENTO.asString <> '') then
    begin
        utilcrtitulo := Tutils.Create;
        ComboBox1.ItemIndex := utilcrtitulo.retornaForma(cdsFORMARECEBIMENTO.asString);
    end;
  end;
end;

procedure TfCrAltera.ComboBox1Change(Sender: TObject);
begin
  inherited;
  if (uso = 'PAGAR') then
  begin
    if (cdscp.State in [dsBrowse]) then
      cdscp.Edit;
  end
  else begin
    if (cds.State in [dsBrowse]) then
      cds.Edit;
  end;    
end;

procedure TfCrAltera.cdsReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  inherited;
  MessageDlg('Não é possível gravar o registro. Erro : ' + E.Message , mtWarning,
        [mbOk], 0);
end;

procedure TfCrAltera.cdsNewRecord(DataSet: TDataSet);
begin
  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(COD_AREC, 1) as INTEGER) as CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  cdsCODRECEBIMENTO.AsInteger := dm.c_6_genid.fields[0].AsInteger;
  dm.c_6_genid.Close;
  cdsCODCLIENTE.AsInteger      := codcliente;
  cdsTITULO.AsString           := ntitulo;
  cdsCODALMOXARIFADO.AsInteger := codCCusto;
  cdsVIA.AsString              := nvia;
  cdsSTATUS.AsString           := '5-';
  cdsFORMARECEBIMENTO.AsString := '1';
end;

procedure TfCrAltera.DBEdit5Exit(Sender: TObject);
begin
  inherited;
  cdsVALOR_RESTO_SST.AsFloat := cdsVALOR_RESTO.AsFloat - cdsVALST.AsFloat;
end;

end.
