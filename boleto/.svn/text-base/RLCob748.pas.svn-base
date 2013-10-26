unit RLCob748;

{$HINTS OFF}
{$WARNINGS OFF}

interface

uses
   classes, SysUtils, RLBoleto
  {$IFDEF VER150}
     , Variants, MaskUtils, contnrs, DateUtils
  {$ELSE}
   {$IFDEF VER140}
      , Variants, MaskUtils, contnrs, DateUtils
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
   CodigoBanco = '748';
   NomeBanco = 'BANSICREDI';
   Imagem = 19;

type

   TRLBanco748 = class(TPersistent)
   private
{$IFNDEF VER120}
      function VerificaOcorrenciaOriginal(sOcorrenciaOriginal: String): String;
      function VerificaMotivoRejeicaoComando(sMotivoRejeicaoComando: String): String;
      function GerarRemessaCNAB400(var ACobranca: TRLBRemessa; var Remessa: TStringList) : boolean;
      function LerRetornoCNAB400(var ACobranca: TRLBRemessa; Retorno: TStringList) : boolean;

      function Modulo11_DV_CampoLivre(Valor: String) : string;
{$ENDIF}
   published
      function  GetNomeBanco   : string; {Retorna o nome do banco}
      function  GetImagem      : byte; {Retorna o codigo para imagem do banco}
      function  GetCampoLivreCodigoBarra(ATitulo: TRLBTitulo) : string; {Retorna o conteúdo da parte variável do código de barras}
      function  CalcularDigitoNossoNumero(ATitulo: TRLBTitulo) : string; {Calcula o dígito do NossoNumero, conforme critérios definidos por cada banco}
      procedure FormatarBoleto(ATitulo: TRLBTitulo; var AAgenciaCodigoCedente, ANossoNumero, ACarteira, AEspecieDocumento: string); {Define o formato como alguns valores serão apresentados no boleto }

{$IFNDEF VER120}
      function  LerRetorno(var ACobranca: TRLBRemessa; Retorno: TStringList) : boolean; {Lê o arquivo retorno recebido do banco}
      function  GerarRemessa(var ACobranca: TRLBRemessa; var Remessa: TStringList) : boolean; {Gerar arquivo remessa para enviar ao banco}
{$ENDIF}
   end;


implementation

function TRLBanco748.GetImagem : Byte;
begin
   Result := Imagem;
end;

function TRLBanco748.GetNomeBanco : string;
begin
   Result := NomeBanco;
end;

function TRLBanco748.CalcularDigitoNossoNumero(ATitulo: TRLBTitulo) : string;
Var
   ANossoNumero, ACodigoAgencia, APostoCedente,
   ANumeroConta, ADigitoNossoNumero : String;
begin
   Result := '0';

   ACodigoAgencia := Formatar(ATitulo.Cedente.ContaBancaria.CodigoAgencia,4,false,'0');
   APostoCedente:= Formatar(ATitulo.Cedente.ContaBancaria.DigitoAgencia,2,false,'0');
   ANumeroConta := Formatar(ATitulo.Cedente.ContaBancaria.NumeroConta,5,false,'0');
   ANossoNumero:=Formatar(ATitulo.NossoNumero,5,false,'0');

   ADigitoNossoNumero := Modulo11(ACodigoAgencia + APostoCedente + ANumeroConta +
                                  FormatDateTime('yy',Date) + '2' + ANossoNumero);

   Result := ADigitoNossoNumero;
end;

