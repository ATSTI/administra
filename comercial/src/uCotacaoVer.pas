unit uCotacaoVer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, FMTBcd, DBClient, Provider, SqlExpr, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, Mask, JvExMask, JvToolEdit, JvBaseEdits;

type
  TfCotacaoVer = class(TfPai_new)
    gb1: TGroupBox;
    JvDBGrid1: TJvDBGrid;
    dsp1: TDataSetProvider;
    cds1: TClientDataSet;
    ds1: TDataSource;
    sql2: TSQLQuery;
    dsp2: TDataSetProvider;
    cds2: TClientDataSet;
    ds2: TDataSource;
    SQLQuery2: TSQLQuery;
    DataSetProvider2: TDataSetProvider;
    cds3: TClientDataSet;
    ds3: TDataSource;
    SQLQuery3: TSQLQuery;
    DataSetProvider3: TDataSetProvider;
    cds4: TClientDataSet;
    ds4: TDataSource;
    SQLQuery4: TSQLQuery;
    DataSetProvider4: TDataSetProvider;
    cds5: TClientDataSet;
    ds5: TDataSource;
    SQLQuery5: TSQLQuery;
    DataSetProvider5: TDataSetProvider;
    cds6: TClientDataSet;
    ds6: TDataSource;
    SQLQuery1: TSQLQuery;
    DataSetProvider1: TDataSetProvider;
    cdsFornec: TClientDataSet;
    SQLDataSet1: TSQLDataSet;
    cds1ITEM: TStringField;
    cds1DESCRICAO: TStringField;
    cds1PRECO: TFloatField;
    cds2ITEM: TStringField;
    cds2DESCRICAO: TStringField;
    cds2PRECO: TFloatField;
    cds3ITEM: TStringField;
    cds3DESCRICAO: TStringField;
    cds3PRECO: TFloatField;
    cds4ITEM: TStringField;
    cds4DESCRICAO: TStringField;
    cds4PRECO: TFloatField;
    cds6ITEM: TStringField;
    cds6DESCRICAO: TStringField;
    cds6PRECO: TFloatField;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    edFornec: TEdit;
    btnClienteProcura: TBitBtn;
    edFornecNome: TEdit;
    edProduto: TEdit;
    edDescricao: TEdit;
    Label1: TLabel;
    edTotal1: TJvCalcEdit;
    Label2: TLabel;
    Label3: TLabel;
    edFrete1: TJvCalcEdit;
    edCond1: TEdit;
    edObs1: TEdit;
    Label4: TLabel;
    sqlBuscaTotal: TSQLDataSet;
    cds1COTACAO_PRAZO: TStringField;
    cds1COTACAO_FRETE: TFloatField;
    cds1COTACAO_OBSERVACAO: TStringField;
    cds1COTACAO_QTDE: TFloatField;
    cds1TOTAL: TFloatField;
    cds2COTACAO_PRAZO: TStringField;
    cds2COTACAO_FRETE: TFloatField;
    cds2COTACAO_OBSERVACAO: TStringField;
    cds2COTACAO_QTDE: TFloatField;
    cds2TOTAL: TFloatField;
    gb2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    JvDBGrid2: TJvDBGrid;
    edTotal2: TJvCalcEdit;
    edFrete2: TJvCalcEdit;
    edCond2: TEdit;
    edObs2: TEdit;
    gb3: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    JvDBGrid3: TJvDBGrid;
    edTotal3: TJvCalcEdit;
    edFrete3: TJvCalcEdit;
    edCond3: TEdit;
    edObs3: TEdit;
    gb4: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    JvDBGrid4: TJvDBGrid;
    edTotal4: TJvCalcEdit;
    edFrete4: TJvCalcEdit;
    edCond4: TEdit;
    edObs4: TEdit;
    cds6COTACAO_PRAZO: TStringField;
    cds6COTACAO_FRETE: TFloatField;
    cds6COTACAO_OBSERVACAO: TStringField;
    cds6COTACAO_QTDE: TFloatField;
    cds6TOTAL: TFloatField;
    cds4COTACAO_PRAZO: TStringField;
    cds4COTACAO_FRETE: TFloatField;
    cds4COTACAO_OBSERVACAO: TStringField;
    cds4COTACAO_QTDE: TFloatField;
    cds4TOTAL: TFloatField;
    cds3COTACAO_PRAZO: TStringField;
    cds3COTACAO_FRETE: TFloatField;
    cds3COTACAO_OBSERVACAO: TStringField;
    cds3COTACAO_QTDE: TFloatField;
    cds3TOTAL: TFloatField;
    gb5: TGroupBox;
    Label17: TLabel;
    grid1: TJvDBGrid;
    edTotal5: TJvCalcEdit;
    gb6: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    JvDBGrid6: TJvDBGrid;
    edTotal6: TJvCalcEdit;
    edFrete6: TJvCalcEdit;
    edCond6: TEdit;
    edObs6: TEdit;
    edTotalGeral1: TJvCalcEdit;
    Label26: TLabel;
    Label25: TLabel;
    edTotalGeral2: TJvCalcEdit;
    Label27: TLabel;
    edTotalGeral3: TJvCalcEdit;
    cds5CODPRO: TStringField;
    cds5DESCRICAO: TStringField;
    cds5PRECO1: TFloatField;
    cds5PRECO2: TFloatField;
    cds5PRECO3: TFloatField;
    cds5PRECO4: TFloatField;
    cds5PRECO5: TFloatField;
    cds5PRECO6: TFloatField;
    cds5PRECO7: TFloatField;
    cds5PRECO8: TFloatField;
    cds5UN: TStringField;
    cds5QTDE: TFloatField;
    cds5FRETE: TFloatField;
    cds5OBS: TStringField;
    cds5TOTAL: TFloatField;
    cds5TOT1: TFloatField;
    cds5TOT2: TFloatField;
    cds5TOT3: TFloatField;
    cds5TOT4: TFloatField;
    cds5TOT5: TFloatField;
    cds5TOT6: TFloatField;
    cds5TOT7: TFloatField;
    cds5TOT8: TFloatField;
    cds5PRAZO1: TStringField;
    cds5PRAZO2: TStringField;
    cds5PRAZO3: TStringField;
    cds5PRAZO4: TStringField;
    cds5PRAZO5: TStringField;
    cds5PRAZO6: TStringField;
    cds5PRAZO7: TStringField;
    cds5PRAZO8: TStringField;
    cds5DENTREGA1: TDateField;
    cds5DENTREGA2: TDateField;
    cds5DENTREGA3: TDateField;
    cds5DENTREGA4: TDateField;
    cds5DENTREGA5: TDateField;
    cds5DENTREGA6: TDateField;
    cds5DENTREGA7: TDateField;
    cds5DENTREGA8: TDateField;
    gbF1: TGroupBox;
    edCondPg1: TEdit;
    edDtEnt1: TEdit;
    Label18: TLabel;
    Label19: TLabel;
    gbF2: TGroupBox;
    edDtEnt2: TEdit;
    edCondPg2: TEdit;
    gbF3: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    gbf4: TGroupBox;
    Edit3: TEdit;
    Edit4: TEdit;
    gbf5: TGroupBox;
    Edit5: TEdit;
    Edit6: TEdit;
    procedure btnProcurarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure edFornecKeyPress(Sender: TObject; var Key: Char);
  private
    procedure avaliarCotacao;
    { Private declarations }
  public
    solic : integer;
    cotacao  : integer;
    { Public declarations }
  end;

