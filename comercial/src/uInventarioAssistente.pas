unit uInventarioAssistente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Buttons, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, FMTBcd, DB, DBClient, Provider, SqlExpr, Mask,
  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, DBXpress,
  JvExStdCtrls, JvHtControls, JvCheckBox;

type
  TfInventarioAssistente = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Image1: TImage;
    Label1: TLabel;
    rgInventario: TRadioGroup;
    TabSheet2: TTabSheet;
    Label3: TLabel;
    cbLista: TComboBox;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Edit3: TEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    TabSheet5: TTabSheet;
    Label12: TLabel;
    Memo3: TMemo;
    Panel1: TPanel;
    btnVoltar: TBitBtn;
    btnAvancar: TBitBtn;
    btnCancelar: TBitBtn;
    Label2: TLabel;
    edListaNome: TEdit;
    JvDBGrid2: TJvDBGrid;
    Panel2: TPanel;
    btnImprimir: TBitBtn;
    btnGravar: TBitBtn;
    btnExcluir: TBitBtn;
    btnIncluir: TBitBtn;
    BitBtn2: TBitBtn;
    pnIncluiProduto: TPanel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    edProd: TEdit;
    edGrupo: TEdit;
    edSubGrupo: TEdit;
    btnProc: TBitBtn;
    JvDBGrid1: TJvDBGrid;
    btnIncluiTodos: TButton;
    btnInclui: TButton;
    btnRemoveTodos: TButton;
    btnRemove: TButton;
    cbCCusto: TComboBox;
    edDesc: TEdit;
    edLocalizacao: TEdit;
    chkTemEstoque: TCheckBox;
    sdsProd: TSQLDataSet;
    sdsProdCODPRO: TStringField;
    sdsProdCODPRODUTO: TIntegerField;
    sdsProdPRODUTO: TStringField;
    sdsProdUNIDADEMEDIDA: TStringField;
    sdsProdCATEGORIA: TStringField;
    sdsProdFAMILIA: TStringField;
    sdsProdLOTES: TStringField;
    sdsProdESTOQUE: TFloatField;
    dspProd: TDataSetProvider;
    cdsProd: TClientDataSet;
    cdsProdCODPRO: TStringField;
    cdsProdCODPRODUTO: TIntegerField;
    cdsProdPRODUTO: TStringField;
    cdsProdUNIDADEMEDIDA: TStringField;
    cdsProdCATEGORIA: TStringField;
    cdsProdFAMILIA: TStringField;
    cdsProdLOTES: TStringField;
    cdsProdESTOQUE: TFloatField;
    dsProd: TDataSource;
    cds_ccusto: TClientDataSet;
    cds_ccustoCODIGO: TIntegerField;
    cds_ccustoCONTA: TStringField;
    cds_ccustoNOME: TStringField;
    d_2: TDataSetProvider;
    s_2: TSQLDataSet;
    s_2CODIGO: TIntegerField;
    s_2CONTA: TStringField;
    s_2NOME: TStringField;
    BitBtn1: TBitBtn;
    Label19: TLabel;
    cbCCusto1: TComboBox;
    Label20: TLabel;
    Dta: TJvDatePickerEdit;
    sdsInvent: TSQLDataSet;
    dspInvent: TDataSetProvider;
    cdsInvent: TClientDataSet;
    cdsInventCODIVENTARIO: TStringField;
    cdsInventDATAIVENTARIO: TDateField;
    cdsInventCODPRODUTO: TIntegerField;
    cdsInventCODPRO: TStringField;
    cdsInventSITUACAO: TStringField;
    cdsInventDATAEXECUTADO: TDateField;
    cdsInventESTOQUE_ATUAL: TFloatField;
    cdsInventUN: TStringField;
    cdsInventPRODUTO: TStringField;
    cdsInventCODCCUSTO: TIntegerField;
    cdsInventLOTE: TStringField;
    cdsInventQTDE_INVENTARIO: TFloatField;
    cdsInventDATAVENCIMENTO: TDateField;
    cdsInventDATAFABRICACAO: TDateField;
    cdsInventCUSTO: TFloatField;
    dsInvent: TDataSource;
    sqlEstoque: TSQLQuery;
    sqlEstoqueLOTE: TStringField;
    sqlEstoqueMESANO: TDateField;
    sqlEstoqueSALDOESTOQUE: TFloatField;
    rgLista: TRadioGroup;
    ckCusto: TJvCheckBox;
    cbListaVenda: TJvHTComboBox;
    sdsListaInventario: TSQLDataSet;
    dspListaInventario: TDataSetProvider;
    cdsListaInventario: TClientDataSet;
    cdsListaInventarioCODIVENTARIO: TStringField;
    cdsListaInventarioDATAIVENTARIO: TDateField;
    dsListaInventario: TDataSource;
    procedure btnProcClick(Sender: TObject);
    procedure btnIncluiTodosClick(Sender: TObject);
    procedure btnRemoveTodosClick(Sender: TObject);
    procedure btnIncluiClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    listaStatus : String;
    nomeListaInventario : String;
    InventcCusto: Integer;
    procedure verificaTab(nTab: Integer);
    procedure incluirInventario;
    procedure listaInventarioAbrir;
    procedure HabilitaBotoes (aVoltar, aAvancar, aCancelar: Boolean);
    function cCustoSelecionado: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fInventarioAssistente: TfInventarioAssistente;

