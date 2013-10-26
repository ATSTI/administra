unit uCotacoesHist;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, Mask, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, Grids, DBGrids, JvExDBGrids, JvDBGrid, FMTBcd,
  DBClient, Provider, SqlExpr;

type
  TfCotacoesHist = class(TfPai_new)
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    cbMes: TComboBox;
    dta1: TJvDatePickerEdit;
    dta2: TJvDatePickerEdit;
    GroupBox3: TGroupBox;
    BitBtn1: TBitBtn;
    sqlCotacao: TSQLQuery;
    dspCotacao: TDataSetProvider;
    cdsCotacao: TClientDataSet;
    cdsCotacaoCOTACAO_CODIGO: TIntegerField;
    cdsCotacaoCOTACAO_DATA: TDateField;
    cdsCotacaoCOTACAO_FORNEC: TIntegerField;
    cdsCotacaoCOTACAO_SOLICIT: TStringField;
    cdsCotacaoCOTACAO_ITEMDESCRICAO: TStringField;
    cdsCotacaoCOTACAO_SITUACAO: TStringField;
    cdsCotacaoCOTACAO_QTDE: TFloatField;
    cdsCotacaoCOTACAO_PRECO: TFloatField;
    cdsCotacaoCOTACAO_USER: TStringField;
    cdsCotacaoCOTACAO_ITEM: TStringField;
    cdsCotacaoCOTACAO_DTENTREGA: TDateField;
    cdsCotacaoCOTACAO_PRAZO: TStringField;
    cdsCotacaoCOTACAO_OBSERVACAO: TStringField;
    cdsCotacaoCOTACAO_IPI: TFloatField;
    cdsCotacaoCOTACAO_DESCONTO: TFloatField;
    cdsCotacaoCOTACAO_FRETE: TFloatField;
    dsCotacao: TDataSource;
    jvdbgrd2: TJvDBGrid;
    GroupBox1: TGroupBox;
    JvDBGrid1: TJvDBGrid;
    SQLQuery1: TSQLQuery;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1COTACAO_FORNEC: TIntegerField;
    ClientDataSet1NOMEFORNECEDOR: TStringField;
    DataSource1: TDataSource;
    rgSituacao: TRadioGroup;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    edProduto: TEdit;
    Label4: TLabel;
    edFornec: TEdit;
    btnClienteProcura: TBitBtn;
    edFornecNome: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    edDescricao: TEdit;
    sqlProc: TSQLQuery;
    Label2: TLabel;
    edPedido: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure JvDBGrid1CellClick(Column: TColumn);
    procedure JvDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvDBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edFornecExit(Sender: TObject);
    procedure btnClienteProcuraClick(Sender: TObject);
    procedure edProdutoExit(Sender: TObject);
  private
    procedure buscaCotacao;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCotacoesHist: TfCotacoesHist;

implementation

uses UDm, uProcurar;

{$R *.dfm}

procedure TfCotacoesHist.BitBtn1Click(Sender: TObject);
var strC, strCa : string;
begin
  strC := 'SELECT DISTINCT a.COTACAO_DATA, a.COTACAO_FORNEC, ' +
   ' a.COTACAO_SOLICIT, a.COTACAO_SITUACAO, ' +
   ' f.RAZAOSOCIAL NOMEFORNECEDOR ' +
   '  FROM COMPRA_COTACAO a , FORNECEDOR F' +
   ' WHERE a.COTACAO_FORNEC = f.CODFORNECEDOR';

  if ((dta1.Checked) and (dta2.Checked)) then
  begin
    strCa := ' AND a.COTACAO_DATA BETWEEN ' +
      QuotedStr(FormatDateTime('mm/dd/yyyy', dta1.Date)) + ' AND '  +
      QuotedStr(FormatDateTime('mm/dd/yyyy', dta2.Date));
  end;
  if (edFornec.Text <> '') then
  begin
    strCa := strCa + ' AND a.COTACAO_FORNEC = ' + edFornec.Text;
  end;
  if (edProduto.Text <> '') then
  begin
    strCa := strCa + ' AND a.COTACAO_ITEM = ' + QuotedStr(edProduto.Text);
  end;
  Case rgSituacao.ItemIndex of
    0: strCa := strCa + ' AND a.COTACAO_SITUACAO = ' + QuotedStr('P');
    1: strCa := strCa + ' AND a.COTACAO_SITUACAO = ' + QuotedStr('G');
    2: strCa := strCa + ' AND a.COTACAO_SITUACAO = ' + QuotedStr('F');
  end;
  if (edPedido.Text <> '') then
  begin
    strCa := strCa + ' AND a.COTACAO_CODIGO = ' + edPedido.Text;
  end;

  if (ClientDataSet1.Active) then
    ClientDataSet1.Close;
  ClientDataSet1.CommandText := strC + strCa;
  ClientDataSet1.Open;
  buscaCotacao;
end;

