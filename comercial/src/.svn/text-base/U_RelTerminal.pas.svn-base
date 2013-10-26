unit U_RelTerminal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, JvExControls, JvLabel, StdCtrls, Mask,
  JvExMask, JvToolEdit, ExtCtrls, MMJPanel, Buttons, Provider, DBClient;

type
  TF_RelTerminal = class(TForm)
    MMJPanel7: TMMJPanel;
    MMJPanel1: TMMJPanel;
    lbl1: TLabel;
    cbb1: TComboBox;
    edData: TJvDateEdit;
    JvLabel11: TJvLabel;
    JvLabel1: TJvLabel;
    sVenda: TSQLDataSet;
    sVendaCODPRODUTO: TIntegerField;
    sVendaDESCRICAO: TStringField;
    sVendaQUTDE: TFloatField;
    sVendaVARLORUNIT: TFloatField;
    sVendaVARLORTOTAL: TFloatField;
    sVendaIDMOV: TIntegerField;
    sVendaVBASE: TFloatField;
    btnVendas: TBitBtn;
    chk1: TCheckBox;
    cCaixa: TSQLDataSet;
    cCaixaIDCAIXACONTROLE: TIntegerField;
    cCaixaCODCAIXA: TIntegerField;
    cCaixaCODUSUARIO: TIntegerField;
    cCaixaDATAFECHAMENTO: TDateField;
    cCaixaSITUACAO: TStringField;
    cCaixaMAQUINA: TStringField;
    cCaixaDATAABERTURA: TDateField;
    cCaixaVALORABRE: TFloatField;
    cCaixaVALORFECHA: TFloatField;
    cCaixaNOMECAIXA: TStringField;
    dlgSave1: TSaveDialog;
    btn1: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    edData1: TJvDateEdit;
    JvLabel2: TJvLabel;
    bvl1: TBevel;
    sPlano: TClientDataSet;
    sPlanoCODIGO: TIntegerField;
    sPlanoCONTA: TStringField;
    sPlanoCONTAPAI: TStringField;
    sPlanoNOME: TStringField;
    sPlanoCONSOLIDA: TStringField;
    sPlanoDESCRICAO: TStringField;
    sPlanoRATEIO: TStringField;
    sPlanoCODREDUZIDO: TStringField;
    sPlanoREDUZRECEITA: TStringField;
    dspPlano: TDataSetProvider;
    sdsPlano: TSQLDataSet;
    sdsPlanoCODIGO: TIntegerField;
    sdsPlanoCONTA: TStringField;
    sdsPlanoCONTAPAI: TStringField;
    sdsPlanoNOME: TStringField;
    sdsPlanoCONSOLIDA: TStringField;
    sdsPlanoDESCRICAO: TStringField;
    sdsPlanoRATEIO: TStringField;
    sdsPlanoCODREDUZIDO: TStringField;
    sdsPlanoREDUZRECEITA: TStringField;
    s_ccaixa: TSQLDataSet;
    S_CAIXA: TSQLDataSet;
    S_CAIXACODIGO: TIntegerField;
    s_ccaixaR_DATA: TDateField;
    s_ccaixaR_CAIXA: TIntegerField;
    s_ccaixaR_DESCAIXA: TStringField;
    s_ccaixaR_VALOR: TFloatField;
    s_parametro: TSQLDataSet;
    s_parametroDESCRICAO: TStringField;
    s_parametroPARAMETRO: TStringField;
    s_parametroCONFIGURADO: TStringField;
    s_parametroDADOS: TStringField;
    s_parametroD1: TStringField;
    s_parametroD2: TStringField;
    s_parametroD3: TStringField;
    s_parametroD4: TStringField;
    s_parametroD5: TStringField;
    s_parametroD6: TStringField;
    s_parametroD7: TStringField;
    s_parametroD8: TStringField;
    s_parametroD9: TStringField;
    s_parametroINSTRUCOES: TStringField;
    s_parametroVALOR: TFloatField;
    sVendaVCOMISSAO: TFloatField;
    procedure btnVendasClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure imprimeCupom;
    procedure imprimeDLLBema;
    function RPad(S: string; Ch: Char; Len: Integer): string;
  private
    IMPRESSORA:TextFile;
    Texto,Texto1,Texto2,Texto3,Texto4,texto5, texto6, texto7, texto8, logradouro,cep,fone : string;
    SqlCr, sqlTexto, sqlTexto1, DataStr, sqlGrupoCR, impCR: String;
    vUsercaixa, vAdm, nome, vNomeCliente, vEnderecoCliente, vFonecli, vObs : string;
    codigoCaixa, caixabanco, porta, tipoimpressao, nomeCLI, NOMECOLAB,NOMECOLABE1 : string;
    Totalgeral, totalprod , total, porc, totgeral, liquido, liquido1, diaria, hospedagem, diaria1, hospedagem1, TotalComissao : double;
    vValor, vTotal, Valor :Double;
    codigo, idCaixa : integer;
    usaDll : string;
    ModeloImpressora : integer;
    { Private declarations }
  public
    { Public declarations }
  end;

