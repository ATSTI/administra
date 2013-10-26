unit RLCob001;

{$HINTS OFF}
{$WARNINGS OFF}

interface

uses
   classes, SysUtils, RLBoleto
  {$IFDEF VER180}
     , Variants, MaskUtils, contnrs, DateUtils
  {$ELSE}
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
  {$ENDIF}
   ;

const
   CodigoBanco = '001';
   NomeBanco = 'BANCO DO BRASIL';
   Imagem = 0;

type

   TRLBanco001 = class(TPersistent)
   private
{$IFNDEF VER120}
      function VerificaOcorrenciaOriginal(sOcorrenciaOriginal: String): String;
      function VerificaMotivoRejeicaoComando(sMotivoRejeicaoComando: String): String;
      function GerarRemessaCNAB240(var ACobranca: TRLBRemessa; var Remessa: TStringList) : boolean;
      function GerarRemessaCNAB400(var ACobranca: TRLBRemessa; var Remessa: TStringList) : boolean;
      function LerRetornoCNAB240(var ACobranca: TRLBRemessa; Retorno: TStringList) : boolean;
      function LerRetornoCNAB400(var ACobranca: TRLBRemessa; Retorno: TStringList) : boolean;
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

function TRLBanco001.GetImagem : Byte;
begin
   Result := Imagem;
end;

function TRLBanco001.GetNomeBanco : string;
begin
   Result := NomeBanco;
end;

function TRLBanco001.CalcularDigitoNossoNumero(ATitulo: TRLBTitulo) : string;
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
      ADigitoNossoNumero := Modulo11(ANossoNumero,9);
   end;
   if StrToInt(ADigitoNossoNumero) = 10 then
      ADigitoNossoNumero := 'X'
   else
      ADigitoNossoNumero := (ADigitoNossoNumero);

   Result := ADigitoNossoNumero;
end;

function TRLBanco001.GetCampoLivreCodigoBarra(ATitulo: TRLBTitulo) : string;
var
  AAnoAtual,
  ACarteira,
  ANossoNumero,
  ACodigoAgencia,
  ADigitoNossoNumero,
  ACodigoCedente,
  AConvenio,
  ANumeroConta: string;
begin
  with ATitulo do
  begin
    ACarteira          := Formatar(Carteira,2);
    AConvenio          := Cedente.ContaBancaria.Convenio;
    if (ACarteira = '16') or (ACarteira = '17') or (ACarteira = '18') then
    begin
      if Length(Cedente.ContaBancaria.Convenio) <= 4 then
        ANossoNumero    := Formatar(Cedente.ContaBancaria.Convenio,4,false,'0') + Formatar(NossoNumero,7,false,'0')
      else if (Length(Cedente.ContaBancaria.Convenio) > 4) and (Length(Cedente.ContaBancaria.Convenio) <= 6) then
        ANossoNumero    := Formatar(Cedente.ContaBancaria.Convenio,6,false,'0') + Formatar(NossoNumero,5,false,'0')
      else if Length(Cedente.ContaBancaria.Convenio) = 7 then
        ANossoNumero    := Formatar(Cedente.ContaBancaria.Convenio,7,false,'0') + Formatar(NossoNumero,10,false,'0');
    end
    else
      ANossoNumero      := Formatar(NossoNumero,11,false,'0');
    ADigitoNossoNumero := Formatar(DigitoNossoNumero,1,false,'0');
    ACodigoAgencia     := Formatar(Cedente.ContaBancaria.CodigoAgencia,4,false,'0');
    ACodigoCedente     := Formatar(Cedente.CodigoCedente,8,false,'0');
  end;
  if Length(ATitulo.Cedente.ContaBancaria.Convenio) = 7 then
    Result := '000000' + ANossoNumero + ACarteira
  else
    Result := ANossoNumero + ACodigoAgencia + ACodigoCedente + ACarteira;
end;

