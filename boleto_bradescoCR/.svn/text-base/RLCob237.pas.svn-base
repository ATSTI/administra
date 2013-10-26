unit RLCob237;

{$HINTS OFF}
{$WARNINGS OFF}

interface

uses
   classes, SysUtils, RLBoleto
  {$IFDEF VER150}
     , MaskUtils, contnrs
  {$ELSE}
   {$IFDEF VER140}
      , MaskUtils, contnrs
   {$ELSE}
      {$IFDEF VER130}
         , Mask, contnrs
      {$ELSE}
         , Mask
      {$ENDIF}
   {$ENDIF}
  {$ENDIF}
   ;

const
   CodigoBanco = '237';
   NomeBanco = 'BRADESCO';
   Imagem = 6;

type

   TRLBanco237 = class(TPersistent)
{$IFNDEF VER120}
   private
      function VerificaOcorrenciaOriginal(sOcorrenciaOriginal: String): String;
      function VerificaMotivoRejeicaoComando(sMotivoRejeicaoComando: String): String;
      function GerarRemessaCNAB400(var ACobranca: TRLBRemessa; var Remessa: TStringList) : boolean;
      function LerRetornoCNAB400(var ACobranca: TRLBRemessa; Retorno: TStringList) : boolean;
{$ENDIF}
   published
      function  GetNomeBanco   : string; {Retorna o nome do banco}
      function  GetImagem      : Byte; {Retorna o codigo para imagem do banco}
      function  GetCampoLivreCodigoBarra(ATitulo: TRLBTitulo) : string; {Retorna o conteúdo da parte variável do código de barras}
      function  CalcularDigitoNossoNumero(ATitulo: TRLBTitulo) : string; {Calcula o dígito do NossoNumero, conforme critérios definidos por cada banco}
      procedure FormatarBoleto(ATitulo: TRLBTitulo; var AAgenciaCodigoCedente, ANossoNumero, ACarteira, AEspecieDocumento: string); {Define o formato como alguns valores serão apresentados no boleto }
{$IFNDEF VER120}
      function  LerRetorno(var ACobranca: TRLBRemessa; Retorno: TStringList) : boolean; {Lê o arquivo retorno recebido do banco}
      function  GerarRemessa(var ACobranca: TRLBRemessa; var Remessa: TStringList) : boolean; {Gerar arquivo remessa para enviar ao banco}
{$ENDIF}
   end;


implementation


function TRLBanco237.GetImagem : Byte;
begin
   Result := Imagem;
end;

function TRLBanco237.GetNomeBanco : string;
begin
   Result := NomeBanco;
end;

function TRLBanco237.CalcularDigitoNossoNumero(ATitulo: TRLBTitulo) : string;
var
   ACarteira,
   ANossoNumero,
   ADigitoNossoNumero : string;
begin
   Result := '0';

   with ATitulo do
   begin
      ACarteira := Formatar(Carteira,2,false,'0');
      ANossoNumero := Formatar(NossoNumero,11,false,'0');
      ADigitoNossoNumero := Modulo11(ACarteira + ANossoNumero,7,true);
   end;
   if StrToInt(ADigitoNossoNumero) = 1 then
      ADigitoNossoNumero := 'P'
   else if StrToInt(ADigitoNossoNumero) > 1 then
      ADigitoNossoNumero := IntToStr(11 - StrToInt(ADigitoNossoNumero));

   Result := ADigitoNossoNumero;
end;

function TRLBanco237.GetCampoLivreCodigoBarra(ATitulo: TRLBTitulo) : string;
var
   AAnoAtual,
   ACarteira,
   ANossoNumero,
   ACodigoAgencia,
   ANumeroConta: string;
begin

   {
    A primeira parte do código de barras será calculada automaticamente.
    Ela é composta por:
    Código do banco (3 posições)
    Código da moeda = 9 (1 posição)
    Dígito do código de barras (1 posição) - Será calculado e incluído pelo componente
    Fator de vencimento (4 posições) - Obrigatório a partir de 03/07/2000
    Valor do documento (10 posições) - Sem vírgula decimal e com ZEROS à esquerda

    A segunda parte do código de barras é um campo livre, que varia de acordo
    com o banco. Esse campo livre será calculado por esta função (que você deverá
    alterar de acordo com as informações fornecidas pelo banco).
   }

   {Segunda parte do código de barras - Campo livre - Varia de acordo com o banco}

   with ATitulo do
   begin
      ACarteira := Formatar(Carteira,2,false,'0');