const
  cJustif = #27#97#51;
  cEject = #12;
  { Tamanho da fonte }
  c10cpi = #18;
  c12cpi = #27#77;
  c17cpi = #15;
  cIExpandido = #14;
  cFExpandido = #20;
  { Formatação da fonte }
  cINegrito = #27#71;
  cFNegrito = #27#72;
  cIItalico = #27#52;
  cFItalico = #27#53;


var
  F_RelTerminal: TF_RelTerminal;
  iRetorno, comando : integer;
  buffer, scomando : String;

  function ConfiguraModeloImpressora(ModeloImpressora:integer):integer; stdcall; far; external 'Mp2032.dll';
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
  function AcionaGuilhotina(Modo:integer):integer; stdcall; far; external 'Mp2032.dll';
  function HabilitaPresenterRetratil(Flag:Integer):integer; stdcall; far; external 'Mp2032.dll';
  function ProgramaPresenterRetratil(Tempo:Integer):integer; stdcall; far; external 'Mp2032.dll';
  function CaracterGrafico(Buffer: string; TamBuffer: integer):integer; stdcall; far; external 'Mp2032.dll';
  function VerificaPapelPresenter():integer; stdcall; far; external 'Mp2032.dll';
  function AjustaLarguraPapel(PaperWidth :  integer) : Integer; stdcall; far; external 'Mp2032.dll';

implementation

uses UDm, uMovCaixa;

{$R *.dfm}

procedure TF_RelTerminal.btnVendasClick(Sender: TObject);
begin
  if (edData.Text = '  /  /    ') then
  begin
     MessageDlg('Preencha o campo data', mtWarning, [mbOK], 0);
     edData.SetFocus;
     exit;
  end;
  {
  if (ComboBox1.Text <> '') then
  begin
    if (cCaixa.Active) then
      cCaixa.Close;
    cCaixa.Params[0].AsString := ComboBox1.Text;
    cCaixa.Params[1].AsDate := edData.Date;
    cCaixa.Open;
    if (not cCaixa.IsEmpty) then
    begin
      idCaixa := cCaixaIDCAIXACONTROLE.AsInteger;
    end
    else
    begin
      MessageDlg('Caixa não encontrado', mtWarning, [mbOK], 0);
      exit;
    end;
  end
  else
    idCaixa  := 9999999;
  }
  usaDll := 'FALSE';

  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'DLLBEMATECH';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
    usaDll := 'TRUE';

  dm.cds_parametro.Close;

  tipoImpressao := '';
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CUPOMPDV';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.Eof) then
     tipoImpressao := 'CUPOM';

  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'RECIBOPDV';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.Eof) then
     tipoImpressao := 'RECIBO';

  if (tipoImpressao = '') then
  begin
    ShowMessage('Parametro Tipo Impressão não configurado');
    exit;
  end;

  if (tipoImpressao = 'CUPOM') then
  begin
     if (usaDll = 'TRUE') then
         imprimeDLLBema
     else
       imprimeCupom;
  end;

  //if (tipoImpressao = 'RECIBO') then
  //  imprimeRecibo;

