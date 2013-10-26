unit uprincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBXpress, DB, SqlExpr, FMTBcd, StdCtrls, Provider, DBClient,
  RLBoleto, Buttons,jpeg, RLFilters, RLPDFFilter, ComCtrls, ExtCtrls,
  RLPreviewForm, Mask, DBCtrls, JvExMask, JvToolEdit, JvMaskEdit;

type
  TForm1 = class(TForm)
    sqlboleto: TSQLConnection;
    cdsBoleto: TClientDataSet;
    dspBoleto: TDataSetProvider;
    sdsBoleto: TSQLDataSet;
    RLBTitulo1: TRLBTitulo;
    cdsBoletoDATADOC: TDateField;
    cdsBoletoDATAPROCESSAMENTO: TDateField;
    cdsBoletoCODCLIENTE: TIntegerField;
    cdsBoletoRAZAOSOCIAL: TStringField;
    cdsBoletoCNPJ: TStringField;
    cdsBoletoIE: TStringField;
    cdsBoletoENDERECO: TStringField;
    cdsBoletoBAIRRO: TStringField;
    cdsBoletoVALOR: TFloatField;
    cdsBoletoAGENCIA: TStringField;
    cdsBoletoDIGITOAGENCIA: TStringField;
    cdsBoletoCONTA: TStringField;
    cdsBoletoDIGITOCONTA: TStringField;
    cdsBoletoDATAREC: TDateField;
    cdsBoletoNUMERO: TStringField;
    cdsBoletoCIDADE: TStringField;
    cdsBoletoUF: TStringField;
    cdsBoletoCEP: TStringField;
    cdsBoletoTIPO: TSmallintField;
    cdsBoletoEMPRESA: TStringField;
    cdsBoletoCNPJ_CPF: TStringField;
    cdsBoletoINST1: TStringField;
    cdsBoletoINST2: TStringField;
    cdsBoletoNUMTITULO: TStringField;
    sdsBoletoDATADOC: TDateField;
    sdsBoletoDATAPROCESSAMENTO: TDateField;
    sdsBoletoCODCLIENTE: TIntegerField;
    sdsBoletoRAZAOSOCIAL: TStringField;
    sdsBoletoCNPJ: TStringField;
    sdsBoletoIE: TStringField;
    sdsBoletoENDERECO: TStringField;
    sdsBoletoBAIRRO: TStringField;
    sdsBoletoVALOR: TFloatField;
    sdsBoletoAGENCIA: TStringField;
    sdsBoletoDIGITOAGENCIA: TStringField;
    sdsBoletoCONTA: TStringField;
    sdsBoletoDIGITOCONTA: TStringField;
    sdsBoletoDATAREC: TDateField;
    sdsBoletoNUMERO: TStringField;
    sdsBoletoCIDADE: TStringField;
    sdsBoletoUF: TStringField;
    sdsBoletoCEP: TStringField;
    sdsBoletoTIPO: TSmallintField;
    sdsBoletoEMPRESA: TStringField;
    sdsBoletoCNPJ_CPF: TStringField;
    sdsBoletoINST1: TStringField;
    sdsBoletoINST2: TStringField;
    sdsBoletoNUMTITULO: TStringField;
    RLPDFFilter1: TRLPDFFilter;
    Panel1: TPanel;
    ProgressBar1: TProgressBar;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    comboConta: TComboBox;
    sqlconta: TSQLDataSet;
    sqlcontaNUMERO_CONTA: TStringField;
    sqlcontaDIGITO_CONTA: TStringField;
    sdsBoletoDESCPRODUTO: TStringField;
    cdsBoletoDESCPRODUTO: TStringField;
    Button1: TButton;
    RLBRemessa1: TRLBRemessa;
    RLPreviewSetup1: TRLPreviewSetup;
    Edit1: TEdit;
    Label2: TLabel;
    sqlEmpresa: TSQLDataSet;
    dspEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    dsEmpresa: TDataSource;
    sqlEmpresaANOLETIVO: TStringField;
    cdsEmpresaANOLETIVO: TStringField;
    sqlEmpresa1: TSQLDataSet;
    dspEmpresa1: TDataSetProvider;
    cdsEmpresa1: TClientDataSet;
    dsEmpresa1: TDataSource;
    sqlEmpresa1ANOLETIVO: TIntegerField;
    cdsEmpresa1ANOLETIVO: TIntegerField;
    Edit2: TEdit;
    sqlEmpresa1PORTA: TIntegerField;
    cdsEmpresa1PORTA: TIntegerField;
    sqlEmpresa1CODIGO_CONTA: TIntegerField;
    cdsEmpresa1CODIGO_CONTA: TIntegerField;
    JvDateEdit1: TJvDateEdit;
    sqlEmpresa1DATABOLETO: TDateField;
    cdsEmpresa1DATABOLETO: TDateField;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RLPreviewSetup1AfterPrint(Sender: TObject);
  private
    function PadR(ATexto: string; ATamanho: integer): string;
    function IncluirPonto(ATexto: string): string;      
    { Private declarations }
  public
    { Public declarations }
   TD: TTransactionDesc;    

  end;
  var dbxconec: TStringList;
  str_relatorio : String;
  codcliente : integer;

