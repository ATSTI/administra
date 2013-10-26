unit Modulo;

interface

uses  Classes, Forms, StdCtrls, ComCtrls,SysUtils;

Type

  TThreadLeStatus = class(TThread)
    Tempo : boolean;
    Private
      ThreadMemo : Tmemo;
    Published
       constructor Inicia( Memo : TMemo);
    Protected
      procedure Execute; override;
  end;

Procedure Traduz_Caption(Portugues: Boolean);


function IniciaPorta(Porta:string):integer; stdcall; far; external 'Mp2032.dll';
function FechaPorta: integer	;  stdcall; far; external 'Mp2032.dll';
function BematechTX(BufTrans:string):integer; stdcall; far; external 'Mp2032.dll';
function FormataTX(BufTras:string; TpoLtra:integer; Italic:integer; Sublin:integer; expand:integer; enfat:integer):integer; stdcall; far; external 'Mp2032.dll';
function ComandoTX (BufTrans:string;TamBufTrans:integer):integer; stdcall; far; external 'Mp2032.dll';
function Status_Porta:integer; stdcall; far; external 'Mp2032.dll';
function AutenticaDoc(BufTras:string;Tempo:Integer):integer; stdcall; far; external 'Mp2032.dll';
function Le_Status:integer; stdcall; far; external 'Mp2032.dll';
function Le_Status_Gaveta:integer; stdcall; far; external 'Mp2032.dll';
function DocumentInserted:integer; stdcall; far; external 'Mp2032.dll';
function ConfiguraTamanhoExtrato(NumeroLinhas:Integer):integer; stdcall; far; external 'Mp2032.dll';
function HabilitaExtratoLongo(Flag:Integer):integer; stdcall; far; external 'Mp2032.dll';
function HabilitaEsperaImpressao(Flag:Integer):integer; stdcall; far; external 'Mp2032.dll';
function EsperaImpressao:integer; stdcall; far; external 'Mp2032.dll';
function ConfiguraModeloImpressora(ModeloImpressora:integer):integer; stdcall; far; external 'Mp2032.dll';
function AcionaGuilhotina(Modo:integer):integer; stdcall; far; external 'Mp2032.dll';
function HabilitaPresenterRetratil(Flag:Integer):integer; stdcall; far; external 'Mp2032.dll';
function ProgramaPresenterRetratil(Tempo:Integer):integer; stdcall; far; external 'Mp2032.dll';
function CaracterGrafico(Buffer: string; TamBuffer: integer):integer; stdcall; far; external 'Mp2032.dll';
function VerificaPapelPresenter():integer; stdcall; far; external 'Mp2032.dll';

{FUNÇÃO PARA CODIGO DE BARRAS}