end;

procedure TF_RelTerminal.FormShow(Sender: TObject);
var codigoCaixa : string;
begin
  //------Pego do Parametro o cadigo para listar os Caixas ---
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'LISTARCAIXA';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
  begin
    codigoCaixa := dm.cds_parametroDADOS.AsString;
    sPlano.close;
    sPlano.Params[0].AsString := codigoCaixa;
    sPlano.Open;
    sPlano.First;
    cbb1.Items.Clear;
    while not sPlano.Eof do
    begin
       cbb1.Items.Add(sPlanoNOME.AsString);
       sPlano.Next;
    end;
    sPlano.Close;
  end
  else
  begin
    MessageDlg('é preciso cadastrar Parametro LISTARCAIXA, com a conta pai para CAIXAS.', mtConfirmation, [mbok], 0);
    dm.cds_parametro.Close;
    exit;
  end;
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  if sPlano.Active then
     sPlano.Close;
{  usaDll := 'FALSE';
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'DLLBEMATECH';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
    usaDll := 'TRUE';
    }
end;

procedure TF_RelTerminal.btn3Click(Sender: TObject);
begin
    Close;
end;

procedure TF_RelTerminal.btn2Click(Sender: TObject);
begin
  fMovCaixa := TfMovCaixa.Create(Application);
  try
    fMovCaixa.ShowModal;
  finally
    fMovCaixa.Free;
  end;
end;

procedure TF_RelTerminal.btn1Click(Sender: TObject);
var idCCusto : Integer;
    v_string, desc_caixa, dtaEmissao : string;

