unit uBolSicR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, RLPreviewForm,
  SqlExpr, RLFilters, RLPDFFilter, Mask, JvExMask, JvToolEdit, StdCtrls,
  Buttons, ComCtrls, ExtCtrls, DBXpress;

type
  TfBolSicR = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    ProgressBar1: TProgressBar;
    btnVisualizar: TBitBtn;
    comboConta: TComboBox;
    btnGerar_Arq: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    JvDateEdit1: TJvDateEdit;
    RLPDFFilter1: TRLPDFFilter;
    sqlconta: TSQLDataSet;
    sqlcontaNUMERO_CONTA: TStringField;
    sqlcontaDIGITO_CONTA: TStringField;
    RLPreviewSetup1: TRLPreviewSetup;
    sqlEmpresa: TSQLDataSet;
    sqlEmpresaANOLETIVO: TStringField;
    dspEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    cdsEmpresaANOLETIVO: TStringField;
    dsEmpresa: TDataSource;
    sqlBanco: TSQLDataSet;
    sqlBancoNUMERO_CONTA: TStringField;
    sqlBancoSEQUENCIA_ARQUIVO: TIntegerField;
    sqlBancoDIA_GEROU_ARQUIVO: TDateField;
    sqlBancoSEQUENCIA_DIA: TIntegerField;
    sqlBancoGERANDO_ARQUIVO: TIntegerField;
    dspBanco: TDataSetProvider;
    cdsBanco: TClientDataSet;
    cdsBancoNUMERO_CONTA: TStringField;
    cdsBancoSEQUENCIA_ARQUIVO: TIntegerField;
    cdsBancoDIA_GEROU_ARQUIVO: TDateField;
    cdsBancoSEQUENCIA_DIA: TIntegerField;
    cdsBancoGERANDO_ARQUIVO: TIntegerField;
    sdsBoleto: TSQLDataSet;
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
    sdsBoletoDESCPRODUTO: TStringField;
    sdsBoletoCODRECEBIMENTO: TIntegerField;
    sdsBoletoCODIGO_CEDENTE: TStringField;
    sdsBoletoCARTEIRA: TStringField;
    sdsBoletoBL: TIntegerField;
    sdsBoletoCODIGO_DE_BARRAS: TStringField;
    sdsBoletoE_ENDERECO: TStringField;
    sdsBoletoE_LOGRADOURO: TStringField;
    sdsBoletoE_BAIRRO: TStringField;
    sdsBoletoE_CIDADE: TStringField;
    sdsBoletoE_UF: TStringField;
    sdsBoletoE_CEP: TStringField;
    sdsBoletoE_DDD: TStringField;
    sdsBoletoE_FONE: TStringField;
    sdsBoletoE_NUMERO: TStringField;
    sdsBoletoCONVENIO: TStringField;
    dspBoleto: TDataSetProvider;
    cdsBoleto: TClientDataSet;
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
    cdsBoletoDESCPRODUTO: TStringField;
    cdsBoletoCODRECEBIMENTO: TIntegerField;
    cdsBoletoCODIGO_CEDENTE: TStringField;
    cdsBoletoCARTEIRA: TStringField;
    cdsBoletoBL: TIntegerField;
    cdsBoletoCODIGO_DE_BARRAS: TStringField;
    cdsBoletoE_ENDERECO: TStringField;
    cdsBoletoE_LOGRADOURO: TStringField;
    cdsBoletoE_BAIRRO: TStringField;
    cdsBoletoE_CIDADE: TStringField;
    cdsBoletoE_UF: TStringField;
    cdsBoletoE_CEP: TStringField;
    cdsBoletoE_DDD: TStringField;
    cdsBoletoE_FONE: TStringField;
    cdsBoletoE_NUMERO: TStringField;
    cdsBoletoCONVENIO: TStringField;
    procedure btnVisualizarClick(Sender: TObject);
    procedure btnGerar_ArqClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    comR: integer ;
        TD: TTransactionDesc;
  end;