var
  fCotacaoVer: TfCotacaoVer;

implementation

uses UDm, StrUtils;

{$R *.dfm}

procedure TfCotacaoVer.btnProcurarClick(Sender: TObject);
var sql, sqlFornec, sqlTotal, ordem: string;
  i : integer;
begin
  i := 1;

  // COLOQUEI X NO SQL PARA TRAZER  TUDO .....
  
  sql := 'select c.COTACAO_ITEM ITEM, c.COTACAO_ITEMDESCRICAO as DESCRICAO, ' +
    ' c.COTACAO_PRECO PRECO, COTACAO_PRAZO, COTACAO_FRETE, COTACAO_OBSERVACAO, ' +
    ' c.COTACAO_QTDE, (COTACAO_PRECO * COTACAO_QTDE) TOTAL ' +
    '  from COMPRA_COTACAO c ' +
    ' where c.COTACAO_SITUACAO <> ' + QuotedStr('X') +
    '   and c.COTACAO_FORNEC   = ';

  ordem := ' ORDER BY c.COTACAO_ITEM';

  if (cdsFornec.Active) then
    cdsFornec.Close;
  sqlFornec := 'select c.COTACAO_FORNEC, f.RAZAOSOCIAL, SUM(c.COTACAO_PRECO * c.COTACAO_QTDE) TOTAL' +
    '  from COMPRA_COTACAO c, FORNECEDOR f ' +
    ' where c.COTACAO_FORNEC = f.CODFORNECEDOR ';

  if (edFornec.Text <> '') then
  begin
    sqlFornec := sqlFornec +  ' and c.COTACAO_FORNEC = ' + edFornec.Text;
  end
  else begin
    if (cotacao > 0) then
    begin
      sqlFornec := sqlFornec +  '   and c.COTACAO_CODIGO   = ' + IntToStr(cotacao);
    end
    else begin
      if (edProduto.Text = '') then
      begin
        MessageDlg('Informe o Material ou Produto.', mtWarning, [mbOK], 0);
        exit;
      end;
      sqlFornec := sqlFornec +  '   and c.COTACAO_ITEM   = ' + QuotedStr(edProduto.Text);
    end;
  end;

  //sqlFornec := sqlFornec + ' and c.COTACAO_SITUACAO = ' + QuotedStr('G');  -- Vou ver tudo
  sqlFornec := sqlFornec + ' GROUP BY c.COTACAO_FORNEC, f.RAZAOSOCIAL';

  cdsFornec.CommandText := sqlFornec;
  cdsFornec.Open;

  if (cds1.Active) then
    cds1.Close;

  if (cds2.Active) then
    cds2.Close;

  if (cds3.Active) then
    cds3.Close;

  if (cds4.Active) then
    cds4.Close;

  if (cds5.Active) then
    cds5.Close;

  if (cds6.Active) then
    cds6.Close;

  cds1.CommandText := 'select COTACAO_ITEM ITEM, COTACAO_ITEMDESCRICAO as ' +
    'DESCRICAO, COTACAO_PRECO PRECO, COTACAO_PRAZO, COTACAO_FRETE, COTACAO_OBSERVACAO, ' +
    ' COTACAO_QTDE, (COTACAO_PRECO * COTACAO_QTDE) TOTAL ' +
    ' FROM COMPRA_COTACAO ' +
    'WHERE COTACAO_CODIGO = 0';

  cds2.CommandText := cds1.CommandText;
  cds3.CommandText := cds1.CommandText;
  cds4.CommandText := cds1.CommandText;
  //cds5.CommandText := cds1.CommandText;
  cds6.CommandText := cds1.CommandText;

  While not cdsFornec.Eof do
  begin
    sqltotal := 'select sum(c.COTACAO_PRECO * c.COTACAO_QTDE) TOTAL from COMPRA_COTACAO c ' +
    ' where c.COTACAO_SITUACAO <> ' + QuotedStr('X') +
    '   and c.COTACAO_FORNEC   = ';

    if (i = 1) then
    begin
      cds1.CommandText := sql + IntToStr(cdsFornec.Fields[0].AsInteger) + ordem;
      gb1.Caption      := IntToStr(cdsFornec.Fields[0].AsInteger) + '-' + cdsFornec.Fields[1].AsString;
      if (sqlBuscaTotal.Active) then
        sqlBuscaTotal.Close;
      sqlTotal := sqlTotal + IntToStr(cdsFornec.Fields[0].AsInteger);
      sqlBuscaTotal.CommandText := sqlTotal;
      sqlBuscaTotal.Open;
      edTotal1.Value := sqlBuscaTotal.Fields[0].AsFloat;
    end;
    if (i = 2) then
    begin
      cds2.CommandText := sql + IntToStr(cdsFornec.Fields[0].AsInteger) + ordem;
      gb2.Caption      := IntToStr(cdsFornec.Fields[0].AsInteger) + '-' + cdsFornec.Fields[1].AsString;
      if (sqlBuscaTotal.Active) then
        sqlBuscaTotal.Close;
      sqlTotal := sqlTotal + IntToStr(cdsFornec.Fields[0].AsInteger);
      sqlBuscaTotal.CommandText := sqlTotal;
      sqlBuscaTotal.Open;
      edTotal2.Value := sqlBuscaTotal.Fields[0].AsFloat;
    end;

    if (i = 3) then
    begin
      cds3.CommandText := sql + IntToStr(cdsFornec.Fields[0].AsInteger) + ordem;
      gb3.Caption      := IntToStr(cdsFornec.Fields[0].AsInteger) + '-' + cdsFornec.Fields[1].AsString;
      if (sqlBuscaTotal.Active) then
        sqlBuscaTotal.Close;
      sqlTotal := sqlTotal + IntToStr(cdsFornec.Fields[0].AsInteger);
      sqlBuscaTotal.CommandText := sqlTotal;
      sqlBuscaTotal.Open;
      edTotal3.Value := sqlBuscaTotal.Fields[0].AsFloat;
    end;

    if (i = 4) then
    begin
      cds4.CommandText := sql + IntToStr(cdsFornec.Fields[0].AsInteger) + ordem;
      gb4.Caption      := IntToStr(cdsFornec.Fields[0].AsInteger) + '-' + cdsFornec.Fields[1].AsString;
      if (sqlBuscaTotal.Active) then
        sqlBuscaTotal.Close;
      sqlTotal := sqlTotal + IntToStr(cdsFornec.Fields[0].AsInteger);
      sqlBuscaTotal.CommandText := sqlTotal;
      sqlBuscaTotal.Open;
      edTotal4.Value := sqlBuscaTotal.Fields[0].AsFloat;
    end;

    if (i = 5) then
    begin
      //cds5.CommandText := sql + IntToStr(cdsFornec.Fields[0].AsInteger) + ordem;
      gb5.Caption      := IntToStr(cdsFornec.Fields[0].AsInteger) + '-' + cdsFornec.Fields[1].AsString;
      if (sqlBuscaTotal.Active) then
        sqlBuscaTotal.Close;
      sqlTotal := sqlTotal + IntToStr(cdsFornec.Fields[0].AsInteger);
      sqlBuscaTotal.CommandText := sqlTotal;
      sqlBuscaTotal.Open;
      edTotal5.Value := sqlBuscaTotal.Fields[0].AsFloat;
    end;

    if (i = 6) then
    begin
      cds6.CommandText := sql + IntToStr(cdsFornec.Fields[0].AsInteger) + ordem;
      gb6.Caption      := IntToStr(cdsFornec.Fields[0].AsInteger) + '-' + cdsFornec.Fields[1].AsString;
      if (sqlBuscaTotal.Active) then
        sqlBuscaTotal.Close;
      sqlTotal := sqlTotal + IntToStr(cdsFornec.Fields[0].AsInteger);
      sqlBuscaTotal.CommandText := sqlTotal;
      sqlBuscaTotal.Open;
      edTotal6.Value := sqlBuscaTotal.Fields[0].AsFloat;
    end;

    i := i + 1;
    cdsFornec.Next;
  end;
  cds1.Open;
  if (cds1.RecordCount > 0) then
  begin
    edCond1.Text     := cds1.Fields[3].AsString;
    edFrete1.Value   := cds1.Fields[4].AsFloat;
    edTotalGeral1.Value := edFrete1.Value + edTotal1.Value;
    edObs1.Text      := cds1.Fields[5].AsString;
  end;
  cds2.Open;
  if (cds2.RecordCount > 0) then
  begin
    edCond2.Text     := cds2.Fields[3].AsString;
    edFrete2.Value   := cds2.Fields[4].AsFloat;
    edObs2.Text      := cds2.Fields[5].AsString;
    edTotalGeral2.Value := edFrete2.Value + edTotal2.Value;
  end;

  cds3.Open;
  if (cds3.RecordCount > 0) then
  begin
    edCond3.Text     := cds3.Fields[3].AsString;
    edFrete3.Value   := cds3.Fields[4].AsFloat;
    edObs3.Text      := cds3.Fields[5].AsString;
    edTotalGeral3.Value := edFrete3.Value + edTotal3.Value;
  end;

  cds4.Open;
  if (cds4.RecordCount > 0) then
  begin
    edCond4.Text     := cds4.Fields[3].AsString;
    edFrete4.Value   := cds4.Fields[4].AsFloat;
    edObs4.Text      := cds4.Fields[5].AsString;
  end;

  {cds5.Open;
  if (cds5.RecordCount > 0) then
  begin
    edCond5.Text     := cds5.Fields[3].AsString;
    edFrete5.Value   := cds5.Fields[4].AsFloat;
    edObs5.Text      := cds5.Fields[5].AsString;
  end;}

  cds6.Open;
  if (cds6.RecordCount > 0) then
  begin
    edCond6.Text     := cds6.Fields[3].AsString;
    edFrete6.Value   := cds6.Fields[4].AsFloat;
    edObs6.Text      := cds6.Fields[5].AsString;
  end;

  avaliarCotacao;