begin
  usaDll := 'FALSE';

  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'DLLBEMATECH';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
    usaDll := 'TRUE';

  dm.cds_parametro.Close;

  If (S_CAIXA.Active) Then
      S_CAIXA.Close;
  S_CAIXA.Params[0].AsString := cbb1.Text;
  S_CAIXA.Open;
  if (not S_CAIXA.IsEmpty) then
    idCCusto := S_CAIXACODIGO.AsInteger
  else
    idCCusto := 0;

  S_CAIXA.Close;

  tipoImpressao := '';
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CUPOMPDV';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.Eof) then
     tipoImpressao := 'CUPOM';

  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'RECIBOPDV';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.Eof) then
     tipoImpressao := 'RECIBO';

  if (tipoImpressao = '') then
  begin
    ShowMessage('Parametro Tipo Impressão não configurado');
    exit;
  end;

  if (tipoImpressao = 'CUPOM') then
  begin
     if (usaDll = 'TRUE') then
     begin
        // imprimeDLLBema
        if (not dm.cds_empresa.Active) then
          dm.cds_empresa.Open;
        Texto  := '    ' + RPad(dm.cds_empresaEMPRESA.AsString,' ', 40) + '    ';
        Texto1 := '------------------------------------------------' ;
        Texto2 := 'RELATORIO CAIXA: ' + cbb1.Text ;
        Texto3 := 'Dia : ' + DateTimeToStr(edData.Date);
        Texto4 := '         Caixa                Total R$  ' ;

        if (s_parametro.Active) then
          s_parametro.Close;
        s_parametro.Params[0].Clear;
        s_parametro.Params[0].AsString := 'PORTA IMPRESSORA';
        s_parametro.Open;
        porta := s_parametroDADOS.AsString;
        s_parametro.Close;

        ModeloImpressora := StrToInt(DM.impressora_pc);

        //Configura o Modelo da Impressora
        iRetorno := ConfiguraModeloImpressora( ModeloImpressora );

        if (iRetorno = -2) then
          ShowMessage('Erro Configurando Impressora');
        iRetorno := IniciaPorta( pchar(porta) );
        if (iRetorno <= 0) then
          ShowMessage('Erro Abrindo Porta');

        // Largura do Papel
        iRetorno := AjustaLarguraPapel(48);
        if (iRetorno <= 0) then
          ShowMessage('Erro Ajustando a Largura do Papel');

        buffer  := texto + Chr(13) + Chr(10);
        comando := FormataTX(texto, 3, 0, 0, 0, 0);
        buffer  := texto1 + Chr(13) + Chr(10);
        comando := FormataTX(texto1, 3, 0, 0, 0, 0);
        buffer  := texto2 + Chr(13) + Chr(10);
        comando := FormataTX(texto2, 3, 0, 0, 0, 0);
        buffer  := texto1 + Chr(13) + Chr(10);
        comando := FormataTX(texto1, 3, 0, 0, 0, 0);
        buffer  := texto3 + Chr(13) + Chr(10);
        comando := FormataTX(texto3, 3, 0, 0, 0, 0);
        buffer  := texto4 + Chr(13) + Chr(10);
        comando := FormataTX(texto4, 3, 0, 0, 0, 0);
        buffer  := texto1 + Chr(13) + Chr(10);
        comando := FormataTX(texto1, 3, 0, 0, 0, 0);

        if (s_ccaixa.Active) then
          s_ccaixa.Close;
        s_ccaixa.Params[0].AsDate := edData.Date;
        s_ccaixa.Params[1].AsDate := edData1.Date;
        s_ccaixa.Params[2].AsInteger := 0;//idCCusto;
        s_ccaixa.Open;
        s_ccaixa.First;
        Totalgeral := 0;
        while not s_ccaixa.Eof do
        begin
          v_string := Copy(s_ccaixaR_DESCAIXA.AsString, 0, 25);
          buffer := Format('%-25s  ', [v_string]);
         // buffer := buffer + '-';
         // buffer := buffer + DateTimeToStr(s_ccaixaR_DATA.AsDateTime);
          buffer := buffer + Format('%10.2n',[s_ccaixaR_VALOR.Value]);
          buffer := buffer + Chr(13) + Chr(10);
          comando := FormataTX(buffer, 3, 0, 0, 0, 0);
          Totalgeral := Totalgeral + s_ccaixaR_VALOR.Value;
          s_ccaixa.next;
        end;
        buffer  := texto1;
        buffer  := buffer + Chr(13) + Chr(10);
        comando := FormataTX(buffer, 3, 0, 0, 0, 0);
        texto5  := Format('%25s  ', ['  Total R$ ']);
        buffer  := texto5;
        buffer  := buffer + Format('%10.2n',[Totalgeral]);
        buffer  := buffer + Chr(13) + Chr(10);
        comando := FormataTX(buffer, 3, 0, 0, 0, 0);

        buffer  := '' + Chr(13) + Chr(10);
        comando := FormataTX(buffer, 3, 0, 0, 0, 0);
        buffer  := '' + Chr(13) + Chr(10);
        comando := FormataTX(buffer, 3, 0, 0, 0, 0);
        buffer  := '' + Chr(13) + Chr(10);
        comando := FormataTX(buffer, 3, 0, 0, 0, 0);
        buffer  := '' + Chr(13) + Chr(10);
        comando := FormataTX(buffer, 3, 0, 0, 0, 0);

        // Corto o Papel
        comando := AcionaGuilhotina(1);  // modo total (full cut)
        if comando <> 1 then
          MessageDlg('Problemas no corte do papel..' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );

         // Comando para Acionar a Gaveta de Dinheiro
        // scomando := #27 + #118 + #140;
        // iRetorno := ComandoTX( scomando, Length( scomando ));
         iRetorno := FechaPorta();
         s_ccaixa.Close;
         dm.cds_empresa.Close;
     end   // Fim Imprime DLL
     else
     begin
        //imprimeCupom;
        if (not dm.cds_empresa.Active) then
          dm.cds_empresa.Open;
        {----- aqui monto o endereço-----}
        Texto  := '          ' + dm.cds_empresaEMPRESA.AsString;
        Texto1 := '----------------------------------------' ;
        Texto2 := 'RELATORIO CAIXA: ' + cbb1.Text ;
        Texto3 := 'Dia : ' + DateTimeToStr(edData.Date);
        Texto4 := '         Caixa                Total R$  ' ;
        {-------------------Imprimi Cabeçalho-----------------------}
        // Para gravar em arquivo
        if (s_parametro.Active) then
        s_parametro.Close;
        s_parametro.Params[0].AsString := 'IMPARQUIVO';
        s_parametro.Open;
        if (not s_parametro.Eof) then
        begin
          dlgSave1.Execute;
          AssignFile(IMPRESSORA, dlgSave1.FileName);
        end
        else
        begin
          s_parametro.Close;
            if (s_parametro.Active) then
          s_parametro.Close;
          s_parametro.Params[0].AsString := 'PORTA IMPRESSORA';
          s_parametro.Open;
          AssignFile(IMPRESSORA,s_parametroDADOS.AsString);
        end;
        s_parametro.Close;
        Rewrite(IMPRESSORA);
        Writeln(Impressora, c10cpi, texto);
        Writeln(Impressora, c10cpi, texto1);
        Writeln(Impressora, c10cpi, texto2);
        Writeln(Impressora, c10cpi, texto1);
        Writeln(Impressora, c10cpi, texto3);
        Writeln(Impressora, c10cpi, texto4);
        Writeln(Impressora, c10cpi, texto1);
        if (s_ccaixa.Active) then
          s_ccaixa.Close;
        s_ccaixa.Params[0].AsDate := edData.Date;
        s_ccaixa.Params[1].AsDate := edData1.Date;
        s_ccaixa.Params[2].AsInteger := idCCusto;
        s_ccaixa.Open;
        s_ccaixa.First;
        Totalgeral := 0;
        while not s_ccaixa.Eof do
        begin
          desc_caixa := Copy(s_ccaixaR_DESCAIXA.AsString, 0, 25);
          desc_caixa := Format('%-25s  ', [desc_caixa]);
          //dtaEmissao := DateTimeToStr(s_ccaixaR_DATA.AsDateTime);
          //Write(Impressora, c10cpi, dtaEmissao);
          Write(Impressora, c10cpi, (desc_caixa));
          Writeln(Impressora, c10cpi + Format('%10.2n',[s_ccaixaR_VALOR.Value]));
          Totalgeral := Totalgeral + s_ccaixaR_VALOR.Value;
          s_ccaixa.next;
        end;
        Writeln(Impressora, c10cpi + Format('%-38s',['----------------------------------------']));
        texto5 := Format('%25s  ', ['  Total R$  ']);
        Write(Impressora, c17cpi, texto5);
        Writeln(Impressora, c17cpi + Format('%10.2n',[Totalgeral]));
        {-----------------------------------------------------------}
        {-------------------Imprimi final do Pedido-----------------}
        Writeln(IMPRESSORA);
        Writeln(IMPRESSORA);
        Writeln(IMPRESSORA);
        Writeln(IMPRESSORA);
        Writeln(IMPRESSORA);
        Writeln(IMPRESSORA);
        Writeln(IMPRESSORA);
        Writeln(IMPRESSORA);
        Writeln(IMPRESSORA);
        Writeln(IMPRESSORA);
        Writeln(IMPRESSORA);
        CloseFile(IMPRESSORA);
        //*************************************************************
        s_ccaixa.Close;
        dm.cds_empresa.Close;
     end;
  end;