var
  Form1: TForm1;

implementation

uses BoletoLayout ,DateUtils;



{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
var  nQtdeBoletos: Integer;
     nI , tipo : Integer ;
begin

  if (cdsBoleto.Active) then
     cdsBoleto.Close;
   cdsBoleto.Params[0].AsString := comboConta.Text;
   cdsBoleto.Open;

  Panel1.Visible := True;
  Repaint;

  nQtdeBoletos := 1;
  ProgressBar1.Max := nQtdeBoletos;
  ProgressBar1.Position := 0;
  ProgressBar1.Visible := True;
   nI := 1;
  while not (cdsBoleto.Eof) do
  begin

   ProgressBar1.Position := nI;


    //Dados do Cedente
    RLBTitulo1.LocalPagamento := 'PAGÁVEL PREFERENCIALMENTE NAS COOPERATIVAS DE CRÉDITO DO SICREDI';
    RLBTitulo1.Cedente.ContaBancaria.Banco.Codigo := '748';
    RLBTitulo1.Cedente.ContaBancaria.CodigoAgencia := IntToStr(cdsBoletoAGENCIA.AsInteger);
    RLBTitulo1.Cedente.ContaBancaria.DigitoAgencia := IntToStr(cdsBoletoDIGITOAGENCIA.AsInteger);
    RLBTitulo1.Cedente.ContaBancaria.NumeroConta :=  comboConta.Text ; //IntToStr(cdsBoletoCONTA.AsInteger);
    RLBTitulo1.Cedente.ContaBancaria.DigitoConta := IntToStr(cdsBoletoDIGITOCONTA.AsInteger);
    RLBTitulo1.Cedente.CodigoCedente := IntToStr(cdsBoletoCONTA.AsInteger);
    RLBTitulo1.Cedente.DigitoCodigoCedente := IntToStr(cdsBoletoDIGITOCONTA.AsInteger);
    RLBTitulo1.Carteira := '';
    RLBTitulo1.Cedente.ContaBancaria.Convenio := '';
    RLBTitulo1.Cedente.ContaBancaria.NomeCliente := cdsBoletoEMPRESA.AsString;
    RLBTitulo1.Cedente.TipoInscricao := tiPessoaJuridica;
    RLBTitulo1.Cedente.NumeroCPFCGC := cdsBoletoCNPJ_CPF.AsString;
    RLBTitulo1.Cedente.Nome := cdsBoletoEMPRESA.AsString;

    //dados do sacado
    //codcliente := cdsBoletoCODCLIENTE.AsInteger;

    RLBTitulo1.Sacado.Codigo := cdsBoletoCODCLIENTE.AsInteger;


    RLBTitulo1.Sacado.Nome := cdsBoletoRAZAOSOCIAL.AsString;
    case (cdsBoletoTIPO.AsInteger) of
      0: RLBTitulo1.Sacado.TipoInscricao := tiPessoaFisica;
      1: RLBTitulo1.Sacado.TipoInscricao := tiPessoaJuridica;
    end;


    RLBTitulo1.Sacado.NumeroCPFCGC := cdsBoletoCNPJ.AsString;
    RLBTitulo1.Sacado.Endereco.Rua := cdsBoletoENDERECO.AsString;
    RLBTitulo1.Sacado.Endereco.CEP := cdsBoletoCEP.AsString;
    RLBTitulo1.Sacado.Endereco.Cidade := cdsBoletoCIDADE.AsString;
    RLBTitulo1.Sacado.Endereco.Estado := cdsBoletoUF.AsString;

    //dados da cobranca
    RLBTitulo1.NossoNumero :=  cdsBoletoNUMTITULO.AsString;
    RLBTitulo1.ValorDocumento := cdsBoletoVALOR.Value;
    RLBTitulo1.DataDocumento := cdsBoletoDATAPROCESSAMENTO.AsDateTime;
    RLBTitulo1.DataVencimento := cdsBoletoDATAREC.AsDateTime;   // DATA VENCIMENTO
    RLBTitulo1.NumeroDocumento := cdsBoletoNUMTITULO.AsString;


    //instrução
    RLBTitulo1.Instrucoes.Text := cdsBoletoINST1.AsString;

    RLBTitulo1.Referencia := cdsBoletoDESCPRODUTO.AsString;

    RLBTitulo1.Preparar;
    cdsBoleto.Next;

    ProgressBar1.Visible := False;
    Repaint;
    end;


   RLBTitulo1.Visualizar;
   Panel1.Visible := False;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  sqlboleto.LoadParamsFromIniFile('dbxconnections.ini');
  sqlboleto.LibraryName := 'dbexpUIBfire15.dll';
  sqlboleto.VendorLib := 'FBCLIENT.DLL';
  dbxconec := TStringList.Create;
  try
    dbxconec.LoadFromFile('dbxconnections.ini');
    str_relatorio := dbxconec[14];
    str_relatorio := copy(str_relatorio,16,length(str_relatorio));
  finally
    dbxconec.Free;
  end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  sqlboleto.StartTransaction(TD);

  if sqlconta.Active then
    sqlconta.Close;
  sqlconta.Open;
  sqlconta.First;
  while not sqlconta.Eof do
  begin
    Comboconta.Items.Add(sqlcontaNUMERO_CONTA.AsString);
    sqlconta.Next;
  end;
  sqlconta.Close;

  JvDateEdit1.Date := Today;

  if (cdsEmpresa1.Active) then
     cdsEmpresa1.Close;
   cdsEmpresa1.Open;



  if (cdsEmpresa1DATABOLETO.Value <> JvDateEdit1.Date )then

      sqlboleto.ExecuteDirect('Update EMPRESA set PORTA = 0  , CODIGO_CONTA = 0 , DATABOLETO = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', today)));


   cdsEmpresa1.Close;

  sqlboleto.Commit(TD);

