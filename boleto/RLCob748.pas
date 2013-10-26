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
      function  GetCampoLivreCodigoBarra(ATitulo: TRLBTitulo) : string; {Retorna o conte�do da parte vari�vel do c�digo de barras}
      function  CalcularDigitoNossoNumero(ATitulo: TRLBTitulo) : string; {Calcula o d�gito do NossoNumero, conforme crit�rios definidos por cada banco}
      procedure FormatarBoleto(ATitulo: TRLBTitulo; var AAgenciaCodigoCedente, ANossoNumero, ACarteira, AEspecieDocumento: string); {Define o formato como alguns valores ser�o apresentados no boleto }

{$IFNDEF VER120}
      function  LerRetorno(var ACobranca: TRLBRemessa; Retorno: TStringList) : boolean; {L� o arquivo retorno recebido do banco}
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
    A primeira parte do c�digo de barras ser� calculada automaticamente.
    Ela � composta por:
    C�digo do banco (3 posi��es)
    C�digo da moeda = 9 (1 posi��o)
    D�gito do c�digo de barras (1 posi��o) - Ser� calculado e inclu�do pelo componente
    Fator de vencimento (4 posi��es) - Obrigat�rio a partir de 03/07/2000
    Valor do documento (10 posi��es) - Sem v�rgula decimal e com ZEROS � esquerda

    A segunda parte do c�digo de barras � um campo livre, que varia de acordo
    com o banco. Esse campo livre ser� calculado por esta fun��o (que voc� dever�
    alterar de acordo com as informa��es fornecidas pelo banco).
   }

   {Segunda parte do c�digo de barras - Campo livre - Varia de acordo com o banco}

   With ATitulo do begin
      //C�digo num�rico correspondente ao Tipo de Cobran�a: "3" - BANSICREDI
      ATipoCobranca:='3'; //Fixo

      //C�digo num�rico correspondente ao Tipo de Carteira: "1" - Carteira Simples
      ATipoCarteira:='1'; //Fixo

      //Nosso n�mero
      ANossoNumero:=FormatDateTime('yy',Date) + '2' + Formatar(NossoNumero,5,False,'0') + CalcularDigitoNossoNumero(ATitulo);

      //Ag�ncia cedente
      ACodigoAgencia:=Formatar(Cedente.ContaBancaria.CodigoAgencia,4,False,'0');

      //Posto da ag�ncia cedente
      APostoCedente:=Formatar(Cedente.ContaBancaria.DigitoAgencia,2,False,'0');

      //C�digo do cedente
      ACodigoCedente:=Formatar(Cedente.ContaBancaria.NumeroConta,5,False,'0');

      //Filler - zeros (Obs.: ser� 1 (um) quando houver valor expresso
      //no campo "Valor do Documento"
      AFiller_A:='1';

      //Filler - zeros
      AFiller_B:='0';

      ACampoLivre:=ATipoCobranca + ATipoCarteira + ANossoNumero + ACodigoAgencia +
                   APostoCedente + ACodigoCedente + AFiller_A + AFiller_B;

      { No caso do banco SICREDI, foi criada uma outra rotina
       utilizando-se o M�dulo 11 para o c�lculo do DV do campo livre...

       DV do campo livre calculado por M�dulo 11 com aproveitamento total
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
                  '01'+ // IDENT. DO TIPO DE SERVI�O
                  Formatar('COBRANCA',8)+ // IDENT.POR EXTENSO TIPO SERVI�O
                  Formatar('',7)+ // USO DO BANCO
                  Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,4,false,' ')+ //AG ONDE O CLIENTE MANT�M C/C
                  Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoAgencia,1,false,' ')+ //DIGITO AG
                  Formatar(Titulos[NumeroRegistro].Cedente.CodigoCedente,15,true,' ')+ // IDENT.DO CEDENTE NO BANCO
                  Formatar(Titulos[NumeroRegistro].Cedente.Nome,30,true,' ')+ // NOME DA EMPRESA POR EXTENSO
                  Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0')+ // NUMERO DO BANCO DA COMPENSA��O
                  Formatar('BANSICREDI',15,true,' ')+ // NOME DO BANCO POR EXTENSO
                  FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataProcessamento)+ // DATA DA GRAVA��O DO ARQUIVO
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
            Raise Exception.CreateFmt('Titulo n�o pertence ao banco %s - %s',[CodigoBanco,NomeBanco]);
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
         Registro := Registro + '019'; // VARIA��O DA CARTEIRA
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
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0'); // BANCO ENCARREGADO DA COBRAN�A
         Registro := Registro + '0000'; // PREFIXO DA AGENCIA COBRADORA
         Registro := Registro + '0'; // DIGITO DA AGENCIA COBRADORA
         Registro := Registro + Formatar(aTitulosEspecieDocumento,2,false,'0'); // ESP�CIE DO TITULO
         Registro := Registro + Formatar(aTitulosAceite,1); // IDENT. DE ACEITE DO TITULO
         Registro := Registro + FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataDocumento); // DATA DE EMISSAO DO TITULO
         Registro := Registro + '00';
         Registro := Registro + '00';
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorMoraJuros * 100); // VALOR DE MORA A SER COBRADO POR DIA DE ATRASO
         if Titulos[NumeroRegistro].DataDesconto=0 then begin
            Registro := Registro + Formatar('0',6,False,'0'); // DATA LIMITE P/ CONCESS�O DESC.
         end else begin
            Registro := Registro + FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataDesconto); // DATA LIMITE P/ CONCESS�O DESC.
         end;
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorDesconto * 100); // VALOR DESCONTO A SER CONCEDIDO
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorIOF * 100); // VALOR DE IOF
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorAbatimento * 100); // VALOR DO ABATIMENTO

         Registro := Registro + Formatar(ASacadoTipoInscricao,2,false,'0'); // IDENT. TIPO INSCRI��O DO SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.NumeroCPFCGC,14,false,'0'); // CGC/CPF DO SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Nome,37,true,' '); // NOME DO SACADO
         Registro := Registro + Formatar('',3); // USO DO BANCO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Rua+
                                ' '+Titulos[NumeroRegistro].Sacado.Endereco.Numero+
                                ' '+Titulos[NumeroRegistro].Sacado.Endereco.Complemento,37); // ENDERE�O DO SACADO
         Registro := Registro + Formatar('',15); // USO DO BANCO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.CEP,8,true,'0'); // CEP DO SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Cidade,15,true); // CIDADE DO SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Estado,2,false); // ENDERE�O DO SACADO
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
         Titulos.Clear; {Zera o conjunto de t�tulos, antes de incluir os t�tulos do arquivo retorno}

         if Retorno.Count <= 0 then
            Raise Exception.Create('O retorno est� vazio. N�o h� dados para processar');

         if length(Retorno[0]) <> 400 then
         begin
            LayoutArquivo := laOutro;
            Raise Exception.CreateFmt('Tamanho de registro diferente de 400 bytes. Tamanho = %d bytes',[length(Retorno[0])]);
         end;

         LayoutArquivo := laCNAB400;

         {Ver se o arquivo � mesmo RETORNO DE COBRAN�A}
         if Copy(Retorno.Strings[NumeroRegistro],1,19) <> '02RETORNO01COBRANCA' then
            Raise Exception.Create(NomeArquivo+' n�o � um arquivo de retorno de cobran�a com layout CNAB400');

         { L� registro HEADER}
         ACodigoBanco := Copy(Retorno.Strings[NumeroRegistro],77,3);
         if ACodigoBanco <> CodigoBanco then
            Raise Exception.CreateFmt('Este n�o � um retorno de cobran�a do banco %s - %s',[CodigoBanco,NomeBanco]);
         ANomeCedente := Trim(Copy(Retorno.Strings[NumeroRegistro],47,30));

         DataArquivo := StrToDate(Copy(Retorno.Strings[NumeroRegistro],101,2)+'/'+
                                  Copy(Retorno.Strings[NumeroRegistro],99,2)+'/'+
                                  Copy(Retorno.Strings[NumeroRegistro],95,4));
         NumeroArquivo := StrToInt(Trim(Copy(Retorno.Strings[NumeroRegistro],101,7)));

         {L� os registros DETALHE}
         {Processa at� o pen�ltimo registro porque o �ltimo cont�m apenas o TRAILLER}
         for NumeroRegistro := 1 to (Retorno.Count - 2) do
         begin
            {Confirmar se o tipo do registro � 1}
            if Copy(Retorno.Strings[NumeroRegistro],1,1) <> '1' then
               Continue; {N�o processa o registro atual}

            { Ler t�tulos do arquivo retorno}
            {Dados do titulo}
            with ATitulo do
            begin
               {Dados do cedente do t�tulo}
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

               {Nosso n�mero SEM D�GITO}
               NossoNumero := Copy(Retorno.Strings[NumeroRegistro],48,15);
               Cedente.ContaBancaria.CodigoAgencia := Copy(Retorno.Strings[NumeroRegistro],18,4);
               Cedente.ContaBancaria.DigitoConta := Copy(Retorno.Strings[NumeroRegistro],22,1);

               {Tipo de ocorr�ncia}
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

            {Insere o t�tulo}
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
         Titulos.Clear; {Zera o conjunto de t�tulos, antes de incluir os t�tulos do arquivo retorno}

         if Retorno.Count <= 0 then
            Raise Exception.Create('O retorno est� vazio. N�o h� dados para processar');

         case length(Retorno[0]) of
            400 :
               begin
                  LayoutArquivo := laCNAB400;
                  Result := LerRetornoCNAB400(ACobranca, Retorno);
               end
         else
            begin
               LayoutArquivo := laOutro;
               Raise Exception.CreateFmt('Tamanho de registro inv�lido: %d',[length(Retorno[0])]);
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
   02: Result:='02-Confirma��o de Entrada de T�tulo' ;
   03: Result:='03-Comando recusado' ;
   05: Result:='05-Liquidado sem registro' ;
   06: Result:='06-Liquida��o Normal' ;
   07: Result:='07-Liquida��o por Conta' ;
   08: Result:='08-Liquida��o por Saldo' ;
   09: Result:='09-Baixa de T�tulo' ;
   10: Result:='10-Baixa Solicitada' ;
   11: Result:='11-Titulos em Ser' ;
   12: Result:='12-Abatimento Concedido' ;
   13: Result:='13-Abatimento Cancelado' ;
   14: Result:='14-Altera��o de Vencimento do Titulo' ;
   15: Result:='15-Liquida��o em Cart�rio' ;
   19: Result:='19-Confirma��o de recebimento de instru��es para protesto' ;
   20: Result:='20-D�bito em Conta' ;
   21: Result:='21-Altera��o do Nome do Sacado' ;
   22: Result:='22-Altera��o do Endere�o do Sacado' ;
   23: Result:='23-Indica��o de encaminhamento a cart�rio' ;
   24: Result:='24-Sustar Protesto' ;
   25: Result:='25-Dispensar Juros' ;
   28: Result:='28-Manuten��o de titulo vencido' ;
   72: Result:='72-Altera��o de tipo de cobran�a' ;
   96: Result:='96-Despesas de Protesto' ;
   97: Result:='97-Despesas de Susta��o de Protesto' ;
   98: Result:='98-D�bito de Custas Antecipadas' ;
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
   01: Result:='01-Identifica��o inv�lida' ;
   02: Result:='02-Varia��o da carteira inv�lida' ;
   03: Result:='03-Valor dos juros por um dia inv�lido' ;
   04: Result:='04-Valor do desconto inv�lido' ;
   05: Result:='05-Esp�cie de t�tulo inv�lida para carteira' ;
   06: Result:='06-Esp�cie de valor vari�vel inv�lido' ;
   07: Result:='07-Prefixo da ag�ncia usu�ria inv�lido' ;
   08: Result:='08-Valor do t�tulo/ap�lice inv�lido' ;
   09: Result:='09-Data de vencimento inv�lida' ;
   10: Result:='10-Fora do prazo' ;
   11: Result:='11-Inexist�ncia de margem para desconto' ;
   12: Result:='12-O Banco n�o tem ag�ncia na pra�a do sacado' ;
   13: Result:='13-Raz�es cadastrais' ;
   14: Result:='14-Sacado interligado com o sacador' ;
   15: Result:='15-T�tulo sacado contra org�o do Poder P�blico' ;
   16: Result:='16-T�tulo preenchido de forma irregular' ;
   17: Result:='17-T�tulo rasurado' ;
   18: Result:='18-Endere�o do sacado n�o localizado ou incompleto' ;
   19: Result:='19-C�digo do cedente inv�lido' ;
   20: Result:='20-Nome/endereco do cliente n�o informado /ECT/' ;
   21: Result:='21-Carteira inv�lida' ;
   22: Result:='22Quantidade de valor vari�vel inv�lida' ;
   23: Result:='23-Faixa nosso n�mero excedida' ;
   24: Result:='24-Valor do abatimento inv�lido' ;
   25: Result:='25-Novo n�mero do t�tulo dado pelo cedente inv�lido' ;
   26: Result:='26-Valor do IOF de seguro inv�lido' ;
   27: Result:='27-Nome do sacado/cedente inv�lido ou n�o informado' ;
   28: Result:='28-Data do novo vencimento inv�lida' ;
   29: Result:='29-Endereco n�o informado' ;
   30: Result:='30-Registro de t�tulo j� liquidado' ;
   31: Result:='31-Numero do bordero inv�lido' ;
   32: Result:='32-Nome da pessoa autorizada inv�lido' ;
   33: Result:='33-Nosso n�mero j� existente' ;
   34: Result:='34-Numero da presta��o do contrato inv�lido' ;
   35: Result:='35-Percentual de desconto inv�lido' ;
   36: Result:='36-Dias para fichamento de protesto inv�lido' ;
   37: Result:='37-Data de emiss�o do t�tulo inv�lida' ;
   38: Result:='38-Data do vencimento anterior a data da emiss�o do t�tulo' ;
   39: Result:='39-Comando de altera��o indevido para a carteira' ;
   40: Result:='40-Tipo de moeda inv�lido' ;
   41: Result:='41-Abatimento n�o permitido' ;
   42: Result:='42-CEP do sacado inv�lido /ECT/' ;
   43: Result:='43-Codigo de unidade variavel incompativel com a data emiss�o do t�tulo' ;
   44: Result:='44-Dados para debito ao sacado inv�lidos' ;
   45: Result:='45-Carteira' ;
   46: Result:='46-Convenio encerrado' ;
   47: Result:='47-T�tulo tem valor diverso do informado' ;
   48: Result:='48-Motivo de baixa inv�lido para a carteira' ;
   49: Result:='49-Abatimento a cancelar n�o consta do t�tulo' ;
   50: Result:='50-Comando incompativel com a carteira' ;
   51: Result:='51-Codigo do convenente inv�lido' ;
   52: Result:='52-Abatimento igual ou maior que o valor do t�tulo' ;
   53: Result:='53-T�tulo j� se encontra situa��o pretendida' ;
   54: Result:='54-T�tulo fora do prazo admitido para a conta 1' ;
   55: Result:='55-Novo vencimento fora dos limites da carteira' ;
   56: Result:='56-T�tulo n�o pertence ao convenente' ;
   57: Result:='57-Varia��o incompativel com a carteira' ;
   58: Result:='58-Impossivel a transferencia para a carteira indicada' ;
   59: Result:='59-T�tulo vencido em transferencia para a carteira 51' ;
   60: Result:='60-T�tulo com prazo superior a 179 dias em transferencia para carteira 51' ;
   61: Result:='61-T�tulo j� foi fichado para protesto' ;
   62: Result:='62-Altera��o da situa��o de debito inv�lida para o codigo de responsabilidade' ;
   63: Result:='63-DV do nosso n�mero inv�lido' ;
   64: Result:='64-T�tulo n�o passivel de debito/baixa - situa��o anormal' ;
   65: Result:='65-T�tulo com ordem de n�o protestar-n�o pode ser encaminhado a cartorio' ;
   67: Result:='66-T�tulo/carne rejeitado' ;
   80: Result:='80-Nosso n�mero inv�lido' ;
   81: Result:='81-Data para concess�o do desconto inv�lida' ;
   82: Result:='82-CEP do sacado inv�lido' ;
   83: Result:='83-Carteira/varia��o n�o localizada no cedente' ;
   84: Result:='84-T�tulo n�o localizado na existencia' ;
   99: Result:='99-Outros motivos' ;
 end;
end;

// No caso do banco SICREDI, foi criada uma outra rotina
// utilizando-se o M�dulo 11 para o c�lculo do DV do campo livre...
function TRLBanco748.Modulo11_DV_CampoLivre(Valor: String) : string;
{
   Pega-se cada um dos d�gitos contidos no par�metro VALOR, da direita para a
   esquerda e multiplica-se pela seq��ncia de pesos 2, 3, 4 ... at� BASE (9).
   Os pesos ser�o: 2,3,4,5,6,7,8,9,2,3,4,5...

   A) Soma-se cada um dos subprodutos.
   B) Divide-se o resultado de "A" por 11.

   C) Multiplica-se o resultado de "B" por 11.

   D) Subtrai-se o resultado de "A" por "C".

   E) Caso o resultado de "D" seja "0" ou "1", o DV ser� ZERO, caso contr�rio,
   faz-se a operea��o (11 - resultado de "D").

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
