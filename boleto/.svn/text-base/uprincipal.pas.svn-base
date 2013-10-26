unit uprincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBXpress, DB, SqlExpr, FMTBcd, StdCtrls, Provider, DBClient,
  RLBoleto, Buttons,jpeg, RLFilters, RLPDFFilter, ComCtrls, ExtCtrls,
  RLPreviewForm, Mask, DBCtrls, TFlatGaugeUnit, ToolEdit;

type
  TForm1 = class(TForm)
    sqlboleto: TSQLConnection;
    cdsBoleto: TClientDataSet;
    dspBoleto: TDataSetProvider;
    sdsBoleto: TSQLDataSet;
    RLBTitulo1: TRLBTitulo;
    Panel1: TPanel;
    ProgressBar1: TProgressBar;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    comboConta: TComboBox;
    sqlconta: TSQLDataSet;
    sqlcontaNUMERO_CONTA: TStringField;
    sqlcontaDIGITO_CONTA: TStringField;
    RLPreviewSetup1: TRLPreviewSetup;
    sdsBoletoDATADOC: TDateField;
    sdsBoletoDATAPROCESSAMENTO: TDateField;
    sdsBoletoCODCLIENTE: TIntegerField;
    sdsBoletoNOMECLIENTE: TStringField;
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
    sdsBoletoCARTEIRA: TStringField;
    sdsBoletoCODIGO_CEDENTE: TStringField;
    sdsBoletoDESCPRODUTO: TStringField;
    sdsBoletoRA: TStringField;
    sdsBoletoE_MAIL: TStringField;
    cdsBoletoDATADOC: TDateField;
    cdsBoletoDATAPROCESSAMENTO: TDateField;
    cdsBoletoCODCLIENTE: TIntegerField;
    cdsBoletoNOMECLIENTE: TStringField;
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
    cdsBoletoCARTEIRA: TStringField;
    cdsBoletoCODIGO_CEDENTE: TStringField;
    cdsBoletoDESCPRODUTO: TStringField;
    cdsBoletoRA: TStringField;
    cdsBoletoE_MAIL: TStringField;
    RLPDFFilter1: TRLPDFFilter;
    registros: TSQLDataSet;
    registrosCOUNT: TIntegerField;
    lbl1: TLabel;
    dbedtCOUNT: TDBEdit;
    ds1: TDataSource;
    lbl2: TLabel;
    lbl3: TLabel;
    btn1: TButton;
    BitBtn2: TBitBtn;
    label8: TLabel;
    FlatGauge1: TFlatGauge;
    DateEdit1: TDateEdit;
    cds_empresa: TClientDataSet;
    cds_empresaEMPRESA: TStringField;
    cds_empresaRAZAO: TStringField;
    cds_empresaCNPJ_CPF: TStringField;
    cds_empresaENDERECO: TStringField;
    cds_empresaLOGRADOURO: TStringField;
    cds_empresaBAIRRO: TStringField;
    cds_empresaCIDADE: TStringField;
    cds_empresaUF: TStringField;
    cds_empresaCEP: TStringField;
    cds_empresaDDD: TStringField;
    cds_empresaFONE: TStringField;
    cds_empresaFONE_1: TStringField;
    cds_empresaFONE_2: TStringField;
    cds_empresaFAX: TStringField;
    cds_empresaE_MAIL: TStringField;
    cds_empresaWEB: TStringField;
    cds_empresaLOGOTIPO: TGraphicField;
    sds_empresaCODIGO: TIntegerField;
    cds_empresaTIPO: TStringField;
    cds_empresaIE_RG: TStringField;
    cds_empresaSLOGAN: TStringField;
    cds_empresaOUTRAS_INFO: TStringField;
    dsp_empresa: TDataSetProvider;
    sds_Empresa: TSQLDataSet;
    sdsEMPRESA: TStringField;
    sdsRAZAO: TStringField;
    sdsCNPJ_CPF: TStringField;
    sdsENDERECO: TStringField;
    sdsLOGRADOURO: TStringField;
    sdsBAIRRO: TStringField;
    sdsCIDADE: TStringField;
    sdsUF: TStringField;
    sdsCEP: TStringField;
    sdsDDD: TStringField;
    sdsFONE: TStringField;
    sdsFONE_1: TStringField;
    sdsFONE_2: TStringField;
    sdsFAX: TStringField;
    sdsE_MAIL: TStringField;
    sdsWEB: TStringField;
    sdsLOGOTIPO: TGraphicField;
    sdsCODIGO: TIntegerField;
    sdsTIPO: TStringField;
    sdsIE_RG: TStringField;
    sds_EmpresaSLOGAN: TStringField;
    sds_EmpresaOUTRAS_INFO: TStringField;
    lbl4: TLabel;
    Edit1: TEdit;
    sds_EmpresaCODIGO_CONTA: TIntegerField;
    sds_EmpresaDIVERSOS1: TStringField;
    sds_EmpresaDIVERSOS2: TStringField;
    sds_EmpresaDIVERSOS3: TStringField;
    sds_EmpresaANOLETIVO: TIntegerField;
    sds_EmpresaMEDIA_ESCOLA: TFloatField;
    sds_EmpresaPORTA: TIntegerField;
    sds_EmpresaSMTP: TStringField;
    sds_EmpresaSENHA: TStringField;
    cds_empresaCODIGO_CONTA: TIntegerField;
    cds_empresaDIVERSOS1: TStringField;
    cds_empresaDIVERSOS2: TStringField;
    cds_empresaDIVERSOS3: TStringField;
    cds_empresaANOLETIVO: TIntegerField;
    cds_empresaMEDIA_ESCOLA: TFloatField;
    cds_empresaPORTA: TIntegerField;
    cds_empresaSMTP: TStringField;
    cds_empresaSENHA: TStringField;
    Edit2: TEdit;
    Label2: TLabel;
    Panel2: TPanel;
    Label3: TLabel;
    sdsBoletoN_CONTRATO: TStringField;
    sdsBoletoCPF_D: TStringField;
    sdsBoletoCC: TStringField;
    cdsBoletoN_CONTRATO: TStringField;
    cdsBoletoCPF_D: TStringField;
    cdsBoletoCC: TStringField;
    Edit3: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure comboContaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;
  var dbxconec: TStringList;
  str_relatorio : String;