end;

procedure TForm1.Button1Click(Sender: TObject);
var
  nQtdeBoletos, nI , me , seque ,s : Integer;
  ano, mes, dia : word;
  A , EXT : string ;
  Txt : TextFile;
begin
  if (cdsBoleto.Active) then
     cdsBoleto.Close;
   cdsBoleto.Params[0].AsString := comboConta.Text;
   cdsBoleto.Open;

  Panel1.Visible := True;
  Repaint;

  nQtdeBoletos := 1;
  ProgressBar1.Max := nQtdeBoletos;
  ProgressBar1.Position := 0;
  ProgressBar1.Visible := True;
   nI := 1;
  while not (cdsBoleto.Eof) do
  begin

   ProgressBar1.Position := nI;

    //Dados do Cedente
    RLBTitulo1.Cedente.ContaBancaria.Banco.Codigo := '748';
    RLBTitulo1.Cedente.ContaBancaria.CodigoAgencia := IntToStr(cdsBoletoAGENCIA.AsInteger);
    RLBTitulo1.Cedente.ContaBancaria.DigitoAgencia := IntToStr(cdsBoletoDIGITOAGENCIA.AsInteger);
    RLBTitulo1.Cedente.ContaBancaria.NumeroConta :=  comboConta.Text ; //IntToStr(cdsBoletoCONTA.AsInteger);
    RLBTitulo1.Cedente.ContaBancaria.DigitoConta := IntToStr(cdsBoletoDIGITOCONTA.AsInteger);
    RLBTitulo1.Cedente.CodigoCedente := IntToStr(cdsBoletoCONTA.AsInteger);
    RLBTitulo1.Cedente.DigitoCodigoCedente := IntToStr(cdsBoletoDIGITOCONTA.AsInteger);
    RLBTitulo1.Carteira := '';
    RLBTitulo1.Cedente.ContaBancaria.Convenio := '';
    RLBTitulo1.Cedente.ContaBancaria.NomeCliente := cdsBoletoEMPRESA.AsString;
    RLBTitulo1.Cedente.TipoInscricao := tiPessoaJuridica;
    RLBTitulo1.Cedente.NumeroCPFCGC := cdsBoletoCNPJ_CPF.AsString;
    RLBTitulo1.Cedente.Nome := cdsBoletoEMPRESA.AsString;

    //dados do sacado

    RLBTitulo1.Sacado.Nome := cdsBoletoRAZAOSOCIAL.AsString;
    RLBTitulo1.Sacado.Codigo := cdsBoletoCODCLIENTE.AsInteger;
    case (cdsBoletoTIPO.AsInteger) of
      0: RLBTitulo1.Sacado.TipoInscricao := tiPessoaFisica;
      1: RLBTitulo1.Sacado.TipoInscricao := tiPessoaJuridica;
    end;
    RLBTitulo1.Sacado.NumeroCPFCGC := cdsBoletoCNPJ.AsString;
    RLBTitulo1.Sacado.Endereco.Rua := cdsBoletoENDERECO.AsString;
    RLBTitulo1.Sacado.Endereco.CEP := cdsBoletoCEP.AsString;
    RLBTitulo1.Sacado.Endereco.Cidade := cdsBoletoCIDADE.AsString;
    RLBTitulo1.Sacado.Endereco.Estado := cdsBoletoUF.AsString;

    //dados da cobranca

    RLBTitulo1.TipoOcorrencia := toRemessaRegistrar;
    RLBTitulo1.EspecieDocumento := edDuplicataMercantil;
    RLBTitulo1.NossoNumero := cdsBoletoNUMTITULO.AsString;
    RLBTitulo1.ValorDocumento := cdsBoletoVALOR.Value;
    RLBTitulo1.DataDocumento := cdsBoletoDATAPROCESSAMENTO.AsDateTime;
    RLBTitulo1.DataVencimento := cdsBoletoDATAREC.AsDateTime;   // DATA VENCIMENTO
    RLBTitulo1.NumeroDocumento := cdsBoletoNUMTITULO.AsString;

    // Instruções
    RLBTitulo1.Instrucoes.Text := cdsBoletoINST1.AsString;

    // Inserindo o boleto na remessa
    RLBRemessa1.Titulos.Add(RLBTitulo1);

    cdsBoleto.Next;
  //  ProgressBar1.Position := ProgressBar1.Position +1;

  end;

  RLBRemessa1.DataArquivo := Date; //É a data que o arquivo está sendo gerado
  RLBRemessa1.LayoutArquivo := laCNAB400; { Layout do arquivo, é necessário ver com o banco qual é o indicado.
                                            CNAB400 é o mais comum. }
  decodedate(Date, ano, mes, dia);

  me := mes ;
  A:=IntToStr(me);
  if( A = '10' ) then
    A := 'O';
  if( A = '11' ) then
    A := 'N';
  if( A = '12' ) then
    A := 'D';

  EXT := '.CRM';

   if not (cdsEmpresa1.Active) then
     cdsEmpresa1.Open;

   if(cdsEmpresa1.State in [dsEdit , dsBrowse ]) then
     cdsEmpresa1.Edit;
     seque:= cdsEmpresa1CODIGO_CONTA.AsInteger;
     seque:=seque+1;
     cdsEmpresa1CODIGO_CONTA.AsInteger := seque;
     cdsEmpresa1.ApplyUpdates(-1);
     Edit2.Text := cdsEmpresa1CODIGO_CONTA.AsString;


  if (cdsEmpresa1PORTA.Value <> 0 )then

   EXT := '.RM' + IntToStr(seque);

   cdsEmpresa1.Close;

   RLBRemessa1.NomeArquivo := FormatDateTime('15018' + A  + 'dd' ,Date)+ EXT ; { Apenas o nome do arquivo, alguns bancos estipulam regras e outros não }