end;

procedure TF_RelTerminal.imprimeCupom;
begin
  // Imprimindo
  if (not dm.cds_empresa.Active) then
    dm.cds_empresa.Open;

  Texto  := '          ' + dm.cds_empresaEMPRESA.AsString;
  Texto1 := '----------------------------------------' ;
  Texto2 := '             RELATÓRIO DE VENDAS            ' ;
  Texto3 := 'Dia : ' + DateTimeToStr(edData.Date);
  Texto4 := 'Descricao    Qutde   Unt.R$   Total R$  ' ;
  // Para gravar em arquivo
  if (s_parametro.Active) then
  s_parametro.Close;
  s_parametro.Params[0].AsString := 'IMPARQUIVO';
  s_parametro.Open;
  if (not s_parametro.Eof) then
  begin
    dlgSave1.Execute;
    AssignFile(IMPRESSORA, dlgSave1.FileName);
  end
  else
  begin
    s_parametro.Close;
    if (s_parametro.Active) then
      s_parametro.Close;
    s_parametro.Params[0].AsString := 'PORTA IMPRESSORA';
    s_parametro.Open;
    AssignFile(IMPRESSORA,s_parametroDADOS.AsString);
  end;
  Rewrite(IMPRESSORA);
  Writeln(Impressora, c10cpi, texto);
  Writeln(Impressora, c10cpi, texto1);
  Writeln(Impressora, c10cpi, texto2);
  Writeln(Impressora, c10cpi, texto1);
  Writeln(Impressora, c10cpi, texto3);
  Writeln(Impressora, c10cpi, texto4);
  Writeln(Impressora, c10cpi, texto1);
  if (sVenda.Active) then
    sVenda.Close;
  //sVenda.Params[0].AsInteger := idCaixa;
  sVenda.Params[0].AsDate := edData.Date;
  sVenda.Params[1].AsDate := edData1.Date;
  sVenda.Open;
  sVenda.First;
  Totalgeral := 0;
  TotalComissao := sVendaVCOMISSAO.AsFloat;
  while not sVenda.Eof do
  begin
    texto6 := Copy(sVendaDESCRICAO.AsString, 0, 38);
    Writeln(Impressora, c10cpi, texto6);
    Write(Impressora, c10cpi + Format('%6.4n',[sVendaQUTDE.value]));
    Write(Impressora, c10cpi + Format('%10.2n',[sVendaVARLORUNIT.value]));
    totalprod := sVendaQUTDE.value * sVendaVARLORUNIT.value;
    Writeln(Impressora, c10cpi + Format('%10.2n',[totalprod]));
    Totalgeral := Totalgeral + totalprod;
    sVenda.next;
  end;
  Writeln(Impressora, c10cpi + Format('%-38s',['----------------------------------------']));
  Writeln(IMPRESSORA);
  Texto5 := '               Total : R$   ';
  Write(Impressora, c10cpi, texto5 );
  Writeln(Impressora, c10cpi + Format(' %8.2n',[Totalgeral]));
  Texto8 := '       Total Comissão: R$   ';
  Write(Impressora, c10cpi, texto8 );
  Writeln(Impressora, c10cpi + Format(' %8.2n',[TotalComissao]));
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  CloseFile(IMPRESSORA);
  //*************************************************************
    sVenda.Close;
    dm.cds_empresa.Close;
  //  cCaixa.Close;

