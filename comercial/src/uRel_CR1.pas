unit uRel_CR1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, rpcompobase, rpvclreport, FMTBcd, ComCtrls,
  ExtCtrls, DB, DBClient, Provider, SqlExpr, RLBoleto, DBXpress, Mask;

type
  TfRel_CR1 = class(TForm)
    btnImprimir: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    SpeedButton1: TSpeedButton;
    Edit2: TEdit;
    VCLReport1: TVCLReport;
    BitBtn4: TBitBtn;
    RLBTitulo1: TRLBTitulo;
    sds_cr: TSQLDataSet;
    sds_crCODRECEBIMENTO: TIntegerField;
    sds_crCODIGO_DE_BARRAS: TStringField;
    sds_crBL: TIntegerField;
    sds_crIMAGE_COD_BARRAS: TGraphicField;
    dsp_cr: TDataSetProvider;
    cds_cr: TClientDataSet;
    cds_crCODRECEBIMENTO: TIntegerField;
    cds_crCODIGO_DE_BARRAS: TStringField;
    cds_crBL: TIntegerField;
    cds_crIMAGE_COD_BARRAS: TGraphicField;
    cds_cli: TSQLDataSet;
    cds_cliCODBANCO: TSmallintField;
    cds_banco: TSQLDataSet;
    cds_bancoCODBANCO: TSmallintField;
    cds_bancoBANCO: TStringField;
    cds_bancoNOMEBANCO: TStringField;
    cds_bancoCARTEIRA: TStringField;
    cds_bancoCODIGO_CEDENTE: TStringField;
    cds_bancoCODIGO_EMPRESA: TStringField;
    cds_bancoCODIGO_AGENCIA: TStringField;
    cds_bancoDIGITO_AGENCIA: TStringField;
    cds_bancoNUMERO_CONTA: TStringField;
    cds_bancoDIGITO_CONTA: TStringField;
    cds_bancoCODIGO_PLANO: TIntegerField;
    cds_bancoINSTRUCAO1: TStringField;
    cds_bancoINSTRUCAO2: TStringField;
    cds_bancoINSTRUCAO3: TStringField;
    cds_bancoINSTRUCAO4: TStringField;
    cds_bancoCEDENTE: TStringField;
    cds_bancoNCONVENIO: TIntegerField;
    cds_Empresa: TSQLDataSet;
    cds_EmpresaEMPRESA: TStringField;
    cds_EmpresaRAZAO: TStringField;
    cds_EmpresaCNPJ_CPF: TStringField;
    cds_EmpresaENDERECO: TStringField;
    cds_EmpresaLOGRADOURO: TStringField;
    cds_EmpresaBAIRRO: TStringField;
    cds_EmpresaCIDADE: TStringField;
    cds_EmpresaUF: TStringField;
    cds_EmpresaCEP: TStringField;
    cds_EmpresaDDD: TStringField;
    cds_EmpresaFONE: TStringField;
    cds_EmpresaFONE_1: TStringField;
    cds_EmpresaFONE_2: TStringField;
    cds_EmpresaFAX: TStringField;
    cds_EmpresaE_MAIL: TStringField;
    cds_EmpresaWEB: TStringField;
    cds_EmpresaLOGOTIPO: TGraphicField;
    cds_EmpresaSLOGAN: TStringField;
    cds_EmpresaOUTRAS_INFO: TStringField;
    cds_EmpresaCODIGO: TIntegerField;
    cds_EmpresaTIPO: TStringField;
    cds_EmpresaIE_RG: TStringField;
    cds_EmpresaCODIGO_CONTA: TIntegerField;
    Panel1: TPanel;
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
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
    BitBtn7: TBitBtn;
    btn1: TBitBtn;
    edCopias: TEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    sqlConsulta : TSqlQuery;
    v_SqlTexto, v_TotalDeve : string;
    iRetorno, comando : integer;
    buffer, scomando : String;
    tipoImpressao : string;
    usaDll : string;
    Texto,Texto1,Texto2,Texto3,Texto4,texto5, texto6,texto7, logradouro,cep,fone : string;//Para recortar parte da descrição do produto,nome
    total, porc, totgeral , desconto : double;
    porta : string;
    cliente : string;
    ModeloImpressora : integer;        
    procedure Marcatitulos;
    procedure imprimeCupom;
    procedure imprimeRecibo;
    procedure imprimeDLLBema;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRel_CR1: TfRel_CR1;
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