function TRLBanco748.GetCampoLivreCodigoBarra(ATitulo: TRLBTitulo) : string;
Var
   ATipoCobranca, ATipoCarteira, ANossoNumero, ACodigoAgencia, APostoCedente,
   ACodigoCedente, AFiller_A, AFiller_B, ADigitoCampoLivre, ACampoLivre: String;
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

   With ATitulo do begin
      //Código numérico correspondente ao Tipo de Cobrança: "3" - BANSICREDI
      ATipoCobranca:='3'; //Fixo

      //Código numérico correspondente ao Tipo de Carteira: "1" - Carteira Simples
      ATipoCarteira:='1'; //Fixo

      //Nosso número
      ANossoNumero:=FormatDateTime('yy',Date) + '2' + Formatar(NossoNumero,5,False,'0') + CalcularDigitoNossoNumero(ATitulo);

      //Agência cedente
      ACodigoAgencia:=Formatar(Cedente.ContaBancaria.CodigoAgencia,4,False,'0');

      //Posto da agência cedente
      APostoCedente:=Formatar(Cedente.ContaBancaria.DigitoAgencia,2,False,'0');

      //Código do cedente
      ACodigoCedente:=Formatar(Cedente.ContaBancaria.NumeroConta,5,False,'0');

      //Filler - zeros (Obs.: será 1 (um) quando houver valor expresso
      //no campo "Valor do Documento"
      AFiller_A:='1';

      //Filler - zeros
      AFiller_B:='0';

      ACampoLivre:=ATipoCobranca + ATipoCarteira + ANossoNumero + ACodigoAgencia +
                   APostoCedente + ACodigoCedente + AFiller_A + AFiller_B;

      { No caso do banco SICREDI, foi criada uma outra rotina
       utilizando-se o Módulo 11 para o cálculo do DV do campo livre...

       DV do campo livre calculado por Módulo 11 com aproveitamento total
       (resto igual a 0 ou 1 DV cai pra 0)... }

      ADigitoCampoLivre:=Modulo11_DV_CampoLivre(ACampoLivre);

      Result:=ACampoLivre + ADigitoCampoLivre;
   end;
end;

procedure TRLBanco748.FormatarBoleto(ATitulo: TRLBTitulo; var AAgenciaCodigoCedente, ANossoNumero, ACarteira, AEspecieDocumento: string);
begin
   With ATitulo do begin
      AAgenciaCodigoCedente:=Formatar(Cedente.ContaBancaria.CodigoAgencia,4,False,'0') + '.' +
                             Formatar(ATitulo.Cedente.ContaBancaria.DigitoAgencia,2,False,'0') + '/' +
                             Formatar(Cedente.CodigoCedente,5,False,'0');

      ANossoNumero:=FormatDateTime('yy',Date) + '/' + '2' + Formatar(NossoNumero,5,False,'0') + '-' + DigitoNossoNumero;
      ACarteira:=Formatar(Carteira,3,False,' ');

      Case EspecieDocumento of
         edDuplicataMercantil           : AEspecieDocumento := 'DM';
         edDuplicataRural               : AEspecieDocumento := 'DR';
         edNotaPromissoria              : AEspecieDocumento := 'NP';
         edNotaPromissoriaRural         : AEspecieDocumento := 'NR';
         edNotaSeguro                   : AEspecieDocumento := 'NS';
         edRecibo                       : AEspecieDocumento := 'RC';
         edLetraCambio                  : AEspecieDocumento := 'LC';
         edNotaDebito                   : AEspecieDocumento := 'ND';
         edDuplicataServico             : AEspecieDocumento := 'DS';
         edOutros                       : AEspecieDocumento := 'OS';
      else
         AEspecieDocumento:='';
      end;
   end;
end;

{$IFNDEF VER120}

function TRLBanco748.GerarRemessaCNAB400(var ACobranca: TRLBRemessa; var Remessa: TStringList) : boolean;
var
   ACedenteTipoInscricao, ASacadoTipoInscricao, aTitulosTipoOcorrencia,
   aTitulosEspecieDocumento,aTitulosAceite, Registro : string;
   NumeroRegistro : integer;