procedure TfCotacoesHist.FormCreate(Sender: TObject);
begin
  //inherited;

end;

procedure TfCotacoesHist.buscaCotacao;
var strP: string;
begin
  strP := 'SELECT a.COTACAO_CODIGO, a.COTACAO_DATA, a.COTACAO_FORNEC, ' +
   ' a.COTACAO_SOLICIT, a.COTACAO_ITEM, a.COTACAO_ITEMDESCRICAO, a.COTACAO_SITUACAO, ' +
   ' a.COTACAO_QTDE, a.COTACAO_PRECO, a.COTACAO_USER, a.COTACAO_TIPO, ' +
   ' a.COTACAO_CODSOLIC, a.COTACAO_DTENTREGA, a.COTACAO_PRAZO, a.COTACAO_OBSERVACAO, ' +
   ' a.COTACAO_IPI, a.COTACAO_DESCONTO, a.COTACAO_FRETE' +
   '  FROM COMPRA_COTACAO a ';
  strP := strP + 'where a.COTACAO_FORNEC = ' + IntToStr(ClientDataSet1COTACAO_FORNEC.AsInteger);
  if ((dta1.Checked) and (dta2.Checked)) then
  begin
    strP := strP + '  and a.COTACAO_DATA BETWEEN ' +
      QuotedStr(FormatDateTime('mm/dd/yyyy', dta1.Date)) + ' AND '  +
      QuotedStr(FormatDateTime('mm/dd/yyyy', dta2.Date));
  end;    
  if (edProduto.Text <> '') then
  begin
    strP := strP + 'and a.COTACAO_ITEM = ' + QuotedStr(edProduto.Text);
  end;

  Case rgSituacao.ItemIndex of
    0: strP := strP + ' AND a.COTACAO_SITUACAO = ' + QuotedStr('P');
    1: strP := strP + ' AND a.COTACAO_SITUACAO = ' + QuotedStr('G');
    2: strP := strP + ' AND a.COTACAO_SITUACAO = ' + QuotedStr('F');
  end;

  if (cdsCotacao.Active) then
    cdsCotacao.Close;
  cdsCotacao.CommandText := strP;
  cdsCotacao.Open;

end;

procedure TfCotacoesHist.JvDBGrid1CellClick(Column: TColumn);
begin
  //inherited;
  buscaCotacao;
end;

procedure TfCotacoesHist.JvDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  buscaCotacao;

end;

procedure TfCotacoesHist.JvDBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  buscaCotacao;

end;

procedure TfCotacoesHist.edFornecExit(Sender: TObject);
begin
  if (edFornec.Text <> '') then
  begin
    if dm.scds_forn_proc.Active then
      dm.scds_forn_proc.Close;
    dm.scds_forn_proc.Params[0].Clear;
    dm.scds_forn_proc.Params[1].Clear;
    dm.scds_forn_proc.Params[2].AsInteger:=StrToInt(EdFornec.Text);
    dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
    dm.scds_forn_proc.Params.ParamByName('pSegmento').AsInteger := 1;
    dm.scds_forn_proc.Open;
    if dm.scds_forn_proc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      //btnClienteProcura.Click;
      exit;
    end;
    edFornecNome.text     := dm.scds_forn_procNOMEFORNECEDOR.AsString;
    //dtEntrega.Date := today + dm.scds_forn_procPRAZOPAGAMENTO.AsInteger;
  end;
end;

procedure TfCotacoesHist.btnClienteProcuraClick(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,dm.scds_forn_proc);
  dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
  dm.scds_forn_proc.Params.ParamByName('pSegmento').AsInteger := 0;
  fProcurar.RadioGroup2.Visible := True;
  fProcurar.BtnProcurar.Click;
  fProcurar.EvDBFind1.DataField := 'NOMEFORNECEDOR';
  fProcurar.btnIncluir.Visible := True;
  try
    varForm1 := 'compra';
    fProcurar.ShowModal;
    EdFornec.Text := IntToStr(dm.scds_forn_procCODFORNECEDOR.AsInteger);
    EdFornecNome.Text := dm.scds_forn_procNOMEFORNECEDOR.AsString;
  finally
    dm.scds_forn_proc.Close;
    fProcurar.Free;
  end;

end;

procedure TfCotacoesHist.edProdutoExit(Sender: TObject);
begin
  if (EdProduto.Text <> '')then
  begin
    if (sqlProc.Active) then
      sqlProc.Close;
    sqlProc.SQL.Clear;
    sqlProc.SQL.Add('SELECT * FROM COMPRA_ITENS WHERE CODIGO LIKE ' +
      QuotedStr(EdProduto.Text));
    sqlProc.Open;

    if (sqlProc.IsEmpty) then
    begin
      MessageDlg('Código não cadastrado.', mtWarning, [mbOK], 0);
      exit;
    end;

    edDescricao.Text := sqlProc.Fields[1].AsString;
  end;
end;

end.