implementation

uses UDm, ufcr, gbCobranca, uImpr_Boleto, U_Boletos, UDM_MOV, uCarne;

{$R *.dfm}

Function RemoveChar(Const Texto:String):String;
var
  F: integer;
  S: string;
begin
  S := '';
  for F := 1 To Length(Texto) Do
  begin
    if (Texto[F] in ['0'..'9']) then
    begin
     S := S + Copy(Texto, F, 1);
    end;
  end;
  result := S;
end;

function ZeroEsquerda(const I: integer; const Casas: byte): string;
var
  Ch: Char;
begin
  Result := IntToStr(I);
  if Length(Result) > Casas then
  begin
    Ch := '*';
    Result := '';
  end
  else
    Ch := '0';
  while Length(Result) < Casas do
    Result := Ch + Result;
end;

procedure TfRel_CR1.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfRel_CR1.btnImprimirClick(Sender: TObject);
begin
  tipoImpressao := 'RECIBO';
{  usaDll := 'FALSE';
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'DLLBEMATECH';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
    usaDll := 'TRUE';
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
  dm.cds_parametro.Close;
  }
  if (tipoImpressao <> 'CUPOM') then
  begin
    sqlGrupoCR := '';
    if not fcrproc.scdsCr_proc.Active then
    begin
     MessageDlg('Pôr favor efetue a pesquisa antes, para depois imprimir..', mtWarning, [mbOK], 0);
     exit;
    end;
    if ( fcrproc.scdsCr_proc.IndexFieldNames <> '') then
      sqlGrupoCR := ' order by  '  + fcrproc.scdsCr_proc.IndexFieldNames
    else
      sqlGrupoCR := '';
    sqlGrupoCR := impCR + SqlCr + sqlGrupoCR;
    fcrproc.repContasReceber.FileName := str_relatorio + 'RelContasReceber.rep';
    fcrproc.repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    fcrproc.repContasReceber.Report.DataInfo.Items[0].SQL:= sqlGrupoCR;
    fcrproc.repContasReceber.Execute;
  end;
end;

procedure TfRel_CR1.BitBtn2Click(Sender: TObject);
var
  testo_update : string;
  TD: TTransactionDesc;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  // marco as Duplicatas a serem impressas
  fcrproc.scdsCr_proc.DisableControls;
  fcrproc.scdsCr_proc.First;
  While not fcrproc.scdsCr_proc.Eof do
  begin
    if (fcrproc.scdsCr_procDUP_REC_NF.AsString = 'S') then
    begin
      testo_update := '';
      testo_update := 'update RECEBIMENTO set DP = 1 ' ;
      testo_update := testo_update + 'where CODRECEBIMENTO = ';
      testo_update := testo_update + IntToStr(fcrproc.scdsCr_procCODRECEBIMENTO.AsInteger);
      dm.sqlsisAdimin.ExecuteDirect(testo_update);
    end;
    fcrproc.scdsCr_proc.Next;
  end;
  dm.sqlsisAdimin.Commit(TD);
  //======================================================
  fcrproc.scdsCr_proc.EnableControls;
  fcrproc.scdsCr_proc.First;  
  if (not fcrproc.scdsCr_proc.Active) then
  begin
   MessageDlg('Pôr favor efetue a pesquisa antes, para depois imprimir..', mtWarning, [mbOK], 0);
   exit;
  end;
  if ((fcrproc.scdsCr_procSTATUS.AsString <> '12') and (fcrproc.scdsCr_procSTATUS.AsString <> '9-')) then
  begin
   MessageDlg('O Status deve ser "12-Duplica Banco" para este relatório !', mtWarning, [mbOK], 0);
   exit;
  end;
  