begin
   Result := FALSE;
   NumeroRegistro := 0;
   Remessa.Clear;

   with ACobranca do
   begin

      { GERAR REGISTRO-HEADER DA REMESSA }

      Remessa.Add('0'+ // IDENT.DO REGISTRO
                  '1'+ // IDENT.DO ARQUIVO DE REMESSA
                  'REMESSA'+ // IDENT. POR EXTENSO REMESSA
                  '01'+ // IDENT. DO TIPO DE SERVIÇO
                  Formatar('COBRANCA',8)+ // IDENT.POR EXTENSO TIPO SERVIÇO
                  Formatar('',7)+ // USO DO BANCO
                  Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,4,false,' ')+ //AG ONDE O CLIENTE MANTÉM C/C
                  Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoAgencia,1,false,' ')+ //DIGITO AG
                  Formatar(Titulos[NumeroRegistro].Cedente.CodigoCedente,15,true,' ')+ // IDENT.DO CEDENTE NO BANCO
                  Formatar(Titulos[NumeroRegistro].Cedente.Nome,30,true,' ')+ // NOME DA EMPRESA POR EXTENSO
                  Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0')+ // NUMERO DO BANCO DA COMPENSAÇÃO
                  Formatar('BANSICREDI',15,true,' ')+ // NOME DO BANCO POR EXTENSO
                  FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataProcessamento)+ // DATA DA GRAVAÇÃO DO ARQUIVO
                  Formatar(IntToStr(NumeroArquivo),7,false,'0')+ //NUMERO DE GERACAO DO ARQUIVO                                    
                  Formatar('',276)+ // USO DO BANCO
                  Formatar('',2)+ // USO DO BANCO
                  Formatar('',3)+ // USO DO BANCO
                  Formatar('',6)+ // USO DO BANCO
                  '000001'); // NUMERO SEQUENCIAL REGISTRO


      { GERAR TODOS OS REGISTROS DETALHE DA REMESSA}
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

         case Titulos[NumeroRegistro].TipoOcorrencia of
            toRemessaRegistrar                 : ATitulosTipoOcorrencia := '01';
            toRemessaBaixar                    : ATitulosTipoOcorrencia := '02';
            toRemessaDebitarEmConta            : ATitulosTipoOcorrencia := '03';
            toRemessaConcederAbatimento        : ATitulosTipoOcorrencia := '04';
            toRemessaCancelarAbatimento        : ATitulosTipoOcorrencia := '05';
            toRemessaAlterarVencimento         : ATitulosTipoOcorrencia := '06';
            toRemessaAlterarNumeroControle     : ATitulosTipoOcorrencia := '07';
