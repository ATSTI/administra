unit uCompraRecebimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, FMTBcd, DBClient, Provider, SqlExpr, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, Mask, DBCtrls, JvExMask,
  JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, dbxpress;

type
  TfCompraRecebimento = class(TfPai_new)
    rgStatus: TRadioGroup;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edPedido: TEdit;
    Label2: TLabel;
    edFornec: TEdit;
    edFornecNome: TEdit;
    btnClienteProcura: TBitBtn;
    JvDBGrid1: TJvDBGrid;
    dspPedido: TDataSetProvider;
    cdsPedido: TClientDataSet;
    sqlPedido: TSQLDataSet;
    sqlPedidoCODDETALHE: TIntegerField;
    sqlPedidoCODMOVIMENTO: TIntegerField;
    sqlPedidoDATA_ENTREGA: TDateField;
    sqlPedidoCODPRO: TStringField;
    sqlPedidoPRODUTO: TStringField;
    sqlPedidoQUANTIDADE: TFloatField;
    sqlPedidoPRECO: TFloatField;
    sqlPedidoVALTOTAL: TFloatField;
    cdsPedidoCODDETALHE: TIntegerField;
    cdsPedidoCODMOVIMENTO: TIntegerField;
    cdsPedidoDATA_ENTREGA: TDateField;
    cdsPedidoCODPRO: TStringField;
    cdsPedidoPRODUTO: TStringField;
    cdsPedidoQUANTIDADE: TFloatField;
    cdsPedidoPRECO: TFloatField;
    cdsPedidoVALTOTAL: TFloatField;
    BitBtn1: TBitBtn;
    sqlPedidoRECEBIDO: TFloatField;
    cdsPedidoRECEBIDO: TFloatField;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    cbMes: TComboBox;
    dta1: TJvDatePickerEdit;
    dta2: TJvDatePickerEdit;
    BitBtn2: TBitBtn;
    sqlPedidoCONTROLE: TStringField;
    cdsPedidoCONTROLE: TStringField;
    sqlPedidoCODPEDIDO: TIntegerField;
    cdsPedidoCODPEDIDO: TIntegerField;
    sqlPedidoCODFORNECEDOR: TIntegerField;
    cdsPedidoCODFORNECEDOR: TIntegerField;
    sqlPedidoUN: TStringField;
    cdsPedidoUN: TStringField;
    procedure edFornecExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure cdsPedidoBeforePost(DataSet: TDataSet);
    procedure btnProcurarClick(Sender: TObject);
    procedure cbMesChange(Sender: TObject);
    procedure JvDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnClienteProcuraClick(Sender: TObject);
    procedure JvDBGrid1TitleClick(Column: TColumn);
    procedure edPedidoKeyPress(Sender: TObject; var Key: Char);
    procedure edFornecKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCompraRecebimento: TfCompraRecebimento;

implementation

uses uUtils, UDm, uProcurar;

{$R *.dfm}

procedure TfCompraRecebimento.edFornecExit(Sender: TObject);
begin
  //inherited;
   if edFornec.Text = '' then exit;
   if dm.scds_forn_proc.Active then
     dm.scds_forn_proc.Close;
   dm.scds_forn_proc.Params[0].Clear;
   dm.scds_forn_proc.Params[1].Clear;
   dm.scds_forn_proc.Params[2].AsInteger := StrToInt(edFornec.Text);
   dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
   dm.scds_forn_proc.Params.ParamByName('pSegmento').AsInteger := 1;
   dm.scds_forn_proc.Open;
   edFornecNome.Text := dm.scds_forn_procNOMEFORNECEDOR.asString;
end;

procedure TfCompraRecebimento.FormCreate(Sender: TObject);
begin
  //inherited;

end;

procedure TfCompraRecebimento.btnGravarClick(Sender: TObject);
begin
  inherited;
  //Teste
end;

procedure TfCompraRecebimento.cdsPedidoBeforePost(DataSet: TDataSet);
 //var str_sql : string;
  //TD: TTransactionDesc;
begin
  if (cdsPedidoRECEBIDO.AsFloat > cdsPedidoQUANTIDADE.AsFloat) then
  begin
    MessageDlg('Quantidade inválida (Maior do que o pedido).', mtWarning, [mbOK], 0);
    cdsPedido.Cancel;
    exit;
  end;
  {if (cdsPedidoRECEBIDO.AsFloat < cdsPedidoQUANTIDADE.AsFloat) then
  begin
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
    try
      str_sql := 'INSERT '
      dm.sqlsisAdimin.ExecuteDirect(str_sql);
      dm.sqlsisAdimin.Commit(TD);
    except
      dm.sqlsisAdimin.Rollback(TD);
      MessageDlg('Erro para efetuar a baixa.', mtError, [mbOK], 0);
      exit;
    end;
  end;}
  inherited;
