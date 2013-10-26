unit uTroca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, RXCtrls, ExtCtrls, MMJPanel, Mask, JvExMask,
  JvToolEdit, JvBaseEdits, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  JvDBUltimGrid, FMTBcd, DB, DBClient, Provider, SqlExpr, DBXpress;

type
  TfTroca = class(TForm)
    MMJPanel2: TMMJPanel;
    Label3: TLabel;
    Label4: TLabel;
    RxLabel1: TRxLabel;
    MMJPanel1: TMMJPanel;
    btnGravar: TBitBtn;
    btnIncluir: TBitBtn;
    btnProcurar: TBitBtn;
    btnSair: TBitBtn;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    edProdutoatrocar: TEdit;
    GroupBox2: TGroupBox;
    JvDBUltimGrid1: TJvDBUltimGrid;
    edProd: TEdit;
    edProdNome: TEdit;
    Label5: TLabel;
    edProdPreco: TJvCalcEdit;
    Label1: TLabel;
    edPrecoaTrocar: TJvCalcEdit;
    GroupBox3: TGroupBox;
    edSaldo: TJvCalcEdit;
    btnNovo: TBitBtn;
    BitBtn8: TBitBtn;
    btnProdutoProcura: TBitBtn;
    sdsMovDet: TSQLDataSet;
    sqsBusca: TSQLQuery;
    dspMovDet: TDataSetProvider;
    cdsMovDet: TClientDataSet;
    dsMovDet: TDataSource;
    edQtde: TJvCalcEdit;
    Label2: TLabel;
    cdsMovDetCODPRO: TStringField;
    cdsMovDetCODPRODUTO: TIntegerField;
    cdsMovDetQUANTIDADE: TFloatField;
    cdsMovDetPRECO: TFloatField;
    cdsMovDetUN: TStringField;
    cdsMovDetDESCPRODUTO: TStringField;
    cdsMovDetSUITE: TStringField;
    procedure FormShow(Sender: TObject);
    procedure edProdExit(Sender: TObject);
    procedure edProdKeyPress(Sender: TObject; var Key: Char);
    procedure btnProdutoProcuraClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
  private
    str_sql: String;
    codProduto : integer;
    codRec: integer;
    procedure abreMovDet;
    procedure insereTitulo;
    procedure pesquisaProdutos;
    procedure buscaTitulo;
    { Private declarations }
  public
    codMovTroca: integer;
    codDetTroca: integer;
    codVendaTroca: Integer;
    codCCustoTroca: Integer;
    produtoATrocar: String;
    codProdATrocar: Integer;
    valorATrocar: Double;
    { Public declarations }
  end;

var
  fTroca: TfTroca;

implementation

uses UDm, ufprocura_prod, uMovimentoDetalhe;

{$R *.dfm}

procedure TfTroca.FormShow(Sender: TObject);
begin
  edProdutoatrocar.Text := produtoATrocar;
  edPrecoaTrocar.Value := valorATrocar;
  edSaldo.Value  := valorATrocar;
  abreMovDet;
end;

procedure TfTroca.edProdExit(Sender: TObject);
begin
  PesquisaProdutos;
end;