//funções para impressão dos códigos de barras
Function ImprimeCodigoBarrasUPCA(Codigo : String) :Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasUPCE(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasEAN13(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasEAN8(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasCODE39(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasCODE93(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasCODE128(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasITF(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasCODABAR(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasISBN(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasMSI(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasPLESSEY(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasPDF417(NivelCorrecaoErros , Altura , Largura , Colunas : Integer; Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ConfiguraCodigoBarras(Altura, Largura, PosicaoCaracteres, Fonte, Margem : Integer) : Integer; stdcall; far; external 'Mp2032.dll';

//Função para bitmaps
function ImprimeBmpEspecial(Nome: string; xScale : integer; yScale : integer; angle : integer) : Integer; stdcall; far; external 'Mp2032.dll';
function ImprimeBitmap(Nome: string; mode : integer) : Integer; stdcall; far; external 'Mp2032.dll';
function AjustaLarguraPapel(PaperWidth :  integer) : Integer; stdcall; far; external 'Mp2032.dll';
function SelectDithering (DitherType :  integer) : Integer; stdcall; far; external 'Mp2032.dll';
function ImprimePrn (nome : string; sleep :  integer) : Integer; stdcall; far; external 'Mp2032.dll';






implementation

uses windows, uVendaFinalizar;

procedure Traduz_Caption(Portugues: Boolean);
begin
  {with fVendaFinalizar do
  begin
    if Portugues then
    Begin
      TabSheet1.Caption := 'Usando a API';
      TabSheet2.Caption := 'Usando o Driver de Spooler';
      Edit1.Text := 'Digite o texto aqui.';

      // frame modos de impressão
      GroupBox1.Caption := 'Modos de Impressão';
        RBNormal.Caption := 'Normal';
        RBCondensado.Caption := 'Condensado';
        RBElite.Caption := 'Elite';

      // frame modos de formatação
      GroupBox2.Caption := 'Modos de Formatação';
        RBNegrito.Caption := 'Negrito';
        RBItalico.Caption := 'Itálico';
        RBSublinhado.Caption := 'Sublinhado';
        RBExpandido.Caption := 'Expandido';

      // botões de impressão
      Button1.Caption := 'Imprime te&xto sem formatação';
      Button2.Caption := 'Imprime texto com &formatação';
      BtnTesteTextoFormatado.Caption := 'T&este Texto Formatado';

      // frame programação do presenter
      GroupBox4.Caption := 'Programação do presenter';
        Label11.Caption := 'Tempo para retração:';
        Label3.Caption := 'segundo(s)';
        btnPrgramarPresenter.Caption := '&Programar';
        if (btnHabilitaPresenter.Caption = 'Enable')  then
          btnHabilitaPresenter.Caption := '&Habilitar'
        Else
          btnHabilitaPresenter.Caption := 'D&esabilitar';

      // frame tamanho do extrato
      GroupBox3.Caption := 'Tamanho do extrato';
        btnPrgramarExtrato.Caption := 'Programar';
        btnHabilitaTamanhoExtrato.Caption := 'Habilitar';

      // frame autenticação de documentos
      GroupBox8.Caption := 'Autenticação de Documentos';
        label5.Caption := 'seg.';
        label10.Caption := 'Texto';
        txtAutentica.Text := 'Teste de Autenticação';
        btnAutenticacao.Caption:= 'Autenticar Documento';
        btnVerificaDocInserido.Caption := 'Verificar Documento Inserido';

      // frame status da impressora
      GroupBox5.Caption := 'Status da Impressora';
      IF btnStatusPorta.Caption = 'Cancel' then
        btnStatusPorta.Caption := 'Cancelar'
      Else
        btnStatusPorta.Caption := 'Status da Impressora';

      // frame porta de comunicação
      GroupBox6.Caption := 'Porta de Comunicação:';

      // frame modelo da impressora
      GroupBox7.Caption := 'Modelo da Impressora:';

      // outros botões
      btnCaracterGrafico.Caption := 'Imprimir Caracter Gráfico';
      btnAguardaImpressaoTexto.Caption := 'Aguardar Impressão Texto';
      BtnCortarPapel.Caption := 'Corte Total do Papel';
      BtnCorteParcial.Caption := 'Corte Parcial do Papel';
      btnVerificarPapelPresenter.Caption := 'Verificar Papel Presenter';
      Button5.Caption := 'Sair';
      Button9.Visible := True; // caracteres acentuados

      // opções usando o driver de spooler

      If button4.Caption = 'Enable Low Paper Sensor' Then
         button4.Caption := 'Ligar Sensor de Pouco Papel'
      Else
         button4.Caption := 'Desligar Sensor de Pouco Papel';

      BtnImprimirTexto.Caption := 'Imprimir';
      BtnFonte.Caption := 'Modificar Fonte';
      BtnImprimirFigura.Caption := 'Imprimir';
      GBInformacoes.Caption := 'Informações: ';
      Label2.Caption := 'Impressoras: ';
      Label6.Caption := 'Imprimir Figura:';
      RichEdit1.Text := 'Bematech Soluções';
      Label4.Caption := 'Entre com seu Texto:';
      Label9.Caption := 'Número de Linhas:';
      Form1.Caption := 'Aplicativo de teste usando a API de comunicação e o driver de spooler';

      // CÓDIGO DE BARRAS
      TSCodBarras.Caption := 'Usando código de barras com a API';
      GBEscolhaCod.Caption := 'Escolha o Código de Barras';
      GBLargura.Caption := 'Largura das Barras';
      RBFina.Caption := 'Finas';
      RBMedia.Caption := 'Médias (default)';
      RBGrossa.Caption := 'Grossas';
      GBPosicao.Caption := 'Posição dos Caracteres';
      RBAcima.Caption := 'Acima do código';
      RBAbaixo.Caption := 'Abaixo do código';
      RBAcimaAbaixo.Caption := 'Acima e abaixo do código';
      RBNaoImprime.Caption := 'Não imprime os caracteres';
      GBFonte.Caption := 'Fonte';
      RBFonteNormal.Caption := 'Normal';
      RBFonteCondensada.Caption := 'Condensada';
      GBCodigo.Caption := 'Código';
      BtnImprimirCodigo.Caption := 'Imprimir';
      LBImprimirCodigo.Caption := 'Imprimir Código de Barras';

      // bitmap informações
      TabSheet3.Caption := 'Impressão de BitMap';
      Label7.Caption := 'Nome do arquivo';
      GroupBox9.Caption := 'Orientação do papel';
      RadioButtonRetrato.Caption := 'Retrato';
      RadioButtonPaisagem.Caption := 'Paisagem';
      PrintNormal.caption := 'Imprimir';
      Label8.Caption := 'Bitola do papel';
      Label12.caption := 'Algorítmo';
      GroupBoxTransform.Caption := 'Redimensionar';
      Label13.caption := 'Altura';
      Label14.caption := 'Largura';
      CheckBoxFitOnPage.caption := 'Ajusta na largura do papel';
      GroupBox10.caption := 'Girar';
      Label15.caption := 'Graus';
      PrintSpecialBtn.caption := 'Imprimir';




    End

    Else
    Begin
      //bitmap printout
      TabSheet3.Caption := 'BitMap Printing';
      Label7.Caption := 'File Name';
      GroupBox9.Caption := 'Paper Layout';
      RadioButtonRetrato.Caption := 'Portrait';
      RadioButtonPaisagem.Caption := 'Landscape';
      PrintNormal.caption := 'Print';
      Label8.Caption := 'Paper Width';
      Label12.caption := 'Algorithm';
      GroupBoxTransform.Caption := 'Transform';
      Label13.caption := 'Height';
      Label14.caption := 'Width';
      CheckBoxFitOnPage.caption := 'Fit on paper width';
      GroupBox10.caption := 'Rotation';
      Label15.caption := 'Degrees';
      PrintSpecialBtn.caption := 'Print';


      TabSheet1.Caption := 'Using the API';
      TabSheet2.Caption := 'Using the Spooler Driver';
      Edit1.Text := 'Type the text here.';

      // frame modos de impressão
      GroupBox1.Caption := 'Printing Modes';
        RBNormal.Caption := 'Normal';
        RBCondensado.Caption := 'Condensed';
        RBElite.Caption := 'Elite';

      // frame modos de formatação
      GroupBox2.Caption := 'Formatting Modes';
        RBNegrito.Caption := 'Bold';
        RBItalico.Caption := 'Italic';
        RBSublinhado.Caption := 'Underlined';
        RBExpandido.Caption := 'Expanded';

      // botões de impressão de texto
      Button1.Caption := 'Prints Te&xt Without Formatting';
      Button2.Caption := 'Prints Text With &Formatting';
      BtnTesteTextoFormatado.Caption := 'T&est Formatted Text';

      // frame Programação do Presenter
      GroupBox4.Caption := 'Presenter Programming';
        Label11.Caption := 'Retracting Time:';
        Label3.Caption := 'second(s)';
        btnPrgramarPresenter.Caption := 'Program';
        if (btnHabilitaPresenter.Caption = '&Habilitar')  then
          btnHabilitaPresenter.Caption := 'Enable'
        Else
          btnHabilitaPresenter.Caption := 'Disable';

      // frame tamanho do extrato
      GroupBox3.Caption := 'Coupon Size';
        btnPrgramarExtrato.Caption := 'Program';
        btnHabilitaTamanhoExtrato.Caption := 'Enable';

      // frame status da impressora
      GroupBox5.Caption := 'Printer Status';
      IF btnStatusPorta.Caption = 'Cancelar' then
        btnStatusPorta.Caption := 'Cancel'
      Else
        btnStatusPorta.Caption := 'Printer Status';

      // outros botões
      btnCaracterGrafico.Caption := 'Print Graphic Caracter';
      btnAguardaImpressaoTexto.Caption := 'Wait Print Text';
      btnVerificarPapelPresenter.Caption := 'Check Paper in Presenter';
      BtnCortarPapel.Caption := 'Full Paper Cut';
      BtnCorteParcial.Caption := 'Partial Paper Cut';
      Button5.Caption := 'Exit';

      // frame autenticação de documentos
      GroupBox8.Caption := 'Document Authentication';
        label5.Caption := 'sec.';
        label10.Caption := 'Text';
        txtAutentica.Text := 'Authentication Test';
        btnAutenticacao.Caption:= 'Validate Document';
        btnVerificaDocInserido.Caption := 'Verify Inserted Document';
        Button9.Visible := False; // caracteres acentuados

      // frame porta de comunicação
      GroupBox6.Caption := 'Communication Port:';

      // frame modelo da impressora
      GroupBox7.Caption := 'Printer Model:';

      If Button4.Caption = 'Ligar Sensor de Pouco Papel' Then
         Button4.Caption := 'Enable Low Paper Sensor'
      Else
         Button4.Caption := 'Disable Low Paper Sensor';

      BtnImprimirTexto.Caption := 'Print';
      BtnFonte.Caption := 'Change Font';
      BtnImprimirFigura.Caption := 'Print';
      GBInformacoes.Caption := 'Information: ';
      Label2.Caption := 'Printers: ';
      Label6.Caption := 'Image Printing ';
      RichEdit1.Text := 'Bematech Solutions';
      Label9.Caption := 'Number of Lines:';

      Label4.Caption := 'Enter your Text:';
      Form1.Caption := 'Test application using the API of comunication and spooler driver';

      // BARCOCE
      TSCodBarras.Caption := 'API Barcode printing with the API';
      GBEscolhaCod.Caption := 'Choose the barcode';
      GBLargura.Caption := 'Bar width';
      RBFina.Caption := 'Thin';
      RBMedia.Caption := 'Medium (default)';
      RBGrossa.Caption := 'Thick';
      GBPosicao.Caption := 'Character position';
      RBAcima.Caption := 'Top of barcode';
      RBAbaixo.Caption := 'Bottom of barcode';
      RBAcimaAbaixo.Caption := 'Top and bottom of barcode';
      RBNaoImprime.Caption := 'No character printing';
      GBFonte.Caption := 'Font';
      RBFonteNormal.Caption := 'Normal';
      RBFonteCondensada.Caption := 'Condensed';
      GBCodigo.Caption := 'Code';
      BtnImprimirCodigo.Caption := 'Print';
      LBImprimirCodigo.Caption := 'Print barcode';

    End
  end;
  }
end;

{ TThread_Le_Status }

procedure TThreadLeStatus.Execute;
var i : integer;
begin
  i := 1;
  While Tempo do
  Begin
    Sleep(500);
    ThreadMemo.Clear;
    With fVendaFinalizar Do
    Begin
      Retorno := Le_Status;
      case retorno of
         0 : // imp. desligada ou cabo desc. na LPT
                ThreadMemo.Text := 'Desligada ou cabo desconectado';
        32 : // pouco papel e off-line na LPT
                ThreadMemo.Text :='Pouco papel e off-line';
        4 : // pouco papel e off-line na serial
             ThreadMemo.Text :='Pouco papel e off-line';
        40 : // fim de papel na LPT
             ThreadMemo.Text := 'Fim de papel';
        5,  48 : // 5 = pouco papel serial e 48 na LPT
                ThreadMemo.Text := 'Pouco papel e on-line';
        79 : // off-line na LPT
              ThreadMemo.Text := 'Off-line';
        9, 128 : // 9 = head-up na serial e 128 na LPT
             ThreadMemo.Text := 'Head Up';
        24, 144 : // 24 = on-line na serial e 144 na LPT
             ThreadMemo.Text := 'Impressora ok'; // 24 (COM) e 144 (LPT)
        65:
            ThreadMemo.Text := 'erro no corte'; // 24 (COM) e 144 (LPT)
        66:
            ThreadMemo.Text := 'Temperatura da cabeça'; // 24 (COM) e 144 (LPT)

        67:
             ThreadMemo.Text := 'papel enrroscado'; // 24 (COM) e 144 (LPT)
        68:
             ThreadMemo.Text := 'desligada ou cabo desconectada'; // 24 (COM) e 144 (LPT)
        69:
             ThreadMemo.Text := 'erro no presenter'; // 24 (COM) e 144 (LPT)

        70:
             ThreadMemo.Text := 'Em Impressão'; // 24 (COM) e 144 (LPT)
      End;
    End;
  end
end;

constructor TThreadLeStatus.Inicia(Memo: TMemo);
begin
  inherited Create(true);      // Create thread suspended
  Priority := TThreadPriority(1); // Set Priority Level
  ThreadMemo := Memo;
  Tempo := true;
  FreeOnTerminate := true; // Thread Free Itself when terminated
  Suspended := false;         // Continue the thread
end;




end.