//            toRemessaAlterarSeuNumero          : ATitulosTipoOcorrencia := '08';
            toRemessaProtestar                 : ATitulosTipoOcorrencia := '09';
            toRemessaCancelarInstrucaoProtesto : ATitulosTipoOcorrencia := '10';
            toRemessaDispensarJuros            : ATitulosTipoOcorrencia := '11';
            toRemessaAlterarNomeEnderecoSacado : ATitulosTipoOcorrencia := '12';
         end;

         case Titulos[NumeroRegistro].EspecieDocumento of
              edDuplicataMercantil   : aTitulosEspecieDocumento := '01';
              edNotaPromissoria      : aTitulosEspecieDocumento := '02';
              edNotaSeguro           : aTitulosEspecieDocumento := '03';
              edRecibo               : aTitulosEspecieDocumento := '05';
              edLetraCambio          : aTitulosEspecieDocumento := '08';
              edWarrant              : aTitulosEspecieDocumento := '09';
              edCheque               : aTitulosEspecieDocumento := '10';
              edDuplicataServico     : aTitulosEspecieDocumento := '12';
              edNotaDebito           : aTitulosEspecieDocumento := '13';
              edApoliceSeguro        : aTitulosEspecieDocumento := '15';
              edDividaAtivaUniao     : aTitulosEspecieDocumento := '25';
              edDividaAtivaEstado    : aTitulosEspecieDocumento := '26';
              edDividaAtivaMunicipio : aTitulosEspecieDocumento := '27';
              edOutros               : aTitulosEspecieDocumento := '99';
        end;

        case Titulos[NumeroRegistro].AceiteDocumento of
             adNao: aTitulosAceite:='N';
             adSim: aTitulosAceite:='A';
        end;

         Registro := '1'; //  IDENT. DO REGISTRO
         Registro := Registro + Formatar(ACedenteTipoInscricao,2,false,'0'); // IDENT.TIPO INSCR.EMPRESA
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.NumeroCPFCGC,14,false,'0'); // NUMERO DO CGC DA EMPRESA
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,4,false,'0'); // AGENCIA ONDE O CLIENTE MANTEM C/C
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoAgencia,1,false,'0'); // DIGITO DA AGENCIA
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.CodigoCedente,15,true,' '); // IDENT.DO CEDENTE NO BANCO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.DigitoCodigoCedente,25,true,' '); // IDENT.DO CEDENTE NO BANCO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].NossoNumero,16,true,'0'); // IDENT. DO TITULO NO BANCO COM DIG VERIFICADOR
         Registro := Registro + '    '; // BRANCOS
         Registro := Registro + 'AI '; // PREFIXO DO TITULO
         Registro := Registro + '019'; // VARIAÇÃO DA CARTEIRA
         Registro := Registro + '0'; // CONTA CAUCAO
         Registro := Registro + '00000'; // CODIGO DE RESPONSABILIDADE
         Registro := Registro + '0'; // DIGITO VERIFICADOR DO COD.RESPONSABILIDADE
         Registro := Registro + '000000'; // NUMERO DO BORDERO
         Registro := Registro + '     '; // BRANCOS
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Carteira,2); // CODIGO DA CARTEIRA
         Registro := Registro + Formatar(aTitulosTipoOcorrencia,2,false,'0'); // IDENT. DA TRANSACAO(OCORRENCIA)
         Registro := Registro + Formatar(Titulos[NumeroRegistro].NumeroDocumento,10); // NUMERO DA DUPLICATA, ETC...
         Registro := Registro + FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataVencimento); // DATA DE VENCIMENTO DO TITULO
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorDocumento * 100); // VALOR NOMINAL DO TITULO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0'); // BANCO ENCARREGADO DA COBRANÇA
         Registro := Registro + '0000'; // PREFIXO DA AGENCIA COBRADORA
         Registro := Registro + '0'; // DIGITO DA AGENCIA COBRADORA
         Registro := Registro + Formatar(aTitulosEspecieDocumento,2,false,'0'); // ESPÉCIE DO TITULO
         Registro := Registro + Formatar(aTitulosAceite,1); // IDENT. DE ACEITE DO TITULO
         Registro := Registro + FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataDocumento); // DATA DE EMISSAO DO TITULO
         Registro := Registro + '00';
         Registro := Registro + '00';
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorMoraJuros * 100); // VALOR DE MORA A SER COBRADO POR DIA DE ATRASO
         if Titulos[NumeroRegistro].DataDesconto=0 then begin
            Registro := Registro + Formatar('0',6,False,'0'); // DATA LIMITE P/ CONCESSÃO DESC.
         end else begin
            Registro := Registro + FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataDesconto); // DATA LIMITE P/ CONCESSÃO DESC.
         end;
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorDesconto * 100); // VALOR DESCONTO A SER CONCEDIDO
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorIOF * 100); // VALOR DE IOF
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorAbatimento * 100); // VALOR DO ABATIMENTO

         Registro := Registro + Formatar(ASacadoTipoInscricao,2,false,'0'); // IDENT. TIPO INSCRIÇÃO DO SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.NumeroCPFCGC,14,false,'0'); // CGC/CPF DO SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Nome,37,true,' '); // NOME DO SACADO
         Registro := Registro + Formatar('',3); // USO DO BANCO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Rua+
                                ' '+Titulos[NumeroRegistro].Sacado.Endereco.Numero+
                                ' '+Titulos[NumeroRegistro].Sacado.Endereco.Complemento,37); // ENDEREÇO DO SACADO
         Registro := Registro + Formatar('',15); // USO DO BANCO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.CEP,8,true,'0'); // CEP DO SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Cidade,15,true); // CIDADE DO SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Estado,2,false); // ENDEREÇO DO SACADO
         Registro := Registro + Formatar('',40,true,' '); 
         Registro := Registro + '  '; // DIAS PARA PROTESTO
         Registro := Registro + ' '; // BRANCOS
         Registro := Registro + Formatar(IntToStr(NumeroRegistro+2),6,false,'0'); // NUMERO SEQUENCIAL DO REGISTRO

         Remessa.Add(Registro);
         NumeroRegistro := NumeroRegistro + 1;
      end;
      { GERAR REGISTRO TRAILER DA REMESSA }

      Remessa.Add('9'+ // IDENT. DO REGISTRO
                  Formatar(' ',393,False,' ')+ // USO DO BANCO
                  Formatar(IntToStr(NumeroRegistro+2),6,false,'0')); // QUANTIDADE TOTAL DE REGISTROS
   end;

   Result := TRUE;