implementation

uses UDm;

{$R *.dfm}

{ TForm1 }

procedure TfInventarioAssistente.verificaTab(nTab: Integer);
var
  aTitulo, str_sql: string;
begin
  case nTab of
    0: aTitulo := 'Iniciando o Inventário.';
    1: begin
         aTitulo := 'Inventário.';
         if (rgInventario.ItemIndex = 0) then
         begin
           label3.Visible := False;
           label2.Visible := True;
           cbLista.Visible := False;
           edListaNome.Visible := True;
           cbCCusto1.Visible := True;
           label19.Visible := True;
           Dta.Visible := True;
           label20.Visible := True;
         end
         else begin
           label3.Visible := True;
           label2.Visible := False;
           cbLista.Visible := True;
           edListaNome.Visible := False;
           cbCCusto1.Visible := False;
           label19.Visible := False;
           Dta.Visible := False;
           label20.Visible := False;
         end;
       end;
    2: begin
         cCustoSelecionado;
       end;
  end;

end;

procedure TfInventarioAssistente.btnProcClick(Sender: TObject);
var sql, sqla: string;
begin
  sqla := '';
  sql := 'SELECT CODPRO, CODPRODUTO, cast(PRODUTO as varchar(300)) PRODUTO, ' +
    ' UNIDADEMEDIDA ,CATEGORIA , FAMILIA, LOTES ' +
    ' ,(SELECT ev.SALDOFIMACUM from ESTOQUE_VIEW_CUSTO(';
  sql := sql + QuotedStr(formatdatetime('mm/dd/yy', dta.Date));
  sql := sql + ', P.CODPRODUTO, ';
  if (cbCCusto.ItemIndex > -1) then
  begin
    if (cds_ccusto.Locate('NOME', cbCCusto.Text, [loCaseInsensitive])) then
      sql := sql + IntToStr(cds_ccustoCODIGO.AsInteger);
  end
  else begin
    sql := sql + '1';
  end;
  sql := sql + ', ' + QuotedStr('TODOS OS LOTES CADASTRADOS NO SISTEMA');
  sql := sql + ') EV) ESTOQUE ';
  sql := sql + ' FROM PRODUTOS P ';
  sql := sql + ' WHERE ((P.USA IS NULL) OR (P.USA = ' + QuotedStr('S') + ')) ';
  if (edProd.Text <> '') then
  begin
    sqla := ' AND CODPRO LIKE ' + QuotedStr(edProd.Text + '%');
  end;
  if (edDesc.Text <> '') then
  begin
    sqla := sqla + ' AND PRODUTO LIKE ' + QuotedStr('%' + edDesc.Text + '%');
  end;

  if (edLocalizacao.Text <> '') then
  begin
    sqla := sqla + ' AND LOCALIZACAO LIKE ' + QuotedStr('%' + edLocalizacao.Text + '%');
  end;

  if (edGrupo.Text <> '') then
  begin
    sqla := sqla + ' AND FAMILIA = ' + QuotedStr(edGrupo.Text);
  end;
  if (edSubGrupo.Text <> '') then
  begin
    sqla := sqla + ' AND CATEGORIA = ' + QuotedStr(edSubGrupo.Text);
  end;
  if (cbCCusto.ItemIndex > -1) then
  begin
    if (cds_ccusto.Locate('NOME', cbCCusto.Text, [loCaseInsensitive])) then
      sqla := sqla + ' AND CODALMOXARIFADO = ' + IntToStr(cds_ccustoCODIGO.AsInteger);
  end;

  if (cdsProd.Active) then
    cdsProd.Close;
  cdsProd.CommandText := sql + sqla;
  cdsProd.Open;