{  if (fcrproc.medta3.Text <> datastr) then
  begin
    fcrproc.repRelDuplicata.Report.Params.ParamByName('PDTA1').Value :=
               formatdatetime('dd/mm/yy', StrToDate(fcrproc.medta3.Text));
  end;
  if (fcrproc.medta4.Text <> datastr) then
  begin
    fcrproc.repRelDuplicata.Report.Params.ParamByName('PDTA2').Value :=
               formatdatetime('dd/mm/yy', StrToDate(fcrproc.medta4.Text));
  end;   }
  fcrproc.repRelDuplicata.FileName := str_relatorio + 'rel_duplicata_enviada.rep';
  fcrproc.repRelDuplicata.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  fcrproc.repRelDuplicata.Execute;
end;

procedure TfRel_CR1.BitBtn1Click(Sender: TObject);
begin
  Marcatitulos;
//  BitBtn4.Click;
//  VCLReport1.Filename := str_relatorio + 'boleto_BB.rep';
//  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
//  VCLReport1.Execute;
   F_Boletos := TF_Boletos.Create(Application);
   try
      if (F_Boletos.ds_cr.Active) then
         F_Boletos.ds_cr.Close;
      F_Boletos.ds_cr.CommandText := 'select * from RECEBIMENTO where DP = 1 ';
      F_Boletos.ds_cr.Open;
      F_Boletos.ShowModal;
   finally
      F_Boletos.Free;
   end;   
end;

procedure TfRel_CR1.BitBtn3Click(Sender: TObject);
begin
  Marcatitulos;

  if (s_parametro.Active) then
    s_parametro.Close;
  s_parametro.Params[0].Clear;
  s_parametro.Params[0].AsString := 'SOMARECIBOS';
  s_parametro.Open;

  if (s_parametro.IsEmpty) then
  begin
    fcrproc.VCLReport1.Filename := str_relatorio + 'recibo.rep';
    fcrproc.VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    if (not fcrproc.scdsCr_proc.Active) then
    begin
     MessageDlg('Pôr favor efetue a pesquisa antes, para depois imprimir..', mtWarning, [mbOK], 0);
     exit;
    end;
    fcrproc.VCLReport1.Report.Params.ParamByName('CODVENDA').Value := 0;
    if fcrproc.edCodCliente.Text <> '' then
      fcrproc.VCLReport1.Report.Params.ParamByName('CODID').Value := StrToInt(fcrproc.edCodCliente.Text)
    else
      fcrproc.VCLReport1.Report.Params.ParamByName('CODID').Value := 9999999;
    fcrproc.VCLReport1.Report.Params.ParamByName('N_COPIAS').Value :=StrToInt(Edit2.Text);
    fcrproc.VCLReport1.Execute;
  end
  else
  begin
    if (not fcrproc.scdsCr_proc.Active) then
    begin
      MessageDlg('Pôr favor efetue a pesquisa antes, para depois imprimir..', mtWarning, [mbOK], 0);
      exit;
    end;
    if (fcrproc.edCodCliente.Text = '') then
    begin
      MessageDlg('Pôr favor selecione o Cliente antes, para depois imprimir..', mtWarning, [mbOK], 0);
      exit;
    end;
    if ((fcrproc.meDta3.Text = '  /  /  ') or (fcrproc.meDta4.Text = '  /  /  ')) then
    begin
     MessageDlg('O campo Vencimento tem que ter um valor', mtWarning, [mbOK], 0);
     exit;
    end;
    VCLReport1.Filename := str_relatorio + 'recibo_total.rep';
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport1.Report.Params.ParamByName('DATA1').Value := StrToDate(fcrproc.meDta3.Text);
    VCLReport1.Report.Params.ParamByName('DATA2').Value := StrToDate(fcrproc.meDta4.Text);
    VCLReport1.Report.Params.ParamByName('CODID').Value := StrToInt(fcrproc.edCodCliente.Text);
    VCLReport1.Report.Params.ParamByName('N_COPIAS').Value := StrToInt(Edit2.Text);
    VCLReport1.Execute;
  end;
end;

procedure TfRel_CR1.BitBtn4Click(Sender: TObject);
var
  n_titulo : Integer;
  n_titulo1 : String;
