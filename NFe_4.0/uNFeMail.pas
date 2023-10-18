unit uNFeMail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, MMJPanel, xmldom, XMLIntf, Buttons,
  JvExButtons, JvBitBtn, msxmldom, XMLDoc, FMTBcd, DB, SqlExpr, Provider,
  DBClient, XPMenu, gbCobranca, ACBrBase, ACBrMail;

type
  TfNFeMail = class(TForm)
    XMLDocument1: TXMLDocument;
    btnEnviar: TJvBitBtn;
    ComboBox1: TComboBox;
    cds_ccusto: TClientDataSet;
    cds_ccustoCODIGO: TIntegerField;
    cds_ccustoCONTA: TStringField;
    cds_ccustoNOME: TStringField;
    d_2: TDataSetProvider;
    OpenDialog1: TOpenDialog;
    procedure FormCreate(Sender: TObject);
    procedure BtnSelecionaClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnEnviarClick(Sender: TObject);
    procedure sbtnCCClick(Sender: TObject);
  private
    { Private declarations }
    procedure enviarEmailNfe;
  public
    { Public declarations }
  end;

var
  fNFeMail: TfNFeMail;
  CC, Texto: Tstrings;

implementation

uses uNFeletronica, UDm;

{$R *.dfm}

procedure TfNFeMail.FormCreate(Sender: TObject);
begin
  Memo1.Lines.Clear;
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTRORECEITA';
  dm.cds_parametro.Open;
  conta_local := dm.cds_parametroDADOS.AsString;
  dm.cds_parametro.Close;
  if cds_ccusto.Active then
    cds_ccusto.Close;
  cds_ccusto.Params[0].AsString := conta_local;
  cds_ccusto.Open;
  // populo a combobox
  cds_ccusto.First;
  while not cds_ccusto.Eof do
  begin
    ComboBox1.Items.Add(cds_ccustoNOME.AsString);
    cds_ccusto.Next;
  end;
end;

procedure TfNFeMail.BtnSelecionaClick(Sender: TObject);
var
 numnf, IDNFE, RAZAO, CNPJ, CPF, TRANSP, caminho, Protocolo : String;
 vXMLDoc: TXMLDocument;