end;


function  TRLBanco748.GerarRemessa(var ACobranca: TRLBRemessa; var Remessa: TStringList) : boolean;
begin
   case ACobranca.LayoutArquivo of
      laCNAB400 : Result := GerarRemessaCNAB400(ACobranca, Remessa);
   end;
end;

function TRLBanco748.LerRetornoCNAB400(var ACobranca: TRLBRemessa; Retorno: TStringList) : boolean;
var
   ACodigoBanco,
   ANomeCedente,
   ATipoInscricao,
   ATipoOcorrencia : string;
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

         if length(Retorno[0]) <> 400 then
         begin
            LayoutArquivo := laOutro;
            Raise Exception.CreateFmt('Tamanho de registro diferente de 400 bytes. Tamanho = %d bytes',[length(Retorno[0])]);
         end;

         LayoutArquivo := laCNAB400;

         {Ver se o arquivo é mesmo RETORNO DE COBRANÇA}
         if Copy(Retorno.Strings[NumeroRegistro],1,19) <> '02RETORNO01COBRANCA' then
            Raise Exception.Create(NomeArquivo+' não é um arquivo de retorno de cobrança com layout CNAB400');

         { Lê registro HEADER}
         ACodigoBanco := Copy(Retorno.Strings[NumeroRegistro],77,3);
         if ACodigoBanco <> CodigoBanco then
            Raise Exception.CreateFmt('Este não é um retorno de cobrança do banco %s - %s',[CodigoBanco,NomeBanco]);
         ANomeCedente := Trim(Copy(Retorno.Strings[NumeroRegistro],47,30));

         DataArquivo := StrToDate(Copy(Retorno.Strings[NumeroRegistro],101,2)+'/'+
                                  Copy(Retorno.Strings[NumeroRegistro],99,2)+'/'+
                                  Copy(Retorno.Strings[NumeroRegistro],95,4));
         NumeroArquivo := StrToInt(Trim(Copy(Retorno.Strings[NumeroRegistro],101,7)));

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

               SeuNumero := Copy(Retorno.Strings[NumeroRegistro],117,10);
               NumeroDocumento := Copy(Retorno.Strings[NumeroRegistro],117,10);

               if StrToInt(Copy(Retorno.Strings[NumeroRegistro],115,2)) <= 69 then
                  DataOcorrencia := EncodeDate(StrToInt('20'+Copy(Retorno.Strings[NumeroRegistro],115,2)),
                                     StrToInt(Copy(Retorno.Strings[NumeroRegistro],113,2)),
                                     StrToInt(Copy(Retorno.Strings[NumeroRegistro],111,2)))
               else
                  DataOcorrencia := EncodeDate(StrToInt('19'+Copy(Retorno.Strings[NumeroRegistro],115,2)),
                                     StrToInt(Copy(Retorno.Strings[NumeroRegistro],113,2)),
                                     StrToInt(Copy(Retorno.Strings[NumeroRegistro],111,2)));

               ValorDocumento := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],153,13))/100;
               ValorIOF := StrToFloatDef(Copy(Retorno.Strings[NumeroRegistro],215,13),0)/100;
               ValorAbatimento := StrToFloatDef(Copy(Retorno.Strings[NumeroRegistro],228,13),0)/100;
               ValorDesconto := StrToFloatDef(Copy(Retorno.Strings[NumeroRegistro],241,13),0)/100;
               ValorMoraJuros := StrToFloatDef(Copy(Retorno.Strings[NumeroRegistro],267,13),0)/100;
               ValorOutrosCreditos := StrToFloatDef(Trim(Copy(Retorno.Strings[NumeroRegistro],280,13)),0)/100;

               {Dados que variam de acordo com o banco}

               {Nosso número SEM DÍGITO}
               NossoNumero := Copy(Retorno.Strings[NumeroRegistro],48,15);
               Cedente.ContaBancaria.CodigoAgencia := Copy(Retorno.Strings[NumeroRegistro],18,4);
               Cedente.ContaBancaria.DigitoConta := Copy(Retorno.Strings[NumeroRegistro],22,1);

               {Tipo de ocorrência}
               ATipoOcorrencia := Copy(Retorno.Strings[NumeroRegistro],109,2);
               OcorrenciaOriginal := Copy(Retorno.Strings[NumeroRegistro],109,2); //@w
               DescricaoOcorrenciaOriginal := VerificaOcorrenciaOriginal(OcorrenciaOriginal); //@w
               case StrToInt(ATipoOcorrencia) of
                  01: TipoOcorrencia := toRetornoRegistroConfirmado;
                  02: TipoOcorrencia := toRetornoBaixado;
                  03: TipoOcorrencia := toRetornoAbatimentoConcedido;
                  04: TipoOcorrencia := toRetornoAbatimentoCancelado;
                  05: TipoOcorrencia := toRetornoVencimentoAlterado;
                  06: TipoOcorrencia := toRetornoDadosAlterados;
                  07: TipoOcorrencia := toRetornoDadosAlterados;
                  08: TipoOcorrencia := toRetornoDadosAlterados;
                  09: TipoOcorrencia := toRetornoDadosAlterados;
                  10: TipoOcorrencia := toRetornoDadosAlterados;
                  11: TipoOcorrencia := toRetornoDadosAlterados;
                  12: TipoOcorrencia := toRetornoDadosAlterados;
                  20: TipoOcorrencia := toRetornoTituloEmSer;
                  21: TipoOcorrencia := toRetornoLiquidado;
                  22: TipoOcorrencia := toRetornoLiquidado;
                  23: TipoOcorrencia := toRetornoBaixado;
                  24: TipoOcorrencia := toRetornoBaixado;
                  25: TipoOcorrencia := toRetornoProtestado;
                  26: TipoOcorrencia := toRetornoEncaminhadoACartorio;
                  27: TipoOcorrencia := toRetornoProtestoSustado;
                  28: TipoOcorrencia := toRetornoProtestoOuSustacaoEstornado;
                  29: TipoOcorrencia := toRetornoProtestoOuSustacaoEstornado;
                  30: TipoOcorrencia := toRetornoDadosAlterados;
                  31: TipoOcorrencia := toRetornoDebitoTarifas;
                  32: TipoOcorrencia := toRetornoDebitoTarifas;
                  33: TipoOcorrencia := toRetornoBaixaOuLiquidacaoEstornada;
                  99: TipoOcorrencia := toRetornoRegistroRecusado;
               else
                  TipoOcorrencia := toRetornoOutrasOcorrencias;
               end; {case StrToInt(ATipoOcorrencia)}

               MotivoRejeicaoComando := Copy(Retorno.Strings[NumeroRegistro],81,2);
               DescricaoMotivoRejeicaoComando := VerificaMotivoRejeicaoComando(MotivoRejeicaoComando);

               Carteira := Copy(Retorno.Strings[NumeroRegistro],107,2);
               ValorDespesaCobranca := StrToFloatDef(Copy(Retorno.Strings[NumeroRegistro],189,13),0)/100;
               if StrToInt(Copy(Retorno.Strings[NumeroRegistro],115,2)) <= 69 then
                  DataCredito := EncodeDate(StrToInt('20'+Copy(Retorno.Strings[NumeroRegistro],115,2)),
                                 StrToInt(Copy(Retorno.Strings[NumeroRegistro],113,2)),
                                 StrToInt(Copy(Retorno.Strings[NumeroRegistro],111,2)))
               else
                  DataCredito := EncodeDate(StrToInt('19'+Copy(Retorno.Strings[NumeroRegistro],115,2)),
                                 StrToInt(Copy(Retorno.Strings[NumeroRegistro],113,2)),
                                 StrToInt(Copy(Retorno.Strings[NumeroRegistro],111,2)));
               Sacado.Nome := Copy(Retorno.Strings[NumeroRegistro],347,30);

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



