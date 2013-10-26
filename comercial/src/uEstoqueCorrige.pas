unit uEstoqueCorrige;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBXpress, Mask, JvExMask, JvToolEdit, FMTBcd, DB,
  SqlExpr, DBClient, Provider, ComCtrls, JvExComCtrls, JvProgressBar ,umovimento ,DateUtils,
  Buttons , uVendaCls;

type
  TfEstoqueCorrige = class(TForm)
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    JvDateEdit1: TJvDateEdit;
    Label5: TLabel;
    JvDateEdit2: TJvDateEdit;
    Label7: TLabel;
    sqlQ: TSQLQuery;
    Button2: TButton;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    cds: TClientDataSet;
    JvProgressBar1: TJvProgressBar;
    sdsA: TSQLDataSet;
    dspA: TDataSetProvider;
    cdsA: TClientDataSet;
    SQLDataSet2: TSQLDataSet;
    DataSetProvider2: TDataSetProvider;
    cdsB: TClientDataSet;
    prog2: TJvProgressBar;
    Label6: TLabel;
    BitBtn1: TBitBtn;
    Label8: TLabel;
    cbGrupo: TComboBox;
    lblUltimo: TLabel;
    Button3: TButton;
    lblAtualizando: TLabel;
    sqlR: TSQLQuery;
    lblProduto: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    dataUltimoFechamento: TDate;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEstoqueCorrige: TfEstoqueCorrige;

implementation

uses UDm, UDMNF, uEstoque;

{$R *.dfm}

procedure TfEstoqueCorrige.Button1Click(Sender: TObject);
var
  TD: TTransactionDesc;
  Save_Cursor:TCursor;
  codPro1, codPro2, progresso : integer;
  sqlStr, sqlPreco: String;