begin
    Memo1.Clear;
    if (not cds_ccusto.Active) then
         cds_ccusto.Open;
       cds_ccusto.Locate('NOME', ComboBox1.Text,[loCaseInsensitive]);

      if (sEmpresa.Active) then
         sEmpresa.Close;
       sEmpresa.Params[0].AsInteger := cds_ccustoCODIGO.AsInteger;
       sEmpresa.Open;

      vXMLDoc := TXMLDocument.Create(self);
      OpenDialog1.Title := 'Selecione a NFE';
      OpenDialog1.DefaultExt := '*-nfe.XML';
      OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
      OpenDialog1.InitialDir := fNFeletronica.Edit1.Text;
      if OpenDialog1.Execute then
      begin
        fNFeletronica.ACBrNFe1.NotasFiscais.Clear;
        caminho := OpenDialog1.FileName;
        fNFeletronica.ACBrNFe1.NotasFiscais.LoadFromFile(caminho);
        CC:=TstringList.Create;

        //ABRE A NOTA
        vXMLDoc.LoadFromFile(caminho);
        with vXMLDoc.DocumentElement  do
        begin
          IDNFE  := ChildNodes['NFe'].ChildNodes['infNFe'].AttributeNodes['Id'].Text;
          numnf  := ChildNodes['NFe'].ChildNodes['infNFe'].ChildNodes['ide'].ChildNodes['nNF'].Text;
          RAZAO  := ChildNodes['NFe'].ChildNodes['infNFe'].ChildNodes['dest'].ChildNodes['xNome'].Text;
          CNPJ   := ChildNodes['NFe'].ChildNodes['infNFe'].ChildNodes['dest'].ChildNodes['CNPJ'].Text;
          CPF    := ChildNodes['NFe'].ChildNodes['infNFe'].ChildNodes['dest'].ChildNodes['CPF'].Text;
          TRANSP := ChildNodes['NFe'].ChildNodes['infNFe'].ChildNodes['transp'].ChildNodes['transporta'].ChildNodes['xNome'].Text;
          if ( (numnf = '') and (RAZAO = '') and (CNPJ = '') and (CPF = '') ) then
          begin
            IDNFE  := ChildNodes['infNFe'].AttributeNodes['Id'].Text;
            numnf  := ChildNodes['infNFe'].ChildNodes['ide'].ChildNodes['nNF'].Text;
            RAZAO  := ChildNodes['infNFe'].ChildNodes['dest'].ChildNodes['xNome'].Text;
            CNPJ   := ChildNodes['infNFe'].ChildNodes['dest'].ChildNodes['CNPJ'].Text;
            CPF    := ChildNodes['infNFe'].ChildNodes['dest'].ChildNodes['CPF'].Text;
            TRANSP := ChildNodes['infNFe'].ChildNodes['transp'].ChildNodes['transporta'].ChildNodes['xNome'].Text;
          end;

        end;
        fNFeletronica.ACBrNFe1.WebServices.Retorno.Protocolo := fNFeletronica.ACBrNFe1.WebServices.Consulta.Protocolo;
        Protocolo := fNFeletronica.ACBrNFe1.WebServices.Retorno.Protocolo;
        Texto := TStringList.Create;
        Texto.Add('Empresa emissora da NF-e: ' + sEmpresaRAZAO.AsString);
        Texto.Add('CNPJ/CPF da Empresa Emissora: ' + sEmpresaCNPJ_CPF.AsString);
        Texto.Add('Empresa destacada na NF-e: ' + RAZAO);
        Texto.Add('CNPJ/CPF da Empresa/Cliente destacado: ' + CNPJ + CPF);
        Texto.Add('Número da NF: ' + numnf + ' Série 1');
        Texto.Add('Chave de identificação: ' + IDNFE);
        Texto.Add('');
        Texto.Add('');
        Texto.Add('Consulte no Portal Nacional da NFe: https://www.nfe.fazenda.gov.br/portal/FormularioDePesquisa.aspx?tipoconsulta=completa .');
        Texto.Add('Ou consulte pela página do SEFAZ do seu estado.');

        if (sEmail.Active) then
         sEmail.Close;
        if ( (StrLen(PChar(CPF))) > 0) then
          sEmail.Params[0].Text := CPF
        else
          sEmail.Params[0].Text := CNPJ;
          sEmail.Open;
        if (sEmail.IsEmpty) then
        begin
          sEmail.Close;
          sEmail.CommandText := ' select f.CODFORNECEDOR CODCLIENTE, f.NOMEFORNECEDOR NOMECLIENTE,'+
             ' cast(f.RAZAOSOCIAL as varchar (60) )as RAZAOSOCIAL, ef.E_MAIL ' +
             ' from FORNECEDOR f ' +
             ' inner join ENDERECOFORNECEDOR ef on ef.CODFORNECEDOR = f.CODFORNECEDOR ' +
             ' where UDF_DIGITS(f.CNPJ) = :raz and ef .TIPOEND = 0 ';
          if ( (StrLen(PChar(CPF))) > 0) then
            sEmail.Params[0].Text := CPF
          else
            sEmail.Params[0].Text := CNPJ;
            sEmail.Open;
        end;
        if (sTransportadora.Active) then
          sTransportadora.Close;
        sTransportadora.Open;

    end;
    CC.Add(sEmpresaE_MAIL.AsString); //especifique um email válido
    if (sTransportadoraEMAIL.AsString <> '') then
    begin
      CC.Add(sTransportadoraEMAIL.AsString);
      Memo1.Lines.Add(sTransportadoraEMAIL.AsString);
    end;
    memo1.Lines.Add(sEmpresaE_MAIL.AsString);
    Edit1.Text := IntToStr(sEmailCODCLIENTE.AsInteger);
    Edit2.Text := sEmailRAZAOSOCIAL.AsString;
    Edit3.Text := sEmailE_MAIL.AsString;
    btnEnviar.Enabled := True;