var
  Form1: TForm1;

implementation

uses BoletoLayout;   

{$R *.dfm}

Function RemoveChar(Const Texto:String):String;
//
// Remove caracteres de uma string deixando apenas numeros
//
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

procedure TForm1.BitBtn1Click(Sender: TObject);
var  nQtdeBoletos: Integer;
     nI ,n : Integer;
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
  n := 0;
  while not (cdsBoleto.Eof) do
  begin

   ProgressBar1.Position := nI;
   n := n + 1;

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
    RLBTitulo1.Sacado.Nome := cdsBoletoNOMECLIENTE.AsString;
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
    RLBTitulo1.DataVencimento := cdsBoletoDATAREC.AsDateTime;   // DATA VENCIMENTO
    RLBTitulo1.NumeroDocumento := cdsBoletoNUMTITULO.AsString;

    //instrução

    RLBTitulo1.Instrucoes.Text := cdsBoletoINST1.AsString;

    RLBTitulo1.Referencia := cdsBoletoDESCPRODUTO.AsString;

    RLBTitulo1.Preparar;

     lbl2.Caption := IntToStr(n);
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
   if registros.Active then
    registros.Close;
  registros.Open;

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

procedure TForm1.btn1Click(Sender: TObject);
var  nQtdeBoletos: Integer;
     nI , n : Integer;

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
   n := 0;
  while not (cdsBoleto.Eof) do
  begin

   ProgressBar1.Position := nI;
    n := n + 1;

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
    RLBTitulo1.Sacado.Nome := cdsBoletoNOMECLIENTE.AsString;
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
    RLBTitulo1.DataVencimento := cdsBoletoDATAREC.AsDateTime;   // DATA VENCIMENTO
    RLBTitulo1.NumeroDocumento := cdsBoletoNUMTITULO.AsString;

    //instrução
    RLBTitulo1.Instrucoes.Text := cdsBoletoINST1.AsString;

    RLBTitulo1.Referencia := cdsBoletoDESCPRODUTO.AsString;

    if(comboConta.Text = '15350') then
      RLBTitulo1.GerarPDF('C:\home\boletos_ash\'+ cdsBoletoRA.AsString +'BOLETO.pdf','autor do boleto')
    else
    RLBTitulo1.GerarPDF('C:\home\boletos_pcmso\'+ cdsBoletoRA.AsString +'BOLETO.pdf','autor do boleto');

    ///RLBTitulo1.Preparar;

    lbl2.Caption := IntToStr(n);
    cdsBoleto.Next;

    ProgressBar1.Visible := False;
    Repaint;
  end;


  // RLBTitulo1.Visualizar;
   Panel1.Visible := False;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
var
   ACedenteTipoInscricao, ASacadoTipoInscricao, aTitulosTipoOcorrencia,
   aTitulosEspecieDocumento,aTitulosAceite, NomArquivo, Registro , tipodoc : string;
   cTotalTitulos: Currency;
   NumeroRegistro, numeroTitulo, numerodoc ,seque ,seque1: integer;
   valorpendente : double;
   arquivo : TextFile;
begin
   if (cdsBoleto.Active) then
     cdsBoleto.Close;
   cdsBoleto.Params[0].AsString := comboConta.Text;
   cdsBoleto.Open;

   if (cds_empresa.Active) then
      cds_Empresa.Close;
      cds_Empresa.Open;

      if(cds_Empresa.State in [dsEdit , dsBrowse ]) then
      begin
      cds_Empresa.Edit;

      if (comboConta.Text = '15350')then
      begin
        // DEBITO CONTA ASH
        seque:= cds_empresaCODIGO_CONTA.AsInteger;
        seque:= seque+1;
        cds_empresaCODIGO_CONTA.AsInteger := seque;
        cds_Empresa.ApplyUpdates(-1);
        Edit2.Text := cds_empresaCODIGO_CONTA.AsString;
      end
      else
        begin
          // DEBITO CONTA PCMSO
          seque1:= cds_empresaPORTA.AsInteger;
          seque1:= seque1+1;
          cds_empresaPORTA.AsInteger := seque1;
          cds_Empresa.ApplyUpdates(-1);
          Edit2.Text := cds_empresaPORTA.AsString;
        end;
     end;
     cds_empresa.Close;
   cds_empresa.Open;

   {** daqui pra baixo gero o arquivo remessa}
   if (comboConta.Text = '15350') then
   begin
     NomArquivo := 'EC629'+FormatDateTime('ddmm',StrToDateTime(DateEdit1.Text))+'.txt';
     AssignFile(Arquivo,Edit3.Text + NomArquivo);
   end
   else begin
     NomArquivo := 'EC640'+FormatDateTime('ddmm',StrToDateTime(DateEdit1.Text))+'.txt';
     AssignFile(Arquivo,Edit1.Text + NomArquivo);
   end;
   Rewrite(Arquivo);
   Registro := '';

   Append(Arquivo);
   Rewrite(arquivo);


  if (comboConta.Text = '15350')then
  begin
    Registro := ('A'+ // 001 - 001
                   '1'+ // 002 - 002
                   Formatar('629',20)+ // Codigo atribuido pelo banco ASH
                   Formatar(cds_empresaEMPRESA.AsString,20,true,' ')+ // 023 - 42  Nome da empresa
                   '748' +
                   Formatar('BANCO SICREDI',20,true,' ') +
                   FormatDateTime('yyyymmdd',StrToDateTime(DateEdit1.Text))+
                   Formatar(Edit2.Text,6,False,'0') +
                   '05' + // versao do arquivo
                   Formatar('DÉBITO AUTOMATICO',17)+
                   Formatar('',52)); //99 - 150 Reservado (uso Banco) A 010 Brancos

    writeln(Arquivo, Registro);
  end
  else
    begin
      Registro := ('A'+ // 001 - 001
                   '1'+ // 002 - 002
                    Formatar('640',20)+ // Codigo atribuido pelo banco PCMSO
                   Formatar(cds_empresaEMPRESA.AsString,20,true,' ')+ // 023 - 42  Nome da empresa
                   '748' +
                   Formatar('BANCO SICREDI',20,true,' ') +
                   FormatDateTime('yyyymmdd',StrToDateTime(DateEdit1.Text))+
                   Formatar(Edit2.Text,6,False,'0') +

                   '05' + // versao do arquivo
                   Formatar('DÉBITO AUTOMATICO',17)+
                   Formatar('',52)); //99 - 150 Reservado (uso Banco) A 010 Brancos
      writeln(Arquivo, Registro);
   end;


     // GERAR REGISTRO-HEADER DA REMESSA    quando era so do ASH
    {
    Registro := ('A'+ // 001 - 001
                   '1'+ // 002 - 002
                    Formatar('629',20)+ // Codigo atribuido pelo banco ASH
                   Formatar(cds_empresaEMPRESA.AsString,20,true,' ')+ // 023 - 42  Nome da empresa
                   '748' +
                   Formatar('BANCO SICREDI',20,true,' ') +
                   FormatDateTime('yyyymmdd',StrToDateTime(DateEdit1.Text))+
                   Formatar(Edit2.Text,6,False,'0') +
                   '05' + // versao do arquivo
                   Formatar('DÉBITO AUTOMATICO',17)+
                   Formatar('',52)); //99 - 150 Reservado (uso Banco) A 010 Brancos
     writeln(Arquivo, Registro);
    }
    NumeroRegistro := 2;

    Label8.Caption := '';
    Label8.Caption := 'Gerando Remessa...';
    Refresh;
    FlatGauge1.MaxValue := cdsBoleto.RecordCount;

     valorpendente := 0 ;
     cdsBoleto.First;
     while not cdsBoleto.Eof do
     begin

       // GERAR REGISTRO DETALHE  - SEGMENTO C
         {
           Registro := 'C';
           Registro := Registro + Formatar(cdsBoletoCODCLIENTE.AsString,25,false,'0');
           Registro := Registro + Formatar(cdsBoletoAGENCIA.AsString,4,false,'0');
        Registro := Registro + Formatar(cdsBoletoCODCLIENTE.AsString,25,false,'0');  // ??????
           Registro := Registro + FormatDateTime('ddmmyyyy',StrToDateTime(DateEdit2.Text));
           Registro := Registro + Formatar('',97);// 53 - 149 Reservado (uso Banco)   Brancos

           Registro := Registro + Formatar('',11);//230 –240	Reservado (uso Banco)	A	011		Brancos
           NumeroRegistro := NumeroRegistro + 1;
           numeroTitulo := numeroTitulo + 1;
           numerodoc := numerodoc + 1;
           writeln(Arquivo, Registro);           

         }

         //GERAR REGISTRO E

           Registro := 'E'; // 001 - 001
           Registro := Registro + Formatar(RemoveChar(cdsBoletoCPF_D.AsString),25,false,'0') ;//
           Registro := Registro + Formatar(cdsBoletoAGENCIA.AsString,4,false,'0');
           Registro := Registro + Formatar(RemoveChar(cdsBoletoCC.AsString),14,True,' ') ;//
           Registro := Registro + FormatDateTime('yyyymmdd',StrToDateTime(cdsBoletoDATAREC.AsString));
           Registro := Registro + FormatCurr('000000000000000',cdsBoletoVALOR.AsFloat * 100);
           Registro := Registro + '03'; // 68 - 69
           Registro := Registro + Formatar('',59);// 070 - 128	Reservado (uso Banco x EMPRESA )
           Registro := Registro + 'X' ;// 068- 069
           Registro := Registro + '2' ;//  130-130
           Registro := Registro + Formatar(RemoveChar(cdsBoletoCPF_D.AsString),15,false,'0') ;//
           Registro := Registro + Formatar('',04);//
           Registro := Registro + '0' ;//  150 - 150
           {
           Registro := Registro + Formatar(cdsBoletoNOMECLIENTE.AsString, 40,true,' '); // 034 - 073	Nome sacado	A	040
           Registro := Registro + Formatar(cdsBoletoENDERECO.AsString, 40); // 074 - 113	Endereço  sacado	A	040
           Registro := Registro + Formatar(cdsBoletoBAIRRO.AsString,15); // 114 - 128	Bairro  sacado	A	015
           Registro := Registro + Formatar(RemoveChar(cdsBoletoCEP.AsString),5,true,'0'); // 129 - 133	Cep  sacado	N	005
           Registro := Registro + Formatar(RemoveChar(cdsBoletoCEP.AsString),3,false,'0'); // 134 - 136	Sufixo do Cep do sacado	N	003
           Registro := Registro + Formatar(cdsBoletoCIDADE.AsString,15,true); // 137 - 151	Cidade do sacado	A	015
           Registro := Registro + Formatar(cdsBoletoUF.AsString,2,false); // 152 - 153	Unidade da federação do sacado	A	002
           Registro := Registro + '0';// 154 - 154	Tipode inscrição sacador/avalista	N	001			29
           Registro := Registro + '000000000000000';// 155 - 169	Nº de inscrição sacador/avalista	N	015			29
           Registro := Registro + Formatar('',40);// 170 - 209	Nome do sacador/avalista	A	040			30
           Registro := Registro + '000' ;// 210 –212	Identificador de carne	N	003		         	28
           Registro := Registro + '000' ;// 213 –215	Sequencial da Parcela ou número inicial da parcela	N	003			28
           Registro := Registro + '000' ;// 216 –218	Quantidade total de parcelas	N	003			28
           Registro := Registro + '000' ;// 219 – 221	Número do plano	N	003			28
           Registro := Registro + Formatar('',19);// 222 - 240	Reservado (uso Banco)	A	019		Brancos

           }

           writeln(Arquivo, Registro);
           NumeroRegistro := NumeroRegistro + 1;
           FlatGauge1.Progress := FlatGauge1.Progress + 1;
           valorpendente :=  valorpendente + cdsBoletoVALOR.AsFloat ;
           cdsBoleto.Next;
     end;

        NumeroRegistro := NumeroRegistro - 1;

        // TRAILER  REGISTRO 'Z'


         Registro :=  'Z' ; //  001 - 001
         NumeroRegistro := NumeroRegistro + 1;
         Registro := Registro + Formatar(IntToStr(NumeroRegistro),6,false,'0'); // 02 - 07	Quantidade de registros do lote	N	006
         Registro := Registro + FormatCurr('00000000000000000',valorpendente * 100);  // 08 - 24
         Registro := Registro + Formatar('',126) ;// 025 - 150	Reservado (uso Banco)
         writeln(Arquivo, Registro);

       // TRAILER DE ARQUIVO REMESSA

       /// Registro := Registro + Formatar(IntToStr(NumeroRegistro),6,false,'0'); // NUMERO SEQUENCIAL DO REGISTRO


      ///  writeln(Arquivo, Registro);
        CloseFile(arquivo);
        FlatGauge1.Progress := 0;
        label8.Caption := '';
        label8.Caption := 'Remessa gerada com SUCESSO...';

                                    /////// fim do Arquivo Remessa \\\\\\\\\\\
        Refresh;
end;

procedure TForm1.comboContaChange(Sender: TObject);
begin
  if (comboConta.Text = '15350')then
  begin
    Edit1.Visible := False;
    Edit3.Visible := True;
  end;
  if (comboConta.Text = '15400')then
  begin
    Edit3.Visible := False;
    Edit1.Visible := True;
  end;  
end;

end.