Begin
  if ((dataUltimoFechamento > JvDateEdit1.Date) or (dataUltimoFechamento > JvDateEdit2.Date)) then
  begin
    MessageDlg('A  data do período atual, não pode ser menor do que a do último fechamento.', mtWarning, [mbOK], 0);
    exit;
  end;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  progresso := 1;
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
    if (cdsA.Active) then
      cdsA.close;
    cdsA.CommandText := 'SELECT CODPRODUTO, CODPRO FROM PRODUTOS WHERE ((TIPO <> ' +
        QuotedStr('SERV') + ') OR (TIPO IS NULL))';
    cdsA.Open;

    if (cdsB.Active) then
    cdsB.Close;

    cdsB.CommandText := 'select distinct m.CODALMOXARIFADO from movimento m ' +
      ' where m.DATAMOVIMENTO BETWEEN ' + QuotedStr(Formatdatetime('mm/dd/yyyy', JvDateEdit1.Date-10)) +
      ' AND ' + QuotedStr(Formatdatetime('mm/dd/yyyy', JvDateEdit2.Date+10));
    cdsB.Open;

    prog2.Max := cdsA.RecordCount;
    prog2.Position := 0;

    JvProgressBar1.Max := cdsB.RecordCount*cdsA.RecordCount;
    JvProgressBar1.Position := 0;

    While not cdsB.eof do  // Percorro os CCUSTOS
    begin
      cdsA.First;
      // Pego o Estoque de Cada Item
      while not cdsA.Eof do
      begin
        lblProduto.Caption := 'Produto : ' + cdsA.FieldByName('CODPRO').AsString;
        if (sqlQ.Active) then
          sqlQ.Close;
        sqlStr := 'select * from ESTOQUE_VIEW_CUSTO(' +
                 QuotedStr(Formatdatetime('mm/dd/yyyy', JvDateEdit2.Date)) +
                 ', ' + IntToStr(cdsA.FieldByName('CODPRODUTO').asinteger) +
                 ', ' + IntToStr(cdsB.FieldByName('CODALMOXARIFADO').asinteger) +
                 ', ' + QuotedStr('TODOS OS LOTES CADASTRADOS NO SISTEMA') +
                 ')';
        sqlQ.SQL.Clear;
        sqlQ.SQL.Add(sqlStr);
        sqlQ.Open;

        if (sqlR.Active) then
          sqlR.Close;
        sqlR.SQL.Clear;

        sqlR.SQL.Add('select ev.CUSTOMEDIO, ev.CUSTOENTRADAS ' +
          ' from ESTOQUE_CUSTOMEDIO(' +
          QuotedStr(Formatdatetime('mm/dd/yyyy', JvDateEdit1.Date)) +
          ', ' +
          QuotedStr(Formatdatetime('mm/dd/yyyy', JvDateEdit2.Date)) +
          ', ' + IntToStr(cdsA.FieldByName('CODPRODUTO').asinteger) + ') ev ');

        sqlR.Open;

        DecimalSeparator := '.';
        sqlStr := 'INSERT INTO ESTOQUEMES (CODPRODUTO, LOTE, MESANO, QTDEENTRADA, ' +
          'QTDECOMPRA, QTDEDEVCOMPRA, QTDEDEVVENDA, QTDESAIDA, QTDEVENDA, QTDEPERDA, PRECOCUSTO, ' +
          'PRECOCOMPRA, PRECOVENDA, CENTROCUSTO, SALDOMESANTERIOR, PRECOCOMPRAULTIMA, QTDEINVENTARIO' +

          ') VALUES (';

        dm.sqlsisAdimin.StartTransaction(TD);
        try

          while not sqlQ.Eof do
          begin
            sqlStr := sqlStr + IntToStr(cdsA.FieldByName('CODPRODUTO').asinteger) + ', ';
            sqlStr := sqlStr + QuotedStr(sqlQ.FieldByName('LOTES').AsString) + ', ';
            sqlStr := sqlStr + QuotedStr(Formatdatetime('mm/dd/yyyy', JvDateEdit2.Date)) + ', ';
            sqlStr := sqlStr + FloatToStr(sqlQ.FieldByName('ENTRADA').AsFloat) + ', ';
            sqlStr := sqlStr + '0, '; //FloatToStr(Self.QtdeCompra) + ', ';
            sqlStr := sqlStr + '0, '; //FloatToStr(Self.QtdeDevCompra) + ', ';
            sqlStr := sqlStr + '0, '; //FloatToStr(Self.QtdeDevVenda) + ', ';
            sqlStr := sqlStr + FloatToStr(sqlQ.FieldByName('SAIDA').AsFloat) + ', ';
            sqlStr := sqlStr + '0, '; //FloatToStr(Self.QtdeVenda) + ', ';
            sqlStr := sqlStr + '0, '; //FloatToStr(Self.QtdePerda) + ', ';
            sqlStr := sqlStr + FloatToStr(sqlR.FieldByName('CUSTOMEDIO').asFloat) + ', ';
            sqlStr := sqlStr + FloatToStr(sqlR.FieldByName('CUSTOENTRADAS').asFloat) + ', ';
            sqlStr := sqlStr + FloatToStr(sqlQ.FieldByName('VALORVENDA').asFloat) + ', ';
            sqlStr := sqlStr + IntToStr(cdsB.FieldByName('CODALMOXARIFADO').asinteger) + ', ';
            if (sqlQ.FieldByName('SALDOINIACUM').asFloat < 0.000001) then
              sqlStr := sqlStr + '0, '
            else
              sqlStr := sqlStr + FloatToStr(sqlQ.FieldByName('SALDOINIACUM').asFloat) + ', ';
            sqlStr := sqlStr + '0, ';
            sqlStr := sqlStr + '0 ';
            sqlStr := sqlStr + ')';
            dm.sqlsisAdimin.ExecuteDirect(sqlStr);
            sqlQ.Next;
          end;
          dm.sqlsisAdimin.Commit(TD);
        except
          on E : Exception do
          begin
            ShowMessage('Classe: '+ e.ClassName + chr(13) + 'Mensagem: '+ e.Message);
            DecimalSeparator := ',';
            exit;
          end;
        end;

        DecimalSeparator := ',';
        Prog2.Position := cdsA.RecNo;
        JvProgressBar1.Position := progresso;
        progresso := progresso + 1;
        cdsA.Next;
      end;
      cdsB.Next;
    end;
    lblUltimo.Caption := ' Ultimo fechamento : ' + DateToStr(JvDateEdit2.Date);
    dataUltimoFechamento := JvDateEdit2.Date;
    MessageDlg('Estoque atualizado com sucesso.', mtInformation, [mbOK], 0);
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