//feito comentario devido boleto estar saindo errado
//      AAnoAtual := FormatDateTime('yy',Now());
//      AAnoAtual := '11'; // Manoel comentei essa linha e altereia a debaixo 
//    manoel mudei para Nosso Numero para 11 era 9  11/11/08
      ANossoNumero := Formatar(NossoNumero,11,false,'0');
      ACodigoAgencia := Formatar(Cedente.ContaBancaria.CodigoAgencia,4,false,'0');
      ANumeroConta := Formatar(Cedente.ContaBancaria.NumeroConta,7,false,'0');
   end;

   Result := ACodigoAgencia + ACarteira + AAnoAtual + ANossoNumero + ANumeroConta + '0';
end;

procedure TRLBanco237.FormatarBoleto(ATitulo: TRLBTitulo; var AAgenciaCodigoCedente, ANossoNumero, ACarteira, AEspecieDocumento: string);
begin
   with ATitulo do
   begin
   // era
   // AAgenciaCodigoCedente := Formatar(Cedente.ContaBancaria.CodigoAgencia,4,false,'0') + '/' + Formatar(Cedente.CodigoCedente,7,false,'0') + '-' + Cedente.DigitoCodigoCedente;
   // Ficou
      AAgenciaCodigoCedente := Formatar(Cedente.ContaBancaria.CodigoAgencia,5,false,'0') + '-' + Cedente.ContaBancaria.DigitoAgencia + ' / ' + Formatar(Cedente.CodigoCedente,7,false,'0') + '-' + Cedente.DigitoCodigoCedente;
   // era
   // ANossoNumero := Formatar(Carteira,3,false,'0') + '/' + Formatar(Cedente.ContaBancaria.CodigoAgencia,4,false,'0') + '/' + Formatar(NossoNumero,7,false,'0') + '-' + DigitoNossoNumero;
   // Ficou
      ANossoNumero := Formatar(Carteira,2,false,'0') + '/' + Formatar(NossoNumero,11,false,'0') + '-' + DigitoNossoNumero;
      ACarteira := Formatar(Carteira,2,false,'0');
  // Era
  // AEspecieDocumento := '';
  // Ficou

     AEspecieDocumento := 'DM';
   end;
end;

{$IFNDEF VER120}

function TRLBanco237.GerarRemessaCNAB400(var ACobranca: TRLBRemessa; var Remessa: TStringList) : boolean;
var
   ACedenteTipoInscricao, ASacadoTipoInscricao,
   Registro : string;
   NumeroRegistro : integer;