end;

procedure TfInventarioAssistente.btnIncluiTodosClick(Sender: TObject);
begin
  {if (edLista.Text = '') then
  begin
    MessageDlg('Informe o nome da Lista a executar.', mtWarning, [mbOK], 0);
    edLista.SetFocus;
    exit;
  end;}
  incluirInventario;
  listaInventarioAbrir;
  MessageDlg('Lista inserida com sucesso.', mtInformation, [mbOK], 0);
end;

procedure TfInventarioAssistente.btnRemoveTodosClick(Sender: TObject);
begin
  btnExcluir.Click;
end;

procedure TfInventarioAssistente.btnIncluiClick(Sender: TObject);
var sql :string;
    TD : TTransactionDesc;
begin
  if (cdsInvent.Active) then
  begin
    sql := 'INSERT INTO INVENTARIO (CODIVENTARIO, DATAIVENTARIO, CODPRODUTO,' +
      ' CODPRO, SITUACAO, UN, CODCCUSTO, ESTOQUE_ATUAL) VALUES ('  +
      QuotedStr(nomeListaInventario) + ' , ' + QuotedStr(formatdatetime('mm/dd/yyyy', Now)) +
      ', ' + IntToStr(cdsProd.Fields[1].AsInteger) + ', ' +
      QuotedStr(cdsProd.Fields[0].AsString) + ', ' +QuotedStr('A') + ', ' +
      QuotedStr(cdsProdUNIDADEMEDIDA.AsString);
    sql := sql + ', ' + IntToStr(InventCCusto);
    DecimalSeparator := '.';
    sql := sql + ', ' + FloatToStr(cdsProd.fieldByname('ESTOQUE').AsFloat);
    DecimalSeparator := ',';
    sql := sql + ')';
    try
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      dm.sqlsisAdimin.StartTransaction(TD);
      dm.sqlsisAdimin.ExecuteDirect(sql);
      dm.sqlsisAdimin.Commit(TD);
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
      end;
    end;
  end;
  listaInventarioAbrir;
end;

procedure TfInventarioAssistente.btnRemoveClick(Sender: TObject);
begin
  if (cdsInvent.Active) then
  begin
    dm.sqlsisAdimin.ExecuteDirect('DELETE FROM INVENTARIO WHERE CODIVENTARIO = ' +
      QuotedStr(nomeListaInventario) + ' and CODPRODUTO = ' + IntToStr(cdsInventCODPRODUTO.AsInteger) +
      ' AND SITUACAO = ' + QuotedStr('A'));
      cdsInvent.Close;
      cdsInvent.Open;
  end;
end;

procedure TfInventarioAssistente.incluirInventario;
var sql, lote :string;
    TD : TTransactionDesc;