end;

procedure TfCompraRecebimento.btnProcurarClick(Sender: TObject);
var str, stra: string;
begin
  stra := '';

  if (cdsPedido.Active) then
    cdsPedido.Close;

  if (rgStatus.ItemIndex = 0) then
  begin
    str := 'select md.CODDETALHE, md.CODMOVIMENTO, m.DATA_ENTREGA, p.CODPRO, cast(md.DESCPRODUTO as varchar(300)) PRODUTO' +
      ', (md.QUANTIDADE - md.RECEBIDO) QUANTIDADE, p.UNIDADEMEDIDA as UN, md.PRECO, md.VALTOTAL , md.RECEBIDO' +
      ',  m.CONTROLE, m.CODPEDIDO , m.CODFORNECEDOR ' +
      ' from MOVIMENTODETALHE md ' +
      ' inner join MOVIMENTO m on  m.CODMOVIMENTO  = md.CODMOVIMENTO ' +
      ' inner join PRODUTOS   p on  md.CODPRODUTO    = p.CODPRODUTO ' +
      ' where m.CODNATUREZA   = 5 ';

    stra := stra + ' and ((m.STATUS = 3) OR (m.STATUS = 4)) ';
    stra := stra + ' and ((md.QUANTIDADE - md.RECEBIDO) > 0) ';
    stra := stra + ' and md.RECEBIDO = 0';
    BitBtn1.Enabled := True;
  end;

  if (rgStatus.ItemIndex = 1) then
  begin
    str := 'select md.CODDETALHE, md.CODMOVIMENTO, m.DATA_ENTREGA, p.CODPRO, cast(md.DESCPRODUTO as varchar(300)) PRODUTO' +
      ', md.RECEBIDO QUANTIDADE, md.PRECO, md.VALTOTAL , p.UNIDADEMEDIDA as UN, md.RECEBIDO' +
      ',  m.CONTROLE, m.CODPEDIDO, m.CODFORNECEDOR ' +
      ' from MOVIMENTODETALHE md ' +
      ' inner join MOVIMENTO m on  m.CODMOVIMENTO  = md.CODMOVIMENTO ' +
      ' inner join PRODUTOS   p on  md.CODPRODUTO    = p.CODPRODUTO ' +
      ' where m.CODNATUREZA   = 5 ';

    stra := stra + ' and m.STATUS = 5';
    BitBtn1.Enabled := False;
  end;

  if (edFornec.Text <> '') then
  begin
    stra := stra + ' and m.CODFORNECEDOR = ' + edFornec.Text;
  end;

  if (edPedido.Text <> '') then
  begin
    stra := stra + ' and m.CODPEDIDO = ' + edPedido.Text;
  end;

  // Período
  if ((dta1.Checked) and (dta2.Checked)) then
  begin
    stra := stra + ' and m.DATA_ENTREGA BETWEEN ' +
      QuotedStr(FormatDateTime('mm/dd/yyyy', dta1.Date)) + ' AND '  +
      QuotedStr(FormatDateTime('mm/dd/yyyy', dta2.Date));
  end;

  cdsPedido.CommandText := str + stra;

  cdsPedido.Open;
end;

procedure TfCompraRecebimento.cbMesChange(Sender: TObject);
var  periodo : TUtils;
begin
  periodo := TUtils.Create;
  periodo.criaIni(cbMes.text);
  periodo.criaFim(cbMes.text);
  dta1.Text := periodo.PeriodoIni;
  dta2.Text := periodo.PeriodoFim;
  periodo.Destroy;
end;

procedure TfCompraRecebimento.JvDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = #13) then
  begin
    if (not cdsPedido.Eof) then
      cdsPedido.Next;
  end;
end;

procedure TfCompraRecebimento.BitBtn1Click(Sender: TObject);
var TD: TTransactionDesc;
  tudo, alteraStatus: String;
  codFornec: Integer;