procedure TRLBanco001.FormatarBoleto(ATitulo: TRLBTitulo; var AAgenciaCodigoCedente, ANossoNumero, ACarteira, AEspecieDocumento: string);
begin
  with ATitulo do
  begin
    if Trim(Cedente.ContaBancaria.DigitoAgencia) = '' then
      AAgenciaCodigoCedente := Formatar(Cedente.ContaBancaria.CodigoAgencia,4,false,'0') + '.' + Formatar(Cedente.CodigoCedente,11,false,'0') + '.' + Cedente.DigitoCodigoCedente
    else
      AAgenciaCodigoCedente := Formatar(Cedente.ContaBancaria.CodigoAgencia,4,false,'0') + '-' + Cedente.ContaBancaria.DigitoAgencia + '/' + Formatar(Cedente.CodigoCedente,11,false,'0') + '.' + Cedente.DigitoCodigoCedente;

    case LayoutNN of
      lnN11   : ANossoNumero := Formatar(NossoNumero,11,false,'0') + '.' + DigitoNossoNumero;
      lnN17   : ANossoNumero := Formatar(NossoNumero,17,false,'0') + '.' + DigitoNossoNumero;
      lnC7_N10: ANossoNumero := Formatar(Cedente.ContaBancaria.Convenio,7,false,'0') + Formatar(NossoNumero,10,false,'0');
      lnC4_N7 : ANossoNumero := Formatar(Cedente.ContaBancaria.Convenio,4,false,'0') + Formatar(NossoNumero,7,false,'0') + '.' + DigitoNossoNumero;
      lnC6_N5 : ANossoNumero := Formatar(Cedente.ContaBancaria.Convenio,6,false,'0') + Formatar(NossoNumero,5,false,'0') + '.X';
    end;
    ACarteira := Formatar(Carteira,2);

    case EspecieDocumento of
      edApoliceSeguro                : AEspecieDocumento := 'AP';
      edCheque                       : AEspecieDocumento := 'CH';
      edDuplicataMercantil           : AEspecieDocumento := 'DM';
      edDuplicataMercantialIndicacao : AEspecieDocumento := 'DMI';
      edDuplicataRural               : AEspecieDocumento := 'DR';
      edDuplicataServico             : AEspecieDocumento := 'DS';
      edDuplicataServicoIndicacao    : AEspecieDocumento := 'DSI';
      edFatura                       : AEspecieDocumento := 'FAT';
      edLetraCambio                  : AEspecieDocumento := 'LC';
      edMensalidadeEscolar           : AEspecieDocumento := 'ME';
      edNotaCreditoComercial         : AEspecieDocumento := 'NCC';
      edNotaCreditoExportacao        : AEspecieDocumento := 'NCE';
      edNotaCreditoIndustrial        : AEspecieDocumento := 'NCI';
      edNotaCreditoRural             : AEspecieDocumento := 'NCR';
      edNotaDebito                   : AEspecieDocumento := 'ND';
      edNotaPromissoria              : AEspecieDocumento := 'NP';
      edNotaPromissoriaRural         : AEspecieDocumento := 'NPR';
      edNotaSeguro                   : AEspecieDocumento := 'NS';
      edParcelaConsorcio             : AEspecieDocumento := 'PC';
      edRecibo                       : AEspecieDocumento := 'RC';
      edTriplicataMercantil          : AEspecieDocumento := 'TM';
      edTriplicataServico            : AEspecieDocumento := 'TS'
    else
      AEspecieDocumento := '';
    end;
 end;
end;

{$IFNDEF VER120}


function TRLBanco001.GerarRemessaCNAB240(var ACobranca: TRLBRemessa; var Remessa: TStringList) : boolean;
var
   ACedenteTipoInscricao, ASacadoTipoInscricao,
   Registro : string;
   NumeroRegistro, NumeroLote : integer;