begin
   fcrproc.scdsCr_proc.DisableControls;
   fcrproc.scdsCr_proc.First;
   While not fcrproc.scdsCr_proc.Eof do
   begin
    if (fcrproc.scdsCr_procDUP_REC_NF.AsString = 'S') then
    begin
      {** abro o cadastro do cliente e pego o codbanco}
      if cds_cli.Active then
         cds_cli.Close;
      cds_cli.Params[0].AsInteger := fcrproc.scdsCr_procCODCLIENTE.AsInteger;
      cds_cli.Open;
      {** abro o banco e pego os dados da conta}
      if cds_banco.Active then
         cds_banco.Close;
      cds_banco.Params[0].AsInteger := cds_cliCODBANCO.AsInteger;
      cds_banco.Open;

      if cds_cr.Active then
         cds_cr.Close;
      cds_cr.Params[0].Clear;
      cds_cr.Params[0].Value := fcrproc.scdsCr_procTITULO.AsString;
      cds_cr.Open;
      cds_cr.Edit;
      //Dados do Cedente
      RLBTitulo1.Cedente.ContaBancaria.Banco.Codigo := cds_bancoCODIGO_EMPRESA.AsString;
      RLBTitulo1.Cedente.ContaBancaria.CodigoAgencia := cds_bancoCODIGO_AGENCIA.AsString;
      RLBTitulo1.Cedente.ContaBancaria.DigitoAgencia := cds_bancoDIGITO_AGENCIA.AsString;
      RLBTitulo1.Cedente.ContaBancaria.NumeroConta := cds_bancoNUMERO_CONTA.AsString;
      RLBTitulo1.Cedente.ContaBancaria.DigitoConta := cds_bancoDIGITO_CONTA.AsString;
      RLBTitulo1.Cedente.CodigoCedente := cds_bancoNUMERO_CONTA.AsString;
      RLBTitulo1.Cedente.DigitoCodigoCedente := cds_bancoDIGITO_CONTA.AsString;
      RLBTitulo1.Carteira := cds_bancoCARTEIRA.AsString;
      RLBTitulo1.Cedente.ContaBancaria.Convenio := cds_bancoCODIGO_CEDENTE.AsString;
      //dados da cobranca
      n_titulo := StrToInt(RemoveChar(fcrproc.scdsCr_procTITULO.AsString));
      n_titulo1 := ZeroEsquerda(n_titulo,10);
      RLBTitulo1.NossoNumero := cds_bancoCODIGO_CEDENTE.AsString + n_titulo1;
      RLBTitulo1.ValorDocumento := fcrproc.scdsCr_procVALORTITULO.AsFloat;
      //RLBTitulo1.DataDocumento := fcrEscolas.scdsCr_procEMISSAO.Value;
      RLBTitulo1.DataVencimento := fcrproc.scdsCr_procDATAVENCIMENTO.Value;
      {** Falta preencher 0 numero documento}
      //RLBTitulo1.NumeroDocumento := Trim(Edit3.Text);
      RLBTitulo1.Visualizar;
      cds_cr.ApplyUpdates(0);
    end;
    fcrproc.scdsCr_proc.Next;
  end;
  fcrproc.scdsCr_proc.EnableControls;
  cds_cli.close;
  cds_banco.close;
  cds_cr.close;

end;

procedure TfRel_CR1.FormShow(Sender: TObject);
begin
  tipo_empresa := '0';
end;

procedure TfRel_CR1.FormClose(Sender: TObject; var Action: TCloseAction);
var
  testo_update : string;
begin

 { Manoel - comentei esse update pois agora o campo BL é usado para marcar os Boletos ja impressos 23/02/09
   anes o Edson usava para o Montessori Artur 
  testo_update := '';
  testo_update := 'update RECEBIMENTO set BL = null, ' +
   'CODIGO_DE_BARRAS = '+ '''' + '''' +
   ', IMAGE_COD_BARRAS = null' + //'''' + '''' +
   ' where BL = 1';
  dm.sqlsisAdimin.ExecuteDirect(testo_update);
  //fcrproc.btnProcurar.Click;
}
  testo_update := '';
  testo_update := 'update RECEBIMENTO set DP = null where DP = 1';
  dm.sqlsisAdimin.ExecuteDirect(testo_update);
  fcrproc.btnProcurar.Click;