begin
   Result := FALSE;
   NumeroRegistro := 0;
   Remessa.Clear;

   with ACobranca do
   begin

      { GERAR REGISTRO-HEADER DA REMESSA }

      Remessa.Add('01REMESSA01'+Formatar('COBRANCA',15)+'000'+Formatar(Titulos[NumeroRegistro].Carteira,4,false,'0')+Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,5,false,'0')+Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,7,false,'0')+Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoConta,1)+Formatar(Titulos[NumeroRegistro].Cedente.Nome,30,true,' ')+Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0')+Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Nome,15,true,' ')+FormatDateTime('ddmmyy',DataArquivo)+Formatar('',8)+'MX'+Formatar(IntToStr(NumeroArquivo),7,false,'0')+Formatar('',277)+'000001');

      { GERAR TODOS OS REGISTROS DETALHE DA REMESSA }
      while NumeroRegistro <= (Titulos.Count - 1) do
      begin
         if Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0') <> Formatar(CodigoBanco,3,false,'0') then
            Raise Exception.CreateFmt('Titulo não pertence ao banco %s - %s',[CodigoBanco,NomeBanco]);

         case Titulos[NumeroRegistro].Cedente.TipoInscricao of
            tiPessoaFisica  : ACedenteTipoInscricao := '01';
            tiPessoaJuridica: ACedenteTipoInscricao := '02';
            tiOutro         : ACedenteTipoInscricao := '03';
         end;
         case Titulos[NumeroRegistro].Sacado.TipoInscricao of
            tiPessoaFisica  : ASacadoTipoInscricao := '01';
            tiPessoaJuridica: ASacadoTipoInscricao := '02';
            tiOutro         : ASacadoTipoInscricao := '03';
         end;

         Registro := '1';
         Registro := Registro + Formatar('',19,false,'0');
         Registro := Registro + '0'+Formatar(Titulos[NumeroRegistro].Carteira,3,false,'0');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,5,false,'0');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,7,false,'0');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoConta,1);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].SeuNumero,25,true,' ');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].NossoNumero,11,false,'0');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].DigitoNossoNumero,1,false,'0');
         Registro := Registro + Formatar('',10,false,'0');
         Registro := Registro + '1N';
         Registro := Registro + Formatar('',11);
         Registro := Registro + '2';
         Registro := Registro + Formatar('',2);
         Registro := Registro + '01';
         Registro := Registro + Formatar(Titulos[NumeroRegistro].SeuNumero,10);
         Registro := Registro + FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataVencimento);
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorDocumento * 100);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0');
         Registro := Registro + Formatar('',5,false,'0');
         Registro := Registro + '05';
         Registro := Registro + 'N';
         Registro := Registro + FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataDocumento);
         Registro := Registro + Formatar(' ',4);
         Registro := Registro + Formatar(' ',13,false,'0');
         Registro := Registro + Formatar(' ',6);
         Registro := Registro + Formatar(' ',13,false,'0');
         Registro := Registro + Formatar(' ',13,false,'0');
         Registro := Registro + Formatar(' ',13,false,'0');
         Registro := Registro + Formatar(ASacadoTipoInscricao,2,false,'0');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.NumeroCPFCGC,14,false,'0');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Nome,40);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Rua+' '+Titulos[NumeroRegistro].Sacado.Endereco.Numero+' '+Titulos[NumeroRegistro].Sacado.Endereco.Complemento+' '+Titulos[NumeroRegistro].Sacado.Endereco.Bairro+' '+Titulos[NumeroRegistro].Sacado.Endereco.Cidade+' '+Titulos[NumeroRegistro].Sacado.Endereco.Estado,40);
         Registro := Registro + Formatar('',17);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.CEP,8,true,'0');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Instrucoes.Text,60);
         Registro := Registro + Formatar(IntToStr(NumeroRegistro+2),6,false,'0');
          Remessa.Add(Registro);
         NumeroRegistro := NumeroRegistro + 1;
      end;

      { GERAR REGISTRO TRAILER DA REMESSA }

      Remessa.Add('9'+Formatar('',393,true,' ')+Formatar(IntToStr(NumeroRegistro+2),6,false,'0'));
   end;

   Result := TRUE;
end;

function  TRLBanco237.GerarRemessa(var ACobranca: TRLBRemessa; var Remessa: TStringList) : boolean;
begin
   case ACobranca.LayoutArquivo of
      laCNAB240 : Raise Exception.CreateFmt('A geração de arquivo de remessa para o %s não está está disponível para o layout laCNAB240',[NomeBanco]);
      laCNAB400 : Result := GerarRemessaCNAB400(ACobranca, Remessa)
   else
      begin
         Result := FALSE;
         Raise Exception.Create('Layout de arquivo inválido. Diferente de laCNAB400');
      end; {else}
   end; {case}
end;


function TRLBanco237.LerRetornoCNAB400(var ACobranca: TRLBRemessa; Retorno: TStringList) : boolean;
var
   ACodigoBanco,
   ANomeCedente,
   ATipoInscricao : string;
   NumeroRegistro : integer;
   ATitulo : TRLBTitulo;