end;

procedure TfNFeMail.btnSairClick(Sender: TObject);
begin
  fNFeMail.Close;
end;

procedure TfNFeMail.btnEnviarClick(Sender: TObject);
begin
  lblMsg.Visible := True;
  lblMsg.Caption := 'Aguarde, enviando email ...';
  enviarEmailNfe;
  lblMsg.Caption := 'Enviado';
end;

procedure TfNFeMail.sbtnCCClick(Sender: TObject);
begin
  CC.Add(Edit5.Text);
  Memo1.Lines.Add(edit5.Text);
  Edit5.Clear;
end;

procedure TfNFeMail.enviarEmailNfe;
var i:Integer;
begin
  Try
    CC.Clear;
    cc.Add(Edit3.Text);
    for I := 0 to memo1.Lines.Count-1 do begin
      CC.Add(Trim(Memo1.Lines[I]));
    end;
    //CC.Add(sEmpresaE_MAIL.AsString);
    if ((ComboBox1.Text = NULL) or (ComboBox1.Text = ''))then
      MessageDlg('Centro de Custo não Selecionado', mtError, [mbOK], 0)
    else
    begin
      try
        // 29/12/2015
        fNFeletronica.ACBrMail1.Port := sEmpresaPORTA.AsString;
        fNFeletronica.ACBrMail1.Host := sEmpresaSMTP.AsString;
        fNFeletronica.ACBrMail1.Username := sEmpresaE_MAIL.AsString;
        fNFeletronica.ACBrMail1.Password := sEmpresaSENHA.AsString;
        fNFeletronica.ACBrMail1.From := sEmpresaE_MAIL.AsString;
        fNFeletronica.ACBrMail1.FromName := sEmpresaEMPRESA.AsString;
        fNFeletronica.ACBrMail1.AddAddress(sEmailE_MAIL.AsString);
        if (dm.email_tls = 'S') then
          fNFeletronica.ACBrMail1.SetTLS := True;
        if (dm.email_ssl = 'S') then
          fNFeletronica.ACBrMail1.SetSSL := True;

       // 29/12/2015
       { fNFeletronica.ACBrNFe1.NotasFiscais.Items[0].EnviarEmail(sEmpresaSMTP.AsString
                                                 , sEmpresaPORTA.AsString
                                                 , sEmpresaE_MAIL.AsString
                                                 , sEmpresaSENHA
                                                 , sEmpresaE_MAIL.AsString
                                                 , sEmailE_MAIL
                                                 , EdtAssunto.Text
                                                 , Texto
                                                 , False
                                                 , True //Enviar PDF junto
                                                 , CC //com copia
                                                 , nil // Lista de anexos - TStrings
                                                 , False  //Pede confirmação de leitura do email
                                                 , True  //Aguarda Envio do Email(não usa thread)
                                                 , sEmpresaRAZAO.AsString ); // Nome do Rementente
        }

        fNFeletronica.ACBrNFe1.NotasFiscais.Items[0].EnviarEmail(sEmailE_MAIL.AsString
                                                 , EdtAssunto.Text
                                                 , Texto
                                                 , True //Enviar PDF junto
                                                 , CC //com copia
                                                 , nil // Lista de anexos - TStrings
                                                 );


        ShowMessage('Email enviado com sucesso!');
      except
         on E: Exception do
          begin
            raise Exception.Create('Erro ao enviar email'+sLineBreak+E.Message);
          end;
      end;
    end;
  finally
    CC.Clear;
    CC.Free;
    Texto.Free;
    fNFeletronica.ACBrNFe1.NotasFiscais.Clear;
  end;

end;

end.