function TRLBanco748.LerRetorno(var ACobranca: TRLBRemessa; Retorno: TStringList) : boolean;
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


function TRLBanco748.VerificaOcorrenciaOriginal(sOcorrenciaOriginal: String): String;
begin
  if sOcorrenciaOriginal='  ' then begin
     Result:='';
     Exit;
  end;
 case StrToInt(sOcorrenciaOriginal) of
   02: Result:='02-Confirmação de Entrada de Título' ;
   03: Result:='03-Comando recusado' ;
   05: Result:='05-Liquidado sem registro' ;
   06: Result:='06-Liquidação Normal' ;
   07: Result:='07-Liquidação por Conta' ;
   08: Result:='08-Liquidação por Saldo' ;
   09: Result:='09-Baixa de Título' ;
   10: Result:='10-Baixa Solicitada' ;
   11: Result:='11-Titulos em Ser' ;
   12: Result:='12-Abatimento Concedido' ;
   13: Result:='13-Abatimento Cancelado' ;
   14: Result:='14-Alteração de Vencimento do Titulo' ;
   15: Result:='15-Liquidação em Cartório' ;
   19: Result:='19-Confirmação de recebimento de instruções para protesto' ;
   20: Result:='20-Débito em Conta' ;
   21: Result:='21-Alteração do Nome do Sacado' ;
   22: Result:='22-Alteração do Endereço do Sacado' ;
   23: Result:='23-Indicação de encaminhamento a cartório' ;
   24: Result:='24-Sustar Protesto' ;
   25: Result:='25-Dispensar Juros' ;
   28: Result:='28-Manutenção de titulo vencido' ;
   72: Result:='72-Alteração de tipo de cobrança' ;
   96: Result:='96-Despesas de Protesto' ;
   97: Result:='97-Despesas de Sustação de Protesto' ;
   98: Result:='98-Débito de Custas Antecipadas' ;
 end;
