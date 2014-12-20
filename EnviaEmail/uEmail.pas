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
    MessageDlg('Informe o Grupo de Email que será Criado.', mtWarning, [mbOK], 0);
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
    cdsEnvia.DisableControls;
    cdsEnvia.First;
    while not cdsEnvia.Eof do
    begin
      enviarEmailAcbr;
      { carlos 19/12/2014
      IdMessage1.From.Address := dm.cds_empresaE_MAIL.AsString; //'atsti@bol.com.br' ; //
      // e-mail do destinatário
      IdMessage1.Recipients.EMailAddresses := cdsEnviaEMAIL.AsString;
      // Assunto
      IdMessage1.Subject := edtAssunto.Text;
      IdMessage1.Body.Add(edText.Text);
      IdMessage1.ContentType := 'text/html';
      //TIdAttachmentFile.Create(IdMessage1.MessageParts, TFileName('C:\home\avisos\gerenciador.jpg'));
      for Anexo := 0 to lbxAnexos.Items.Count-1 do
      begin
        TIdAttachmentFile.Create(idmessage1.MessageParts, TFileName(lbxAnexos.Items.Strings[Anexo]));
      end;
      //fim da mensagem
      //Configuração do IdSMTP SMTP
      IdSMTP1.Host := dm.cds_empresaSMTP.AsString;//  'smtps.bol.com.br';
      // Port do Provedor
      IdSMTP1.Port := dm.cds_empresaPORTA.AsInteger;//  587;
      // Login do usuário
      IdSMTP1.Username := dm.cds_empresaE_MAIL.AsString;// 'atsti@bol.com.br' ;
      // Password Senha do usuário
      IdSMTP1.Password := dm.cds_empresaSENHA.AsString;// 'a2t00s7' ;
      if (dm.cds_empresaPORTA.AsInteger <> 25) then
      begin
        // configurações adicionais servidor SMTP com autenticação
        with idSMTP1 do
        begin
           IdSSL := nil;
           try
              port := 465;
              IdSSL := TIdSSLIOHandlerSocketOpenSSL.Create( nil );
              IdSMTP1.IOHandler := IdSSL;
              UseTLS := utUseImplicitTLS;
           except
              on E: Exception do
              begin
                 IOHandler := TIdIOHandler.MakeDefaultIOHandler( nil );
                 UseTLS := utNoTLSSupport;
              end;
           end;
           if Assigned(IdSSL) then
           begin
              IdSSL.SSLOptions.Method := sslvSSLv3;
              IdSSL.SSLOptions.Mode := sslmClient;
           end;
        end;
        idSMTP1.AuthType := IdSMTP.atDefault;
      end;
      IdSMTP1.Connect;
      try
        //IdSMTP1.SendCmd('STARTTLS', 220);
        FlatGauge1.Progress := FlatGauge1.Progress + 20;
        IdSMTP1.Authenticate; //Faz a autenticação
        IdSMTP1.Send(IdMessage1); //Envia a mensagem
        dm.sqlsisAdimin.ExecuteDirect('UPDATE EMAIL_ENVIAR SET DATAENVIO = ' +
        QuotedStr(Formatdatetime('mm/dd/yyyy', today)) +
        ', ENVIADO = ' + QuotedStr('S') +
        ', ASSUNTO = ' + QuotedStr(edtAssunto.Text) +
        ', GRUPO   = ' + QuotedStr(cbbSerie.Text) +
        ' WHERE CODEMAIL = ' + IntToStr(cdsEnviaCODEMAIL.AsInteger));
        //MessageDlg('Email enviado com sucesso para, ' + FormCadastroAlunoConsulta.scdsAlunoNOME.AsString, mtWarning, [mbOK], 0);
      finally
        IdSMTP1.Disconnect;
        IdMessage1.Clear;
      end;
      FlatGauge1.Progress :=  FlatGauge1.Progress + cdsEnvia.recNo;
      carlos }
      dm.sqlsisAdimin.ExecuteDirect('UPDATE EMAIL_ENVIAR SET DATAENVIO = ' +
        QuotedStr(Formatdatetime('mm/dd/yyyy', today)) +
        ', ENVIADO = ' + QuotedStr('S') +
        ', ASSUNTO = ' + QuotedStr(edtAssunto.Text) +
        ', GRUPO   = ' + QuotedStr(cbbSerie.Text) +
        ' WHERE CODEMAIL = ' + IntToStr(cdsEnviaCODEMAIL.AsInteger));

      sleep(2000);
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
     1: str := 'N'; // Enviado Não

  end;

  cdsEnvia.CommandText := 'Select * from EMAIL_ENVIAR where (GRUPO = '+
  QuotedStr(cbBSerie.Text) + ') AND (ENVIADO = ' +  QuotedStr(str) +
  ') order by  ASSUNTO';
  cdsEnvia.Open;

  Application.MessageBox('Email enviado com sucesso!', 'Confirmação',
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
    MessageDlg('Item excluído com sucesso.', mtInformation, [mbOK], 0);
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
     1: str := 'N'; // Enviado Não

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

  cdsEnvia.Open;

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
     1: str := 'N'; // Enviado Não

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
    MessageDlg('Alteração com Sucesso.', mtInformation, [mbOK], 0);
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
    btnEnviado.Caption := 'Não Enviado';
  if (cdsEnviaENVIADO.asString = 'N') then
    btnEnviado.Caption := 'Enviado';
end;

procedure TForm1.btnEnviadoClick(Sender: TObject);
begin
  if (btnEnviado.Caption = 'Não Enviado') then
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
  ACBrMail1.Subject := edtAssunto.Text; //'Teste de Envio'; // assunto
  ACBrMail1.IsHTML := True; // define que a mensagem é html
  // mensagem principal do e-mail. pode ser html ou texto puro
  if (chkTipo.Checked) then
  begin
    ACBrMail1.SetTLS := True;
    //ACBrMail1.SetSSL := True;
  end;
  ACBrMail1.Body.Text :=
  '<html>'+#13+#10+
  '<head>'+#13+#10+#13+#10+
  '  <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">'+#13+#10+
  '</head>'+#13+#10+
  '<body text="#000000" bgcolor="#FFFFFF">'+#13+#10+
  '<img style="margin:1px 1px 1px 0px;"' +
  '<IMG SRC="cid:' + edit1.Text + '">'+
  '</body>'+#13+#10+
  '</html>'+#13+#10;

  //  '<img>imagem1<img>'+#13+#10+

     {     text.Body.Add('<img>imagem1<img>');
          text.Body.Add('<img style="margin:1px 1px 1px 0px;"');
          text.Body.Add('<IMG SRC="cid:alemanha.jpg">');
          text.Body.Add('</BODY><HTML>');
          //anexa as imagens que vai no email
          text := TIdText.Create(email.MessageParts);
          text.ContentType := 'text/plain';
          anexo := TIdAttachmentFile.Create(email.MessageParts,'D:\imagens\alemanha.jpg');
          anexo.ExtraHeaders.Values['content-ID'] := 'alemanha.jpg';

      exemplo q eu usei }

  //ACBrMail1.AltBody.Text := 'Texto puro alternativo.';
  ACBrMail1.AddAttachment(anexoArquivo,edit1.Text);
  ACBrMail1.Send
end;

end.