begin
   NumeroRegistro := 0;
   ATitulo := TRLBTitulo.Create(nil);

   TRY

      with ACobranca do
      begin
         Titulos.Clear; {Zera o conjunto de títulos, antes de incluir os títulos do arquivo retorno}

         if Retorno.Count <= 0 then
            Raise Exception.Create('O retorno está vazio. Não há dados para processar');

         {Ver se o arquivo é mesmo RETORNO DE COBRANÇA}
         if Copy(Retorno.Strings[NumeroRegistro],1,19) <> '02RETORNO01COBRANCA' then
            Raise Exception.Create(NomeArquivo+' não é um arquivo de retorno de cobrança');

         { Lê registro HEADER}
         ACodigoBanco := Copy(Retorno.Strings[NumeroRegistro],77,3);
         if ACodigoBanco <> CodigoBanco then
            Raise Exception.CreateFmt('Este não é um retorno de cobrança do banco %s - %s',[CodigoBanco,NomeBanco]);

         ANomeCedente := Trim(Copy(Retorno.Strings[NumeroRegistro],47,30));
         if StrToInt(Copy(Retorno.Strings[NumeroRegistro],99,2)) <= 69 then
            DataArquivo := EncodeDate(StrToInt('20'+Copy(Retorno.Strings[NumeroRegistro],99,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],97,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],95,2)))
         else
            DataArquivo := EncodeDate(StrToInt('19'+Copy(Retorno.Strings[NumeroRegistro],99,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],97,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],95,2)));

         NumeroArquivo := StrToInt(Trim(Copy(Retorno.Strings[NumeroRegistro],109,5)));

         {Lê os registros DETALHE}
         {Processa até o penúltimo registro porque o último contém apenas o TRAILLER}
         for NumeroRegistro := 1 to (Retorno.Count - 2) do
         begin
            {Confirmar se o tipo do registro é 1}
            if Copy(Retorno.Strings[NumeroRegistro],1,1) <> '1' then
               Continue; {Não processa o registro atual}

            { Ler títulos do arquivo retorno}
            {Dados do titulo}
            with ATitulo do
            begin
               {Dados do cedente do título}
               with Cedente do
               begin
                  ATipoInscricao := Copy(Retorno.Strings[NumeroRegistro],2,2);
                  if ATipoInscricao = '01' then
                     TipoInscricao := tiPessoaFisica
                  else if ATipoInscricao = '02' then
                     TipoInscricao := tiPessoaJuridica
                  else
                     TipoInscricao := tiOutro;
                  NumeroCPFCGC := Copy(Retorno.Strings[NumeroRegistro],4,14);
                  ContaBancaria.Banco.Codigo := ACodigoBanco;
                  Nome := ANomeCedente;
               end; {with ACedente}

               NumeroDocumento := Copy(Retorno.Strings[NumeroRegistro],38,25);

               {Tipo de ocorrência}
               OcorrenciaOriginal := Copy(Retorno.Strings[NumeroRegistro],109,2); //@w
               DescricaoOcorrenciaOriginal := VerificaOcorrenciaOriginal(OcorrenciaOriginal); //@w               
               case StrToInt(OcorrenciaOriginal) of
                  02: TipoOcorrencia := toRetornoRegistroConfirmado;
                  03: TipoOcorrencia := toRetornoRegistroRecusado;
                  06: TipoOcorrencia := toRetornoLiquidado;
                  09: TipoOcorrencia := toRetornoBaixado;
                  10: TipoOcorrencia := toRetornoBaixado;
                  11: TipoOcorrencia := toRetornoTituloEmSer;
                  12: TipoOcorrencia := toRetornoAbatimentoConcedido;
                  13: TipoOcorrencia := toRetornoAbatimentoCancelado;
                  14: TipoOcorrencia := toRetornoVencimentoAlterado;
                  15: TipoOcorrencia := toRetornoLiquidadoEmCartorio;
                  17: TipoOcorrencia := toRetornoLiquidadoSemRegistro;
                  18: TipoOcorrencia := toRetornoAcertoDepositaria;
                  19: TipoOcorrencia := toRetornoRecebimentoInstrucaoProtestar;
                  20: TipoOcorrencia := toRetornoRecebimentoInstrucaoSustarProtesto;
                  21: TipoOcorrencia := toRetornoDadosAlterados;
                  23: TipoOcorrencia := toRetornoEncaminhadoACartorio;
                  24: TipoOcorrencia := toRetornoRegistroRecusado;
                  27: TipoOcorrencia := toRetornoComandoRecusado;
                  28: TipoOcorrencia := toRetornoDebitoTarifas;
                  30: TipoOcorrencia := toRetornoComandoRecusado;
                  32: TipoOcorrencia := toRetornoComandoRecusado;
                  33: TipoOcorrencia := toRetornoRecebimentoInstrucaoAlterarDados;
                  34: TipoOcorrencia := toRetornoRetiradoDeCartorio;
                  99: TipoOcorrencia := toRetornoRegistroRecusado;
               else
                  TipoOcorrencia := toRetornoOutrasOcorrencias;
               end; {case StrToInt(ATipoOcorrencia)}

               if (TipoOcorrencia = toRetornoRegistroRecusado) or (TipoOcorrencia = toRetornoComandoRecusado) then
               begin
                  MotivoRejeicaoComando := Copy(Retorno.Strings[NumeroRegistro],319,2);
                  case StrToInt(MotivoRejeicaoComando) of
                     00 : DescricaoMotivoRejeicaoComando := '00 - Ocorrencia aceita';
                     17 : DescricaoMotivoRejeicaoComando := '17 - Data de vencimento anterior a data de emissão';
                     21 : DescricaoMotivoRejeicaoComando := '21 - Espécie do Título inválido';
                     24 : DescricaoMotivoRejeicaoComando := '24 - Data da emissão inválida';
                     38 : DescricaoMotivoRejeicaoComando := '38 - Prazo para protesto inválido';
                     39 : DescricaoMotivoRejeicaoComando := '39 - Pedido para protesto não permitido para título';
                     43 : DescricaoMotivoRejeicaoComando := '43 - Prazo para baixa e devolução inválido';
                     45 : DescricaoMotivoRejeicaoComando := '45 - Nome do Sacado inválido';
                     46 : DescricaoMotivoRejeicaoComando := '46 - Tipo/num. de inscrição do Sacado inválidos';
                     47 : DescricaoMotivoRejeicaoComando := '47 - Endereço do Sacado não informado';
                     48 : DescricaoMotivoRejeicaoComando := '48 - CEP irregular';
                     50 : DescricaoMotivoRejeicaoComando := '50 - CEP referente a Banco correspondente';
                     53 : DescricaoMotivoRejeicaoComando := '53 - Nº de inscrição do Sacador/avalista inválidos  (CPF/CGC)';
                     54 : DescricaoMotivoRejeicaoComando := '54 - Sacador/avalista não informado';
                     67 : DescricaoMotivoRejeicaoComando := '67 - Débito automático agendado';
                     68 : DescricaoMotivoRejeicaoComando := '68 - Débito não agendado - erro nos dados de remessa';
                     69 : DescricaoMotivoRejeicaoComando := '69 - Débito não agendado - Sacado não consta no cadastro de autorizante';
                     70 : DescricaoMotivoRejeicaoComando := '70 - Débito não agendado - Cedente não autorizado pelo Sacado';
                     71 : DescricaoMotivoRejeicaoComando := '71 - Débito não agendado - Cedente não participa da modalidade de débito automático';
                     72 : DescricaoMotivoRejeicaoComando := '72 - Débito não agendado - Código de moeda diferente de R$';
                     73 : DescricaoMotivoRejeicaoComando := '73 - Débito não agendado -  Data de vencimento inválida';
                     75 : DescricaoMotivoRejeicaoComando := '75 - Débito não agendado - Tipo do número de inscrição do sacado debitado inválido';
                     86 : DescricaoMotivoRejeicaoComando := '86 - Seu número do documento inválido'
                  else
                     MotivoRejeicaoComando := MotivoRejeicaoComando + ' - Outros motivos'
                  end; {case MotivoRejeicaoComando of}
               end; {if TipoOcorrencia...}

               if StrToInt(Copy(Retorno.Strings[NumeroRegistro],115,2)) <= 69 then
                  DataOcorrencia := EncodeDate(StrToInt('20'+Copy(Retorno.Strings[NumeroRegistro],115,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],113,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],111,2)))
               else
                  DataOcorrencia := EncodeDate(StrToInt('19'+Copy(Retorno.Strings[NumeroRegistro],115,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],113,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],111,2)));
               ValorDocumento := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],153,13))/100;
               ValorIOF := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],215,13))/100;
               ValorAbatimento := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],228,13))/100;
               ValorDesconto := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],241,13))/100;
               ValorMoraJuros := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],267,13))/100;
               ValorOutrosCreditos := StrToFloat(Trim(Copy(Retorno.Strings[NumeroRegistro],280,13)))/100;

               {Dados que variam de acordo com o banco}

               {Nosso número SEM DÍGITO}
               NossoNumero := Copy(Retorno.Strings[NumeroRegistro],71,11);
               Carteira := Copy(Retorno.Strings[NumeroRegistro],22,3);
               Cedente.ContaBancaria.CodigoAgencia := Copy(Retorno.Strings[NumeroRegistro],24,5);
               Cedente.ContaBancaria.NumeroConta := Copy(Retorno.Strings[NumeroRegistro],29,7);
               Cedente.ContaBancaria.DigitoConta := Copy(Retorno.Strings[NumeroRegistro],30,1);
               ValorDespesaCobranca := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],176,13))/100;
               ValorOutrasDespesas := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],189,13))/100;
               if Formatar(Copy(Retorno.Strings[NumeroRegistro],296,6),6,false,'0') <> '000000' then
                  if StrToInt(Copy(Retorno.Strings[NumeroRegistro],300,2)) <= 69 then
                     DataCredito := EncodeDate(StrToInt('20'+Copy(Retorno.Strings[NumeroRegistro],300,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],298,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],296,2)))
                  else
                     DataCredito := EncodeDate(StrToInt('19'+Copy(Retorno.Strings[NumeroRegistro],300,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],298,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],296,2)));

            end; {with ATitulo}

            {Insere o título}
            Titulos.Add(ATitulo);
         end;
      end;

      ATitulo.Free;
      Result := TRUE
   EXCEPT
      ATitulo.Free;
      Result := FALSE;
      Raise; {Propaga o erro}
   END;
