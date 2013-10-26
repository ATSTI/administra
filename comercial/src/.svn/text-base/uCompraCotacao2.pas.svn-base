unit uCompraCotacao2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, FMTBcd, DBClient, Provider, SqlExpr, JvBaseEdits, Mask,
  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  Grids, DBGrids, JvExDBGrids,  dbxpress, JvDBGrid, DBCtrls;

type
  TfCompraCotacao2 = class(TfPai_new)
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    dsCotacao: TDataSource;
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
    DataSource1: TDataSource;
    jvdbgrd2: TJvDBGrid;
    GroupBox4: TGroupBox;
    Label3: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    dtEntrega: TJvDatePickerEdit;
    edPreco: TJvCalcEdit;
    edObservacao: TEdit;
    edDesconto: TJvCalcEdit;
    edIPI: TJvCalcEdit;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    cbPrazo: TComboBox;
    Label6: TLabel;
    edFrete: TJvCalcEdit;
    Label9: TLabel;
    dtCotacao: TJvDatePickerEdit;
    Label10: TLabel;
    Edit3: TEdit;
    cdsCotacaoTotal: TAggregateField;
    cdsCotacaoCOTACAO_CODSOLIC: TIntegerField;
    cdsCotacaoRAZAOSOCIAL: TStringField;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    sqlPedido: TSQLQuery;
    dspPedido: TDataSetProvider;
    cdsPedido: TClientDataSet;
    cdsPedidoCODMOVIMENTO: TIntegerField;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label21: TLabel;
    DBEdit1: TDBEdit;
    cdsCotacaoCOTACAO_TIPO: TStringField;
    cdsCotacaoTOTALPROD: TFloatField;
    cdsPedidoSTATUS: TSmallintField;
    cdsCotacaoUNIDADEMEDIDA: TStringField;
    edDescPercent: TJvCalcEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    edDescPercentGeral: TJvCalcEdit;
    edDescontoGeral: TJvCalcEdit;
    Label17: TLabel;
    Label18: TLabel;
    BitBtn4: TBitBtn;
    procedure btnProcurarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure jvdbgrd2CellClick(Column: TColumn);
    procedure btnGravarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure cdsCotacaoAfterScroll(DataSet: TDataSet);
    procedure edFreteExit(Sender: TObject);
    procedure edDescPercentExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edDescPercentGeralExit(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure jvdbgrd2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    TD: TTransactionDesc;
    procedure editaItens;
    procedure daDesconto;
    procedure abrirCotacoes(Item: String; codCotacao: Integer);
    function Selecionado(Codigos : TStringList; Codigo : String) : Integer;
    procedure alteraStatusItensSelec;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCompraCotacao2: TfCompraCotacao2;
  v_codigos : TStringList;

implementation

uses UDm, uCotacoesHist, uCotacaoVer, uListaPedido, uRelNfe;

{$R *.dfm}

procedure TfCompraCotacao2.btnProcurarClick(Sender: TObject);
begin
  //inherited;
  fCotacoesHist.ShowModal;
  if (cdsCotacao.Active) then
    cdsCotacao.Close;
  cdsCotacao.Params[0].AsInteger := fCotacoesHist.cdsCotacaoCOTACAO_FORNEC.AsInteger;
  cdsCotacao.Params[1].AsInteger := fCotacoesHist.cdsCotacaoCOTACAO_CODIGO.AsInteger;
  cdsCotacao.Open;
  cdsCotacao.First;
  if (cdsCotacao.RecordCount > 0) then
  begin
    Edit1.Text     := IntToStr(cdsCotacaoCOTACAO_FORNEC.AsInteger);
    Edit2.Text     := cdsCotacaoRAZAOSOCIAL.AsString;
    cbPrazo.Text   := cdsCotacaoCOTACAO_PRAZO.AsString;
    edFrete.Value  := cdsCotacaoCOTACAO_FRETE.AsFloat;
    dtCotacao.Date := cdsCotacaoCOTACAO_DATA.AsDateTime;
    Edit3.Text     := IntToStr(cdsCotacaoCOTACAO_CODIGO.AsInteger);
  end;
end;

procedure TfCompraCotacao2.editaItens;
begin
  dtEntrega.Date   := cdsCotacaoCOTACAO_DTENTREGA.AsDateTime;
  edPreco.Value    := cdsCotacaoCOTACAO_PRECO.AsFloat;
  edDesconto.Value := cdsCotacaoCOTACAO_DESCONTO.AsFloat;
  edIPI.Value      := cdsCotacaoCOTACAO_IPI.AsFloat;
  edObservacao.Text:= cdsCotacaoCOTACAO_OBSERVACAO.AsString;
end;

procedure TfCompraCotacao2.FormCreate(Sender: TObject);
begin
  //inherited;
  if (not dm.cdsPrazo.Active) then
    dm.cdsPrazo.open;
  if (not dm.cdsPrazo.IsEmpty) then
  begin
    dm.CdsPrazo.first;
    cbPrazo.Items.clear;
    while not dm.CdsPrazo.eof do
    begin
      cbPrazo.Items.Add(dm.cdsPrazoPARAMETRO.asString);
      dm.cdsPrazo.next;
    end;
  end;

end;

procedure TfCompraCotacao2.jvdbgrd2CellClick(Column: TColumn);
var
  x, y : integer;
begin
  //VERIFICAR SE JÁ ESTA INCLUSO
  y := Selecionado(v_codigos, IntToStr(cdsCotacaoCOTACAO_CODSOLIC.AsInteger));
  if (y < 0) then // menor que zero, então não esta selecionado
     v_codigos.Add(IntToStr(cdsCotacaoCOTACAO_CODSOLIC.AsInteger)) //Adiciona à lista
  else
    v_codigos.Delete(y); //Senão remove ele da lista

  jvDBGrd2.Repaint;

  editaItens;
end;

procedure TfCompraCotacao2.btnGravarClick(Sender: TObject);
var str_altera: string;
  linha: integer;
begin
  //inherited;
  //cdsCotacao.ApplyUpdates(0);

  DecimalSeparator := '.';
  str_altera := 'UPDATE COMPRA_COTACAO SET ' +
    ' COTACAO_PRECO = ' + FloatToStr(edPreco.Value) + ', ';

  str_altera := str_altera + ' COTACAO_DTENTREGA = ' +
    QuotedStr(FormatDateTime('mm/dd/yyyy', dtEntrega.Date)) + ', ';

  str_altera := str_altera + ' COTACAO_PRAZO        = ' + QuotedStr(cbPrazo.Text) + ', ';
  if (cdsCotacao.Bof) then
    str_altera := str_altera + ' COTACAO_FRETE        = ' + FloatToStr(edFrete.Value) + ', '
  else
    str_altera := str_altera + ' COTACAO_FRETE        = 0, ';
  str_altera := str_altera + ' COTACAO_IPI        = ' + FloatToStr(edIPI.Value) + ', ';
  str_altera := str_altera + ' COTACAO_DESCONTO        = ' + FloatToStr(edDesconto.Value) + ', ';
  str_altera := str_altera + ' COTACAO_OBSERVACAO   = ' + QuotedStr(edObservacao.Text) + ', ';
  str_altera := str_altera + ' COTACAO_SITUACAO     = ' + QuotedStr('G');
  str_altera := str_altera + ' WHERE COTACAO_CODIGO = ' + IntToStr(cdsCotacaoCOTACAO_CODIGO.AsInteger);
  str_altera := str_altera + '   AND COTACAO_ITEM   = ' + QuotedStr(cdsCotacaoCOTACAO_ITEM.AsString);
  str_altera := str_altera + '   AND COTACAO_FORNEC = ' + IntToStr(cdsCotacaoCOTACAO_FORNEC.AsInteger);
  DecimalSeparator := ',';
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  try
    dm.sqlsisAdimin.ExecuteDirect(str_altera);
    dm.sqlsisAdimin.Commit(TD);

    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect('UPDATE COMPRA_SOLIC SET SOLIC_SITUACAO = ' +
      QuotedStr('C') + ' WHERE SOLIC_CODIGO = ' + IntToStr(cdsCotacaoCOTACAO_CODSOLIC.AsInteger)); // Altero o Status para C=Cotado
    dm.sqlsisAdimin.Commit(TD);

    cdsCotacao.DisableControls;
    linha := cdsCotacao.RecNo;
    if (cdsCotacao.Active) then
      cdsCotacao.Close;
    cdsCotacao.Params.ParamByName('FORNEC').AsInteger := StrToInt(Edit1.Text);
    cdsCotacao.Params.ParamByName('COD').AsInteger    := StrToInt(Edit3.Text);
    cdsCotacao.Open;
    cdsCotacao.RecNo := linha;
    cdsCotacao.EnableControls;
    cdsCotacao.Next;
    editaItens;
    edPreco.SetFocus;
    //MessageDlg('Alteração gravada com sucesso.', mtInformation, [mbOK], 0);
  except
    //dm.sqlsisAdimin.SQLConnection.getErrorMessage();
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro para gravar a alteraçao.', mtError, [mbOK], 0);
    exit;
  end;

end;

procedure TfCompraCotacao2.BitBtn1Click(Sender: TObject);
var st: string;
begin
 fCotacaoVer :=TfCotacaoVer.Create(Application);
 fCotacaoVer.cotacao := cdsCotacaoCOTACAO_CODIGO.AsInteger;
 try
   fCotacaoVer.ShowModal;
 finally
   fCotacaoVer.Free;
 end;
end;

procedure TfCompraCotacao2.btnIncluirClick(Sender: TObject);
var codMov: integer;
begin
  abrirCotacoes(cdsCotacaoCOTACAO_ITEM.AsString, 0);
  if (cdsPedido.Active) then
    cdsPedido.Close;
  cdsPedido.Params.ParamByName('FORNEC').AsInteger := cdsCotacaoCOTACAO_FORNEC.AsInteger;
  cdsPedido.Open;

  codMov := 0;
  if ( (cdsPedido.RecordCount > 0) and (cdsPedidoSTATUS.AsInteger <> 3) ) then
  begin
    if  (MessageDlg('Existe pedido em aberto para este fornecedor, '  + #10#13 +
       ' Incluir neste pedido ? ',
       mtConfirmation, [mbYes, mbNo],0) = mrYes) then
    begin
      codMov := cdsPedido.Fields[0].AsInteger;
      if (cdsPedido.RecordCount > 1) then
      begin
        fListaPedido := TfListaPedido.Create(Application);
        if (fListaPedido.cdsPedido.Active) then
          fListaPedido.cdsPedido.Close;
        fListaPedido.cdsPedido.Params.ParamByName('FORNEC').AsInteger := cdsCotacaoCOTACAO_FORNEC.AsInteger;
        fListaPedido.cdsPedido.Open;
        try
          fListaPedido.ShowModal;
          codMov := fListaPedido.cdsPedido.Fields[0].AsInteger;
        finally
         fListaPedido.Free;
        end;
      end;
    end;
  end;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  try
    cdsCotacao.First;
    //while (not cdsCotacao.Eof) do begin
      //if (cdsCotacaoCOTACAO_PRECO.AsFloat > 0) then
      begin
        //dm.sqlsisAdimin.ExecuteDirect('UPDATE COMPRA_COTACAO SET COTACAO_SITUACAO = ' +
        //  QuotedStr('C') + ' WHERE COTACAO_CODIGO = ' + IntToStr(cdsCotacaoCOTACAO_CODIGO.AsInteger));
        dm.sqlsisAdimin.ExecuteDirect('EXECUTE PROCEDURE GERA_PEDIDO_PROC(' +
          IntToStr(cdsCotacaoCOTACAO_CODIGO.AsInteger) + ', ' +
          IntToStr(cdsCotacaoCOTACAO_FORNEC.AsInteger) + ', ' +
          IntToStr(codMov)  + ')' );
      end;
      //cdsCotacao.Next;
    //end;
    dm.sqlsisAdimin.Commit(TD);
    MessageDlg('Pedido gerado com sucesso.', mtInformation, [mbOK], 0);
  except
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro para gerar o pedido.', mtError, [mbOK], 0);
    exit;
  end;
end;

procedure TfCompraCotacao2.cdsCotacaoAfterScroll(DataSet: TDataSet);
begin
  inherited;
  editaItens;
end;

procedure TfCompraCotacao2.edFreteExit(Sender: TObject);
begin
  inherited;
  if (edFrete.Value > 0) then
    cdsCotacao.First;
end;

procedure TfCompraCotacao2.edDescPercentExit(Sender: TObject);
begin
  inherited;
  if ((edPreco.Value > 0) and (edDescPercent.Value > 0)) then
    edDesconto.Value := (edDescPercent.Value/100)*edPreco.Value;
end;

procedure TfCompraCotacao2.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (key = #13) then
  begin
    key:= #0;
    SelectNext((Sender as TwinControl),True,True);
  end;

end;

procedure TfCompraCotacao2.edDescPercentGeralExit(Sender: TObject);
begin
  if ((cdsCotacaoTotal.Value > 0) and (edDescPercentGeral.Value > 0)) then
    edDescontoGeral.Value := (edDescPercentGeral.Value/100)*cdsCotacaoTotal.Value;
end;

procedure TfCompraCotacao2.daDesconto;
var tot, desc : double;
  str: string;
begin
  DecimalSeparator := '.';
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  try
    cdsCotacao.DisableControls;
    tot := cdsCotacaoTotal.Value;
    cdsCotacao.First;
    while not cdsCotacao.Eof do
    begin
      if (edDescontoGeral.Value > 0) then
        desc := ((cdsCotacaoTOTALPROD.AsFloat/tot)*edDescontoGeral.Value)/cdsCotacaoCOTACAO_QTDE.AsFloat
      else
        desc := 0;
      str := 'UPDATE COMPRA_COTACAO SET COTACAO_DESCONTO = ' + FloatToStr(desc);
      str := str + ' WHERE COTACAO_CODIGO = ' + IntToStr(cdsCotacaoCOTACAO_CODIGO.AsInteger);
      str := str + '   AND COTACAO_FORNEC = ' + IntToStr(cdsCotacaoCOTACAO_FORNEC.AsInteger);
      str := str + '   AND COTACAO_ITEM   = ' + QuotedStr(cdsCotacaoCOTACAO_ITEM.AsString);
      dm.sqlsisAdimin.ExecuteDirect(str);
      cdsCotacao.Next;
    end;
    dm.sqlsisAdimin.Commit(TD);
    cdsCotacao.Close;
    cdsCotacao.Open;
    cdsCotacao.EnableControls;
  except
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro para gravar o desconto.', mtError, [mbOK], 0);
    exit;
  end;

end;

procedure TfCompraCotacao2.BitBtn4Click(Sender: TObject);
begin
  daDesconto;

end;

procedure TfCompraCotacao2.jvdbgrd2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  x,y,Check : integer;
  R: TRect;
begin
  //Desenhar o CheckBox na primeira coluna
  if (DataCol = 0) then
  begin
    y := Selecionado(v_codigos, IntToStr(cdsCotacaoCOTACAO_CODSOLIC.asInteger));
    R := Rect;
    R.Left :=  (Column.Width * -1) + 30; //Posicionando o CheckBox
    InflateRect(R,-2,-2); //Diminuindo o CheckBox

    if (y < 0) then //menor que zero, então não esta selecionado
      DrawFrameControl(jvdbgrd2.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK)
    else
      DrawFrameControl(jvDBGrd2.Canvas.Handle,R,DFC_BUTTON, DFCS_CHECKED);
  end;

end;

procedure TfCompraCotacao2.FormShow(Sender: TObject);
begin
  inherited;
  v_codigos := TStringList.Create;
end;

procedure TfCompraCotacao2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  v_codigos.Free;
end;

procedure TfCompraCotacao2.abrirCotacoes(Item: String;
  codCotacao: Integer);
  var x, posicao : integer;
    str : String;
begin
  posicao := cdsCotacao.RecNo;
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  try
    dm.sqlsisAdimin.StartTransaction(TD);
    for x := 0 to v_codigos.Count-1 do
    begin
      if (cdsCotacao.Locate('COTACAO_CODSOLIC', v_codigos[x], [loCaseInsensitive])) then
      begin
        str := 'UPDATE COMPRA_COTACAO SET COTACAO_SITUACAO = '+ QuotedStr('X');
        str := str + ' WHERE COTACAO_CODSOLIC = ' + InttoStr(cdsCotacaoCOTACAO_CODSOLIC.AsInteger);
        str := str + '   AND COTACAO_CODIGO   = ' + InttoStr(cdsCotacaoCOTACAO_CODIGO.AsInteger);
        str := str + '   AND COTACAO_FORNEC   = ' + InttoStr(cdsCotacaoCOTACAO_FORNEC.AsInteger);
        dm.sqlsisAdimin.ExecuteDirect(str);
      end;  
    end;
    dm.sqlsisAdimin.Commit(TD);
  except
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro para gravar a cotação.', mtError, [mbOK], 0);
    exit;
  end;
end;

procedure TfCompraCotacao2.alteraStatusItensSelec;
begin

end;

function TfCompraCotacao2.Selecionado(Codigos: TStringList;
  Codigo: String): Integer;
var
  x : integer;
begin
  //Verificando se o código já esta selecionado...
  //Resultando -1 se não estiver e Resultando a posição
  //dele na StringList caso já esteja selecionado.
  Result := -1;
  for x := 0 to Codigos.Count-1 do
    if (Codigos[x] = Codigo) then
      begin
        Result := x; //Retorna a posição na StringList;
        Break; //PARA DE EXECUTAR O LOOP
      end;
end;

end.