end;

procedure TF_RelTerminal.imprimeDLLBema;
begin
  // Imprimindo
  if (not dm.cds_empresa.Active) then
    dm.cds_empresa.Open;

  Texto  := '    ' + rpad(dm.cds_empresaEMPRESA.AsString,' ',40) + '    ';
  Texto1 := '------------------------------------------------' ;
  Texto2 := '            RELATÓRIO DE VENDAS          v1.121 ' ;
  Texto3 := 'Dia :   ' + rpad(DateTimeToStr(edData.Date),' ',40);
  Texto4 := 'Desc.                     Qtde  Unt.R$  Total R$' ;

  if (s_parametro.Active) then
    s_parametro.Close;
  s_parametro.Params[0].Clear;
  s_parametro.Params[0].AsString := 'PORTA IMPRESSORA';
  s_parametro.Open;
  porta := s_parametroDADOS.AsString;
  s_parametro.Close;

  ModeloImpressora := StrToInt(DM.impressora_pc);
  s_parametro.Close;

  //Configura o Modelo da Impressora
  iRetorno := ConfiguraModeloImpressora( ModeloImpressora );

  if (iRetorno = -2) then
    ShowMessage('Erro Configurando Impressora');
  iRetorno := IniciaPorta( pchar(porta) );
  if (iRetorno <= 0) then
    ShowMessage('Erro Abrindo Porta');

  // Largura do Papel
  iRetorno := AjustaLarguraPapel(48);
  if (iRetorno <= 0) then
    ShowMessage('Erro Ajustando a Largura do Papel');

  buffer  := texto + #13 + #10;
  comando := FormataTX(pchar(texto), 3, 0, 0, 0, 0);
  buffer  := texto1 + #13 + #10;
  comando := FormataTX(pchar(texto1), 3, 0, 0, 0, 0);
  buffer  := texto2 + #13 + #10;
  comando := FormataTX(pchar(texto2), 3, 0, 0, 0, 0);
  buffer  := texto1 + #13 + #10;
  comando := FormataTX(pchar(texto1), 3, 0, 0, 0, 0);
  buffer  := texto3 + #13 + #10;
  comando := FormataTX(pchar(texto3), 3, 0, 0, 0, 0);
  buffer  := texto4 + #13 + #10;
  comando := FormataTX(pchar(texto4), 3, 0, 0, 0, 0);
  buffer  := texto1 + #13 + #10;
  comando := FormataTX(pchar(texto1), 3, 0, 0, 0, 0);

  if (sVenda.Active) then
    sVenda.Close;
  //sVenda.Params[0].AsInteger := idCaixa;
  sVenda.Params[0].AsDate := edData.Date;
  sVenda.Params[1].AsDate := edData1.Date;
  sVenda.Open;
  sVenda.First;
  Totalgeral := 0;
  while not sVenda.Eof do
  begin
    texto6 := rpad(sVendaDESCRICAO.AsString, ' ', 25);
    texto6 :=  texto6 + #13 + #10;
    buffer  := texto6;
    comando := FormataTX(pchar(texto6), 3, 0, 0, 0, 0);
    buffer  := Format('%7.3n',[sVendaQUTDE.value]);
    buffer  := buffer + Format('%8.2n',[sVendaVARLORUNIT.value]);
    totalprod := sVendaQUTDE.value * sVendaVARLORUNIT.value;
    buffer  := buffer + Format('%8.2n',[totalprod]);
    buffer  := buffer + #13 + #10;
    comando := FormataTX(buffer, 3, 0, 0, 0, 0);
    Totalgeral := Totalgeral + totalprod;
    sVenda.next;
  end;
  buffer  := texto2 + #13 + #10;
  comando := FormataTX(texto2, 3, 0, 0, 0, 0);
  Texto5 := rpad('          Total : R$ ', ' ', 28);
  buffer  := texto5;
  buffer  := buffer + Format('%10.2n',[Totalgeral]);
  buffer  := buffer  + #13 + #10;
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  buffer  := rpad(' ', ' ',48) + #13 + #10;
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  buffer  := rpad(' ', ' ',48) + #13 + #10;
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  buffer  := rpad(' ', ' ',48) + #13 + #10;
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);
  buffer  := rpad(' ', ' ',48) + #13 + #10;
  comando := FormataTX(buffer, 3, 0, 0, 0, 0);

  // Corto o Papel
  comando := AcionaGuilhotina(1);  // modo total (full cut)
  if comando <> 1 then
    MessageDlg('Problemas no corte do papel..' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );

   // Comando para Acionar a Gaveta de Dinheiro
  // scomando := #27 + #118 + #140;
  // iRetorno := ComandoTX( scomando, Length( scomando ));
   iRetorno := FechaPorta();

  sVenda.Close;
  dm.cds_empresa.Close;

end;

function TF_RelTerminal.RPad(S: string; Ch: Char; Len: Integer): string;
var   RestLen: Integer;
begin   Result  := S;
  RestLen := Len - Length(s);
  if RestLen < 1 then Exit;
  Result := StringOfChar(Ch, RestLen) + S;
end;

end.