end;

function TRLBanco237.LerRetorno(var ACobranca: TRLBRemessa; Retorno: TStringList) : boolean;
var
   ACodigoBanco,
   ANomeCedente,
   ATipoInscricao : string;
   NumeroRegistro : integer;
   ATitulo : TRLBTitulo;
begin
   NumeroRegistro := 0;
   ATitulo := TRLBTitulo.Create(nil);

   TRY

      with ACobranca do
      begin
         Titulos.Clear; {Zera o conjunto de títulos, antes de incluir os títulos do arquivo retorno}

         if Retorno.Count <= 0 then
            Raise Exception.Create('O retorno está vazio. Não há dados para processar');

         case length(Retorno[0]) of
            240 :
               begin
                  Raise Exception.CreateFmt('A leitura de arquivo de retorno para o %s não está está disponível para o layout laCNAB240',[NomeBanco]);
{
                  LayoutArquivo := laCNAB240;
                  Result := LerRetornoCNAB240(ACobranca, Retorno);
}
               end;
            400 :
               begin
                  LayoutArquivo := laCNAB400;
                  Result := LerRetornoCNAB400(ACobranca, Retorno);
               end
         else
            begin
               LayoutArquivo := laOutro;
               Raise Exception.CreateFmt('Tamanho de registro inválido: %d',[length(Retorno[0])]);
            end;
         end;
      end;

      ATitulo.Free;
      Result := TRUE
   EXCEPT
      ATitulo.Free;
      Result := FALSE;
      Raise; //Propaga o erro
   END;