procedure TfEstoqueCorrige.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfEstoqueCorrige.Button2Click(Sender: TObject);
var str, tipo: string;
  FEstoque : TEstoque;
  Save_Cursor:TCursor;
  td : TTRansactionDesc;
  codProduto : Integer;
begin
  FEstoque := TEstoque.Create;
  Save_Cursor := Screen.Cursor;
  Try
    Screen.Cursor := crHourGlass;

    if (cdsB.Active) then
      cdsB.Close;
    str := 'SELECT DISTINCT m.CODMOVIMENTO, m.CODNATUREZA ';

    str := str + ',  CASE WHEN m.CODNATUREZA < 3 THEN m.DATAMOVIMENTO';
    str := str + '  WHEN m.CODNATUREZA = 3 THEN V.DATAVENDA';
    str := str + '  WHEN m.CODNATUREZA = 4 THEN C.DATACOMPRA END DATAMOVIMENTO ';
    str := str + ', md.CODPRODUTO, md.LOTE, m.CODALMOXARIFADO  ';
    str := str + '  FROM MOVIMENTO m';
    str := str + ' INNER JOIN MOVIMENTODETALHE md on md.CODMOVIMENTO = m.CODMOVIMENTO';
    str := str + ' INNER JOIN PRODUTOS prod on prod.CODPRODUTO = md.CODPRODUTO';
    str := str + '  LEFT OUTER JOIN VENDA  V ON V.CODMOVIMENTO = M.CODMOVIMENTO';
    str := str + '  LEFT OUTER JOIN COMPRA C ON C.CODMOVIMENTO = M.CODMOVIMENTO';
    str := str + ' WHERE md.BAIXA is not null ' ;
    str := str + '   AND m.CODNATUREZA < 5' ;
    str := str + '   AND m.DATAMOVIMENTO BETWEEN ';
    str := str + QuotedStr(Formatdatetime('mm/dd/yyyy', StrToDate(JvDateEdit1.Text)));
    str := str + '   AND ' ;
    str := str + QuotedStr(Formatdatetime('mm/dd/yyyy', StrToDate(JvDateEdit2.Text)));
    if (Edit1.Text <> '') then
    begin
      str := str + ' AND prod.CODPRO = ' + QuotedStr(Edit1.Text); // + ' AND ' +  QuotedStr(Edit2.Text);
    end;

    if (cbGrupo.Text <> '') then
    begin
      str := str + ' AND prod.FAMILIA = ' + QuotedStr(cbGrupo.Text); // + ' AND ' +  QuotedStr(Edit2.Text);
    end;

    str := str + ' ORDER BY  3, 1, 2, 4, 5, 6';
    cdsB.CommandText := str;
    cdsB.Open;

    Label6.Caption := cdsB.FieldByName('CODMOVIMENTO').asString;
    FEstoqueCorrige.Refresh;
    JvProgressBar1.Max := cdsB.RecordCount;
    JvProgressBar1.Position := 0;

    dm.sqlsisAdimin.StartTransaction(TD);
    Try
      While not cdsB.Eof do
      begin
        str := 'UPDATE MOVIMENTODETALHE SET STATUS = NULL ' +
          ' WHERE CODMOVIMENTO = ' + IntToStr(cdsB.FieldByName('CODMOVIMENTO').AsInteger);
        str := str + ' AND CODPRODUTO = ' + IntToStr(cdsB.FieldByName('CODPRODUTO').asinteger);
        dm.sqlsisAdimin.ExecuteDirect(str);
        str := 'DELETE  FROM ESTOQUEMES ';
        str := str + ' WHERE CODPRODUTO  = ' + IntToStr(cdsB.FieldByName('CODPRODUTO').asinteger);
        if (cdsB.FieldByName('LOTE').asString <> '') then
        begin
          str := str + '   AND LOTE        = ' + QuotedStr(cdsB.FieldByName('LOTE').asString);
        end;
        str := str + '   AND CENTROCUSTO = ' + IntToStr(cdsB.FieldByName('CODALMOXARIFADO').asinteger);
        str := str + '   AND MESANO     <= ' + QuotedStr(Formatdatetime('mm/dd/yyyy', cdsB.FieldByName('DATAMOVIMENTO').AsDateTime));
        dm.sqlsisAdimin.ExecuteDirect(str);
        cdsB.Next;
      end;
      dm.sqlsisAdimin.Commit(TD);
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
      end;
    end;

    cdsB.First;

    While not cdsB.Eof do
    begin
      JvProgressBar1.Position := cdsB.RecNo;

      Case (cdsB.FieldByName('CODNATUREZA').AsInteger ) of
        1 : tipo := 'ENTRADA';
        2 : tipo := 'SAIDA';
        3 : tipo := 'VENDA';
        4 : tipo := 'COMPRA';
      end;
      dm.sqlsisAdimin.StartTransaction(TD);
      Try

        festoque.baixaEstoque(cdsB.FieldByName('CODMOVIMENTO').AsInteger, cdsB.FieldByName('DATAMOVIMENTO').AsDateTime, tipo);
        dm.sqlsisAdimin.Commit(TD);

      except
        on E : Exception do
        begin
          ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
          dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
        end;
      end;
      cdsb.next;

    end;


    MessageDlg('Estoque atualizado com sucesso.', mtInformation, [mbOK], 0);
  Finally
    Label6.Caption := 'Codigo Movimento : ' + IntToStr(cdsB.FieldByName('CODMOVIMENTO').asInteger);
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
    FEstoque.Free;
  end;

      {    if (cds.Active) then
      cds.Close;
    str := 'SELECT FIRST 1 md.CODDETALHE, m.CODNATUREZA, md.STATUS,';
    str := str + '  CASE WHEN m.CODNATUREZA < 3 THEN m.DATAMOVIMENTO';
    str := str + '  WHEN m.CODNATUREZA = 3 THEN V.DATAVENDA';
    str := str + '  WHEN m.CODNATUREZA = 4 THEN C.DATACOMPRA END DATAMOVIMENTO,';
    str := str + '  md.QUANTIDADE, md.PRECO,';
    str := str + '  md.LOTE, m.CODALMOXARIFADO, md.CODPRODUTO';
    str := str + '  FROM MOVIMENTO m';
    str := str + ' INNER JOIN MOVIMENTODETALHE md on md.CODMOVIMENTO = m.CODMOVIMENTO';
    str := str + ' INNER JOIN PRODUTOS prod on prod.CODPRODUTO = md.CODPRODUTO';
    str := str + '  LEFT OUTER JOIN VENDA  V ON V.CODMOVIMENTO = M.CODMOVIMENTO';
    str := str + '  LEFT OUTER JOIN COMPRA C ON C.CODMOVIMENTO = M.CODMOVIMENTO';
    str := str + ' WHERE md.BAIXA is not null ' ;
    if(cdsB.FieldByName('LOTE').AsString <> '')then
      begin
       str := str + '   AND MD.LOTE  = ' + QuotedStr(cdsB.FieldByName('LOTE').AsString);
      end;
    str := str + '   AND m.CODNATUREZA < 5' ;
    str := str + '   AND m.DATAMOVIMENTO BETWEEN ';
    str := str + QuotedStr(Formatdatetime('mm/dd/yyyy', StrToDate(JvDateEdit1.Text)));
    str := str + '   AND ' ;
    str := str + QuotedStr(Formatdatetime('mm/dd/yyyy', StrToDate(JvDateEdit2.Text)));
    str := str + '   AND md.CODPRODUTO = ' + InttoStr(cdsB.FieldByName('CODPRODUTO').asInteger);
    str := str + ' ORDER BY 9, 4 DESC, 1';
    cds.CommandText := str;
    cds.Open;
    str := IntToStr(cds.RecordCount);
    while not cds.Eof do
    begin
      str := 'select * FROM SPESTOQUEFILTRO('  + QuotedStr(Formatdatetime('mm/dd/yyyy', StrToDate(JvDateEdit1.Text)));
      str := str + ', ';
      str := str + QuotedStr(Formatdatetime('mm/dd/yyyy', StrToDate(JvDateEdit2.Text)));
      str := str + ', ';
      str := str + IntToStr(cds.FieldByName('CODPRODUTO').AsInteger) + ' ,' ;
      str := str + IntToStr(cds.FieldByName('CODPRODUTO').AsInteger);
      str := str + ',''TODOS SUBGRUPOS DO CADASTRO CATEGORIA''';
      str := str + ', 100';
      str := str + ', 1 ';
      str := str + ', ''TODAS AS MARCAS CADASTRADAS NO SISTEMA''';

      if(cdsB.FieldByName('LOTE').AsString <> '')then
      begin
        str := str + ', ';
        str := str +  QuotedStr(cdsB.FieldByName('LOTE').AsString);
      end
      else
        str := str + ', ''TODOS OS LOTES CADASTRADOS NO SISTEMA''';
      str := str + ',''TODOS OS GRUPOS CADASTRADOS NO SISTEMA'')';
      if (cdsA.Active) then
        cdsA.Close;
      cdsA.CommandText := str;
      if (sdsA.Active) then
        sdsA.Close;
      cdsA.Open;

      Prog2.Max := cdsA.RecordCount;
      Prog2.Position := 0;

      While not cdsA.Eof do
      begin
        Prog2.Position := cdsA.RecNo;
<<<<<<< .mine
        //cdsA.Last;  // So interessa a ultima linha
=======
//        cdsA.Last;  // So interessa a ultima linha
        if (cdsC.Active) then
          cdsC.Close;
        cdsC.CommandText := 'Select m.DATAMOVIMENTO, md.STATUS ' +
          '  from MOVIMENTO m, MOVIMENTODETALHE md ' +
          ' where m.CODMOVIMENTO = md.CODMOVIMENTO ' +
          '   and m.CODMOVIMENTO = ' + IntToStr(cdsACODMOV.AsInteger) +
          '   and md.CODPRODUTO  = ' + IntToStr(cds.FieldByName('CODPRODUTO').AsInteger);
        if (sdsC.Active) then
          sdsC.Close;
        cdsC.Open;
>>>>>>> .r1383

<<<<<<< .mine
        if ((cdsA.FieldByName('SALDOFIMACUM').AsFloat <> 0)) then
=======
        if (cdsC.FieldByName('STATUS').IsNull) then
>>>>>>> .r1383
        begin
          if (cdsA.FieldByName('TIPOMOVIMENTO').AsString = 'COMPRA') then
          begin
            dmnf.baixaEstoque(cdsACODMOV.AsInteger, cdsCDATAMOVIMENTO.AsDateTime, 'COMPRA');
          end;
          if (cdsA.FieldByName('TIPOMOVIMENTO').AsString = 'Entrada') then
          begin
            dmnf.baixaEstoque(cdsACODMOV.AsInteger, cdsCDATAMOVIMENTO.AsDateTime, 'ENTRADA');
          end;
          if (cdsA.FieldByName('TIPOMOVIMENTO').AsString = 'Saída') then
          begin
            dmnf.baixaEstoque(cdsACODMOV.AsInteger, cdsCDATAMOVIMENTO.AsDateTime, 'SAIDA');
          end;
          if (cdsA.FieldByName('TIPOMOVIMENTO').AsString = 'Venda') then
          begin
            dmnf.baixaEstoque(cdsACODMOV.AsInteger, cdsCDATAMOVIMENTO.AsDateTime, 'VENDA');
          end;
        end;
        cdsA.Next;
      end;
      cds.Next;
    end;
 }