begin
  if  MessageDlg('Confirma recebimento ?', mtConfirmation, [mbYes, mbNo],0) = mrNo then
     exit;
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  try
    cdsPedido.DisableControls;
    cdsPedido.First;
    codFornec := cdsPedidoCODFORNECEDOR.AsInteger;
    While not cdsPedido.Eof do
    begin
      // Se tiver um fornecedor diferente não executa o processo
      if (codFornec <> cdsPedidoCODFORNECEDOR.AsInteger) then
      begin
        MessageDlg('A lista de Pedidos deve ser de um único Fornecedor.', mtInformation, [mbOK], 0);
        Exit;
      end;
      cdsPedido.Next;
    end;

    cdsPedido.First;
    DecimalSeparator := '.';
    tudo := 'S';
    While not cdsPedido.Eof do
    begin
      if (cdsPedidoRECEBIDO.AsFloat > 0) then
      begin
        dm.sqlsisAdimin.ExecuteDirect('UPDATE MOVIMENTODETALHE SET RECEBIDO = ' +
          FloatToStr(cdsPedidoRECEBIDO.asFloat) +
          ' , CODIGO1 = 99999 ' +
          ' WHERE CODDETALHE = ' + IntToStr(cdsPedidoCODDETALHE.AsInteger));
      end;
      if (cdsPedidoRECEBIDO.AsFloat < cdsPedidoQUANTIDADE.AsFloat) then
        tudo := 'N';
      cdsPedido.Next;
    end;
    DecimalSeparator := ',';
    { -- Fazendo pela PROC
    if (tudo = 'S') then
    begin
      alteraStatus := 'UPDATE MOVIMENTO SET STATUS = 5 WHERE CODMOVIMENTO = ' + IntToStr(cdsPedidoCODMOVIMENTO.AsInteger);
    end else begin
      alteraStatus := 'UPDATE MOVIMENTO SET STATUS = 4 WHERE CODMOVIMENTO = ' + IntToStr(cdsPedidoCODMOVIMENTO.AsInteger);
    end;
    dm.sqlsisAdimin.ExecuteDirect(alteraStatus);
    dm.sqlsisAdimin.Commit(TD);
                                 }
    alteraStatus := 'EXECUTE PROCEDURE COTACAO_GERA_PEDIDO(' + IntToStr(cdsPedidoCODFORNECEDOR.AsInteger)+ ')';
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(alteraStatus);
    dm.sqlsisAdimin.Commit(TD);

    // Limpa o CODIGO1 - usado apenas para marcar os Itens que vão ser incluidos
    alteraStatus := 'UPDATE MOVIMENTODETALHE SET CODIGO1 = NULL WHERE CODIGO1 = 99999';
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(alteraStatus);
    dm.sqlsisAdimin.Commit(TD);

    cdsPedido.EnableControls;
    MessageDlg('Recebimento Gravado com sucesso.', mtInformation, [mbOK], 0);
  except
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro para gravar o recebimento.', mtError, [mbOK], 0);
    DecimalSeparator := ',';
    exit;
  end;
  bitbtn2.Click;
end;

procedure TfCompraRecebimento.btnClienteProcuraClick(Sender: TObject);
begin
  inherited;
  fProcurar:= TfProcurar.Create(self,dm.scds_forn_proc);
  dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
  dm.scds_forn_proc.Params.ParamByName('pSegmento').AsInteger := 0;
  fProcurar.RadioGroup2.Visible := True;
  fProcurar.BtnProcurar.Click;
  fProcurar.EvDBFind1.DataField := 'NOMEFORNECEDOR';
  fProcurar.btnIncluir.Visible := True;
  try
    fProcurar.ShowModal;
    edFornec.Text     := IntToStr(dm.scds_forn_procCODFORNECEDOR.AsInteger);
    edFornecNome.Text := dm.scds_forn_procNOMEFORNECEDOR.AsString;
  finally
    dm.scds_forn_proc.Close;
    fProcurar.Free;
  end;
end;

procedure TfCompraRecebimento.JvDBGrid1TitleClick(Column: TColumn);
var
  enum_IndexOption: TIndexOptions;
  str_IndexAsc,
  str_IndexDesc,
  str_IndexName: String;
begin
//  cdsPedido.IndexFieldNames := Column.FieldName;
  if (Column.Field.FieldKind = fkData) then
  begin
    str_IndexAsc := Concat('asc_',Column.FieldName);
    str_IndexDesc := Concat('desc_',Column.FieldName);

    str_IndexName := '';
    enum_IndexOption := [];

    if (cdsPedido.IndexName = str_IndexAsc) then
    begin
    str_IndexName := str_IndexDesc;
    enum_IndexOption := [ixDescending];
    end
    else if (cdsPedido.IndexName = str_IndexDesc) then
    begin
    str_IndexName := str_IndexAsc;
    end
    else
    begin
    str_IndexName := str_IndexAsc;
    end;

    cdsPedido.IndexDefs.Clear;

    cdsPedido.IndexDefs.Add(str_IndexName,Column.FieldName,enum_IndexOption);
    cdsPedido.IndexName := str_IndexName;
  end;

end;

procedure TfCompraRecebimento.edPedidoKeyPress(Sender: TObject;
  var Key: Char);
begin
 if (key = #13) then
 begin
   bitbtn2.Click;
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfCompraRecebimento.edFornecKeyPress(Sender: TObject;
  var Key: Char);
begin
 if (key = #13) then
 begin
   bitbtn2.Click;
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;

end;

end.