//  RLBRemessa1.NumeroArquivo := 1; { Sequencia númerica de quandos arquivos já foram gerados para este banco }

   // Sequencia do arquivo

    if not (cdsEmpresa1.Active) then
      cdsEmpresa1.Open;

   if(cdsEmpresa1.State in [dsEdit , dsBrowse ]) then
   cdsEmpresa1.Edit;
   seque:= cdsEmpresa1ANOLETIVO.AsInteger;
   seque:=seque+1;
   cdsEmpresa1ANOLETIVO.AsInteger := seque;
   cdsEmpresa1.ApplyUpdates(-1);
   Edit1.Text := cdsEmpresa1ANOLETIVO.AsString;
   cdsEmpresa1.Close;


    // Sequencia do arquivo


    if not (cdsEmpresa.Active) then
      cdsEmpresa.Open;

   if(cdsEmpresa.State in [dsEdit , dsBrowse ]) then
   cdsEmpresa.Edit;

   cdsEmpresa.ApplyUpdates(-1);

 //  Edit1.Text := cdsEmpresa1ANOLETIVO.AsString;

   cdsEmpresa.Close;

  RLBRemessa1.NumeroArquivo := StrToInt(Edit1.Text); { Sequencia númerica de quandos arquivos já foram gerados para este banco }



  RLBRemessa1.TipoMovimento := tmRemessa;

  RLBRemessa1.NomeArquivo := ExtractFileDir(Application.ExeName)+'\'+'arquivos\'+RLBRemessa1.NomeArquivo; // Apenas colocando um caminho para o arquivo

  if RLBRemessa1.GerarRemessa then
    MessageDlg('O arquivo foi gerado com sucesso.'#13+RLBRemessa1.NomeArquivo,mtInformation,[mbOK],0);

 { MARCAR QUAIS BOLETOS FORAM GERADOS NO ARQUIVO }

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
    try
      sqlboleto.StartTransaction(TD);
      sqlboleto.ExecuteDirect('Update RECEBIMENTO SET GERARQREM = 1 , DATAGERARQREM = '+ QuotedStr(FormatDateTime('mm/dd/yyyy', now )) + ' '+
      'where DP = 1 ');
       sqlboleto.Commit(TD);
    except
      sqlboleto.Rollback(TD);
    end;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
    try
      sqlboleto.StartTransaction(TD);
      sqlboleto.ExecuteDirect('Update EMPRESA set PORTA = 1 ' );
      sqlboleto.Commit(TD);
    except
      sqlboleto.Rollback(TD);
    end;


end;



procedure TForm1.RLPreviewSetup1AfterPrint(Sender: TObject);
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
    try
      sqlboleto.StartTransaction(TD);
      sqlboleto.ExecuteDirect('Update RECEBIMENTO set BL = 1'+
      'where DP = 1 ');
 //     'where DP = 1  AND udf_digits(titulo) = ' + QUOTEDSTR(RLBTitulo1.NossoNumero));
      sqlboleto.Commit(TD);
    except
      sqlboleto.Rollback(TD);
    end;

end;

function TForm1.PadR(ATexto: string; ATamanho: integer): string;
var
  I                 : integer;
begin
  Result := ATexto;
  for I := 1 to (ATamanho - Length(Result)) do
    Result := ' ' + Result;
end;

function TForm1.IncluirPonto(ATexto: string): string;
var
  i                 : integer;
begin
  Result := '';
  for I := 1 to Length(ATexto) do
    if ATexto[I] = ',' then
      Result := Result + '.'
    else
      Result := Result + ATexto[I];

end;

end.