end;



function TRLBanco237.VerificaOcorrenciaOriginal(sOcorrenciaOriginal: String): String;
begin
  if sOcorrenciaOriginal='  ' then begin
     Result:='';
     Exit;
  end;

  case StrToInt(sOcorrenciaOriginal) of
    02: Result:='02-Entrada Confirmada' ;
    03: Result:='03-Entrada Rejeitada' ;
    06: Result:='06-Liquidação  normal' ;
    09: Result:='09-Baixado Automaticamente via Arquivo' ;
    10: Result:='10-Baixado conforme instruções da Agência' ;
    11: Result:='11-Em Ser - Arquivo de Títulos pendentes' ;
    12: Result:='12-Abatimento Concedido' ;
    13: Result:='13-Abatimento Cancelado' ;
    14: Result:='14-Vencimento Alterado' ;
    15: Result:='15-Liquidação em Cartório' ;
    17: Result:='17-Liquidação após baixa ou Título não registrado' ;
    18: Result:='18-Acerto de Depositária' ;
    19: Result:='19-Confirmação Recebimento Instrução de Protesto' ;
    20: Result:='20-Confirmação Recebimento Instrução Sustação de Protesto' ;
    21: Result:='21-Acerto do Controle do Participante' ;
    23: Result:='22-Entrada do Título em Cartório' ;
    24: Result:='23-Entrada rejeitada por CEP Irregular' ;
    27: Result:='27-Baixa Rejeitada' ;
    28: Result:='28-Débito de tarifas/custas' ;
    30: Result:='30-Alteração de Outros Dados Rejeitados' ;
    32: Result:='32-Instrução Rejeitada' ;
    33: Result:='33-Confirmação Pedido Alteração Outros Dados' ;
    34: Result:='34-Retirado de Cartório e Manutenção Carteira' ;
    35: Result:='35-Desagendamento do débito automático' ;
    68: Result:='68-Acerto dos dados do rateio de Crédito' ;
    69: Result:='69-Cancelamento dos dados do rateio' ;
  end;
