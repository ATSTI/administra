unit uCompraCotacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, Grids, DBGrids, JvExDBGrids, JvDBGrid, FMTBcd, DBClient,
  Provider, SqlExpr, dbxpress, dateutils, DBCtrls, rpcompobase, rpvclreport,
  JvExStdCtrls, JvHtControls, Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, JvBaseEdits, ImgList;

type
  TfCompraCotacao = class(TfPai_new)
    sqlSolic: TSQLQuery;
    dspSolic: TDataSetProvider;
    cdsSolic: TClientDataSet;
    dsSolic: TDataSource;
    cdsSolicSOLIC_CODIGO: TIntegerField;
    cdsSolicSOLIC_DATA: TDateField;
    cdsSolicSOLIC_PRODUTO: TStringField;
    cdsSolicSOLIC_QUANTIDADE: TFloatField;
    cdsSolicSOLIC_SOLICITANTE: TStringField;
    cdsSolicSOLIC_SITUACAO: TStringField;
    cdsSolicSOLIC_APROVACAO: TStringField;
    cdsSolicSOLIC_DATAAPROV: TDateField;
    cdsSolicSOLIC_DESCRICAO: TStringField;
    cdsSolicSOLIC_TIPO: TStringField;
    sqlCotacao: TSQLQuery;
    dspCotacao: TDataSetProvider;
    cdsCotacao: TClientDataSet;
    dsCotacao: TDataSource;
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
    sqlBusca: TSQLQuery;
    BitBtn4: TBitBtn;
    VCLReport1: TVCLReport;
    SQLQuery1: TSQLQuery;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1COTACAO_FORNEC: TIntegerField;
    ClientDataSet1NOMEFORNECEDOR: TStringField;
    cdsCotacaoCOTACAO_DTENTREGA: TDateField;
    cdsCotacaoCOTACAO_PRAZO: TStringField;
    cdsCotacaoCOTACAO_OBSERVACAO: TStringField;
    cdsSolicSOLIC_DTNECESSIT: TDateField;
    cdsSolicSOLIC_OBSERVACAO: TStringField;
    GroupBox1: TGroupBox;
    jvdbgrd1: TJvDBGrid;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    btnClienteProcura: TBitBtn;
    Edit2: TEdit;
    btnIncluiCotacao: TBitBtn;
    BitBtn1: TBitBtn;
    btnProcCotacao: TBitBtn;
    GroupBox4: TGroupBox;
    jvdbgrd2: TJvDBGrid;
    cdsCotacaoCOTACAO_IPI: TFloatField;
    cdsCotacaoCOTACAO_DESCONTO: TFloatField;
    cdsCotacaoCOTACAO_FRETE: TFloatField;
    cdsSolicFAMILIA: TStringField;
    cdsSolicCATEGORIA: TStringField;
    cdsSolicMARCA: TStringField;
    BitBtn2: TBitBtn;
    ImageList2: TImageList;
    cdsSolicSELEC: TIntegerField;
    ClientDataSet1TELEFONE: TStringField;
    GroupBox3: TGroupBox;
    JvDBGrid1: TJvDBGrid;
    GroupBox5: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edDescricao: TEdit;
    edMarca: TEdit;
    edGrupo: TEdit;
    edSubGrupo: TEdit;
    edSolicitante: TEdit;
    Label2: TLabel;
    cdsSolicUNIDADEMEDIDA: TStringField;
    BitBtn3: TBitBtn;
    ClientDataSet1COTACAO_CODIGO: TIntegerField;
    edCodCotacao: TEdit;
    procedure btnIncluiCotacaoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbnvgr1Click(Sender: TObject; Button: TNavigateBtn);
    procedure Edit1Exit(Sender: TObject);
    procedure btnClienteProcuraClick(Sender: TObject);
    procedure btnProcCotacaoClick(Sender: TObject);
    procedure dsCotacaoStateChange(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure JvDBGrid1CellClick(Column: TColumn);
    procedure jvdbgrd1CellClick(Column: TColumn);
    procedure btnIncluirClick(Sender: TObject);
    procedure jvdbgrd2CellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure jvdbgrd2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure jvdbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure jvdbgrd1TitleClick(Column: TColumn);
    procedure edDescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure edMarcaKeyPress(Sender: TObject; var Key: Char);
    procedure edGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure edSubGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure edCodCotacaoExit(Sender: TObject);
  private
     TD: TTransactionDesc;
     sql_solic : String;
     function Selecionado(Codigos : TStringList; Codigo : String) : Integer;
     procedure executaBusca;
     procedure abrirCotacoes(Item: String; codCotacao: Integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCompraCotacao: TfCompraCotacao;
  v_codigos : TStringList;

implementation

uses UDm, uProcurar, uCotacoesHist, uCotacaoVer;

{$R *.dfm}

procedure TfCompraCotacao.btnIncluiCotacaoClick(Sender: TObject);
var str: string;
  codCotacao, x, codSolic, z: Integer;
begin
  if (edit1.Text = '') then
  begin
    MessageDlg('Informe o Fornecedor.', mtWarning, [mbOK], 0);
    exit;
  end;

  if (edCodCotacao.Text <> '') then
  begin
    MessageDlg('Existe Código de Cotação Informado, deixe o campo Vazio.', mtWarning, [mbOK], 0);
    edCodCotacao.SetFocus;
    exit;
  end;

  // Ve se ja existe alguma cotação para o item
  {if (sqlBusca.Active) then
    sqlBusca.Close;
  sqlBusca.SQL.Clear;
  codSolic := StrToInt(v_codigos[0]);
  cdsSolic.Locate('SOLIC_CODIGO', codSolic, [loCaseInsensitive]);
  str := 'SELECT COTACAO_CODIGO FROM COMPRA_COTACAO ' +
    ' WHERE COTACAO_CODSOLIC = ' + IntToStr(cdsSolicSOLIC_CODIGO.AsInteger) +
    '   AND COTACAO_SITUACAO IN (' + QuotedStr('P')  +  ')'; //  retirei isto pois, so deve incluir se não foi cotado ainda ', ' + QuotedStr('G')+ ')' ;
  sqlBusca.SQL.Add(str);
  sqlBusca.Open;
  str := '';
  if (sqlBusca.IsEmpty) then}
  begin
    if (sqlBusca.Active) then
      sqlBusca.Close;
    sqlBusca.SQL.Clear;
    sqlBusca.SQL.Add('SELECT MAX(COTACAO_CODIGO) FROM COMPRA_COTACAO');
    sqlBusca.Open;
    codCotacao := sqlBusca.Fields[0].AsInteger + 1;
  end;{  else begin
    codCotacao := sqlBusca.Fields[0].AsInteger;
  end; }
  Label2.Caption := 'Selecioados >> ';
  z := cdsSolic.RecNo;
  for x := 0 to v_codigos.Count-1 do
  begin
    Label2.Caption := Label2.Caption + ' ' + v_codigos[x];
    if (cdsSolic.Locate('SOLIC_CODIGO', v_codigos[x], [loCaseInsensitive])) then
    begin
      str := 'INSERT INTO COMPRA_COTACAO (COTACAO_CODIGO, COTACAO_DATA, COTACAO_FORNEC, ' +
        ' COTACAO_SOLICIT, COTACAO_ITEM, COTACAO_ITEMDESCRICAO, COTACAO_SITUACAO, ' +
        ' COTACAO_QTDE, COTACAO_PRECO, COTACAO_USER, COTACAO_CODSOLIC, COTACAO_TIPO, ' +
        ' COTACAO_DTENTREGA, COTACAO_OBSERVACAO)' +
        ' VALUES (';
      str := str + IntToStr(codCotacao) + ', ';
      str := str + QuotedStr(FormatDateTime('mm/dd/yyyy',today)) + ', ';
      str := str + edit1.Text + ', ';  // Fornecedor
      str := str + QuotedStr(cdsSolicSOLIC_SOLICITANTE.AsString) + ', ';
      str := str + QuotedStr(cdsSolicSOLIC_PRODUTO.AsString) + ', ';
      str := str + QuotedStr(cdsSolicSOLIC_DESCRICAO.AsString) + ', ';
      str := str + QuotedStr('P') + ', ';
      DecimalSeparator := '.';
      str := str + FloatToStr(cdsSolicSOLIC_QUANTIDADE.AsFloat) + ', ';
      DecimalSeparator := ',';
      str := str + '0, ';
      str := str + QuotedStr(DM.varLogado) + ', ';
      str := str + IntToStr(cdsSolicSOLIC_CODIGO.AsInteger) + ', ';
      str := str + QuotedStr(cdsSolicSOLIC_TIPO.AsString) + ', ';
      str := str + QuotedStr(FormatDateTime('mm/dd/yyyy',cdsSolicSOLIC_DTNECESSIT.AsDateTime)) + ', ';
      str := str + QuotedStr(cdsSolicSOLIC_OBSERVACAO.AsString);
      str := str + ')';
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      dm.sqlsisAdimin.StartTransaction(TD);
      try
        dm.sqlsisAdimin.ExecuteDirect(str);
        dm.sqlsisAdimin.ExecuteDirect('UPDATE COMPRA_SOLIC SET SOLIC_SITUACAO = ' +
          QuotedStr('G') + ' WHERE SOLIC_CODIGO = ' + IntToStr(cdsSolicSOLIC_CODIGO.AsInteger)); // Altero o Status para G=Gerado Cotacao
        dm.sqlsisAdimin.Commit(TD);
      except
        dm.sqlsisAdimin.Rollback(TD);
        MessageDlg('Erro para gravar a cotação.', mtError, [mbOK], 0);
        exit;
      end;
    end
    else
    begin
       // Não encontrou este registros
       Label2.Caption := Label2.Caption + v_codigos[x];
    end;

  //Fim do Loop (FOR)
  end;
  cdsSolic.RecNo := z;
  MessageDlg('Cotação gravada com sucesso.', mtInformation, [mbOK], 0);
  if (cdsCotacao.Active) then
    cdsCotacao.Close;
  cdsCotacao.Params.ParamByName('FORNEC').AsInteger := StrToInt(edit1.Text);
  cdsCotacao.Open;

  abrirCotacoes(cdsSolicSOLIC_PRODUTO.AsString, 0);

end;

procedure TfCompraCotacao.FormShow(Sender: TObject);
begin
  //Instanciando a lista de codigos
  v_codigos := TStringList.Create;
  //inherited;
  if (cdsSolic.Active) then
    cdsSolic.Close;
  cdsSolic.Open;
  executaBusca;

end;

procedure TfCompraCotacao.dbnvgr1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  //inherited;
end;

procedure TfCompraCotacao.Edit1Exit(Sender: TObject);
begin
  if (edit1.Text = '') then
    exit;
    
  if dm.scds_forn_proc.Active then
    dm.scds_forn_proc.Close;
  dm.scds_forn_proc.Params[0].Clear;
  dm.scds_forn_proc.Params[1].Clear;
  dm.scds_forn_proc.Params[2].AsInteger:=StrToInt(Edit1.Text);
  dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
  dm.scds_forn_proc.Params.ParamByName('pSegmento').AsInteger := 1;
  dm.scds_forn_proc.Open;
  if dm.scds_forn_proc.IsEmpty then begin
    MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
    [mbOk], 0);
    //btnClienteProcura.Click;
    exit;
  end;
  edit2.text     := dm.scds_forn_procNOMEFORNECEDOR.AsString;
  //dtEntrega.Date := today + dm.scds_forn_procPRAZOPAGAMENTO.AsInteger;

  if (cdsCotacao.Active) then
    cdsCotacao.Close;
  cdsCotacao.Params.ParamByName('FORNEC').AsInteger := StrToInt(Edit1.Text);
  cdsCotacao.Open;

  if (ClientDataSet1.Active) then
    ClientDataSet1.Close;


end;

procedure TfCompraCotacao.btnClienteProcuraClick(Sender: TObject);
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
    cod_forn := 0;
    nome_forn := '';
    fProcurar.ShowModal;
    Edit1.Text := IntToStr(dm.scds_forn_procCODFORNECEDOR.AsInteger);
    Edit2.Text := dm.scds_forn_procNOMEFORNECEDOR.AsString;
  finally
    dm.scds_forn_proc.Close;
    fProcurar.Free;
  end;

end;

procedure TfCompraCotacao.btnProcCotacaoClick(Sender: TObject);
begin
  if (Edit1.Text <> '') then
    abrirCotacoes(Edit1.Text, 0);
  if (cdsCotacao.Active) then
    cdsCotacao.Close;
  cdsCotacao.Params.ParamByName('FORNEC').AsInteger := StrToInt(Edit1.Text);
  cdsCotacao.Open;

end;

procedure TfCompraCotacao.dsCotacaoStateChange(Sender: TObject);
begin
  //inherited;
//  if (dsCotacao.State in (dsEdit, dsInsert)) then
    btnGravar.Enabled := dsCotacao.State in [dsEdit, dsInsert];
end;

procedure TfCompraCotacao.btnGravarClick(Sender: TObject);
var str_altera: string;
begin
  //inherited;
  //cdsCotacao.ApplyUpdates(0);

  {DecimalSeparator := '.';
  str_altera := 'UPDATE COMPRA_COTACAO SET ' +
    ' COTACAO_PRECO = ' + FloatToStr(edPreco.Value) + ', ';

  str_altera := str_altera + ' COTACAO_DTENTREGA = ' +
    QuotedStr(FormatDateTime('mm/dd/yyyy', dtEntrega.Date)) + ', ';

  str_altera := str_altera + ' COTACAO_PRAZO        = ' + QuotedStr(cbPrazo.Text) + ', ';
  str_altera := str_altera + ' COTACAO_FRETE        = ' + FloatToStr(edFrete.Value) + ', ';
  str_altera := str_altera + ' COTACAO_IPI        = ' + FloatToStr(edIPI.Value) + ', ';
  str_altera := str_altera + ' COTACAO_DESCONTO        = ' + FloatToStr(edDesconto.Value) + ', ';
  str_altera := str_altera + ' COTACAO_OBSERVACAO   = ' + QuotedStr(edObservacao.Text);
  str_altera := str_altera + ' WHERE COTACAO_CODIGO = ' + IntToStr(cdsCotacaoCOTACAO_CODIGO.AsInteger);
  DecimalSeparator := ',';
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  try
    dm.sqlsisAdimin.ExecuteDirect(str_altera);
    dm.sqlsisAdimin.Commit(TD);

    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect('UPDATE COMPRA_SOLIC SET SOLIC_SITUACAO = ' +
      QuotedStr('C') + ' WHERE SOLIC_CODIGO = ' + IntToStr(cdsSolicSOLIC_CODIGO.AsInteger)); // Altero o Status para C=Cotado
    dm.sqlsisAdimin.Commit(TD);

    if (cdsCotacao.Active) then
      cdsCotacao.Close;
    cdsCotacao.Params.ParamByName('FORNEC').AsInteger := ClientDataSet1COTACAO_FORNEC.AsInteger;
    cdsCotacao.Open;

    MessageDlg('Alteração gravada com sucesso.', mtInformation, [mbOK], 0);
  except
    //dm.sqlsisAdimin.SQLConnection.getErrorMessage();
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro para gravar a alteraçao.', mtError, [mbOK], 0);
    exit;
  end;}
end;

procedure TfCompraCotacao.BitBtn4Click(Sender: TObject);
begin
  if (not cdsCotacao.IsEmpty) then
  begin
    VCLReport1.FileName := str_relatorio + 'compra_cotacao.rep';
    VCLReport1.Title := 'compra_cotacao.rep';
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport1.Report.Params.ParamByName('PFORNEC').Value := cdsCotacaoCOTACAO_FORNEC.AsInteger;
    VCLReport1.Report.Params.ParamByName('PDATA').Value := cdsCotacaoCOTACAO_DATA.AsDateTime;
    VCLReport1.Execute;
  end;
end;

procedure TfCompraCotacao.JvDBGrid1CellClick(Column: TColumn);
begin
  if (cdsCotacao.Active) then
    cdsCotacao.Close;
  cdsCotacao.Params.ParamByName('FORNEC').AsInteger := ClientDataSet1COTACAO_FORNEC.AsInteger;
  cdsCotacao.Open;

  if (not ClientDataSet1.IsEmpty) then
    edCodCotacao.Text := IntToStr(ClientDataSet1COTACAO_CODIGO.AsInteger);
end;

procedure TfCompraCotacao.jvdbgrd1CellClick(Column: TColumn);
var
  x, y : integer;
begin

  abrirCotacoes(cdsSolicSOLIC_PRODUTO.AsString, 0);

  //VERIFICAR SE JÁ ESTA INCLUSO
  y := Selecionado(v_codigos, IntToStr(cdsSolicSOLIC_CODIGO.AsInteger));
  if (y < 0) then // menor que zero, então não esta selecionado
     v_codigos.Add(IntToStr(cdsSolicSOLIC_CODIGO.AsInteger)) //Adiciona à lista
  else
    v_codigos.Delete(y); //Senão remove ele da lista

  jvDBGrd1.Repaint;

end;

procedure TfCompraCotacao.btnIncluirClick(Sender: TObject);
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  try
    cdsCotacao.First;
    while (not cdsCotacao.Eof) do begin
      if (cdsCotacaoCOTACAO_PRECO.AsFloat > 0) then
      begin
        dm.sqlsisAdimin.ExecuteDirect('UPDATE COMPRA_COTACAO SET COTACAO_SITUACAO = ' +
          QuotedStr('C') + ' WHERE COTACAO_CODIGO = ' + IntToStr(cdsCotacaoCOTACAO_CODIGO.AsInteger));
      end;
      cdsCotacao.Next;
    end;
    dm.sqlsisAdimin.Commit(TD);
    MessageDlg('Pedido gerado com sucesso.', mtInformation, [mbOK], 0);
    if (cdsSolic.Active) then
      cdsSolic.Close;
    cdsSolic.Open;
  except
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro para gerar o pedido.', mtError, [mbOK], 0);
    exit;
  end;

end;

procedure TfCompraCotacao.jvdbgrd2CellClick(Column: TColumn);
begin
  //inherited;
 { cdsCotacao.Edit;
  dtEntrega.Date    := cdsCotacaoCOTACAO_DTENTREGA.AsDateTime;
  cbPrazo.Text      := cdsCotacaoCOTACAO_PRAZO.AsString;
  edObservacao.Text := cdsCotacaoCOTACAO_OBSERVACAO.AsString;
  edPreco.Value     := cdsCotacaoCOTACAO_PRECO.AsFloat;
  edDesconto.Value  := cdsCotacaoCOTACAO_DESCONTO.AsFloat;
  edFrete.Value     := cdsCotacaoCOTACAO_FRETE.AsFloat;
  edIPI.Value       := cdsCotacaoCOTACAO_IPI.AsFloat;}
end;

procedure TfCompraCotacao.FormCreate(Sender: TObject);
begin
  {if (not dm.cdsPrazo.Active) then
    dm.cdsPrazo.open;
  if (not dm.cdsPrazo.IsEmpty) then
  begin
    dm.CdsPrazo.first;
    //cbPrazo.Items.clear;
    while not dm.CdsPrazo.eof do
    begin
      cbPrazo.Items.Add(dm.cdsPrazoPARAMETRO.asString);
      dm.cdsPrazo.next;
    end;
  end;}
end;

procedure TfCompraCotacao.btnExcluirClick(Sender: TObject);
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  try
    dm.sqlsisAdimin.ExecuteDirect('DELETE FROM COMPRA_COTACAO WHERE COTACAO_CODIGO = ' +
      IntToStr(cdsCotacaoCOTACAO_CODIGO.AsInteger) +
      ' AND COTACAO_ITEM = ' + QuotedStr(cdsCotacaoCOTACAO_ITEM.AsString) +
      ' AND COTACAO_FORNEC = ' + IntToStr(cdsCotacaoCOTACAO_FORNEC.AsInteger));
    dm.sqlsisAdimin.Commit(TD);
    MessageDlg('Item excluído com sucesso.', mtInformation, [mbOK], 0);
    if (cdsCotacao.Active) then
      cdsCotacao.Close;
    cdsCotacao.Params.ParamByName('FORNEC').AsInteger := StrToInt(edit1.Text);
    cdsCotacao.Open;
  except
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro para excluir o pedido.', mtError, [mbOK], 0);
    exit;
  end;
end;

procedure TfCompraCotacao.BitBtn2Click(Sender: TObject);
var st: string;
begin
 {fCotacaoVer :=TfCotacaoVer.Create(Application);
 fCotacaoVer.cotacao := cdsSolicSOLIC_PRODUTO.AsString;
 try
   fCotacaoVer.ShowModal;
 finally
   fCotacaoVer.Free;
 end;}

{ while not cdsSolic.Eof do
 begin
 if (DBCheckBox1.Checked) then
   st := cdsSolicSOLIC_PRODUTO.AsString;
   cdsSolic.Next;
 end;}
  //Trecho para teste (deve haver uma label no form chamada Label1
end;

procedure TfCompraCotacao.jvdbgrd2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  {JvDBGrid1.Canvas.FillRect(Rect);
  ImageList2.Draw(JvDBGrid1.Canvas,Rect.Left+10,Rect.top, 1);
  if scdsCr_procDUP_REC_NF.AsString = 'S' then
    ImageList2.Draw(JvDBGrid1.Canvas,Rect.Left+10,Rect.top, 2)
  else
    ImageList2.Draw(JvDBGrid1.Canvas,Rect.Left+10,Rect.top, 0);}
end;

function TfCompraCotacao.Selecionado(Codigos: TStringList;
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

procedure TfCompraCotacao.jvdbgrd1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  x,y,Check : integer;
  R: TRect;
begin
  //Desenhar o CheckBox na primeira coluna
  if (DataCol = 0) then
  begin
    y := Selecionado(v_codigos, IntToStr(cdsSolicSOLIC_CODIGO.asInteger));
    R := Rect;
    R.Left :=  (Column.Width * -1) + 30; //Posicionando o CheckBox
    InflateRect(R,-2,-2); //Diminuindo o CheckBox

    if (y < 0) then //menor que zero, então não esta selecionado
      DrawFrameControl(jvdbgrd1.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK)
    else
      DrawFrameControl(jvDBGrd1.Canvas.Handle,R,DFC_BUTTON, DFCS_CHECKED);
  end;
end;

procedure TfCompraCotacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
//Destruindo a lista de codigos
  v_codigos.Free;
end;

procedure TfCompraCotacao.jvdbgrd1TitleClick(Column: TColumn);
begin
    cdsSolic.IndexFieldNames := Column.FieldName;
end;

procedure TfCompraCotacao.edDescricaoKeyPress(Sender: TObject;
  var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);

   if (edDescricao.Text <> '') then
   begin
     sql_solic := sql_solic + ' AND cs.SOLIC_DESCRICAO LIKE ' + QuotedStr(edDescricao.Text + '%');
     executaBusca;
   end
   else
     executaBusca;
 end;
end;

procedure TfCompraCotacao.executaBusca;
var sql_s : String;
begin
  sql_s := 'SELECT p.FAMILIA , p.CATEGORIA, p.MARCA, cs.SOLIC_CODIGO,' +
    ' cs.SOLIC_DATA, cs.SOLIC_PRODUTO, cs.SOLIC_QUANTIDADE, ' +
    ' cs.SOLIC_SOLICITANTE, cs.SOLIC_APROVACAO, ' +
    'CASE cs.SOLIC_SITUACAO WHEN ' + QuotedStr('A') + ' THEN ' + QuotedStr('APROVADO') +
    ' WHEN ' + QuotedStr('C') + ' THEN ' + QuotedStr('CANCELADO') + 'WHEN ' + QuotedStr('G') +
    ' THEN ' + QuotedStr('EM COTAÇÃO') + ' WHEN ' + QuotedStr('E') + ' THEN ' +
    QuotedStr('ENCERRADO') + 'WHEN ' + QuotedStr('P') + ' THEN ' +
    QuotedStr('PENDENTE') + ' ELSE ' + QuotedStr('OUTROS') + ' END AS SOLIC_SITUACAO, ' +
    ' cs.SOLIC_DATAAPROV, cs.SOLIC_DESCRICAO, cs.SOLIC_TIPO, ' +
    ' cs.SOLIC_DTNECESSIT, cs.SOLIC_OBSERVACAO, 0 as SELEC, p.UNIDADEMEDIDA ' +
    '  FROM COMPRA_SOLIC cs ' +
    ' inner join PRODUTOS p on p.codpro = cs.SOLIC_PRODUTO ' +
    ' WHERE ((SOLIC_SITUACAO <> ' + QuotedStr('E') + ') ' +
    '   AND  (SOLIC_SITUACAO <> ' + QuotedStr('P') + ') AND  (SOLIC_SITUACAO <> ' + QuotedStr('C') + '))';

  sql_s := sql_s + sql_solic + ' ORDER BY SOLIC_SITUACAO DESC, SOLIC_DTNECESSIT DESC';
  if (cdsSolic.Active) then
    cdsSolic.Close;
  cdsSolic.CommandText := sql_s;
  cdsSolic.Open;
  sql_solic := '';
end;

procedure TfCompraCotacao.edMarcaKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   if (edMarca.Text <> '') then
   begin
     sql_solic := sql_solic + ' AND p.MARCA LIKE ' + QuotedStr(edMarca.Text + '%');
     executaBusca;
   end
   else
     executaBusca;
 end;
end;

procedure TfCompraCotacao.edGrupoKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   if (edGrupo.Text <> '') then
   begin
     sql_solic := sql_solic + ' AND p.FAMILIA LIKE ' + QuotedStr(edGrupo.Text + '%');
     executaBusca
   end
   else
     executaBusca;
 end;
end;

procedure TfCompraCotacao.edSubGrupoKeyPress(Sender: TObject;
  var Key: Char);
begin
 if (key = #13) then
 begin
   if (edSubGrupo.Text <> '') then
   begin
     sql_solic := sql_solic + ' AND p.CATEGORIA LIKE ' + QuotedStr(edSubGrupo.Text + '%');
     executaBusca;
   end
   else
     executaBusca;
 end;
end;

procedure TfCompraCotacao.BitBtn3Click(Sender: TObject);
var str: string;
  codCotacao, x, z, codSolic: Integer;
begin
  if (edit1.Text = '') then
  begin
    MessageDlg('Informe o Fornecedor.', mtWarning, [mbOK], 0);
    exit;
  end;
  if (edCodCotacao.Text = '') then
  begin
    MessageDlg('Informe o Código da Cotação.', mtWarning, [mbOK], 0);
    edCodCotacao.SetFocus;
    exit;
  end;

  if  MessageDlg('Inserir itens na Cotação : '+ IntToStr(ClientDataSet1COTACAO_CODIGO.AsInteger) + ' ?',
     mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;

  codCotacao := StrToInt(edCodCotacao.Text);
  Label2.Caption := 'Selecioados >> ';
  
  z := cdsSolic.RecNo;

  for x := 0 to v_codigos.Count-1 do
  begin
    Label2.Caption := Label2.Caption + ' ' + v_codigos[x];
    if (cdsSolic.Locate('SOLIC_CODIGO', v_codigos[x], [loCaseInsensitive])) then
    begin
      str := 'INSERT INTO COMPRA_COTACAO (COTACAO_CODIGO, COTACAO_DATA, COTACAO_FORNEC, ' +
        ' COTACAO_SOLICIT, COTACAO_ITEM, COTACAO_ITEMDESCRICAO, COTACAO_SITUACAO, ' +
        ' COTACAO_QTDE, COTACAO_PRECO, COTACAO_USER, COTACAO_CODSOLIC, COTACAO_TIPO, ' +
        ' COTACAO_DTENTREGA, COTACAO_OBSERVACAO)' +
        ' VALUES (';
      str := str + IntToStr(codCotacao) + ', ';
      str := str + QuotedStr(FormatDateTime('mm/dd/yyyy',today)) + ', ';
      str := str + edit1.Text + ', ';  // Fornecedor
      str := str + QuotedStr(cdsSolicSOLIC_SOLICITANTE.AsString) + ', ';
      str := str + QuotedStr(cdsSolicSOLIC_PRODUTO.AsString) + ', ';
      str := str + QuotedStr(cdsSolicSOLIC_DESCRICAO.AsString) + ', ';
      str := str + QuotedStr('P') + ', ';
      DecimalSeparator := '.';
      str := str + FloatToStr(cdsSolicSOLIC_QUANTIDADE.AsFloat) + ', ';
      DecimalSeparator := ',';
      str := str + '0, ';
      str := str + QuotedStr(DM.varLogado) + ', ';
      str := str + IntToStr(cdsSolicSOLIC_CODIGO.AsInteger) + ', ';
      str := str + QuotedStr(cdsSolicSOLIC_TIPO.AsString) + ', ';
      str := str + QuotedStr(FormatDateTime('mm/dd/yyyy',cdsSolicSOLIC_DTNECESSIT.AsDateTime)) + ', ';
      str := str + QuotedStr(cdsSolicSOLIC_OBSERVACAO.AsString);
      str := str + ')';
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      dm.sqlsisAdimin.StartTransaction(TD);
      try
        dm.sqlsisAdimin.ExecuteDirect(str);
        dm.sqlsisAdimin.ExecuteDirect('UPDATE COMPRA_SOLIC SET SOLIC_SITUACAO = ' +
          QuotedStr('G') + ' WHERE SOLIC_CODIGO = ' + IntToStr(cdsSolicSOLIC_CODIGO.AsInteger)); // Altero o Status para G=Gerado Cotacao
        dm.sqlsisAdimin.Commit(TD);
      except
        dm.sqlsisAdimin.Rollback(TD);
        MessageDlg('Erro para gravar a cotação.', mtError, [mbOK], 0);
        exit;
      end;
    end
    else
    begin
       // Não encontrou este registros
       Label2.Caption := Label2.Caption + v_codigos[x];
    end;

  //Fim do Loop (FOR)
  end;
  cdsSolic.RecNo := z;
  MessageDlg('Cotação gravada com sucesso.', mtInformation, [mbOK], 0);
  if (cdsCotacao.Active) then
    cdsCotacao.Close;
  cdsCotacao.Params.ParamByName('FORNEC').AsInteger := StrToInt(edit1.Text);
  cdsCotacao.Open;


  {if (cdsSolic.Active) then
    cdsSolic.Close;
  cdsSolic.Open;}

  abrirCotacoes(cdsSolicSOLIC_PRODUTO.AsString, 0);
end;

procedure TfCompraCotacao.edCodCotacaoExit(Sender: TObject);
begin
  inherited;
  if (edCodCotacao.Text <> '') then
  begin
    abrirCotacoes('', StrToInt(edCodCotacao.Text));
  end;
end;

procedure TfCompraCotacao.abrirCotacoes(Item: String; codCotacao: Integer);
var str1: String;
begin
  str1 := 'SELECT distinct(COTACAO_FORNEC), f.NOMEFORNECEDOR, ' +
    '(' + QuotedStr('( ') + ' || ef.DDD || ' + QuotedStr(' )   ') +
    ' || ef.TELEFONE) as TELEFONE, COTACAO_CODIGO ' +
    '  FROM COMPRA_COTACAO, FORNECEDOR f, ENDERECOFORNECEDOR ef ' +
    ' WHERE COTACAO_FORNEC = f.CODFORNECEDOR '   +
    '   AND f.CODFORNECEDOR = ef.CODFORNECEDOR ' +
    '   AND ef.TIPOEND = 0 ' +
    ' AND COTACAO_SITUACAO = ' + QuotedStr('P');

  if (Item <> '') then
  begin
    str1 := str1 + '   AND COTACAO_ITEM = ' + QuotedStr(Item);
  end;
  if (codCotacao > 0) then
  begin
    str1 := str1 + '   AND COTACAO_CODIGO = ' + IntToStr(codcotacao);
  end;
  if (ClientDataSet1.Active) then
    ClientDataSet1.Close;
  ClientDataSet1.CommandText := str1;
  ClientDataSet1.Open;
  if (not ClientDataSet1.IsEmpty) then
    edCodCotacao.Text := IntToStr(ClientDataSet1COTACAO_CODIGO.AsInteger);
end;

end.