var
  fBolSicR: TfBolSicR;

implementation

uses UDm,DateUtils;

{$R *.dfm}

procedure TfBolSicR.btnVisualizarClick(Sender: TObject);
var  nQtdeBoletos: Integer;
     nI , tipo : Integer ;
begin
{
 if(comboConta.Text = '') then
  begin
  MessageDlg('Selecione uma Conta', mtWarning, [mbOK], 0);
  comboConta.SetFocus;
  exit;
  end;

 comR := 1;

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
    RLBTitulo1.Carteira := cdsBoletoCARTEIRA.AsString;                       // Tipo de Carteira  incluido dia 26/02/15
    if(cdsBoletoCONVENIO.AsString = '3') then
    begin
      MessageDlg('                   Para Boletos "COM REGISTRO" '+#13+#10+'O Campo Convenio no cadastro do Banco deve ser 1 ', mtError, [mbOK], 0);
      exit;
    end;
    RLBTitulo1.Cedente.ContaBancaria.Convenio := cdsBoletoCONVENIO.AsString; // Tipo de Cobrança  incluido dia 26/02/15
    RLBTitulo1.Cedente.ContaBancaria.NomeCliente := cdsBoletoEMPRESA.AsString ;
    RLBTitulo1.Cedente.TipoInscricao := tiPessoaJuridica;
    RLBTitulo1.Cedente.NumeroCPFCGC := cdsBoletoCNPJ_CPF.AsString;
    RLBTitulo1.Cedente.Nome := cdsBoletoEMPRESA.AsString;
    RLBTitulo1.Cedente.Endereco.Rua := cdsBoletoE_ENDERECO.AsString + ' , Nº ' + cdsBoletoE_NUMERO.AsString + ' - '
    + cdsBoletoE_LOGRADOURO.AsString  + ' - ' + cdsBoletoE_BAIRRO.AsString + ' - '
    + cdsBoletoE_CIDADE.AsString  + ' - ' + cdsBoletoE_UF.AsString + ' - CEP ' + cdsBoletoE_CEP.AsString + ' - Fone ('
    + cdsBoletoE_DDD.AsString + ') ' + cdsBoletoE_FONE.AsString
    ;
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
   btnGerar_Arq.Enabled := True;
   }
end;

procedure TfBolSicR.btnGerar_ArqClick(Sender: TObject);
var
  nQtdeBoletos, nI , me , seque ,s : Integer;
  ano, mes, dia : word;
  A , EXT ,Dir: string;
  Txt : TextFile;
begin
 {
  if(comboConta.Text = '') then
  begin
    MessageDlg('Selecione uma Conta', mtWarning, [mbOK], 0);
    comboConta.SetFocus;
    exit;
  end;


  if(cdsBanco.Active) then
     cdsBanco.Close;
     cdsBanco.Params[0].AsString := comboConta.Text;
   cdsBanco.Open;
  if (cdsBancoDIA_GEROU_ARQUIVO.Value <> JvDateEdit1.Date )then
  begin
    dm.sqlsisAdimin.ExecuteDirect('Update BANCO set GERANDO_ARQUIVO = 0  , SEQUENCIA_DIA = 0 , DIA_GEROU_ARQUIVO = '
                            + QuotedStr(FormatDateTime('mm/dd/yyyy', today))
                            + 'where NUMERO_CONTA = '+ QuotedStr(comboConta.Text)

    );
    cdsBanco.Close;
    dm.sqlsisAdimin.Commit(TD);
  end;


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

  RLBRemessa1.LayoutArquivo := laCNAB400;
  // Layout do arquivo, é necessário ver com o banco qual é o indicado.
  //                                          CNAB400 é o mais comum.
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

   if not (cdsBanco.Active) then
     cdsBanco.Open;

   if(cdsBanco.State in [dsEdit , dsBrowse ]) then
     cdsBanco.Edit;
     seque:= cdsBancoSEQUENCIA_DIA.AsInteger;
   if(seque= 9) then
   begin
     MessageDlg('Não podera Gerar mais Remessa neste dia !'+#13+#10+'Execedeu o Limite Diario. ', mtError, [mbOK], 0);
     btnGerar_Arq.Enabled := False;
   exit;
   end;
     seque:=seque+1;
     cdsBancoSEQUENCIA_DIA.AsInteger := seque;
     cdsBanco.ApplyUpdates(-1);
     Edit2.Text := cdsBancoSEQUENCIA_DIA.AsString;


  if (cdsBancoGERANDO_ARQUIVO.Value <> 0 )then

   EXT := '.RM' + IntToStr(seque);



   cdsBanco.Close;

   //RLBRemessa1.NomeArquivo := FormatDateTime( comboConta.Text + A  + 'dd' ,Date)+ EXT ;
   // Apenas o nome do arquivo, alguns bancos estipulam regras e outros não

   // Sequencia do arquivo

    if not (cdsBanco.Active) then
      cdsBanco.Open;

   if(cdsBanco.State in [dsEdit , dsBrowse ]) then
   cdsBanco.Edit;
   seque:= cdsBancoSEQUENCIA_ARQUIVO.AsInteger;
   seque:=seque+1;
   cdsBancoSEQUENCIA_ARQUIVO.AsInteger := seque;
   cdsBanco.ApplyUpdates(-1);
   Edit1.Text := cdsBancoSEQUENCIA_ARQUIVO.AsString;
   cdsBanco.Close;


    // Sequencia do arquivo


    if not (cdsBanco.Active) then
      cdsBanco.Open;

   if(cdsBanco.State in [dsEdit , dsBrowse ]) then
   cdsBanco.Edit;

   cdsBanco.ApplyUpdates(-1);


   cdsBanco.Close;

   RLBRemessa1.NumeroArquivo := StrToInt(Edit1.Text);
   // Sequencia númerica de quandos arquivos já foram gerados para este banco



   RLBRemessa1.TipoMovimento := tmRemessa;




   Dir := ExtractFileDir(Application.ExeName)+'\'+'arquivos_remessa_sicredi\';

   if not DirectoryExists(Dir) then
   ForceDirectories(Dir);

   RLBRemessa1.NomeArquivo := ExtractFileDir(Application.ExeName)+'\'+'arquivos_remessa_sicredi\'+RLBRemessa1.NomeArquivo; // Apenas colocando um caminho para o arquivo

   if RLBRemessa1.GerarRemessa then
     MessageDlg('O arquivo foi gerado com sucesso.'#13+RLBRemessa1.NomeArquivo,mtInformation,[mbOK],0);

    // MARCAR QUAIS BOLETOS FORAM GERADOS NO ARQUIVO

    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
      try
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect('Update RECEBIMENTO SET GERARQREM = 1 , DATAGERARQREM = '+ QuotedStr(FormatDateTime('mm/dd/yyyy', now )) + ' '+
        'where DP = 1 ');
        dm.sqlsisAdimin.Commit(TD);
      except
        dm.sqlsisAdimin.Rollback(TD);
      end;


    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
      try
        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect('Update BANCO set GERANDO_ARQUIVO = 1  where NUMERO_CONTA = '+ QuotedStr(comboConta.Text) );
        dm.sqlsisAdimin.Commit(TD);
      except
        dm.sqlsisAdimin.Rollback(TD);
      end;


    btnGerar_Arq.Enabled := False;

   }
end;

procedure TfBolSicR.FormShow(Sender: TObject);
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);

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

  comboConta.ItemIndex := 0;
    // DATABOLETO  = 

  JvDateEdit1.Date := Today;

  btnGerar_Arq.Enabled := False;
end;

end.