end;

function TRLBanco748.VerificaMotivoRejeicaoComando(sMotivoRejeicaoComando: String): String;
begin
 if sMotivoRejeicaoComando = '  ' then
 begin
   Result:='';
   Exit;
 end;

 case StrToInt(sMotivoRejeicaoComando) of
   01: Result:='01-Identificação inválida' ;
   02: Result:='02-Variação da carteira inválida' ;
   03: Result:='03-Valor dos juros por um dia inválido' ;
   04: Result:='04-Valor do desconto inválido' ;
   05: Result:='05-Espécie de título inválida para carteira' ;
   06: Result:='06-Espécie de valor variável inválido' ;
   07: Result:='07-Prefixo da agência usuária inválido' ;
   08: Result:='08-Valor do título/apólice inválido' ;
   09: Result:='09-Data de vencimento inválida' ;
   10: Result:='10-Fora do prazo' ;
   11: Result:='11-Inexistência de margem para desconto' ;
   12: Result:='12-O Banco não tem agência na praça do sacado' ;
   13: Result:='13-Razões cadastrais' ;
   14: Result:='14-Sacado interligado com o sacador' ;
   15: Result:='15-Título sacado contra orgão do Poder Público' ;
   16: Result:='16-Título preenchido de forma irregular' ;
   17: Result:='17-Título rasurado' ;
   18: Result:='18-Endereço do sacado não localizado ou incompleto' ;
   19: Result:='19-Código do cedente inválido' ;
   20: Result:='20-Nome/endereco do cliente não informado /ECT/' ;
   21: Result:='21-Carteira inválida' ;
   22: Result:='22Quantidade de valor variável inválida' ;
   23: Result:='23-Faixa nosso número excedida' ;
   24: Result:='24-Valor do abatimento inválido' ;
   25: Result:='25-Novo número do título dado pelo cedente inválido' ;
   26: Result:='26-Valor do IOF de seguro inválido' ;
   27: Result:='27-Nome do sacado/cedente inválido ou não informado' ;
   28: Result:='28-Data do novo vencimento inválida' ;
   29: Result:='29-Endereco não informado' ;
   30: Result:='30-Registro de título já liquidado' ;
   31: Result:='31-Numero do bordero inválido' ;
   32: Result:='32-Nome da pessoa autorizada inválido' ;
   33: Result:='33-Nosso número já existente' ;
   34: Result:='34-Numero da prestação do contrato inválido' ;
   35: Result:='35-Percentual de desconto inválido' ;
   36: Result:='36-Dias para fichamento de protesto inválido' ;
   37: Result:='37-Data de emissão do título inválida' ;
   38: Result:='38-Data do vencimento anterior a data da emissão do título' ;
   39: Result:='39-Comando de alteração indevido para a carteira' ;
   40: Result:='40-Tipo de moeda inválido' ;
   41: Result:='41-Abatimento não permitido' ;
   42: Result:='42-CEP do sacado inválido /ECT/' ;
   43: Result:='43-Codigo de unidade variavel incompativel com a data emissão do título' ;
   44: Result:='44-Dados para debito ao sacado inválidos' ;
   45: Result:='45-Carteira' ;
   46: Result:='46-Convenio encerrado' ;
   47: Result:='47-Título tem valor diverso do informado' ;
   48: Result:='48-Motivo de baixa inválido para a carteira' ;
   49: Result:='49-Abatimento a cancelar não consta do título' ;
   50: Result:='50-Comando incompativel com a carteira' ;
   51: Result:='51-Codigo do convenente inválido' ;
   52: Result:='52-Abatimento igual ou maior que o valor do título' ;
   53: Result:='53-Título já se encontra situação pretendida' ;
   54: Result:='54-Título fora do prazo admitido para a conta 1' ;
   55: Result:='55-Novo vencimento fora dos limites da carteira' ;
   56: Result:='56-Título não pertence ao convenente' ;
   57: Result:='57-Variação incompativel com a carteira' ;
   58: Result:='58-Impossivel a transferencia para a carteira indicada' ;
   59: Result:='59-Título vencido em transferencia para a carteira 51' ;
   60: Result:='60-Título com prazo superior a 179 dias em transferencia para carteira 51' ;
   61: Result:='61-Título já foi fichado para protesto' ;
   62: Result:='62-Alteração da situação de debito inválida para o codigo de responsabilidade' ;
   63: Result:='63-DV do nosso número inválido' ;
   64: Result:='64-Título não passivel de debito/baixa - situação anormal' ;
   65: Result:='65-Título com ordem de não protestar-não pode ser encaminhado a cartorio' ;
   67: Result:='66-Título/carne rejeitado' ;
   80: Result:='80-Nosso número inválido' ;
   81: Result:='81-Data para concessão do desconto inválida' ;
   82: Result:='82-CEP do sacado inválido' ;
   83: Result:='83-Carteira/variação não localizada no cedente' ;
   84: Result:='84-Título não localizado na existencia' ;
   99: Result:='99-Outros motivos' ;
 end;