begin
  cdsProd.DisableControls;
  cdsProd.First;
  try
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
    While not cdsProd.Eof do
    begin
      if (cdsInvent.Active) then
      begin
        lote := '';
        if (cdsProdLOTES.AsString = 'S') then
        begin
          if (sqlEstoque.Active) then
            sqlEstoque.Close;
          sqlEstoque.ParamByName('pProd').AsInteger := cdsProd.Fields[1].AsInteger;
          sqlEstoque.Open;

          while not sqlEstoque.Eof do
          begin
            lote := sqlEstoqueLOTE.asString;
            sql := 'INSERT INTO INVENTARIO (CODIVENTARIO, DATAIVENTARIO, CODPRODUTO,' +
              ' CODPRO, SITUACAO, UN, CODCCUSTO, LOTE, ESTOQUE_ATUAL) VALUES ('  +
              QuotedStr(nomeListaInventario) + ' , ' + QuotedStr(formatdatetime('mm/dd/yyyy', Now)) +
              ', ' + IntToStr(cdsProd.Fields[1].AsInteger) + ', ' +
              QuotedStr(cdsProd.Fields[0].AsString) + ', ' + QuotedStr('A') + ', ' +
              QuotedStr(cdsProdUNIDADEMEDIDA.AsString) ;
            if (cbCCusto1.ItemIndex > -1) then
            begin
              sql := sql + ', ' + IntToStr(InventcCusto) + ',';
            end
            else begin
              sql := sql + ', null,';
            end;
            sql := sql + ', ' + QuotedStr(lote);
            DecimalSeparator := '.';
            sql := sql + ', ' + FloatToStr(cdsProd.fieldByname('ESTOQUE').AsFloat);
            DecimalSeparator := ',';
            sql := sql + ')';
            if (chkTemEstoque.Checked) then
            begin
              if (cdsProd.fieldByname('ESTOQUE').AsFloat = 0) then
                sqlEstoque.Next
              else
                dm.sqlsisAdimin.ExecuteDirect(sql);
            end
            else begin
              dm.sqlsisAdimin.ExecuteDirect(sql);
              sqlEstoque.Next;
            end;
          end;
        end
        else begin
          sql := 'INSERT INTO INVENTARIO (CODIVENTARIO, DATAIVENTARIO, CODPRODUTO,' +
            ' CODPRO, SITUACAO, UN, CODCCUSTO, LOTE, ESTOQUE_ATUAL) VALUES ('  +
            QuotedStr(nomeListaInventario) + ' , ' + QuotedStr(formatdatetime('mm/dd/yyyy', Now)) +
            ', ' + IntToStr(cdsProd.Fields[1].AsInteger) + ', ' +
            QuotedStr(cdsProd.Fields[0].AsString) + ', ' + QuotedStr('A') + ', ' +
            QuotedStr(cdsProdUNIDADEMEDIDA.AsString) ;
          if (cbCCusto1.ItemIndex > -1) then
          begin
              sql := sql + ', ' + IntToStr(InventcCusto) + ',';
          end
          else begin
            sql := sql + ', null,';
          end;
          sql := sql + QuotedStr(lote);
          DecimalSeparator := '.';
          sql := sql + ', ' + FloatToStr(cdsProd.fieldByname('ESTOQUE').AsFloat);
          DecimalSeparator := ',';
          sql := sql + ')';
          if (chkTemEstoque.Checked) then
          begin
            if (cdsProd.fieldByname('ESTOQUE').AsFloat = 0) then
            begin
              //cdsProd.Next;
            end
            else
              dm.sqlsisAdimin.ExecuteDirect(sql);
          end
          else begin
            dm.sqlsisAdimin.ExecuteDirect(sql);
          end;
        end;
      end;
      cdsProd.Next;
    end;
    cdsProd.EnableControls;
    dm.sqlsisAdimin.Commit(TD);
  except
    on E : Exception do
    begin
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
    end;
  end;
end;