end;

procedure TfCotacaoVer.FormShow(Sender: TObject);
begin
  //inherited;
  btnProcurar.Click;
end;

procedure TfCotacaoVer.FormCreate(Sender: TObject);
begin
  //inherited;
  cotacao := 0;
end;

procedure TfCotacaoVer.edProdutoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);

   btnProcurar.Click;
 end;

end;

procedure TfCotacaoVer.edFornecKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
   btnProcurar.Click;
 end;

end;

procedure TfCotacaoVer.avaliarCotacao;
var j: integer;
  frete, total :double;
begin
  //j := 4;
  // Cria o Grid com as Colunas de Fornecedores;
  cdsFornec.First;

  gbf1.Caption := copy(IntToStr(cdsFornec.Fields[0].AsInteger) + '-' + cdsFornec.Fields[1].AsString,0,30);
  if (cdsFornec.RecordCount > 1) then
  begin
    cdsFornec.next;
    gbf2.Caption := copy(IntToStr(cdsFornec.Fields[0].AsInteger) + '-' + cdsFornec.Fields[1].AsString,0,30);
  end;
  if (cdsFornec.RecordCount > 2) then
  begin
    cdsFornec.next;
    gbf3.Caption := copy(IntToStr(cdsFornec.Fields[0].AsInteger) + '-' + cdsFornec.Fields[1].AsString,0,30);
  end;
  if (cdsFornec.RecordCount > 3) then
  begin
    cdsFornec.next;
    gbf4.Caption := copy(IntToStr(cdsFornec.Fields[0].AsInteger) + '-' + cdsFornec.Fields[1].AsString,0,30);
  end;

  if (cdsFornec.RecordCount > 4) then
  begin
    cdsFornec.next;
    gbf5.Caption := copy(IntToStr(cdsFornec.Fields[0].AsInteger) + '-' + cdsFornec.Fields[1].AsString,0,30);
  end;

  if (cdsFornec.RecordCount > 5) then
    cdsFornec.next;

  //end;

  cds5.Params.ParamByName('PITEM').AsInteger := cotacao;
  cds5.Open;
  edCondPg1.Text := cds5PRAZO1.AsString;
  edDtEnt1.Text  := DateToStr(cds5DENTREGA1.AsDateTime);
  if (cdsFornec.RecordCount > 1) then
  begin
    edCondPg2.Text := cds5PRAZO2.AsString;
    edDtEnt2.Text  := DateToStr(cds5DENTREGA2.AsDateTime);
  end;
  if (cdsFornec.RecordCount > 2) then
  begin
    edit1.Text     := cds5PRAZO3.AsString;
    edit2.Text     := DateToStr(cds5DENTREGA3.AsDateTime);
  end;
  if (cdsFornec.RecordCount > 3) then
  begin
    edit3.Text     := cds5PRAZO4.AsString;
    edit4.Text     := DateToStr(cds5DENTREGA4.AsDateTime);
  end;
  if (cdsFornec.RecordCount > 4) then
  begin
    edit5.Text     := cds5PRAZO5.AsString;
    edit6.Text     := DateToStr(cds5DENTREGA5.AsDateTime);
  end;

  //while not cds5.Eof do
  //begin

  //end;
end;

end.