end;

procedure TfEstoqueCorrige.BitBtn1Click(Sender: TObject);
var fmov : TMovimento;
    fven : TVendaCls;
    sql_sp , str : string;
    codMov : Integer;
    TD: TTransactionDesc;
begin
  fmov := TMovimento.Create;
  fven := TVendaCls.Create;
  dm.sqlsisAdimin.StartTransaction(TD);
  if (cdsB.Active) then
  cdsB.Close;
  str := 'SELECT * from estoquemes ';
  str := str + ' WHERE mesano between ' ;
  str := str + QuotedStr(Formatdatetime('mm/dd/yyyy', StrToDate(JvDateEdit1.Text)));
  str := str + '   AND ' ;
  str := str + QuotedStr(Formatdatetime('mm/dd/yyyy', StrToDate(JvDateEdit2.Text)));
  str := str + '   AND ' ;
  str := str + ' saldoestoque > 0 ' ;
  cdsB.CommandText := str;
  cdsB.Open;

  prog2.Max := cdsB.RecordCount;
  prog2.Position := 0;

  fMov.CodMov      := 0;
  fMov.CodNatureza := 2;  // saida
  fMov.DataMov     := StrToDate('30/06/2011');
  fMov.CodCliente  := 0;
  fMov.Status      := 0;
  fMov.CodUsuario  := 1;
  fMov.CodVendedor := 1;
  fMov.CodFornec   := 0;
  fMov.CodCCusto   := cdsB.FieldByName('CENTROCUSTO').AsInteger;

  codMov := fMov.inserirMovimento(0);

  While not cdsB.Eof do
  begin
    prog2.Position := cdsB.RecNo;
    // Detalhe Natureza 6
    fMov.MovDetalhe.CodMov     := codMov;
    fMov.MovDetalhe.CodProduto := cdsB.FieldByName('CODPRODUTO').AsInteger;
    fMov.MovDetalhe.Qtde       := cdsB.FieldByName('SALDOESTOQUE').AsFloat; //CODPRODUTO cdsPedidoRECEBIDO.asFloat;
    fMov.MovDetalhe.Preco      := 1 ;
    fMov.MovDetalhe.Descricao  := ' ';
    fMov.MovDetalhe.Desconto   := 0;
    fMov.MovDetalhe.Un         := 'PC';
    fMov.MovDetalhe.Lote       := cdsB.FieldByName('LOTE').AsString;
    fMov.MovDetalhe.inserirMovDet;

    cdsB.Next;
  end;

  fven.CodMov               := codMov;
  fven.DataVenda            := StrToDate('30/06/2011');
  fven.DataVcto             := StrToDate('30/06/2011');
  fven.Serie                := 'O';
  fven.NotaFiscal           := codMov;
  fven.CodCliente           := 1;
  fven.CodVendedor          := 1;
  fven.CodCCusto            := 51;
  fven.ValorPagar           := 0;
  fven.NParcela             := 1;
  fven.inserirVenda(0);

  dmnf.baixaEstoque(codMov, StrToDate('30/06/2011'), 'VENDA'); 

  dm.sqlsisAdimin.Commit(TD);


