unit uEmail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, JvExMask, JvToolEdit, TFlatGaugeUnit, Buttons,
  IdMessage, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTP, FMTBcd, DB, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, JvDBUltimGrid, Provider, DBClient, SqlExpr,IdSSLOpenSSL, dateutils,
  JvExStdCtrls, JvRichEdit, RXCtrls, ComCtrls,dbxpress, DBCtrls, ExtCtrls,
  ACBrBase, ACBrMail;

type
  TForm1 = class(TForm)
    Label73: TLabel;
    IdSMTP1: TIdSMTP;
    IdMessage1: TIdMessage;
    SQLDataSet1: TSQLDataSet;
    cdsEnvia: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    JvDBUltimGrid1: TJvDBUltimGrid;
    cdsEnviaCODEMAIL: TIntegerField;
    cdsEnviaEMAIL: TStringField;
    cdsEnviaASSUNTO: TStringField;
    cdsEnviaDATAENVIO: TDateField;
    sqldtst1: TSQLDataSet;
    ds1: TClientDataSet;
    DataSetProvider2: TDataSetProvider;
    ds2: TDataSource;
    ds1CODEMAIL: TIntegerField;
    ds1EMAIL: TStringField;
    ds1ASSUNTO: TStringField;
    ds1DATAENVIO: TDateField;
    sdsSQLDataSet1CODEMAIL: TIntegerField;
    SQLDataSet1EMAIL: TStringField;
    SQLDataSet1ASSUNTO: TStringField;
    SQLDataSet1DATAENVIO: TDateField;
    SQLDataSet1GRUPO: TStringField;
    cdsEnviaGRUPO: TStringField;
    sdssqldtst1CODEMAIL: TIntegerField;
    sqldtst1EMAIL: TStringField;
    sqldtst1ASSUNTO: TStringField;
    sqldtst1DATAENVIO: TDateField;
    sqldtst1GRUPO: TStringField;
    ds1GRUPO: TStringField;
    sqldtst1ENVIADO: TStringField;
    ds3: TDataSource;
    ds1ENVIADO: TStringField;
    sqlGrupo: TSQLQuery;
    Panel1: TPanel;
    FlatGauge1: TFlatGauge;
    BitBtn1: TBitBtn;
    rg1: TRadioGroup;
    BitBtn5: TBitBtn;
    Panel2: TPanel;
    pgc1: TPageControl;
    ts1: TTabSheet;
    lbl6: TLabel;
    edText: TJvRichEdit;
    ts2: TTabSheet;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl7: TLabel;
    btnAdiconar: TBitBtn;
    btnGravar: TBitBtn;
    btnExcluir: TBitBtn;
    dbedtCODEMAIL: TDBEdit;
    dbedtEMAIL: TDBEdit;
    dbedtDATAENVIO: TDBEdit;
    dbgrd1: TDBGrid;
    dbedtASSUNTO: TDBEdit;
    BitBtn4: TBitBtn;
    dbGRUPO: TDBEdit;
    dbENVIADO: TDBEdit;
    Label86: TLabel;
    edtAssunto: TEdit;
    lbxAnexos: TTextListBox;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    cbbSerie: TComboBox;
    rgSituacao: TRadioGroup;
    dsEnvia: TDataSource;
    dlgOpenAnexos: TOpenDialog;
    Label1: TLabel;
    SQLDataSet1ENVIADO: TStringField;
    cdsEnviaENVIADO: TStringField;
    btnEnviado: TBitBtn;
    ACBrMail1: TACBrMail;
    Edit1: TEdit;
    Label2: TLabel;
    chkTipo: TCheckBox;
    Label3: TLabel;
    Edit2: TEdit;
    chkImagem: TCheckBox;
    Label4: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnAdiconarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure pgc1Change(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure rgSi(Sender: TObject);
    procedure rg1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure JvDBUltimGrid1CellClick(Column: TColumn);
    procedure btnEnviadoClick(Sender: TObject);
  private
    { Private declarations }
    anexoArquivo: String;
    TD: TTransactionDesc;
    procedure enviarEmailAcbr;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses UDm;

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
var email,responsavel, str:string;
   Anexo : Integer;
begin
  FlatGauge1.Progress := 0;
  if (cbbSerie.Text = '') then
  begin
    MessageDlg('Informe o Grupo de Email que ser� Criado.', mtWarning, [mbOK], 0);
    Exit;
  end;

  Cursor := crHourGlass;

  if (not cdsEnvia.Active) then
    cdsEnvia.Open;

  if (not dm.cds_empresa.Active) then
    dm.cds_empresa.Open;

  FlatGauge1.MaxValue := cdsEnvia.RecordCount;

  if (cdsEnvia.RecordCount > 0) then
  begin
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    cdsEnvia.DisableControls;
    cdsEnvia.First;
    while not cdsEnvia.Eof do
    begin
      enviarEmailAcbr;
      DM.sqlsisAdimin.StartTransaction(TD);
      try
        dm.sqlsisAdimin.ExecuteDirect('UPDATE EMAIL_ENVIAR SET DATAENVIO = ' +
          QuotedStr(Formatdatetime('mm/dd/yyyy', today)) +
          ', ENVIADO = ' + QuotedStr('S') +
          ', ASSUNTO = ' + QuotedStr(edtAssunto.Text) +
          ', GRUPO   = ' + QuotedStr(cbbSerie.Text) +
          ' WHERE CODEMAIL = ' + IntToStr(cdsEnviaCODEMAIL.AsInteger));
      except
        DM.sqlsisAdimin.Rollback(TD);
        MessageDlg('Erro para gravar o envio do Email .', mtError, [mbOK], 0);
        exit;                                        
      end;

      sleep(StrToInt(edit2.Text)*1000);
      FlatGauge1.Progress := cdsEnvia.RecNo;
      Application.ProcessMessages;
      cdsEnvia.Next;
    end;
  end;
  cdsEnvia.EnableControls;
  FlatGauge1.Progress := FlatGauge1.Progress + 20;

  Cursor := crDefault;
  cdsEnvia.Close;

  Case rgSituacao.ItemIndex of
     0: str := 'S'; // Enviado Sim
     1: str := 'N'; // Enviado N�o

  end;

  cdsEnvia.CommandText := 'Select * from EMAIL_ENVIAR where (GRUPO = '+
  QuotedStr(cbBSerie.Text) + ') AND (ENVIADO = ' +  QuotedStr(str) +
  ') order by  ASSUNTO';
  cdsEnvia.Open;

  Application.MessageBox('Email enviado com sucesso!', 'Confirma��o',
  MB_ICONINFORMATION +   MB_OK);
  FlatGauge1.Progress := 0;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  anexoArquivo := '';
  if (sqlGrupo.Active) then
    sqlGrupo.Close;
  sqlGrupo.Open;

  cbbSerie.Items.Clear;
  While not sqlGrupo.Eof do
  begin
    cbbSerie.Items.Add(sqlGrupo.Fields[0].asString);
    sqlGrupo.Next;
  end;

  if (cdsEnvia.Active) then
    cdsEnvia.Close;

  cdsEnvia.CommandText := 'Select * from EMAIL_ENVIAR where (ENVIADO = ' +
  QuotedStr('N') +
  ') order by  ASSUNTO';
  cdsEnvia.Open;


end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  if dlgOpenAnexos.Execute then
  begin
    lbxAnexos.Items.Add(dlgOpenAnexos.FileName);
    anexoArquivo := dlgOpenAnexos.FileName;
    Edit1.Text := ExtractFileName(dlgOpenAnexos.FileName);
  end;
end;

procedure TForm1.btnAdiconarClick(Sender: TObject);
begin
  if not(ds2.DataSet.Active) then
     ds2.DataSet.open;
  ds2.DataSet.Append;

end;

procedure TForm1.btnGravarClick(Sender: TObject);
begin
    if not(ds2.DataSet.Active) then
     ds2.DataSet.open;

    ds1CODEMAIL.AsInteger := StrToInt(dbedtCODEMAIL.Text);
    ds1EMAIL.AsString := dbedtEMAIL.Text;
    ds1ASSUNTO.AsString := edtAssunto.Text;
    ds1GRUPO.AsString := dbGRUPO.Text;
    if(dbENVIADO.Text = '') then
    ds1ENVIADO.Text := 'N';
    ds1.ApplyUpdates(0) ;
    cdsEnvia.Close;
    cdsEnvia.Open
end;

procedure TForm1.btnExcluirClick(Sender: TObject);
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  DM.sqlsisAdimin.StartTransaction(TD);
  try
    DM.sqlsisAdimin.ExecuteDirect('DELETE FROM EMAIL_ENVIAR WHERE CODEMAIL = ' +
      IntToStr(ds1CODEMAIL.AsInteger));
    DM.sqlsisAdimin.Commit(TD);
    MessageDlg('Item exclu�do com sucesso.', mtInformation, [mbOK], 0);
    ds1.Close;
    ds1.Open;
    cdsEnvia.Close;
    cdsEnvia.Open
  except
    DM.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro para excluir Registro .', mtError, [mbOK], 0);
    exit;
  end;
end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TForm1.pgc1Change(Sender: TObject);
begin
  if not(ds1.Active) then
    ds1.open;
end;


procedure TForm1.BitBtn4Click(Sender: TObject);
begin
  ds1.Cancel;
end;


procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  lbxAnexos.Clear;
  anexoArquivo := '';
  Edit1.Text := '';
end;

procedure TForm1.rgSi(Sender: TObject);
var str,str1 : string;
begin
  str := '';
  str1 := '';
  {if(cbBSerie.Text = '') then
  begin
    MessageDlg('Escolha um Grupo', mtWarning, [mbOK], 0);
    cbBSerie.SetFocus;
    Exit;
  end;}
  Case rgSituacao.ItemIndex of
     0: str := 'S'; // Enviado Sim
     1: str := 'N'; // Enviado N�o

  end;
  if cbBSerie.Text <> '' then
  begin
   // if (cbSerie.Text) then
      str1 := cbBSerie.Text;
  end;
  if cdsEnvia.Active then
    cdsEnvia.Close;

  if (str1 = '') then
    cdsEnvia.CommandText := 'Select * from EMAIL_ENVIAR where (ENVIADO = ' +
      QuotedStr(str) +
      ') order by  ASSUNTO'
  else
  cdsEnvia.CommandText := 'Select * from EMAIL_ENVIAR where (GRUPO = '+
  QuotedStr(cbBSerie.Text) + ') AND (ENVIADO = ' +  QuotedStr(str) +
  ') order by  ASSUNTO';
  if (ds1.Active) then
    ds1.Close;
  ds1.CommandText := cdsEnvia.CommandText;

  cdsEnvia.Open;
  ds1.Open;
  //Application.ProcessMessages;
end;

procedure TForm1.rg1Click(Sender: TObject);
var str,str1 : string;
begin
  str := '';
  str1 := '';
  if(cbBSerie.Text = '') then
  begin
    MessageDlg('Escolha um Grupo', mtWarning, [mbOK], 0);
    cbBSerie.SetFocus;
    Exit;
  end;
  Case rg1.ItemIndex of
     0: str := 'S'; // Enviado Sim
     1: str := 'N'; // Enviado N�o

  end;
  if cbBSerie.Text <> '' then
  begin
   // if (cbSerie.Text) then
      str1 := cbBSerie.Text;
  end;
  if ds1.Active then
    ds1.Close;

  if (str = 'S') then
    ds1.CommandText := 'Select * from EMAIL_ENVIAR where (GRUPO = '+
    QuotedStr(cbBSerie.Text) +
    ') order by  ASSUNTO'
  else
  ds1.CommandText := 'Select * from EMAIL_ENVIAR  order by  ASSUNTO';
  ds1.Open;

end;

procedure TForm1.BitBtn5Click(Sender: TObject);
begin
  if(cbBSerie.Text = '') then
  begin
    MessageDlg('Escolha um Grupo Para Alterar ', mtWarning, [mbOK], 0);
    cbBSerie.SetFocus;
    Exit;
  end;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  DM.sqlsisAdimin.StartTransaction(TD);
  try
    DM.sqlsisAdimin.ExecuteDirect('UPDATE EMAIL_ENVIAR SET ENVIADO = ' + QuotedStr('N') +
     ' WHERE GRUPO = ' + QuotedStr(cbBSerie.Text));
    DM.sqlsisAdimin.Commit(TD);
    MessageDlg('Altera��o com Sucesso.', mtInformation, [mbOK], 0);
    ds1.Close;
    ds1.Open;
    cdsEnvia.Close;
    rgSituacao.ItemIndex := 1;
    cdsEnvia.Open
  except
    DM.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro ao alterar Registro .', mtError, [mbOK], 0);
    exit;
  end;
end;

procedure TForm1.JvDBUltimGrid1CellClick(Column: TColumn);
begin
  if (cdsEnviaENVIADO.asString = 'S') then
    btnEnviado.Caption := 'N�o Enviado';
  if (cdsEnviaENVIADO.asString = 'N') then
    btnEnviado.Caption := 'Enviado';
end;

procedure TForm1.btnEnviadoClick(Sender: TObject);
begin
  if (btnEnviado.Caption = 'N�o Enviado') then
  begin
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    DM.sqlsisAdimin.StartTransaction(TD);
    try
      DM.sqlsisAdimin.ExecuteDirect('UPDATE EMAIL_ENVIAR SET ENVIADO = ' + QuotedStr('N') +
       ' WHERE CODEMAIL = ' + IntToStr(cdsEnviaCODEMAIL.asInteger));
      DM.sqlsisAdimin.Commit(TD);
      cdsEnvia.Close;
      cdsEnvia.Open
    except
      DM.sqlsisAdimin.Rollback(TD);
      MessageDlg('Erro ao alterar Registro .', mtError, [mbOK], 0);
      exit;
    end;
  end;
  if (btnEnviado.Caption = 'Enviado') then
  begin
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    DM.sqlsisAdimin.StartTransaction(TD);
    try
      DM.sqlsisAdimin.ExecuteDirect('UPDATE EMAIL_ENVIAR SET ENVIADO = ' + QuotedStr('S') +
       ' WHERE CODEMAIL = ' + IntToStr(cdsEnviaCODEMAIL.asInteger));
      DM.sqlsisAdimin.Commit(TD);
      cdsEnvia.Close;
      cdsEnvia.Open
    except
      DM.sqlsisAdimin.Rollback(TD);
      MessageDlg('Erro ao alterar Registro .', mtError, [mbOK], 0);
      exit;
    end;
  end;
end;

procedure TForm1.enviarEmailAcbr;
var linha: integer;
begin
  ACBrMail1.From := dm.cds_empresaE_MAIL.AsString; // 'seu_email';
  ACBrMail1.FromName := dm.cds_empresaEMPRESA.AsString; // 'seu_nome_opcional';
  ACBrMail1.Host := dm.cds_empresaSMTP.AsString; // 'smtp.gmail.com'; // troque pelo seu servidor smtp
  ACBrMail1.Username := dm.cds_empresaE_MAIL.AsString;// 'seu_usuario';
  ACBrMail1.Password := dm.cds_empresaSENHA.AsString; // 'sua_senha';
  ACBrMail1.Port := IntToStr(dm.cds_empresaPORTA.AsInteger); // '465'; // troque pela porta do seu servidor smtp
  ACBrMail1.AddAddress(cdsEnviaEMAIL.AsString,'');
  //ACBrMail1.AddCC('um_email'); // opcional
  //ACBrMail1.AddReplyTo('um_email'); // opcional
  //ACBrMail1.AddBCC('um_email'); // opcional
  ACBrMail1.Subject := UTF8Encode(edtAssunto.Text); //'Teste de Envio'; // assunto
  ACBrMail1.IsHTML := True; // define que a mensagem � html
  // mensagem principal do e-mail. pode ser html ou texto puro
  if (chkTipo.Checked) then
  begin
    ACBrMail1.SetTLS := True;
    //ACBrMail1.SetSSL := True;
  end;
  ACBrMail1.Body.Text := '<html>'+#13+#10+
    '<head>'+#13+#10+#13+#10+
    '  <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">'+#13+#10+
    '</head>'+#13+#10+
    '<body text="#000000" bgcolor="#FFFFFF">'+#13+#10;

  if (edit1.Text <> '') then
  begin
    linha := 0;

    if (chkImagem.Checked) then
    begin
      ACBrMail1.Body.Text := ACBrMail1.Body.Text +   '<img style="margin:1px 1px 1px 0px;"' +
        '<IMG SRC="cid:' + edit1.Text + '">' + '<BR />+#13+#10+<BR />';
     end;
    while linha < edText.Lines.Count do
    begin
      ACBrMail1.Body.Text := ACBrMail1.Body.Text + UTF8Encode(edText.lines[linha]) + '<BR />'+#13+#10;
      inc(linha);
    end;
  end
  else begin
    ACBrMail1.Body.Text := '';
    linha := 0;
    while linha < edText.Lines.Count do
    begin
      ACBrMail1.Body.Text := ACBrMail1.Body.Text + UTF8Encode(edText.lines[linha]) + '<BR />'+#13+#10;
      //if (linha = 4) then
      //  ACBrMail1.Body.Text := ACBrMail1.Body.Text + edText.lines[linha] + '</br>';
      inc(linha);
    end;

  end;
  ACBrMail1.Body.Text := ACBrMail1.Body.Text + '</body>'+#13+#10+
    '</html>'+#13+#10;

  {linha := 0;
  ACBrMail1.AltBody := '';
  while linha < edText.Lines.Count do
  begin
    ACBrMail1.AltBody.Text := ACBrMail1.AltBody.Text + UTF8Encode(edText.lines[linha]) + '\n';
    //if (linha = 4) then
    //  ACBrMail1.Body.Text := ACBrMail1.Body.Text + edText.lines[linha] + '</br>';
    inc(linha);
  end}


  //ACBrMail1.AltBody.Text := 'Texto puro alternativo.';
  if (edit1.Text <> '') then
  begin
    ACBrMail1.AddAttachment(anexoArquivo,edit1.Text);
  end;
  ACBrMail1.Send;
end;

end.