end;

procedure TfRel_CR1.Marcatitulos;
var
  TD: TTransactionDesc;
  testo_update : string;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  // marco as Duplicatas a serem impressas
  fcrproc.scdsCr_proc.DisableControls;
  fcrproc.scdsCr_proc.First;
  While not fcrproc.scdsCr_proc.Eof do
  begin
    if (fcrproc.scdsCr_procDUP_REC_NF.AsString = 'S') then
    begin
      testo_update := '';
      testo_update := 'update RECEBIMENTO set DP = 1 ' ;
      testo_update := testo_update + 'where CODRECEBIMENTO = ';
      testo_update := testo_update + IntToStr(fcrproc.scdsCr_procCODRECEBIMENTO.AsInteger);
      dm.sqlsisAdimin.ExecuteDirect(testo_update);
    end;
    fcrproc.scdsCr_proc.Next;
  end;
  dm.sqlsisAdimin.Commit(TD);
  fcrproc.scdsCr_proc.EnableControls;
end;

procedure TfRel_CR1.BitBtn5Click(Sender: TObject);
var
  testo_update : string;
  TD: TTransactionDesc;
begin
  if (dm.moduloUsado = 'SAUDE') then
  begin
    BitBtn4.Click;
    VCLReport1.Filename := str_relatorio + 'boleto_BB.rep';
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport1.Execute;
  end
  else begin
    if (not fcrproc.scdsCr_proc.Active) then
    begin
      MessageDlg('Pôr favor efetue a pesquisa antes, para depois imprimir..', mtWarning, [mbOK], 0);
      exit;
    end;
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
    // marco as Duplicatas a serem impressas
    fcrProc.scdsCr_proc.DisableControls;
    fcrProc.scdsCr_proc.First;
    While not fcrProc.scdsCr_proc.Eof do
    begin
      if (fcrProc.scdsCr_procDUP_REC_NF.AsString = 'S') then
      begin
        testo_update := '';
        testo_update := 'update RECEBIMENTO set DP = 1 ' ;
        testo_update := testo_update + 'where CODRECEBIMENTO = ';
        testo_update := testo_update + IntToStr(fcrProc.scdsCr_procCODRECEBIMENTO.AsInteger);
        dm.sqlsisAdimin.ExecuteDirect(testo_update);
      end;
      fcrProc.scdsCr_proc.Next;
    end;
    dm.sqlsisAdimin.Commit(TD);
    //======================================================
    fcrProc.scdsCr_proc.EnableControls;
    fcrProc.scdsCr_proc.First;
    fImpr_Boleto := TfImpr_Boleto.Create(Application);
    fImpr_Boleto.edBoleto.Visible := True;
    fImpr_boleto.lblBoleto.Visible := True;
    try
     fImpr_Boleto.codVendaBoleto := fcrProc.scdsCr_procCODVENDA.AsInteger;
     fImpr_boleto.strBoletoBrasil := 'SELECT VEN.CODCLIENTE, udf_Collatebr(ENDE.LOGRADOURO) as LOGRADOURO' +
       ' ,udf_Collatebr(ENDE.CIDADE) as CIDADE ,udf_Collatebr(ENDE.BAIRRO) as BAIRRO' +
       ' ,ENDE.UF ,ENDE.CEP ,VEN.EMISSAO ,VEN.DATAVENCIMENTO,VEN.VALOR_RESTO' +
       ' ,ven.TITULO ,udf_Collatebr(CLI.RAZAOSOCIAL) as RAZAOSOCIAL , udf_Collatebr(CLI.NOMECLIENTE) as NOMECLIENTE ' +
       ',VEN.CODRECEBIMENTO'+
       ' ,CLI.CNPJ,CLI.TIPOFIRMA,CLI.CPF,CLI.INSCESTADUAL ,CLI.RG ,CLI.RA' +
       ' FROM RECEBIMENTO VEN INNER JOIN CLIENTES CLI ON CLI.CODCLIENTE = VEN.CODCLIENTE' +
       ' LEFT JOIN  ENDERECOCLIENTE ENDE ON ENDE.CODCLIENTE = CLI.CODCLIENTE ' +
       ' WHERE DP = 1 AND ((CODVENDA = :PVENDA) OR (:PVENDA = 0))' +
       '  GROUP BY VEN.CODCLIENTE, udf_Collatebr(ENDE.LOGRADOURO),udf_Collatebr(ENDE.CIDADE),udf_Collatebr(ENDE.BAIRRO)'+
       ' ,ENDE.UF,ENDE.CEP,VEN.EMISSAO,VEN.DATAVENCIMENTO,VEN.VALOR_RESTO,VEN.TITULO '+
       ' ,VEN.DESCONTO,udf_Collatebr(CLI.RAZAOSOCIAL), udf_Collatebr(CLI.NOMECLIENTE) ,CLI.CNPJ,CLI.TIPOFIRMA,CLI.CPF,CLI.RA'+
       ',VEN.CODRECEBIMENTO'+
       ' ,CLI.INSCESTADUAL,CLI.RG  order by CLI.RA';
      fImpr_Boleto.ShowModal;
    finally
     fImpr_Boleto.Free;
    end;
  end;