end;

procedure TfEstoqueCorrige.FormCreate(Sender: TObject);
var sqlR: String;
begin
  sqlR := 'select max(mesano) AS ULTIMO from ESTOQUEMES';
  sqlQ.SQL.Clear;
  sqlQ.SQL.Add(sqlR);
  sqlQ.Open;
  if (not sqlQ.IsEmpty) then
  begin
    lblUltimo.Caption := ' Ultimo fechamento : ' + DateToStr(sqlQ.fieldByName('ULTIMO').AsDateTime);
    dataUltimoFechamento := sqlQ.fieldByName('ULTIMO').AsDateTime;
  end;
  sqlQ.Close;   
  {With DM do
  begin
    if (not cds_Familia.Active) then
      cds_Familia.Open;
    cbGrupo.Items.Clear;
    while not cds_Familia.Eof do
    begin
      cbGrupo.Items.Add(cds_familiaDESCFAMILIA.AsString);
      cds_Familia.Next;
    end;
    cds_Familia.Close;
  end;}
end;

procedure TfEstoqueCorrige.Button3Click(Sender: TObject);
var str: String;
  Save_Cursor:TCursor;
begin
  if  MessageDlg('Confirma a atualização do estoque ? ',
    mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
  Save_Cursor := Screen.Cursor;
  Try
    lblAtualizando.Visible := True;
    lblAtualizando.Caption := 'Atualizando ....';  
    Screen.Cursor := crHourGlass;
    dm.EstoqueAtualiza(0);
    if (cdsB.Active) then
    cdsB.Close;
    str := 'SELECT count(CODMOVIMENTO) CODMOV from MOVIMENTO ';
    cdsB.CommandText := str;
    cdsB.Open;
    cdsB.Close;
    str := 'SELECT CODMOVIMENTO from MOVIMENTO ';
    cdsB.CommandText := str;
    cdsB.Open;
    prog2.Max := cdsB.RecordCount;
    while not cdsb.Eof do
    begin
      sleep(350);
      prog2.Position := cdsB.RecNo;
      cdsB.Next;
    end;
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
    lblAtualizando.Caption := 'Atualizado.';
  end;
  MessageDlg('Estoque atualizado com sucesso.', mtInformation, [mbOK], 0);
end;

end.