procedure TfInventarioAssistente.listaInventarioAbrir;
var sqlb : string;
begin
  {if (ckCusto.Checked) then
  begin
    if (cbListaVenda.ItemIndex = -1) then
    begin
      MessageDlg('Foi marcado a opção utilizar Custo da Lista de Venda, mas não foi informado de qual lista.', mtWarning, [mbOK], 0);
      exit;
    end;
  end;}
  if (rgInventario.ItemIndex = 0) then
  begin
    if (edListaNome.Text = '') then
    begin
      MessageDlg('Digite o Nome para a Lista do Inventário (Ex.: Lista_02_2014)', mtWarning, [mbOK], 0);
      edListaNome.SetFocus;
      exit;
    end;
    if (cCustoSelecionado = False) then
    begin
      MessageDlg('Informe o Centro de Resultado para gerar o Inventário', mtWarning, [mbOK], 0);
      cbCCusto.SetFocus;
      exit;
    end;
    nomeListaInventario := edListaNome.Text;
  end;
  if (rgInventario.ItemIndex = 1) then
  begin
    nomeListaInventario := cbLista.Text;
  end;

  sqlb := '';

 // if( (edLista.Text <> '') and (Dta.Text <> '  /  /    ')) then
  begin
    if (cdsInvent.Active) then
      cdsInvent.Close;

    if (rgLista.ItemIndex = 0) then
    begin
      sqlb := ' WHERE i.SITUACAO = ' + QuotedStr('A');
    end;
    if (rgLista.ItemIndex = 1) then
    begin
      sqlb := ' WHERE i.SITUACAO = ' + QuotedStr('G');
    end;

    sqlb := sqlb + ' AND i.CODIVENTARIO LIKE ' + QuotedStr(nomeListaInventario + '%');


    if (ckCusto.Checked) then // O Custo do produto vira da Lista de Venda
    begin
      if (dm.cdsBusca.Active) then
        dm.cdsBusca.Close;
      dm.cdsBusca.CommandText := 'SELECT r.CODLISTA ' +
        '  FROM LISTAPRECO_VENDA r' +
        ' WHERE r.NOMELISTA = ' + QuotedStr(cbListaVenda.Text);
      dm.cdsBusca.Open;
      if (dm.cdsBusca.IsEmpty) then
      begin
        MessageDlg('Lista de Venda não encontrada.', mtWarning, [mbOK], 0);
        exit;
      end;
      sqlb := sqlb + ' AND lv.CODLISTA = ' + IntToStr(dm.cdsBusca.fieldByName('CODLISTA').AsInteger);

      cdsInvent.CommandText := 'SELECT i.*, cast(p.produto as varchar(300)) produto, ' +
        ' COALESCE(lv.PRECOCOMPRA,0) CUSTO FROM INVENTARIO i ' +
        ' INNER JOIN PRODUTOS p ON p.CODPRODUTO = i.CODPRODUTO ' +
        ' INNER JOIN LISTAPRECO_VENDADET lv ON lv.CODPRODUTO = i.CODPRODUTO ' +
        sqlb + ' order by DATAIVENTARIO DESC ';
    end
    else begin
      cdsInvent.CommandText := 'SELECT i.*, cast(p.produto as varchar(300)) produto, ' +
        ' CASE WHEN p.TIPOPRECOVENDA = ' + QuotedStr('M') + ' THEN COALESCE(p.PRECOMEDIO, 0) ' +
        ' ELSE COALESCE(p.VALORUNITARIOATUAL,0) END CUSTO FROM INVENTARIO i ' +
        ' inner join produtos p on p.codproduto = i.codproduto ' + sqlb + ' order by DATAIVENTARIO DESC ';
    end;
    cdsInvent.Open;
  end;

  if (cdsListaInventario.Active) then
    cdsListaInventario.Close;

  if (rgLista.ItemIndex = 0) then
  begin
    sqlb := ' WHERE i.SITUACAO = ' + QuotedStr('A');
  end;
  if (rgLista.ItemIndex = 1) then
  begin
    sqlb := ' WHERE i.SITUACAO = ' + QuotedStr('G');
  end;

  sqlb := sqlb + ' AND i.CODIVENTARIO LIKE ' + QuotedStr(nomeListaInventario + '%');

  cdsListaInventario.CommandText := 'SELECT distinct i.CODIVENTARIO, i.DATAIVENTARIO FROM INVENTARIO i ' + sqlb;
  cdsListaInventario.Open;
end;

procedure TfInventarioAssistente.BitBtn2Click(Sender: TObject);
begin
  pnIncluiProduto.Visible := True;
end;

procedure TfInventarioAssistente.BitBtn1Click(Sender: TObject);
begin
  pnIncluiProduto.Visible := False;
end;

procedure TfInventarioAssistente.HabilitaBotoes(aVoltar, aAvancar, aCancelar: Boolean);
begin
  btnVoltar.Enabled := aVoltar;
  btnAvancar.Enabled := aAvancar;
  btnCancelar.Enabled := aCancelar;
end;

procedure TfInventarioAssistente.FormShow(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet1;
  VerificaTab(PageControl1.ActivePageIndex);
end;

function TfInventarioAssistente.cCustoSelecionado: Boolean;
begin
  if (cds_ccusto.Locate('NOME', cbCCusto.Text, [loCaseInsensitive])) then
    InventCCusto := cds_ccustoCODIGO.AsInteger
  else begin
    MessageDlg('Local de Estoque Inválido.', mtWarning, [mbOK], 0);
    cbCCusto.SetFocus;
    result := False;
    exit;
  end;

  if (InventCCusto = 0) then
  begin
    MessageDlg('Informe o Local de Estoque.', mtWarning, [mbOK], 0);
    cbCCusto.SetFocus;
    result := False;
    exit;
  end;
  result := True;

end;

end.