end;

function TRLBanco237.VerificaMotivoRejeicaoComando(sMotivoRejeicaoComando: String): String;
begin
 if sMotivoRejeicaoComando='  ' then begin
    Result:='';
    Exit;
 end;

 case StrToInt(sMotivoRejeicaoComando) of
   02: Result:='02-Código do registro detalhe inválido' ;
   03: Result:='03-Código da ocorrência inválida' ;
   04: Result:='04-Código de ocorrência não permitida para a carteira' ;
   05: Result:='05-Código de ocorrência não numérico' ;
   07: Result:='07-Agência/conta/Digito - Inválido' ;
   08: Result:='08-Nosso número inválido' ;
   09: Result:='09-Nosso número duplicado' ;
   10: Result:='10-Carteira inválida' ;
   16: Result:='16-Data de vencimento inválida' ;
   18: Result:='18-Vencimento fora do prazo de operação' ;
   20: Result:='19-Valor do Título inválido' ;
   21: Result:='21-Espécie do Título inválida' ;
   22: Result:='22-Espécie não permitida para a carteira' ;
   24: Result:='24-Data de emissão inválida' ;
   38: Result:='38-Prazo para protesto inválido' ;
   44: Result:='44-Agência Cedente não prevista' ;
   50: Result:='50-CEP irregular - Banco Correspondente' ;
   63: Result:='63-Entrada para Título já cadastrado' ;
   68: Result:='68-Débito não agendado - erro nos dados de remessa' ;
   69: Result:='69-Débito não agendado - Sacado não consta no cadastro de autorizante' ;
   70: Result:='70-Débito não agendado - Cedente não autorizado pelo Sacado' ;
   71: Result:='71-Débito não agendado - Cedente não participa da modalidade de débito automático' ;
   72: Result:='72-ébito não agendado - Código de moeda diferente de R$' ;
   73: Result:='73-Débito não agendado - Data de vencimento inválida' ;
   74: Result:='74-Débito não agendado - Conforme seu pedido, Título não registrado' ;
   75: Result:='75-Débito não agendado - Tipo de número de inscrição do debitado inválido' ;
 end;
end;



{$ENDIF}

initialization
RegisterClass(TRLBanco237);

{$HINTS ON}
{$WARNINGS ON}

end.
