unit uNFeInutilizar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Datasnap.DBClient,
  Datasnap.Provider,DateUtils;

type
  TfNFeInutilizar = class(TForm)
    Label7: TLabel;
    Label10: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    MemoResp: TMemo;
    ComboBox1: TComboBox;
    edtAno: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtModelo: TEdit;
    Label3: TLabel;
    edtSerie: TEdit;
    Label4: TLabel;
    edtNumIni: TEdit;
    Label5: TLabel;
    edtNumFim: TEdit;
    btnInutilizar: TButton;
    btnSair: TButton;
    edtJustificativa: TEdit;
    Label6: TLabel;
    d_2: TDataSetProvider;
    cds_ccusto: TClientDataSet;
    sEmpresa: TZQuery;
    s_2: TZQuery;
    s_2CODIGO: TIntegerField;
    s_2CONTA: TWideStringField;
    s_2NOME: TWideStringField;
    cds_ccustoCODIGO: TIntegerField;
    cds_ccustoCONTA: TWideStringField;
    cds_ccustoNOME: TWideStringField;
    dspBusca: TDataSetProvider;
    cdsBusca: TClientDataSet;
    sdsBusca: TZQuery;
    sEmpresaEMPRESA: TWideStringField;
    sEmpresaRAZAO: TWideStringField;
    sEmpresaCNPJ_CPF: TWideStringField;
    sEmpresaENDERECO: TWideStringField;
    sEmpresaLOGRADOURO: TWideStringField;
    sEmpresaBAIRRO: TWideStringField;
    sEmpresaCIDADE: TWideStringField;
    sEmpresaUF: TWideStringField;
    sEmpresaCEP: TWideStringField;
    sEmpresaDDD: TWideStringField;
    sEmpresaFONE: TWideStringField;
    sEmpresaFONE_1: TWideStringField;
    sEmpresaFONE_2: TWideStringField;
    sEmpresaFAX: TWideStringField;
    sEmpresaE_MAIL: TWideStringField;
    sEmpresaWEB: TWideStringField;
    sEmpresaLOGOTIPO: TBlobField;
    sEmpresaCODIGO: TIntegerField;
    sEmpresaTIPO: TWideStringField;
    sEmpresaIE_RG: TWideStringField;
    sEmpresaSLOGAN: TWideStringField;
    sEmpresaOUTRAS_INFO: TWideStringField;
    sEmpresaCODIGO_CONTA: TIntegerField;
    sEmpresaDIVERSOS1: TWideStringField;
    sEmpresaDIVERSOS2: TWideStringField;
    sEmpresaDIVERSOS3: TWideStringField;
    sEmpresaANOLETIVO: TIntegerField;
    sEmpresaMEDIA_ESCOLA: TFloatField;
    sEmpresaPORTA: TIntegerField;
    sEmpresaSMTP: TWideStringField;
    sEmpresaSENHA: TWideStringField;
    sEmpresaCCUSTO: TIntegerField;
    sEmpresaNUMERO: TWideStringField;
    sEmpresaCD_IBGE: TWideStringField;
    sEmpresaCRT: TIntegerField;
    sEmpresaTREGIME: TIntegerField;
    sEmpresaIM: TWideStringField;
    sEmpresaCONTADOR: TWideStringField;
    sEmpresaCONTADOR_CRC: TWideStringField;
    sEmpresaCONTADOR_CNPJ: TWideStringField;
    sEmpresaCONTADOR_CPF: TWideStringField;
    sEmpresaCONTADOR_CEP: TWideStringField;
    sEmpresaCONTADOR_END: TWideStringField;
    sEmpresaCONTADOR_NUMEND: TWideStringField;
    sEmpresaCONTADOR_COMPL: TWideStringField;
    sEmpresaCONTADOR_BAIRRO: TWideStringField;
    sEmpresaCONTADOR_FONE: TWideStringField;
    sEmpresaCONTADOR_FAX: TWideStringField;
    sEmpresaCONTADOR_EMAIL: TWideStringField;
    sEmpresaCONTADOR_COD_MUN: TWideStringField;
    sEmpresaCODINDTIPOCON: TSmallintField;
    sEmpresaINDAPROCRED: TSmallintField;
    sEmpresaCODINDINCTRIBUTARIA: TSmallintField;
    sEmpresaINDICADORATIVIDADE: TSmallintField;
    sEmpresaINDICADORNATUREZAPJ: TSmallintField;
    sEmpresaINDCODINCIDENCIA: TSmallintField;
    sEmpresaCODINDCRITESCRIT: TSmallintField;
    sEmpresaINDESCRITURACAO: TSmallintField;
    sEmpresaINDCTA: TSmallintField;
    sEmpresaINDTIPCOOP: TSmallintField;
    sEmpresaINDAJ: TSmallintField;
    sEmpresaBASECALCULOCREDITO: TSmallintField;
    sEmpresaCODAJ: TSmallintField;
    sEmpresaINDNATREC: TSmallintField;
    sEmpresaCODCRED: TSmallintField;
    sEmpresaNATCREDDESC: TSmallintField;
    sEmpresaINDCREDORI: TSmallintField;
    sEmpresaINDREC: TSmallintField;
    sEmpresaCODCONT: TSmallintField;
    sEmpresaINDDESCCRED: TSmallintField;
    sEmpresaINDORIGEMDIVERSAS: TSmallintField;
    sEmpresaINDNATRETFONTE: TSmallintField;
    sEmpresaINDTPOPERACAORECEITA: TSmallintField;
    sEmpresaINDNATDEDUCAO: TSmallintField;
    sEmpresaCNPJPREFEITURA: TWideStringField;
    sEmpresaNOMEPREFEITURA: TWideStringField;
    sEmpresaCHAVELIC: TWideStringField;
    sEmpresaCHAVECONT: TWideStringField;
    sEmpresaMODELOCUPOM: TWideStringField;
    sEmpresaECFMOD: TWideStringField;
    sEmpresaECFFAB: TWideStringField;
    sEmpresaECFCX: TWideStringField;
    procedure btnInutilizarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   nfeaInutilizar: String;
  end;

