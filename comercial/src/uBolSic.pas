unit uBolSic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, RLPreviewForm, RLFilters, RLPDFFilter, RLBoleto,
  SqlExpr, Provider, DB, DBClient, StdCtrls, Mask, Buttons, ComCtrls,DBXpress,
  ExtCtrls;

type
  TfBolSic = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    ProgressBar1: TProgressBar;
    BitBtn1: TBitBtn;
    comboConta: TComboBox;
    GroupBox1: TGroupBox;
    MaskEdit1: TMaskEdit;
    BitBtn2: TBitBtn;
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
    cdsBoletoE_ENDERECO: TStringField;
    cdsBoletoE_LOGRADOURO: TStringField;
    cdsBoletoE_BAIRRO: TStringField;
    cdsBoletoE_CIDADE: TStringField;
    cdsBoletoE_UF: TStringField;
    cdsBoletoE_CEP: TStringField;
    cdsBoletoE_DDD: TStringField;
    cdsBoletoE_FONE: TStringField;
    cdsBoletoE_NUMERO: TStringField;
    cdsBoletoCODRECEBIMENTO: TIntegerField;
    cdsBoletoCODIGO_CEDENTE: TStringField;
    dspBoleto: TDataSetProvider;
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
    sdsBoletoE_ENDERECO: TStringField;
    sdsBoletoE_LOGRADOURO: TStringField;
    sdsBoletoE_BAIRRO: TStringField;
    sdsBoletoE_CIDADE: TStringField;
    sdsBoletoE_UF: TStringField;
    sdsBoletoE_CEP: TStringField;
    sdsBoletoE_DDD: TStringField;
    sdsBoletoE_FONE: TStringField;
    sdsBoletoE_NUMERO: TStringField;
    sdsBoletoCODRECEBIMENTO: TIntegerField;
    sdsBoletoCODIGO_CEDENTE: TStringField;
    RLBTitulo1: TRLBTitulo;
    RLPDFFilter1: TRLPDFFilter;
    sqlconta: TSQLDataSet;
    sqlcontaNUMERO_CONTA: TStringField;
    sqlcontaDIGITO_CONTA: TStringField;
    RLPreviewSetup1: TRLPreviewSetup;
    sdsBoletoCARTEIRA: TStringField;
    sdsBoletoBL: TIntegerField;
    sdsBoletoCODIGO_DE_BARRAS: TStringField;
    sdsBoletoCONVENIO: TStringField;
    cdsBoletoCARTEIRA: TStringField;
    cdsBoletoBL: TIntegerField;
    cdsBoletoCODIGO_DE_BARRAS: TStringField;
    cdsBoletoCONVENIO: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBolSic: TfBolSic;

implementation

uses UDm;

{$R *.dfm}

procedure TfBolSic.BitBtn1Click(Sender: TObject);
var  nQtdeBoletos: Integer;
     nI: Integer;
  str_sql : String;
  TD: TTransactionDesc;
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
    RLBTitulo1.Carteira := cdsBoletoCARTEIRA.AsString;                       // Tipo de Carteira  incluido dia 26/02/15
    if(cdsBoletoCONVENIO.AsString = '1') then
    begin
      MessageDlg('                   Para Boletos "SEM REGISTRO" '+#13+#10+'O Campo Convenio no cadastro do Banco deve ser 3 ', mtError, [mbOK], 0);
      exit;
    end;
    RLBTitulo1.Cedente.ContaBancaria.Convenio := cdsBoletoCONVENIO.AsString; // Tipo de Cobrança  incluido dia 26/02/15
    RLBTitulo1.Cedente.ContaBancaria.NomeCliente := cdsBoletoEMPRESA.AsString;
    RLBTitulo1.Cedente.TipoInscricao := tiPessoaJuridica;
    RLBTitulo1.Cedente.NumeroCPFCGC := cdsBoletoCNPJ_CPF.AsString;
    RLBTitulo1.Cedente.Nome := cdsBoletoEMPRESA.AsString;
    RLBTitulo1.Cedente.Endereco.Rua := cdsBoletoE_ENDERECO.AsString + ' , Nº ' + cdsBoletoE_NUMERO.AsString + ' - '
    + cdsBoletoE_LOGRADOURO.AsString  + ' - ' + cdsBoletoE_BAIRRO.AsString + ' - '
    + cdsBoletoE_CIDADE.AsString  + ' - ' + cdsBoletoE_UF.AsString + ' - CEP ' + cdsBoletoE_CEP.AsString + ' - Fone ('
    + cdsBoletoE_DDD.AsString + ') ' + cdsBoletoE_FONE.AsString
    ;


    //dados do sacado
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
    RLBTitulo1.NossoNumero := cdsBoletoNUMTITULO.AsString;
    RLBTitulo1.ValorDocumento := cdsBoletoVALOR.Value;
    RLBTitulo1.DataDocumento := cdsBoletoDATAPROCESSAMENTO.AsDateTime;

    if(MaskEdit1.Text <> '  /  /  ') then
    begin
      RLBTitulo1.DataVencimento :=  StrToDateTime(MaskEdit1.Text);   // DATA VENCIMENTO

    if(MaskEdit1.Text <> '  /  /  ') then
    begin
      str_sql := 'UPDATE RECEBIMENTO SET DATAVENCIMENTO = ' + QuotedStr(formatdatetime('mm/dd/yy', StrToDate(MaskEdit1.Text)));
      str_sql := str_sql + ' WHERE CODRECEBIMENTO = ';
      str_sql := str_sql +  cdsBoletoCODRECEBIMENTO.AsString ;
      dm.sqlsisAdimin.StartTransaction(TD);
      try
        dm.sqlsisAdimin.ExecuteDirect(str_sql);
        dm.sqlsisAdimin.Commit(TD);
      except
        dm.sqlsisAdimin.Rollback(TD);
        MessageDlg('Erro ao Alterar data Vencimento.', mtError, [mbOK], 0);
        exit;
      end;
    end;


    end else
    begin
       RLBTitulo1.DataVencimento := cdsBoletoDATAREC.AsDateTime;   // DATA VENCIMENTO
    end;
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

procedure TfBolSic.FormShow(Sender: TObject);
begin
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
end;

procedure TfBolSic.BitBtn2Click(Sender: TObject);
begin
  MaskEdit1.Text := '  /  /  ' ;
end;

end.