begin
   Result := FALSE;
   NumeroRegistro := 0;
   NumeroLote := 1;
   Registro := '';
   Remessa.Clear;

   if ACobranca.Titulos.Count < 1 then
      Exception.Create('Não há títulos para gerar remessa');

   with ACobranca do
   begin

      if LayoutArquivo <> laCNAB240 then
        Raise Exception.Create('CNAB240 é o único layout disponível para o banco ' + CodigoBanco + ' - ' + NomeBanco);

      { GERAR REGISTRO-HEADER DO ARQUIVO }

      case Titulos[NumeroRegistro].Cedente.TipoInscricao of
         tiPessoaFisica  : ACedenteTipoInscricao := '1';
         tiPessoaJuridica: ACedenteTipoInscricao := '2';
         tiOutro         : ACedenteTipoInscricao := '3';
      end;

      if Formatar(CodigoBanco,3,false,'0') <> Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0') then
         Raise Exception.CreateFmt('O título (Nosso Número: %s) não pertence ao banco %s (%s)',[Titulos[NumeroRegistro].NossoNumero,CodigoBanco,NomeBanco]);

      Registro := Formatar(CodigoBanco,3,false,'0'); //1 a 3 -Código do banco
      Registro := Registro + '0000'; //4 a 7 -Lote de serviço
      Registro := Registro + '0'; //8 -Tipo de registro - Registro header de arquivo
      Registro := Registro + Formatar('',9); //9 a 17 Uso exclusivo FEBRABAN/CNAB
      Registro := Registro + ACedenteTipoInscricao; //18 - Tipo de inscrição do cedente
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.NumeroCPFCGC,14,false,'0'); //19 a 32 -Número de inscrição do cedente
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.CodigoCedente,20,false,'0'); //33 a 52 - Código do convênio no banco
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,5,false,'0'); //53 a 57 - Código da agência do cedente
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoAgencia,1,false,'0'); //58 - Dígito da agência do cedente
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,12,false,'0'); //59 a 70 - Número da conta do cedente
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoConta,1,false,'0'); //71 - Dígito da conta do cedente
      Registro := Registro + ' ';//72 - Dígito verificador da agência / conta
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.Nome,30,true,' '); //73 a 102 - Nome do cedente
      Registro := Registro + Formatar('BANCO DO BRASIL',30,true,' '); //103 a 132 - Nome do banco
      Registro := Registro + Formatar('',10); //133 a 142 - Uso exclusivo FEBRABAN/CNAB
      Registro := Registro + '1'; //143 - Código de Remessa (1) / Retorno (2)
      Registro := Registro + FormatDateTime('ddmmyyyy',DataArquivo); //144 a 151 - Data do de geração do arquivo
      Registro := Registro + FormatDateTime('hhmmss',DataArquivo);  //152 a 157 - Hora de geração do arquivo
      Registro := Registro + Formatar(IntToStr(NumeroArquivo),6,false,'0'); //158 a 163 - Número seqüencial do arquivo
      Registro := Registro + '030'; //164 a 166 - Número da versão do layout do arquivo
      Registro := Registro + Formatar('',5,false,'0'); //167 a 171 - Densidade de gravação do arquivo (BPI)
      Registro := Registro + Formatar('',20); // 172 a 191 - Uso reservado do banco
      Registro := Registro + Formatar('',20); // 192 a 211 - Uso reservado da empresa
      Registro := Registro + Formatar('',11); // 212 a 222 - 11 brancos
      Registro := Registro + 'CSP'; // 223 a 225 - 'CSP'
      Registro := Registro + Formatar('0',3); // 226 a 228 - Uso exclusivo de Vans
      Registro := Registro + Formatar('',2); // 229 a 230 - Tipo de servico
      Registro := Registro + Formatar('',10); //231 a 240 - titulo em carteira de cobranca
      Remessa.Add(Registro);
      Registro := '';

      //GERAR REGISTRO HEADER DO LOTE

      Registro := Formatar(CodigoBanco,3,false,'0'); //1 a 3 -Código do banco
      Registro := Registro + Formatar(IntToStr(NumeroLote),4,false,'0'); //4 a 7 - Número do lote de serviço
      Registro := Registro + '1'; //8 - Tipo do registro - Registro header de lote
      Registro := Registro + 'R'; //9 - Tipo de operação: R (Remessa) ou T (Retorno)
      Registro := Registro + '01'; //10 a 11 - Tipo de serviço: 01 (Cobrança)
      Registro := Registro + '00'; //12 a 13 - Forma de lançamento: preencher com ZEROS no caso de cobrança
      Registro := Registro + '020'; //14 a 16 - Número da versão do layout do lote
      Registro := Registro + ' '; //17 - Uso exclusivo FEBRABAN/CNAB
      Registro := Registro + ACedenteTipoInscricao; //18 - Tipo de inscrição do cedente
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.NumeroCPFCGC,15,false,'0'); //19 a 33 - Número de inscrição do cedente
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.CodigoCedente,20,false,'0'); //34 a 53 - Código do convênio no banco
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,5,false,'0'); //54 a 58 - Código da agência do cedente
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoAgencia,1,false,'0'); //59 - Dígito da agência do cedente
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,12,false,'0'); //60 a 71 - Número da conta do cedente
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoConta,1,false,'0'); //72 - Dígito da conta do cedente
      Registro := Registro + ' '; //73 - Dígito verificador da agência / conta
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.Nome,30,true,' '); //74 a 103 - Nome do cedente
      Registro := Registro + Formatar('',40); //104 a 143 - Mensagem 1 para todos os boletos do lote
      Registro := Registro + Formatar('',40); //144 a 183 - Mensagem 2 para todos os boletos do lote
      Registro := Registro + Formatar(IntToStr(NumeroArquivo),8,false,'0'); //184 a 191 - Número do arquivo
      Registro := Registro + FormatDateTime('ddmmyyyy',DataArquivo); //192 a 199 - Data de geração do arquivo
      Registro := Registro + Formatar('0',8); //200 a 207 - Data do crédito - Só para arquivo retorno
      Registro := Registro + Formatar('',33); //208 a 240 - Uso exclusivo FEBRABAN/CNAB


      Remessa.Add(Registro);
      Registro := '';

      { GERAR TODOS OS REGISTROS DETALHE DA REMESSA }
       //*********************** SEGMENTO P ****************************
      while NumeroRegistro <= (Titulos.Count - 1) do
      begin

         if Formatar(CodigoBanco,3,false,'0') <> Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0') then
            Raise Exception.CreateFmt('O título (Nosso Número: %s) não pertence ao banco %s (%s)',[Titulos[NumeroRegistro].NossoNumero,CodigoBanco,NomeBanco]);

         {SEGMENTO P}
         if Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0') <> Formatar(CodigoBanco,3,false,'0') then
            Raise Exception.CreateFmt('Titulo não pertence ao banco %s - %s',[CodigoBanco,NomeBanco]);

         case Titulos[NumeroRegistro].Cedente.TipoInscricao of
            tiPessoaFisica  : ACedenteTipoInscricao := '1';
            tiPessoaJuridica: ACedenteTipoInscricao := '2';
            tiOutro         : ACedenteTipoInscricao := '9';
         end;

         Registro := Formatar(CodigoBanco,3,false,'0'); //1 a 3 - Código do banco
         Registro := Registro + Formatar(IntToStr(NumeroLote),4,false,'0'); //4 a 7 - Número do lote
         Registro := Registro + '3'; //8 - Tipo do registro: Registro detalhe
         Registro := Registro + Formatar(IntToStr(2*NumeroRegistro+1),5,false,'0'); //9 a 13 - Número seqüencial do registro no lote - Cada título tem 2 registros (P e Q)
         Registro := Registro + 'P'; //14 - Código do segmento do registro detalhe
         Registro := Registro + ' '; //15 - Uso exclusivo FEBRABAN/CNAB: Branco
         case Titulos[NumeroRegistro].TipoOcorrencia of //16 a 17 - Código de movimento
            toRemessaRegistrar                 : Registro := Registro + '01';
            toRemessaBaixar                    : Registro := Registro + '02';
            toRemessaConcederAbatimento        : Registro := Registro + '04';
            toRemessaCancelarAbatimento        : Registro := Registro + '05';
            toRemessaConcederDesconto          : Registro := Registro + '07';
            toRemessaCancelarDesconto          : Registro := Registro + '08';
            toRemessaAlterarVencimento         : Registro := Registro + '06';
            toRemessaProtestar                 : Registro := Registro + '09';
            toRemessaCancelarInstrucaoProtesto : Registro := Registro + '10';
            toRemessaDispensarJuros            : Registro := Registro + '31';
            toRemessaAlterarNomeEnderecoSacado : Registro := Registro + '31';
         else
            Raise Exception.CreateFmt('Ocorrência inválida em remessa - Nosso número: %s / Seu número: %s',[Titulos[NumeroRegistro].NossoNumero,Titulos[NumeroRegistro].SeuNumero]);
         end; //case Titulos[NumeroRegistro].TipoOcorrencia
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,5,false,'0'); //18 a 22 - Agência mantenedora da conta
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoAgencia,1,false,'0'); //23 -Dígito verificador da agência
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,12,false,'0'); //24 a 35 - Número da conta corrente
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoConta,1,false,'0'); //36 - Dígito verificador da conta
         Registro := Registro + ' '; //37 - Dígito verificador da agência / conta
         Registro := Registro + Formatar(Titulos[NumeroRegistro].NossoNumero,20,True,'0'); //37 a 57 - Nosso número - identificação do título no banco
         Registro := Registro + '1'; //58 - Cobrança Simples
         Registro := Registro + '1'; //59 - Forma de cadastramento do título no banco: com cadastramento
         Registro := Registro + '1'; //60- Tipo de documento: Tradicional
         //*********** Emissão Boleto *****************************************
         case Titulos[NumeroRegistro].EmissaoBoleto of //61 a 62 - Quem emite e quem distribui o boleto?
            ebBancoEmite      : Registro := Registro + '1' + '1';
            ebClienteEmite    : Registro := Registro + '2' + '2';
            ebBancoReemite    : Registro := Registro + '4' + '1';
            ebBancoNaoReemite : Registro := Registro + '5' + '2';
         else
            Raise Exception.CreateFmt('Identificação inválida de emissão de boleto em remessa - Nosso número: %s / Seu número: %s',[Titulos[NumeroRegistro].NossoNumero,Titulos[NumeroRegistro].SeuNumero]);
         end; //case Titulos[NumeroRegistro].EmissaoBoleto
         //*********************************************************************

         Registro := Registro + Formatar(Titulos[NumeroRegistro].SeuNumero,15,false,'0'); //63 a 77 - Número que identifica o título na empresa
         Registro := Registro + FormatDateTime('ddmmyyyy',Titulos[NumeroRegistro].DataVencimento); //78 a 85 - Data de vencimento do título
         Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorDocumento * 100); //86 a 100 - Valor nominal do título
         Registro := Registro + Formatar('',5,false,'0'); //101 a 105 - Agência cobradora. Se ficar em branco, a caixa determina automaticamente pelo CEP do sacado
         Registro := Registro + ' '; //106 - Dígito da agência cobradora

         //*************** Especie do documento  *******************************
         case Titulos[NumeroRegistro].EspecieDocumento of {//107 a 108 - Espécie do documento
            edApoliceSeguro                : Registro := Registro + '20'; {AP  APÓLICE DE SEGURO}
            edCheque                       : Registro := Registro + '01'; {CH  CHEQUE}
            edDuplicataMercantil           : Registro := Registro + '02'; {DM  DUPLICATA MERCANTIL}
            edDuplicataMercantialIndicacao : Registro := Registro + '03'; {DMI DUPLICATA MERCANTIL P/ INDICAÇÃO}
            edDuplicataRural               : Registro := Registro + '06'; {DR  DUPLICATA RURAL}
            edDuplicataServico             : Registro := Registro + '04'; {DS  DUPLICATA DE SERVIÇO}
            edDuplicataServicoIndicacao    : Registro := Registro + '05'; {DSI DUPLICATA DE SERVIÇO P/ INDICAÇÃO}
            edFatura                       : Registro := Registro + '18'; {FAT FATURA}
            edLetraCambio                  : Registro := Registro + '07'; {LC  LETRA DE CÂMBIO}
            edMensalidadeEscolar           : Registro := Registro + '21'; {ME  MENSALIDADE ESCOLAR}
            edNotaCreditoComercial         : Registro := Registro + '08'; {NCC NOTA DE CRÉDITO COMERCIAL}
            edNotaCreditoExportacao        : Registro := Registro + '09'; {NCE NOTA DE CRÉDITO A EXPORTAÇÃO}
            edNotaCreditoIndustrial        : Registro := Registro + '10'; {NCI NOTA DE CRÉDITO INDUSTRIAL}
            edNotaCreditoRural             : Registro := Registro + '11'; {NCR NOTA DE CRÉDITO RURAL}
            edNotaDebito                   : Registro := Registro + '19'; {ND  NOTA DE DÉBITO}
            edNotaPromissoria              : Registro := Registro + '12'; {NP  NOTA PROMISSÓRIA}
            edNotaPromissoriaRural         : Registro := Registro + '13'; {NPR NOTA PROMISSÓRIA RURAL}
            edNotaSeguro                   : Registro := Registro + '16'; {NS  NOTA DE SEGURO}
            edParcelaConsorcio             : Registro := Registro + '22'; {PC  PARCELA DE CONSORCIO}
            edRecibo                       : Registro := Registro + '17'; {RC  RECIBO}
            edTriplicataMercantil          : Registro := Registro + '14'; {TM  TRIPLICATA MERCANTIL}
            edTriplicataServico            : Registro := Registro + '15' {TS  TRIPLICATA DE SERVIÇO}
         else
            Registro := Registro + '99'; {OUTROS}
         end; //case Titulos[NumeroRegistro].EspecieDocumento
         //*********************************************************************

         //**************Aceite Documento **************************************
         case Titulos[NumeroRegistro].AceiteDocumento of //109 - Identificação de título Aceito / Não aceito
            adSim : Registro := Registro + 'A';
            adNao : Registro := Registro + 'N';
         end; //case Titulos[NumeroRegistro].AceiteDocumento
         //*********************************************************************

         Registro := Registro + FormatDateTime('ddmmyyyy',Titulos[NumeroRegistro].DataDocumento); //110 a 117 - Data da emissão do documento

         //*************************  Mora Juros  ******************************
         if Titulos[NumeroRegistro].ValorMoraJuros > 0 then
         begin
            Registro := Registro + '1'; //118 - Código de juros de mora: Valor por dia
            if Titulos[NumeroRegistro].DataMoraJuros <> NULL then
               Registro := Registro + FormatDateTime('ddmmyyyy',Titulos[NumeroRegistro].DataMoraJuros) //119 a 126 - Data a partir da qual serão cobrados juros
            else
               Registro := Registro + Formatar('',8,false,'0'); //119 a 126 - Data a partir da qual serão cobrados juros
            Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorMoraJuros * 100); //127 a 141 - Valor de juros de mora por dia
         end
         else
         begin
            Registro := Registro + '0'; //118 - Código de juros de mora  (não há juros)
            Registro := Registro + Formatar('',8,false,'0'); //119 a 126 - Data a partir da qual serão cobrados juros
            Registro := Registro + Formatar('',15,false,'0');//127 a 141 - Valor de juros de mora por dia
         end;
         //*******************  Descontos  *********************
         if Titulos[NumeroRegistro].ValorDesconto > 0 then
         begin
            Registro := Registro + '1'; //142 - Código de desconto: Valor fixo até a data informada
            if Titulos[NumeroRegistro].DataDesconto <> NULL then
               Registro := Registro + FormatDateTime('ddmmyyyy',Titulos[NumeroRegistro].DataDesconto) //143 a 150 - Data do desconto
            else
               Registro := Registro + Formatar('',8,false,'0'); //143 a 150 - Data até a qual será concedido desconto
            Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorDesconto * 100); //151 a 165 - Valor do desconto por dia
         end
         else
         begin
            Registro := Registro + '0'; //142 - Código de desconto: Sem desconto
            Registro := Registro + Formatar('',8,false,'0'); //143 a 150 - Data até a qual será concedido desconto
            Registro := Registro + Formatar('',15,false,'0'); //151 a 165 - Valor do desconto por dia
         end;
         //*********************************************************************
         Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorIOF * 100); //166 a 180 - Valor do IOF a ser recolhido
         Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorAbatimento * 100); //181 a 195 - Valor do abatimento
         Registro := Registro + Formatar(Titulos[NumeroRegistro].SeuNumero,25); //196 a 220 - Identificação do título na empresa
         //**********************  Protesto  ***********************************
         if (Titulos[NumeroRegistro].DataProtesto <> null) and (Titulos[NumeroRegistro].DataProtesto > Titulos[NumeroRegistro].DataVencimento) then
         begin
            Registro := Registro + '1'; //221 - Código de protesto: Protestar em XX dias corridos
            Registro := Registro + Formatar(IntToStr(DaysBetween(Titulos[NumeroRegistro].DataProtesto, Titulos[NumeroRegistro].DataVencimento)),2,false,'0'); //221 - Prazo para protesto (em dias corridos)
         end
         else
         begin
            Registro := Registro + '3'; //221 - Código de protesto: Não protestar
            Registro := Registro + Formatar('',2,false,'0'); //222 a 223 - Prazo para protesto (em dias corridos)
         end;
         //**********************  Codigo p/ Baixa/Devolucao  ******************
         if (Titulos[NumeroRegistro].DataBaixa <> null) and (Titulos[NumeroRegistro].DataBaixa > Titulos[NumeroRegistro].DataVencimento) then
         begin
            Registro := Registro + '1'; //224 - Código para baixa/devolução: Baixar/devolver}
            Registro := Registro + Formatar(IntToStr(DaysBetween(Titulos[NumeroRegistro].DataBaixa,Titulos[NumeroRegistro].DataVencimento)),3,false,'0'); //225 a 227 - Prazo para baixa/devolução (em dias corridos)
         end
         else
         begin
            Registro := Registro + '2'; //224 - Código para baixa/devolução: Não baixar/não devolver
            Registro := Registro + Formatar('',3,false,'0'); //225 a 227 - Prazo para baixa/devolução (em dias corridos)
         end;
          //********************************************************************
         Registro := Registro + '09'; //228 a 229 - Código da moeda: Real
         Registro := Registro + Formatar('',10); //230 a 239 - Uso exclusivo FEBRABAN/CNAB
         Registro := Registro + Formatar('',1); //240 - Uso exclusivo FEBRABAN/CNAB

         Remessa.Add(Registro);
         Registro := '';

         {SEGMENTO Q}
         case Titulos[NumeroRegistro].Sacado.TipoInscricao of
            tiPessoaFisica  : ASacadoTipoInscricao := '1';
            tiPessoaJuridica: ASacadoTipoInscricao := '2';
            tiOutro         : ASacadoTipoInscricao := '9';
         end;

         Registro := Formatar(CodigoBanco,3,false,'0'); {Código do banco}
         Registro := Registro + Formatar(IntToStr(NumeroLote),4,false,'0'); {Número do lote}
         Registro := Registro + '3'; {Tipo do registro: Registro detalhe}
         Registro := Registro + Formatar(IntToStr(2*NumeroRegistro+2),5,false,'0'); {Número seqüencial do registro no lote - Cada título tem 2 registros (P e Q)}
         Registro := Registro + 'Q'; {Código do segmento do registro detalhe}
         Registro := Registro + ' '; {Uso exclusivo FEBRABAN/CNAB: Branco}
         case Titulos[NumeroRegistro].TipoOcorrencia of {Código de movimento}
            toRemessaRegistrar                 : Registro := Registro + '01';
            toRemessaBaixar                    : Registro := Registro + '02';
            toRemessaConcederAbatimento        : Registro := Registro + '04';
            toRemessaCancelarAbatimento        : Registro := Registro + '05';
            toRemessaConcederDesconto          : Registro := Registro + '07';
            toRemessaCancelarDesconto          : Registro := Registro + '08';
            toRemessaAlterarVencimento         : Registro := Registro + '06';
            toRemessaProtestar                 : Registro := Registro + '09';
            toRemessaCancelarInstrucaoProtesto : Registro := Registro + '10';
            toRemessaDispensarJuros            : Registro := Registro + '31';
            toRemessaAlterarNomeEnderecoSacado : Registro := Registro + '31';
         else
            Raise Exception.CreateFmt('Ocorrência inválida em remessa - Nosso número: %s / Seu número: %s',[Titulos[NumeroRegistro].NossoNumero,Titulos[NumeroRegistro].SeuNumero]);
         end; {case Titulos[NumeroRegistro].TipoOcorrencia}
         {Dados do sacado}
         Registro := Registro + Formatar(ASacadoTipoInscricao,1,false,'0');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.NumeroCPFCGC,15,false,'0');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Nome,40);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Rua+' '+Titulos[NumeroRegistro].Sacado.Endereco.Numero+' '+Titulos[NumeroRegistro].Sacado.Endereco.Complemento,40);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Bairro,15);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.CEP,8,true,'0');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Cidade,15,true);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Estado,2,false);
         {Dados do sacador/avalista}
         Registro := Registro + '0'; {Tipo de inscrição: Não informado}
         Registro := Registro + Formatar('',15,false,'0'); {Número de inscrição}
         Registro := Registro + Formatar('',40); {Nome do sacador/avalista}

         Registro := Registro + Formatar('',3); {Uso exclusivo FEBRABAN/CNAB}
         Registro := Registro + Formatar('',20); {Uso exclusivo FEBRABAN/CNAB}
         Registro := Registro + Formatar('',8); {Uso exclusivo FEBRABAN/CNAB}

         Remessa.Add(Registro);
         NumeroRegistro := NumeroRegistro + 1;
      end; {GERAR TODOS OS REGISTROS DETALHE DA REMESSA}

      {REGISTRO TRAILER DO LOTE}
      Registro := Formatar(CodigoBanco,3,false,'0'); {Código do banco}
      Registro := Registro + Formatar(IntToStr(NumeroLote),4,false,'0'); {Número do lote}
      Registro := Registro + '5'; {Tipo do registro: Registro trailer do lote}
      Registro := Registro + Formatar('',9); {Uso exclusivo FEBRABAN/CNAB}
      {Quantidade de registros do lote, incluindo header e trailer do lote.
       Até este momento Remessa contém:
       1 registro header de arquivo - É preciso excluí-lo desta contagem
       1 registro header de lote
       Diversos registros detalhe
       Falta incluir 1 registro trailer de lote
       Ou seja Quantidade = Remessa.Count - 1 header de arquivo + 1 trailer de lote = Remessa.Count}
      Registro := Registro + Formatar(IntToStr(Remessa.Count),6,false,'0');
      {Totalização da cobrança simples - Só é usado no arquivo retorno}
      Registro := Registro + Formatar('',6,false,'0'); {Quantidade títulos em cobrança}
      Registro := Registro + Formatar('',17,false,'0'); {Valor dos títulos em carteiras}
      {Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + Formatar('',23); {Uso exclusivo FEBRABAN/CNAB}
      {Totalização da cobrança caucionada - Só é usado no arquivo retorno}
      Registro := Registro + Formatar('',6,false,'0'); {Quantidade títulos em cobrança}
      Registro := Registro + Formatar('',17,false,'0'); {Valor dos títulos em carteiras}
      {Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + Formatar('',31); {Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + Formatar('',117); {Uso exclusivo FEBRABAN/CNAB}

      Remessa.Add(Registro);
      Registro := '';

      {GERAR REGISTRO TRAILER DO ARQUIVO}
      Registro := Formatar(CodigoBanco,3,false,'0'); {Código do banco}
      Registro := Registro + '9999'; {Lote de serviço}
      Registro := Registro + '9'; {Tipo do registro: Registro trailer do arquivo}
      Registro := Registro + Formatar('',9); {Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + Formatar(IntToStr(NumeroLote),6,false,'0'); {Quantidade de lotes do arquivo}
      Registro := Registro + Formatar(IntToStr(Remessa.Count + 1),6,false,'0'); {Quantidade de registros do arquivo, inclusive este registro que está sendo criado agora}
      Registro := Registro + Formatar('',6); {Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + Formatar('',205); {Uso exclusivo FEBRABAN/CNAB}

      Remessa.Add(Registro);
   end;

   Result := TRUE;
end;

function TRLBanco001.GerarRemessaCNAB400(var ACobranca: TRLBRemessa; var Remessa: TStringList) : boolean;
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
                  Formatar('BANCO DO BRASIL',15,true,' ')+ // NOME DO BANCO POR EXTENSO
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


function  TRLBanco001.GerarRemessa(var ACobranca: TRLBRemessa; var Remessa: TStringList) : boolean;
begin
   case ACobranca.LayoutArquivo of
      laCNAB240 : Result := GerarRemessaCNAB240(ACobranca, Remessa);
      laCNAB400 : Result := GerarRemessaCNAB400(ACobranca, Remessa);
   end;
end;

function TRLBanco001.LerRetornoCNAB240(var ACobranca: TRLBRemessa; Retorno: TStringList) : boolean;
var
   ACodigoBanco,
   ANomeCedente,
   ATipoInscricao,
   ANumeroCPFCGC,
   ACodigoCedente,
   ACodigoAgencia,
   ADigitoCodigoAgencia,
   ANumeroConta,
   ADigitoNumeroConta,
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

         if length(Retorno[0]) <> 240 then
         begin
            LayoutArquivo := laOutro;
            Raise Exception.CreateFmt('Tamanho de registro diferente de 240 bytes. Tamanho = %d bytes',[length(Retorno[0])]);
         end;

         LayoutArquivo := laCNAB240;

         {Ver se o arquivo é mesmo RETORNO DE COBRANÇA}
         if Copy(Retorno.Strings[NumeroRegistro],143,1) <> '2' then
            Raise Exception.Create(NomeArquivo+' não é um arquivo de retorno de cobrança com layout CNAB240');

         { Lê registro HEADER}
         ACodigoBanco := Copy(Retorno.Strings[NumeroRegistro],1,3);
         if ACodigoBanco <> CodigoBanco then
            Raise Exception.CreateFmt('Este não é um retorno de cobrança do banco %s - %s',[CodigoBanco,NomeBanco]);

         if Copy(Retorno.Strings[NumeroRegistro],8,1) <> '0' then
            Raise Exception.Create('Este não é um registro HEADER válido para arquivo de retorno de cobrança com layout CNAB240');

         {Dados do cedente do título}
         ATipoInscricao := Copy(Retorno.Strings[NumeroRegistro],18,1);
         ANumeroCPFCGC := Copy(Retorno.Strings[NumeroRegistro],19,14);
         ACodigoCedente := Copy(Retorno.Strings[NumeroRegistro],33,16);
         ACodigoAgencia := Copy(Retorno.Strings[NumeroRegistro],53,5);
         ADigitoCodigoAgencia := Copy(Retorno.Strings[NumeroRegistro],58,1);
         ANumeroConta := Copy(Retorno.Strings[NumeroRegistro],59,12);
         ADigitoNumeroConta := Copy(Retorno.Strings[NumeroRegistro],71,1);
         ANomeCedente := Trim(Copy(Retorno.Strings[NumeroRegistro],73,30));

         NumeroRegistro := 1;

         {Lê registro HEADER DE LOTE}
         {Verifica se é um lote de retorno de cobrança}
         if Copy(Retorno.Strings[NumeroRegistro],9,3) <> 'T01' then
            Raise Exception.Create('Este não é um lote de retorno de cobrança');

         DataArquivo := EncodeDate(StrToInt(Copy(Retorno.Strings[NumeroRegistro],196,4)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],194,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],192,2)));
         NumeroArquivo := StrToInt(Trim(Copy(Retorno.Strings[NumeroRegistro],184,8)));

         {Lê os registros DETALHE}
         NumeroRegistro := NumeroRegistro + 1;
         {Lê até o antepenúltimo registro porque o penúltimo contém apenas o TRAILER DO LOTE e o último contém apenas o TRAILER DO ARQUIVO}
         while (NumeroRegistro < Retorno.Count - 2) do
         begin
            {Registro detalhe com tipo de segmento = T}
            if Copy(Retorno.Strings[NumeroRegistro],14,1) = 'T' then
            begin
               {Dados do titulo}
               with ATitulo do
               begin
                  {Tipo de ocorrência}
                  ATipoOcorrencia := Copy(Retorno.Strings[NumeroRegistro],16,2);
                  case StrToInt(ATipoOcorrencia) of
                     2 : TipoOcorrencia := toRetornoRegistroConfirmado;
                     3 : TipoOcorrencia := toRetornoRegistroRecusado;
                     6 : TipoOcorrencia := toRetornoLiquidado;
                     9 : TipoOcorrencia := toRetornoBaixado;
                     12: TipoOcorrencia := toRetornoRecebimentoInstrucaoConcederAbatimento;
                     13: TipoOcorrencia := toRetornoRecebimentoInstrucaoCancelarAbatimento;
                     14: TipoOcorrencia := toRetornoRecebimentoInstrucaoAlterarVencimento;
                     17: TipoOcorrencia := toRetornoLiquidado;
                     19: TipoOcorrencia := toRetornoRecebimentoInstrucaoProtestar;
                     20: TipoOcorrencia := toRetornoRecebimentoInstrucaoSustarProtesto;
                     23: TipoOcorrencia := toRetornoEncaminhadoACartorio;
                     24: TipoOcorrencia := toRetornoRetiradoDeCartorio;
                     25: TipoOcorrencia := toRetornoProtestado;
                     26: TipoOcorrencia := toRetornoComandoRecusado;
                     27: TipoOcorrencia := toRetornoRecebimentoInstrucaoAlterarDados;
                     28: TipoOcorrencia := toRetornoDebitoTarifas;
                     30: TipoOcorrencia := toRetornoRegistroRecusado;
                     36: TipoOcorrencia := toRetornoRecebimentoInstrucaoConcederDesconto;
                     37: TipoOcorrencia := toRetornoRecebimentoInstrucaoCancelarDesconto;
                     43: TipoOcorrencia := toRetornoProtestoOuSustacaoEstornado;
                     44: TipoOcorrencia := toRetornoBaixaOuLiquidacaoEstornada;
                     45: TipoOcorrencia := toRetornoDadosAlterados;
                  else
                     TipoOcorrencia := toRetornoOutrasOcorrencias;
                  end; {case StrToInt(ATipoOcorrencia)}
                  
                  {Nosso número SEM DÍGITO}
                  NossoNumero := Copy(Retorno.Strings[NumeroRegistro],38,11);
                  SeuNumero := Copy(Retorno.Strings[NumeroRegistro],106,25);
                  //DataVencimento := EncodeDate(StrToInt(Copy(Retorno.Strings[NumeroRegistro],78,4)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],76,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],74,2)));
                  ValorDocumento := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],82,15))/100;

                  {Dados do cedente do título}
                  with Cedente do
                  begin
                     if ATipoInscricao = '1' then
                        TipoInscricao := tiPessoaFisica
                     else if ATipoInscricao = '2' then
                        TipoInscricao := tiPessoaJuridica
                     else
                        TipoInscricao := tiOutro;
                     NumeroCPFCGC := ANumeroCPFCGC;
                     CodigoCedente := ACodigoCedente;
                     with ContaBancaria do
                     begin
                        Banco.Codigo := ACodigoBanco;
                        CodigoAgencia := ACodigoAgencia;
                        DigitoAgencia := ADigitoCodigoAgencia;
                        NumeroConta := ANumeroConta;
                        DigitoConta := ADigitoNumeroConta;
                     end;
                     Nome := ANomeCedente;
                  end; {with ACedente}

                  {Dados do sacado do título}
                  with Sacado do
                  begin
                     if Copy(Retorno.Strings[NumeroRegistro],18,1) = '1' then
                        TipoInscricao := tiPessoaFisica
                     else if Copy(Retorno.Strings[NumeroRegistro],18,1) = '2' then
                        TipoInscricao := tiPessoaJuridica
                     else
                        TipoInscricao := tiOutro;
                     NumeroCPFCGC := Copy(Retorno.Strings[NumeroRegistro],19,15);
                     Nome := Trim(Copy(Retorno.Strings[NumeroRegistro],74,30));
                  end; {with ACedente}

                  ValorDespesaCobranca := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],199,15))/100;
                  MotivoRejeicaoComando := Copy(Retorno.Strings[NumeroRegistro],214,10);
               end; {with ATitulo}

               NumeroRegistro := NumeroRegistro + 1;
            end; {if Copy(Retorno.Strings[NumeroRegistro],14,1) = 'T'}

            {Registro detalhe com tipo de segmento = U}
            if Copy(Retorno.Strings[NumeroRegistro],14,1) = 'U' then
            begin
               with ATitulo do
               begin
                  ValorMoraJuros := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],18,15))/100;
                  ValorDesconto := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],33,15))/100;
                  ValorAbatimento := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],48,15))/100;
                  ValorIOF := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],63,15))/100;
                  ValorOutrasDespesas := StrToFloat(Trim(Copy(Retorno.Strings[NumeroRegistro],108,15)))/100;
                  ValorOutrosCreditos := StrToFloat(Trim(Copy(Retorno.Strings[NumeroRegistro],123,15)))/100;
                  DataOcorrencia:= EncodeDate(StrToInt(Copy(Retorno.Strings[NumeroRegistro],142,4)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],140,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],138,2)));
                  DataCredito := EncodeDate(StrToInt(Copy(Retorno.Strings[NumeroRegistro],150,4)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],148,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],146,2)))

               end; {with ATitulo}

               NumeroRegistro := NumeroRegistro + 1;
            end; {if Copy(Retorno.Strings[NumeroRegistro],14,1) = 'U'}


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