var
  fNFeInutilizar: TfNFeInutilizar;

implementation

{$R *.dfm}


uses principal, udm;

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
       protocoloInutilizacao := QuotedStr(IntToStr(i))
    else
       protocoloInutilizacao := protocoloInutilizacao + ', ' + QuotedStr(IntToStr(i));
  end;
  if (cdsBusca.Active) then
    cdsBusca.Close;
  cdsBusca.CommandText := 'select NUMNF from NOTAFISCAL ' +
    ' WHERE NOTASERIE IN (' + protocoloInutilizacao + ') and (SERIE = ' +
    QuotedStr(edtSerie.Text) + ') AND (PROTOCOLOENV IS NOT NULL)';
  cdsBusca.Open;

  if (not cdsBusca.IsEmpty) then
  begin
    MessageDlg('Já existe NF emitida com esta numeração.', mtInformation, [mbOK], 0);
    exit;
  end;
  protocoloInutilizacao := '111111111111';

  //verifica se o CC foi selecionado caso não da mensagem avisando
  if(sEmpresa.IsEmpty) then
    MessageDlg('Centro de custo não selecionado', mtError, [mbOK], 0);
  //try
  Form1.ACBrNFe1.WebServices.Inutiliza(RemoveChar(sEmpresaCNPJ_CPF.AsString), edtJustificativa.text, StrToInt(edtAno.text), StrToInt(edtModelo.Text), StrToInt(edtSerie.Text), StrToInt(edtNumIni.Text), StrToInt(edtNumFim.Text));
  MemoResp.Lines.Text :=  UTF8Encode(Form1.ACBrNFe1.WebServices.Inutilizacao.RetWS);
  //finally
  protocoloInutilizacao := Form1.ACBrNFe1.WebServices.Retorno.Protocolo;
  MessageDlg('Protocolo de Inutilização: ' + protocoloInutilizacao, mtInformation, [mbOK], 0);
  //end;

  if (protocoloInutilizacao <> '111111111111') then
  begin
    if (Form1.cds_parametro.Active) then
      Form1.cds_parametro.Close;
    Form1.cds_parametro.Params[0].asString := 'SERIENFE';
    Form1.cds_parametro.Open;

    Form1.con.AutoCommit := True;
    Form1.con.StartTransaction;
    try

      for i := strtoInt(edtNumIni.Text) to StrToInt(edtNumFim.Text) do
      begin
        if (cdsBusca.Active) then
          cdsBusca.Close;
        cdsBusca.CommandText := 'select GEN_ID(GEN_NF, 1) from RDB$DATABASE';
        cdsBusca.Open;
        str_sql := 'INSERT INTO NOTAFISCAL (NOTASERIE, NUMNF, NOTAFISCAL , SERIE, ' +
           'STATUS, DATA_SISTEMA, DTAEMISSAO, CORPONF1, CORPONF2, PROTOCOLOENV, NFE_FINNFE, ' +
           ' NATUREZA, CODCLIENTE, CFOP) VALUES( ';
        str_sql := str_sql + QuotedStr(IntToStr(i)) + ', ';
        str_sql := str_sql + IntToStr(cdsBusca.Fields[0].AsInteger) + ', ';
        str_sql := str_sql + IntToStr(i) + ', ';
        str_sql := str_sql + QuotedStr(Form1.cds_parametroD1.AsString) + ', ';
        str_sql := str_sql + QuotedStr('I') + ', ';
        str_sql := str_sql + QuotedStr(formatdatetime('mm/dd/yyyy', today)) + ', ';
        str_sql := str_sql + QuotedStr(formatdatetime('mm/dd/yyyy', today)) + ', ';
        str_sql := str_sql + QuotedStr('Usuário : ' + Form1.varLogado) + ', ';
        str_sql := str_sql + QuotedStr('Justificativa : ' + edtJustificativa.Text) + ', ';
        str_sql := str_sql + QuotedStr(protocoloInutilizacao) + ', ';
        str_sql := str_sql + QuotedStr('fnInutilizado') + ', ';
        str_sql := str_sql + '12, 0,';  // Natureza , codcliente
        str_sql := str_sql + QuotedStr('INUTILIZADA') + ')';
        Form1.con.ExecuteDirect(str_sql);
      end;

      Form1.con.Commit;
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        Form1.con.Rollback; //on failure, undo the changes}
      end;
    end;
  end
  else begin
    MessageDlg('Erro na inutilização, número não inutilizado.', mtWarning, [mbOK], 0);
  end;

end;

procedure TfNFeInutilizar.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TfNFeInutilizar.FormCreate(Sender: TObject);
var conta_local: string;
begin
    if Form1.cds_parametro.Active then
      Form1.cds_parametro.Close;
    Form1.cds_parametro.Params[0].AsString := 'CENTRORECEITA';
    Form1.cds_parametro.Open;
    conta_local := Form1.cds_parametroDADOS.AsString;
    Form1.cds_parametro.Close;
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

end.