end;

procedure TfRel_CR1.BitBtn6Click(Sender: TObject);
begin
    if (fcrproc.edCodCliente.Text = '') then
    begin
     MessageDlg('O campo Codigo do Cliente tem que ter um valor', mtWarning, [mbOK], 0);
     exit;
    end;
    if (fcrproc.meDta3.Text = '  /  /  ') then
    begin
     MessageDlg('O campo Vencimento tem que ter um valor', mtWarning, [mbOK], 0);
     exit;
    end;
    if (fcrproc.meDta4.Text = '  /  /  ') then
    begin
     MessageDlg('O campo Vencimento tem que ter um valor', mtWarning, [mbOK], 0);
     exit;
    end;
    VCLReport1.Filename := str_relatorio + 'relvendas.rep';
    VCLReport1.Title := VCLReport1.Filename;
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport1.Report.Params.ParamByName('DATA1').Value := StrToDate(fcrproc.meDta3.Text);
    VCLReport1.Report.Params.ParamByName('DATA2').Value := StrToDate(fcrproc.meDta4.Text);
    VCLReport1.Report.Params.ParamByName('CODCLI').Value := StrToInt(fcrproc.edCodCliente.Text);
    VCLReport1.Report.Params.ParamByName('CCUSTO').Value := fcrproc.cCusto;
    VCLReport1.Execute;
end;

procedure TfRel_CR1.imprimeCupom;
begin

end;

