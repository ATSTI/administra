unit uNFeInutilizar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, JvExMask, JvToolEdit, Buttons,
  MMJPanel, ACBrNFe, xmldom, XMLIntf, msxmldom, XMLDoc, FMTBcd, DB,
  DBClient, Provider, SqlExpr, Grids, DBGrids, JvExDBGrids, JvDBGrid, DBXpress, DateUtils;

type
  TfNFeInutilizar = class(TForm)
    MMJPanel1: TMMJPanel;
    edtAno: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtModelo: TEdit;
    edtSerie: TEdit;
    Label3: TLabel;
    edtNumIni: TEdit;
    Label4: TLabel;
    edtNumFim: TEdit;
    Label5: TLabel;
    edtJustificativa: TEdit;
    Label6: TLabel;
    btnInutilizar: TButton;
    btnSair: TButton;
    MemoResp: TMemo;
    ComboBox1: TComboBox;
    Label7: TLabel;
    MMJPanel2: TMMJPanel;
    JvDBGrid1: TJvDBGrid;
    s_2: TSQLDataSet;
    s_2CODIGO: TIntegerField;
    s_2CONTA: TStringField;
    s_2NOME: TStringField;
    d_2: TDataSetProvider;
    cds_ccusto: TClientDataSet;
    cds_ccustoCODIGO: TIntegerField;
    cds_ccustoCONTA: TStringField;
    cds_ccustoNOME: TStringField;
    sEmpresa: TSQLDataSet;
    sEmpresaEMPRESA: TStringField;
    sEmpresaRAZAO: TStringField;
    sEmpresaCNPJ_CPF: TStringField;
    sEmpresaENDERECO: TStringField;
    sEmpresaLOGRADOURO: TStringField;
    sEmpresaBAIRRO: TStringField;
    sEmpresaCIDADE: TStringField;
    sEmpresaUF: TStringField;
    sEmpresaCEP: TStringField;
    sEmpresaDDD: TStringField;
    sEmpresaFONE: TStringField;
    sEmpresaFONE_1: TStringField;
    sEmpresaFONE_2: TStringField;
    sEmpresaFAX: TStringField;
    sEmpresaE_MAIL: TStringField;
    sEmpresaWEB: TStringField;
    sEmpresaLOGOTIPO: TGraphicField;
    sEmpresaCODIGO: TIntegerField;
    sEmpresaTIPO: TStringField;
    sEmpresaIE_RG: TStringField;
    sEmpresaSLOGAN: TStringField;
    sEmpresaOUTRAS_INFO: TStringField;
    sEmpresaCODIGO_CONTA: TIntegerField;
    sEmpresaDIVERSOS1: TStringField;
    sEmpresaDIVERSOS2: TStringField;
    sEmpresaDIVERSOS3: TStringField;
    sEmpresaANOLETIVO: TIntegerField;
    sEmpresaMEDIA_ESCOLA: TFloatField;
    sEmpresaPORTA: TIntegerField;
    sEmpresaSMTP: TStringField;
    sEmpresaSENHA: TStringField;
    sEmpresaNUMERO: TStringField;
    sEmpresaCCUSTO: TIntegerField;
    sEmpresaCD_IBGE: TStringField;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    procedure btnInutilizarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    nfeaInutilizar: String;
    { Public declarations }
  end;

var
  fNFeInutilizar: TfNFeInutilizar;

implementation

uses uNFeletronica, UDm;

{$R *.dfm}

Function RemoveChar(Const Texto:String):String;
// Remove caracteres de uma string deixando apenas numeros
var
  I: integer;
  S: string;
begin
  S := '';
  for I := 1 To Length(Texto) Do
  begin
    if (Texto[I] in ['0'..'9']) then
    begin
     S := S + Copy(Texto, I, 1);
    end;
  end;
  result := S;
end;

procedure TfNFeInutilizar.btnInutilizarClick(Sender: TObject);
var i: Integer;
 protocoloInutilizacao: String;
 TD: TTransactionDesc;
 str_sql: String;