procedure TfTroca.edProdKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    if (edProd.Text = '') then
    begin
      btnProdutoProcura.Click;
      exit;
    end
    else
    begin
      PesquisaProdutos;
    end;
  end;
  if (key = #13) then
  begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
  end;

end;

procedure TfTroca.btnProdutoProcuraClick(Sender: TObject);
begin
  var_F := 'troca';
    fProcura_prod.cbTipo.ItemIndex := 4;
    fProcura_prod.btnIncluir.Visible := true;
    if (procprod <> 'PROC_PROD_COMPLETO') then
    begin
      fProcura_prod.Panel1.Visible := false;
      fProcura_prod.Panel2.Visible := true;
      //fProcura_prod.CheckBox1.Checked := True;
      fProcura_prod.BitBtn1.Click;
    end
    else begin
      fProcura_prod.Panel2.Visible := false;
      fProcura_prod.Panel1.Visible := true;
      //fProcura_prod.CheckBox1.Checked := False;
      if (fProcura_prod.cds_proc.Active) then
        fProcura_prod.cds_proc.Close;
    end;
    varonde := 'troca';
    var_F := 'troca';
    fProcura_prod.ShowModal;

    if (procprod = 'PROC_PROD_SIMPLES') then
    begin
      edProd.Text := fProcura_prod.cds_procCODPRO.AsString;
      codProduto := fProcura_prod.cds_procCODPRODUTO.AsInteger;
      edProdNome.Text := fProcura_prod.cds_procPRODUTO.AsString;
      edProdPreco.Value := fProcura_prod.cds_procPRECO_VENDA.value;
    end;
end;

procedure TfTroca.pesquisaProdutos;
var sql: String;
begin
  if (dm.codBarra = 'N') then
  begin
    varonde := 'compra';
    var_F := 'venda';
    if (edProd.Text = '') then
      exit;

    if dm.scds_produto_proc.Active then
      dm.scds_produto_proc.Close;
    dm.scds_produto_proc.Params[0].AsInteger := 0;
    dm.scds_produto_proc.Params[1].AsString := edProd.Text;
    dm.scds_produto_proc.Open;
    if dm.scds_produto_proc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      btnProdutoProcura.Click;
      exit;
    end;
  end;
  if (dm.codBarra = 'S') then // usa codigo de barra
  begin
    // busca pelo código de barra
    if dm.scds_produto_proc.Active then
      dm.scds_produto_proc.Close;
    sql := 'select CODPRODUTO, CODPRO, PRODUTO, UNIDADEMEDIDA, QTDE_PCT' +
       ', ICMS, CODALMOXARIFADO, PRECO_COMPRAULTIMO as  VALORUNITARIOATUAL ' +
       ', PRECO_VENDA AS VALOR_PRAZO, TIPO, ESTOQUEATUAL, LOCALIZACAO ' +
       ', LOTES  , PRECO_COMPRAMEDIO AS PRECOMEDIO, PESO_QTDE, COD_COMISSAO' +
       ', RATEIO, conta_despesa , IPI, OBS, ORIGEM, NCM  '  +
       ' from LISTAPRODUTO(:CODPRODUTO, :CODPRO, ' + QuotedStr('TODOSGRUPOS') +
       ', ' + QuotedStr('TODOSSUBGRUPOS') + ' ,' + QuotedStr('TODASMARCAS') +
       ', ' + QuotedStr('TODASAPLICACOES') + ', 0)';
    dm.scds_produto_proc.CommandText := sql + ' WHERE COD_BARRA = ' +
      QuotedStr(edProd.Text) + ' or CODPRO = ' + QuotedStr(edProd.Text);
    dm.scds_produto_proc.Params[0].AsInteger := 0;
    dm.scds_produto_proc.Params[1].AsString := 'TODOSPRODUTOS';
    dm.scds_produto_proc.Open;
    if dm.scds_produto_proc.IsEmpty then
    begin
       MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      btnProdutoProcura.Click;
      exit;
    end;
  end;
  codProduto := dm.scds_produto_procCODPRODUTO.AsInteger;
  edProdNome.Text := dm.scds_produto_procPRODUTO.Value;
  edQtde.Value := 1;
  edProdPreco.Value := dm.scds_produto_procVALOR_PRAZO.Value;
end;

procedure TfTroca.abreMovDet;
begin
  if (cdsMovDet.Active) then
    cdsMovDet.Close;
  cdsMovDet.CommandText := 'SELECT p.CODPRO, md.CODPRODUTO, md.QUANTIDADE, ' +
    ' md.PRECO, md.UN, md.DESCPRODUTO, md.SUITE ' +
    ' FROM MOVIMENTODETALHE md, PRODUTOS p ' +
    ' WHERE md.CODPRODUTO = p.CODPRODUTO ' +
    '   AND md.CODMOVIMENTO = ' + IntToStr(codMovTroca) +
    '   AND SUITE = ' + QuotedStr(IntToStr(codDetTroca));
  cdsMovDet.Open;  
end;

procedure TfTroca.BitBtn1Click(Sender: TObject);
var  TDA: TTransactionDesc;
  fmDet: TMovimentoDetalhe;
  itensAdicionado: integer;
  saldoTotal: double;
begin
  if (cdsMovDet.RecordCount > 0) then
  begin
    saldoTotal := valorATrocar;
    TDA.TransactionID  := 1;
    TDA.IsolationLevel := xilREADCOMMITTED;
    Try
      fmDet := TMovimentoDetalhe.Create;
      //FRec := TReceberCls.Create;
      cdsMovDet.First;
      buscaTitulo;
      dm.sqlsisAdimin.StartTransaction(TDA);
      try
        while not cdsMovDet.Eof do
        begin
          if (cdsMovDetSUITE.AsString = '') then
          begin
            fmDet.CodMov := codMovTroca;
            fmDet.CodProduto := cdsMovDetCODPRODUTO.AsInteger;
            fmDet.Descricao := cdsMovDetDESCPRODUTO.AsString;
            fmDet.Qtde := cdsMovDetQUANTIDADE.AsFloat;
            fmDet.Preco := cdsMovDetPRECO.AsFloat;
            fmDet.Suite := IntToStr(codDetTroca);
            saldoTotal := saldoTotal - (cdsMovDetQUANTIDADE.AsFloat*cdsMovDetPRECO.AsFloat);
              // desativarTrigger
            fmDet.inserirMovDet;
          end;
          cdsMovDet.Next;
        end;
        str_sql := 'UPDATE MOVIMENTODETALHE SET STATUS = ' + QuotedStr('T') +
          ', BAIXA = null , DESCPRODUTO = ' + QuotedStr('TROCADO-') + ' || DESCPRODUTO ' +
          ' WHERE CODDETALHE = ' + IntToStr(codDetTroca);
        dm.sqlsisAdimin.ExecuteDirect(str_sql);
        if (saldoTotal < 0) then
        begin
          //Gera um título com a diferenca
          insereTitulo;
        end
        else begin
          // Baixa o Saldo que sobrou do Titulo que existe
        end;
        dm.sqlsisAdimin.Commit(TDA);
        cdsMovDet.Delete;
        edQtde.Value := 0;
        edProdPreco.Value := 0;
        MessageDlg('Troca executada com sucesso.', mtInformation, [mbOk], 0);
      except
        on E : Exception do
        begin
          ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
          dm.sqlsisAdimin.Rollback(TDA); //on failure, undo the changes}
          exit;
        end;
      end;
    finally
      //Frec.Free;
      fmDet.Free;
    end;
  end;
end;

procedure TfTroca.btnNovoClick(Sender: TObject);
begin
  if (edProd.Text <> '') then
  begin
    if (not cdsMovDet.Active) then
       abreMovDet;
    cdsMovDet.Append;
    cdsMovDetCODPRO.AsString := edProd.Text;
    cdsMovDetCODPRODUTO.AsInteger := codProduto;
    cdsMovDetDESCPRODUTO.AsString := edProdNome.Text;
    cdsMovDetQUANTIDADE.AsFloat := edQtde.Value;
    cdsMovDetPRECO.AsFloat := edProdPreco.Value;
    cdsMovDet.Post;
    edSaldo.Value := edSaldo.Value - (edQtde.Value * edProdPreco.Value);
    edProd.Text := '';
    edProdNome.Text := '';
  end;  
end;

procedure TfTroca.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TfTroca.insereTitulo;
begin
  str_sql := ' INSERT INTO RECEBIMENTO ' +
          ' (CODRECEBIMENTO, TITULO,          EMISSAO,         CODCLIENTE,      ' +
          ' DATAVENCIMENTO,  STATUS,          VIA,             FORMARECEBIMENTO,' +
          ' CODVENDA ,       CODALMOXARIFADO, CODVENDEDOR,     CODUSUARIO,      ' +
          ' DATASISTEMA,     VALOR_PRIM_VIA,  VALOR_RESTO,     VALORTITULO,     ' +
          ' VALORRECEBIDO,   PARCELAS,        DESCONTO,        JUROS,           ' +
          ' FUNRURAL,        PERDA,           TROCA,           N_DOCUMENTO,     ' +
          ' OUTRO_CREDITO,   CAIXA,           SITUACAO,        CODORIGEM        ' +
          ') VALUES(';
  str_sql := str_sql + IntToStr(codRec);
  str_sql := str_sql + ', ' + QuotedStr(sqsBusca.FieldByName('TITULO').AsString);
  str_sql := str_sql + ', current_date'; // Emissao
  str_sql := str_sql + ', ' + IntToStr(sqsBusca.FieldByName('CODCLIENTE').AsInteger);
  str_sql := str_sql + ', current_date'; // Vcto
  str_sql := str_sql + ', '  + QuotedStr('5-');
  str_sql := str_sql + ', ' + IntToStr(StrToInt(Trim(sqsBusca.FieldByName('VIA').AsString)) + 1);
  str_sql := str_sql + ', 0';
  str_sql := str_sql + ', ' + IntToStr(codVendaTroca);
  str_sql := str_sql + ', ' + IntToStr(codCCustoTroca);
  str_sql := str_sql + ', ' + IntToStr(dm.varUSERID);
  str_sql := str_sql + ', ' + IntToStr(dm.varUSERID);
  str_sql := str_sql + ', current_date'; // DataSistema
  DecimalSeparator := '.';
  str_sql := str_sql + ', 0'; // Valor_prim_via
  str_sql := str_sql + ', ' + FloatToStr(edSaldo.Value*(-1)); // Valor_resto
  str_sql := str_sql + ', ' + FloatToStr(edSaldo.Value*(-1)); // Valor_Titulo
  str_sql := str_sql + ', 0'; // Valor_Recebido
  str_sql := str_sql + ', ' + IntToStr(sqsBusca.FieldByName('PARCELAS').AsInteger + 1);
  str_sql := str_sql + ', 0'; // Desconto
  str_sql := str_sql + ', 0'; // Juros
  str_sql := str_sql + ', 0'; // Funrural
  str_sql := str_sql + ', 0'; // Perda
  str_sql := str_sql + ', 0'; // Troca
  str_sql := str_sql + ', null'; // N_Documento
  str_sql := str_sql + ', 0'; // Outro Credito
  str_sql := str_sql + ', 0'; // Caixa
  str_sql := str_sql + ', null'; // Situacao
  str_sql := str_sql + ', 0'; // CodOrigem
  str_sql := str_sql + ')';
  DecimalSeparator := ',';
  dm.sqlsisAdimin.ExecuteDirect(str_sql);
end;

procedure TfTroca.BitBtn8Click(Sender: TObject);
begin
  edSaldo.Value := edSaldo.Value + (cdsMovDetPRECO.AsFloat * cdsMovDetQUANTIDADE.AsFloat);
  cdsMovDet.Delete;
end;

procedure TfTroca.buscaTitulo;
begin
  if (sqsBusca.Active) then
    sqsBusca.Close;
  sqsBusca.SQL.Clear;
  sqsBusca.SQL.Add('SELECT CODVENDA FROM VENDA ' +
    ' WHERE CODMOVIMENTO = ' + IntToStr(codMovTroca));
  sqsBusca.Open;
  codVendaTroca := sqsBusca.FieldByName('CODVENDA').AsInteger;
  if (sqsBusca.Active) then
    sqsBusca.Close;
  sqsBusca.SQL.Clear;
  sqsBusca.SQL.Add('SELECT TITULO, MAX(VIA) AS VIA, PARCELAS, CODCLIENTE FROM RECEBIMENTO ' +
    ' WHERE CODVENDA = ' + IntToStr(codVendaTroca) +
    ' GROUP BY TITULO, PARCELAS, CODCLIENTE');
  sqsBusca.Open;
  // gera um titulo com a troca
  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(COD_AREC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  CodRec := dm.c_6_genid.Fields[0].AsInteger;
  dm.c_6_genid.Close;
end;

end.