end;

// No caso do banco SICREDI, foi criada uma outra rotina
// utilizando-se o Módulo 11 para o cálculo do DV do campo livre...
function TRLBanco748.Modulo11_DV_CampoLivre(Valor: String) : string;
{
   Pega-se cada um dos dígitos contidos no parâmetro VALOR, da direita para a
   esquerda e multiplica-se pela seqüência de pesos 2, 3, 4 ... até BASE (9).
   Os pesos serão: 2,3,4,5,6,7,8,9,2,3,4,5...

   A) Soma-se cada um dos subprodutos.
   B) Divide-se o resultado de "A" por 11.

   C) Multiplica-se o resultado de "B" por 11.

   D) Subtrai-se o resultado de "A" por "C".

   E) Caso o resultado de "D" seja "0" ou "1", o DV será ZERO, caso contrário,
   faz-se a opereação (11 - resultado de "D").

}
var
   Soma : integer;
   Contador, Peso, Digito : integer;
begin
   Soma := 0;
   Peso := 2;

   for Contador := Length(Valor) downto 1 do
   begin
      Soma := Soma + (StrToInt(Valor[Contador]) * Peso);
      if Peso < 9 then
         Peso := Peso + 1
      else
         Peso := 2;
   end;

   Digito := Soma div 11;
   Digito := Digito * 11;

   Digito := Soma - Digito;

   If Digito in [0,1] then
      Digito := 0
   else
      Digito := 11 - Digito;

   Result := IntToStr(Digito)
end;

{$ENDIF}

initialization

RegisterClass(TRLBanco748);

{$HINTS ON}
{$WARNINGS ON}
end.