begin

  if (not cds_ccusto.Active) then
    cds_ccusto.Open;
  cds_ccusto.Locate('NOME', ComboBox1.Text,[loCaseInsensitive]);

  //Seleciona Empresa de acordo com o CCusto selecionado
  if (sEmpresa.Active) then
    sEmpresa.Close;
  sEmpresa.Params[0].AsInteger := cds_ccustoCODIGO.AsInteger;
  sEmpresa.Open;

  for i := strtoInt(edtNumIni.Text) to StrToInt(edtNumFim.Text) do
  begin
    if (protocoloInutilizacao = '') then
       protocoloInutilizacao := IntToStr(i)
    else
       protocoloInutilizacao := protocoloInutilizacao + ', ' + IntToStr(i);
  end;
  if (dm.cdsBusca.Active) then
    dm.cdsBusca.Close;
  dm.cdsBusca.CommandText := 'select NUMNF from NOTAFISCAL ' +
    ' WHERE NOTASERIE IN (' + protocoloInutilizacao + ') and (SERIE = ' +
    QuotedStr(edtSerie.Text) + ') AND (PROTOCOLOENV IS NOT NULL)';
  dm.cdsBusca.Open;

  if (not dm.cdsBusca.IsEmpty) then
  begin
    MessageDlg('Já existe NF emitida com esta numeração.', mtInformation, [mbOK], 0);
    exit;
  end;
  protocoloInutilizacao := '111111111111';

  //verifica se o CC foi selecionado caso não da mensagem avisando
  if(sEmpresa.IsEmpty) then
    MessageDlg('Centro de custo não selecionado', mtError, [mbOK], 0);
  try
    //fNFeletronica.ACBrNFe1.WebServices.Inutiliza(RemoveChar(sEmpresaCNPJ_CPF.AsString), edtJustificativa.text, StrToInt(edtAno.text), StrToInt(edtModelo.Text), StrToInt(edtSerie.Text), StrToInt(edtNumIni.Text), StrToInt(edtNumFim.Text));
    MemoResp.Lines.Text :=  UTF8Encode(fNFeletronica.ACBrNFe1.WebServices.Inutilizacao.RetWS);
  finally
    //protocoloInutilizacao := fNFeletronica.ACBrNFe1.WebServices.Retorno.Protocolo;
    MessageDlg('Protocolo de Inutilização: ' + protocoloInutilizacao, mtInformation, [mbOK], 0);
  end;

  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'SERIENFE';
  dm.cds_parametro.Open;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;

  dm.sqlsisAdimin.StartTransaction(TD);
  try

    for i := strtoInt(edtNumIni.Text) to StrToInt(edtNumFim.Text) do
    begin
      if (dm.cdsBusca.Active) then
        dm.cdsBusca.Close;
      dm.cdsBusca.CommandText := 'select GEN_ID(GEN_NF, 1) from RDB$DATABASE';
      dm.cdsBusca.Open;
      str_sql := 'INSERT INTO NOTAFISCAL (NOTASERIE, NUMNF, NOTAFISCAL , SERIE, ' +
         'STATUS, DATA_SISTEMA, DTAEMISSAO, CORPONF1, CORPONF2, PROTOCOLOENV, NFE_FINNFE, ' +
         ' NATUREZA, CODCLIENTE, CFOP) VALUES( ';
      str_sql := str_sql + QuotedStr(IntToStr(i)) + ', ';
      str_sql := str_sql + IntToStr(dm.cdsBusca.Fields[0].AsInteger) + ', ';
      str_sql := str_sql + IntToStr(i) + ', ';
      str_sql := str_sql + QuotedStr(dm.cds_parametroD1.AsString) + ', ';
      str_sql := str_sql + QuotedStr('I') + ', ';
      str_sql := str_sql + QuotedStr(formatdatetime('mm/dd/yyyy', today)) + ', ';
      str_sql := str_sql + QuotedStr(formatdatetime('mm/dd/yyyy', today)) + ', ';
      str_sql := str_sql + QuotedStr('Usuário : ' + dm.varLogado) + ', ';
      str_sql := str_sql + QuotedStr('Justificativa : ' + edtJustificativa.Text) + ', ';
      str_sql := str_sql + QuotedStr(protocoloInutilizacao) + ', ';
      str_sql := str_sql + QuotedStr('fnInutilizado') + ', ';
      str_sql := str_sql + '12, 0,';  // Natureza , codcliente
      str_sql := str_sql + QuotedStr('INUTILIZADA') + ')';
      dm.sqlsisAdimin.ExecuteDirect(str_sql);
    end;

    dm.sqlsisAdimin.Commit(TD);
  except
    on E : Exception do
    begin
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
    end;
  end;

end;

procedure TfNFeInutilizar.btnSairClick(Sender: TObject);
begin
  fNFeInutilizar.Close;
end;

procedure TfNFeInutilizar.FormCreate(Sender: TObject);
begin
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

procedure TfNFeInutilizar.FormShow(Sender: TObject);
begin
  if (nfeaInutilizar <> '') then
  begin
    edtNumIni.Text := nfeaInutilizar;
    edtNumFim.Text := nfeaInutilizar;
  end;  
end;

end.