procedure TfRel_CR1.imprimeDLLBema;
begin
     if (not dm.cds_empresa.Active) then
      dm.cds_empresa.Open;
     {----- aqui monto o endereço-----}
     logradouro := dm.cds_empresaENDERECO.Value + ', ' + dm.cds_empresaBAIRRO.Value;
     cep := dm.cds_empresaCIDADE.Value + ' - ' + dm.cds_empresaUF.Value +
     ' - ' + dm.cds_empresaCEP.Value;
     fone := '(19)' + dm.cds_empresaFONE.Value + ' / ' + dm.cds_empresaFONE_1.Value +
     ' / ' + dm.cds_empresaFONE_2.Value;
     Texto  := '-----------------------------------------------------' ;
     Texto1 := '                  RELATORIO DE CAIXA                 ';
     Texto2 := '-----------------------------------------------------' ;
     Texto4 := 'Titulo    EMISSAO   CLIENTE                  V.Total ' ;

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


      buffer  := dm.cds_empresaRAZAO.AsString + Chr(13) + Chr(10);

      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        MessageDlg('Problemas na impressão do texto.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
        exit;
      end;

      buffer  := logradouro + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        MessageDlg('Problemas na impressão do texto.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
        exit;
      end;

      buffer  := cep + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        MessageDlg('Problemas na impressão do texto.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
        exit;
      end;

      buffer  := fone + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        MessageDlg('Problemas na impressão do texto.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
        exit;
      end;

      buffer  := 'CNPJ :' + dm.cds_empresaCNPJ_CPF.AsString + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        MessageDlg('Problemas na impressão do texto.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
        exit;
      end;

      buffer  := texto + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        MessageDlg('Problemas na impressão do texto.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
        exit;
      end;

      buffer  := texto1 + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        MessageDlg('Problemas na impressão do texto.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
        exit;
      end;

      buffer  := texto2 + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        MessageDlg('Problemas na impressão do texto.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
        exit;
      end;

      buffer  := texto3 + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        MessageDlg('Problemas na impressão do texto.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
        exit;
      end;

      buffer  := texto4 + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        MessageDlg('Problemas na impressão do texto.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
        exit;
      end;

     fcrproc.scdsCr_proc.First;
     while not fcrproc.scdsCr_proc.Eof do
     begin
        buffer  := '';
        buffer  := Format('%-10s ', [fcrproc.scdsCr_procTITULO.AsString]);
        buffer  := buffer + Format('%-10s ',[DateTimeToStr(fcrproc.scdsCr_procEMISSAO.AsDateTime)]);
        buffer  := buffer + Format('%-20s  ',[fcrproc.scdsCr_procNOMECLIENTE.AsString]);
        buffer  := buffer + Format('%8.2n',[fcrproc.scdsCr_procVALOR_RESTO.AsFloat]);

        comando := FormataTX(buffer, 3, 0, 0, 0, 0);
        if comando = 0 then
        begin
          MessageDlg('Problemas na impressão do texto.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
          exit;
        end;
        fcrproc.scdsCr_proc.next;
     end;

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

end;

procedure TfRel_CR1.imprimeRecibo;
begin

end;

procedure TfRel_CR1.BitBtn7Click(Sender: TObject);
//var SQL_TXT : string;
begin
{  fCarne := TfCarne.Create(Application);
  try
    SQL_TXT := ''
    if (fCarne.scdsCr_proc.Active) then
        fCarne.scdsCr_proc.Close;
    fCarne.scdsCr_proc.Params[0].AsInteger := DM_MOV.c_vendaCODVENDA.AsInteger;
    fCarne.scdsCr_proc.Open;

    if (fCarne.buscaCli.Active) then
        fCarne.buscaCli.Close;
    fCarne.buscaCli.Params[0].AsInteger := DM_MOV.c_vendaCODCLIENTE.AsInteger;
    fCarne.buscaCli.Open;


    //fCarne.txtParcela.Caption := scdsCr_procVIA.AsString;
    //fCarne.txtNomeSacado.Caption := DM_MOV.c_vendaNOMECLIENTE.AsString;
    //fCarne.BoletoCarne.BeforePrint;
    fCarne.BoletoCarne.Preview();
    //fCarne.ShowModal;
  finally
    fCarne.Free;
  end;
  }
end;

procedure TfRel_CR1.btn1Click(Sender: TObject);
begin
    try
      Marcatitulos;
      if (fcrproc.meDta1.Text = '  /  /  ') then
      begin
       MessageDlg('O campo Emissão está vazio', mtWarning, [mbOK], 0);
       exit;
      end;
      if (fcrproc.meDta2.Text = '  /  /  ') then
      begin
       MessageDlg('O campo Emissão está vazio', mtWarning, [mbOK], 0);
       exit;
      end;
      VCLReport1.Filename := str_relatorio + 'rel_cobranca.rep';
      VCLReport1.Title := VCLReport1.Filename;
      VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
      VCLReport1.Report.Params.ParamByName('DATA1').Value := StrToDate(fcrproc.meDta1.Text);
      VCLReport1.Report.Params.ParamByName('DATA2').Value := StrToDate(fcrproc.meDta2.Text);
      if (fcrproc.edCodCliente.Text <> '') then
        VCLReport1.Report.Params.ParamByName('CODCLI').Value := StrToInt(fcrproc.edCodCliente.Text)
      else
        VCLReport1.Report.Params.ParamByName('CODCLI').Value := 9999999;
      VCLReport1.Report.Params.ParamByName('NCOPIAS').Value := StrToInt(edCopias.Text);
      VCLReport1.Execute;
    finally
      sqlConsulta.Free;
    end;
end;

end.