function TRLBanco001.LerRetornoCNAB400(var ACobranca: TRLBRemessa; Retorno: TStringList) : boolean;
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

         if StrToInt(Copy(Retorno.Strings[NumeroRegistro],99,2)) <= 69 then
            DataArquivo := EncodeDate(StrToInt('20'+Copy(Retorno.Strings[NumeroRegistro],99,2)),
                           StrToInt(Copy(Retorno.Strings[NumeroRegistro],97,2)),
                           StrToInt(Copy(Retorno.Strings[NumeroRegistro],95,2)))
         else
            DataArquivo := EncodeDate(StrToInt('19'+Copy(Retorno.Strings[NumeroRegistro],99,2)),
                           StrToInt(Copy(Retorno.Strings[NumeroRegistro],97,2)),
                           StrToInt(Copy(Retorno.Strings[NumeroRegistro],95,2)));


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

               SeuNumero := Copy(Retorno.Strings[NumeroRegistro],38,25);
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
               ValorIOF := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],215,13))/100;
               ValorAbatimento := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],228,13))/100;
               ValorDesconto := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],241,13))/100;
               ValorMoraJuros := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],267,13))/100;
               ValorOutrosCreditos := StrToFloat(Trim(Copy(Retorno.Strings[NumeroRegistro],280,13)))/100;

               {Dados que variam de acordo com o banco}

               {Nosso número SEM DÍGITO}
               NossoNumero := Copy(Retorno.Strings[NumeroRegistro],63,11);
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
               ValorDespesaCobranca := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],189,13))/100;
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



function TRLBanco001.LerRetorno(var ACobranca: TRLBRemessa; Retorno: TStringList) : boolean;
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
                  LayoutArquivo := laCNAB240;
//                Result := LerRetornoCNAB240(ACobranca, Retorno);
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


function TRLBanco001.VerificaOcorrenciaOriginal(sOcorrenciaOriginal: String): String;
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

function TRLBanco001.VerificaMotivoRejeicaoComando(sMotivoRejeicaoComando: String): String;
begin
 if sMotivoRejeicaoComando = '  ' then begin
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




{$ENDIF}

initialization
RegisterClass(TRLBanco001);

{$HINTS ON}
{$WARNINGS ON}
end.
