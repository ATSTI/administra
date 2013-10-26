unit U_Entrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvLabel, StdCtrls, JvExStdCtrls, JvEdit,
  JvValidateEdit, ExtCtrls, MMJPanel, FMTBcd, DBClient, Provider, DB,
  SqlExpr, Buttons, JvExButtons, JvBitBtn, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, Mask, DBCtrls, DBLocal, DBLocalS, umovimento, uVendaCls,
  uCompraCls, uReceberCls,DateUtils, DBxPress, Menus, rpcompobase,
  rpvclreport, uUtils, Printers, JvExMask, JvSpin;

type
  TF_Entrada = class(TForm)
    MMJPanel2: TMMJPanel;
    JvVale: TJvValidateEdit;
    JvLabel7: TJvLabel;
    JvCartaoDBT: TJvValidateEdit;
    JvLabel6: TJvLabel;
    JvCartaoCDT: TJvValidateEdit;
    JvLabel5: TJvLabel;
    JvChequePre: TJvValidateEdit;
    JvLabel4: TJvLabel;
    JvCheque: TJvValidateEdit;
    JvLabel2: TJvLabel;
    jvDinheiro: TJvValidateEdit;
    JvLabel1: TJvLabel;
    JvOutros: TJvValidateEdit;
    JvLabel9: TJvLabel;
    cbCartaoCDT1: TComboBox;
    cbCartaoDBT1: TComboBox;
    cbOutros: TComboBox;
    ObsCheque: TEdit;
    ObsChequePre: TEdit;
    cbDinheiro: TComboBox;
    s_forma: TSQLDataSet;
    p_forma: TDataSetProvider;
    c_forma: TClientDataSet;
    JvDBGrid1: TJvDBGrid;
    DataSource1: TDataSource;
    MMJPanel1: TMMJPanel;
    JvGravar: TJvBitBtn;
    JvExcluir: TJvBitBtn;
    JvSair: TJvBitBtn;
    s_formaCOD_VENDA: TIntegerField;
    s_formaID_ENTRADA: TIntegerField;
    s_formaCAIXA: TSmallintField;
    s_formaN_DOC: TStringField;
    c_formaCOD_VENDA: TIntegerField;
    c_formaID_ENTRADA: TIntegerField;
    c_formaCAIXA: TSmallintField;
    c_formaN_DOC: TStringField;
    btnIncluir: TJvBitBtn;
    s_formaFORMA_PGTO: TStringField;
    c_formaFORMA_PGTO: TStringField;
    cbVale: TComboBox;
    s_formaVALOR_PAGO: TFloatField;
    c_formaVALOR_PAGO: TFloatField;
    s_formaFORMA: TStringField;
    c_formaFORMA: TStringField;
    s_formaNOME: TStringField;
    c_formaNOME: TStringField;
    c_formatotal: TAggregateField;
    DBEdit1: TDBEdit;
    JvLabel8: TJvLabel;
    JvFinalizar: TJvBitBtn;
    scds_serie_proc: TSQLClientDataSet;
    scds_serie_procCODSERIE: TStringField;
    scds_serie_procSERIE: TStringField;
    scds_serie_procULTIMO_NUMERO: TIntegerField;
    scds_serie_procNOTAFISCAL: TSmallintField;
    pm1: TPopupMenu;
    F4Gravar1: TMenuItem;
    Excluir1: TMenuItem;
    Finalizar1: TMenuItem;
    Sair1: TMenuItem;
    VCLReport2: TVCLReport;
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
    dlgSave1: TSaveDialog;
    scdsCr_proc: TClientDataSet;
    scdsCr_procTITULO: TStringField;
    scdsCr_procEMISSAO: TDateField;
    scdsCr_procDATAVENCIMENTO: TDateField;
    scdsCr_procCAIXA: TSmallintField;
    scdsCr_procSTATUS: TStringField;
    scdsCr_procVIA: TStringField;
    scdsCr_procN_DOCUMENTO: TStringField;
    scdsCr_procVALORRECEBIDO: TFloatField;
    scdsCr_procVALOR_RESTO: TFloatField;
    scdsCr_procVALORTITULO: TFloatField;
    scdsCr_procNOMECLIENTE: TStringField;
    scdsCr_procVALORREC: TFloatField;
    scdsCr_procCODRECEBIMENTO: TIntegerField;
    scdsCr_procDP: TIntegerField;
    scdsCr_procVALOR_PRIM_VIA: TFloatField;
    scdsCr_procCODCLIENTE: TIntegerField;
    scdsCr_procTIT: TStringField;
    scdsCr_procSITUACAO: TStringField;
    scdsCr_procFORMARECEBIMENTO: TStringField;
    scdsCr_procDATARECEBIMENTO: TDateField;
    scdsCr_procCODVENDA: TIntegerField;
    scdsCr_procTRecebido: TAggregateField;
    scdsCr_procTotal_resto: TAggregateField;
    scdsCr_procTotalTitulo: TAggregateField;
    DataSetProvider1: TDataSetProvider;
    SQLDataSet1: TSQLDataSet;
    SQLDataSet1TITULO: TStringField;
    SQLDataSet1DATAVENCIMENTO: TDateField;
    SQLDataSet1CAIXA: TSmallintField;
    SQLDataSet1STATUS: TStringField;
    SQLDataSet1VIA: TStringField;
    SQLDataSet1N_DOCUMENTO: TStringField;
    SQLDataSet1VALORRECEBIDO: TFloatField;
    SQLDataSet1VALOR_RESTO: TFloatField;
    SQLDataSet1VALORTITULO: TFloatField;
    SQLDataSet1VALORREC: TFloatField;
    SQLDataSet1CODRECEBIMENTO: TIntegerField;
    SQLDataSet1NOMECLIENTE: TStringField;
    SQLDataSet1DP: TIntegerField;
    SQLDataSet1EMISSAO: TDateField;
    SQLDataSet1VALOR_PRIM_VIA: TFloatField;
    SQLDataSet1CODCLIENTE: TIntegerField;
    SQLDataSet1TIT: TStringField;
    SQLDataSet1SITUACAO: TStringField;
    SQLDataSet1FORMARECEBIMENTO: TStringField;
    SQLDataSet1DATARECEBIMENTO: TDateField;
    SQLDataSet1CODVENDA: TIntegerField;
    sCaixa1: TClientDataSet;
    sCaixa1IDCAIXACONTROLE: TIntegerField;
    sCaixa1CODCAIXA: TIntegerField;
    sCaixa1CODUSUARIO: TIntegerField;
    sCaixa1DATAFECHAMENTO: TDateField;
    sCaixa1SITUACAO: TStringField;
    sCaixa1MAQUINA: TStringField;
    sCaixa1DATAABERTURA: TDateField;
    sCaixa1VALORABRE: TFloatField;
    sCaixa1VALORFECHA: TFloatField;
    sCaixa1NOMECAIXA: TStringField;
    dspCaixa1: TDataSetProvider;
    sdsCaixa1: TSQLDataSet;
    sdsCaixa1IDCAIXACONTROLE: TIntegerField;
    sdsCaixa1CODCAIXA: TIntegerField;
    sdsCaixa1CODUSUARIO: TIntegerField;
    sdsCaixa1DATAFECHAMENTO: TDateField;
    sdsCaixa1SITUACAO: TStringField;
    sdsCaixa1MAQUINA: TStringField;
    sdsCaixa1DATAABERTURA: TDateField;
    sdsCaixa1VALORABRE: TFloatField;
    sdsCaixa1VALORFECHA: TFloatField;
    sdsCaixa1NOMECAIXA: TStringField;
    s_contas: TSQLDataSet;
    s_contasCODIGO: TIntegerField;
    s_contasNOME: TStringField;
    JvLabel10: TJvLabel;
    JvTroco: TJvValidateEdit;
    JvPedido: TJvValidateEdit;
    JvLabel3: TJvLabel;
    JvLabel11: TJvLabel;
    JvPago: TJvValidateEdit;
    bvl1: TBevel;
    JvComissao: TJvValidateEdit;
    JvLabel12: TJvLabel;
    JvLabel13: TJvLabel;
    JvCaixinha: TJvValidateEdit;
    JvLabel14: TJvLabel;
    JvRateio: TJvSpinEdit;
    bvl2: TBevel;
    edDesconto: TJvValidateEdit;
    rg1: TRadioGroup;
    JvLabel15: TJvLabel;
    s_formaCAIXINHA: TFloatField;
    c_formaCAIXINHA: TFloatField;
    btnCupom: TJvBitBtn;
    sqlBuscaNota: TSQLQuery;
    procedure FormCreate(Sender: TObject);
    procedure JvGravarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure JvExcluirClick(Sender: TObject);
    procedure JvSairClick(Sender: TObject);
    procedure JvFinalizarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure JvPagoExit(Sender: TObject);
    procedure JvPagoEnter(Sender: TObject);
    procedure jvDinheiroExit(Sender: TObject);
    procedure jvDinheiroEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edDescontoEnter(Sender: TObject);
    procedure edDescontoExit(Sender: TObject);
    procedure JvCaixinhaExit(Sender: TObject);
    procedure JvCaixinhaEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCupomClick(Sender: TObject);
  private
    TD: TTransactionDesc;
    usaMateriaPrima, tipo_origem, c_f, RESULTADO : String;
    prazo, codrec : Double;
    vrr, nparc, vlrDesc : double;
    Cod_orig, cod_cli_forn, codigo_cliente, COD_VENDA : Integer;
    excluiuNF : Boolean;
    IMPRESSORA : TextFile;
    Texto,Texto1,Texto2,Texto3,Texto4,texto5, texto6,texto7, logradouro,cep,fone : string;//Para recortar parte da descri? do produto,nome
    tipoImpressao, usaDll : string;
    total, porc, totgeral , desconto, totalPedidoC : double;

    codRecCR, caixaCR : Integer;
    formaRec : string;
    baixou : Integer;
    Data_Baixa : TDateTime;
    Data_Receb : TDateTime;
    Data_Conso : TDateTime;
    N_documento : string;
    CodigoCliCR : Integer;

    porta : string;
    cliente : string;
    strSql, strTit, tipoMov: String;
    diferenca, Valor_CR : double;
    strSqlMov, usuario_venda: string;
    Caixa, ModeloImpressora : integer;
    vApagar, Valor : Double;
    str :string;
    fatura_NF :string;
    codClienteNF: integer;
    str_sql : string;

    utilcrtitulo : Tutils;
    iRetorno, comando : integer;
    buffer, scomando : String;
    Save_Cursor:TCursor;

    procedure msgErro;
    procedure imprimeCupom;
    procedure imprimeRecibo;
    procedure imprimeDLLBema;
    procedure troco;
    procedure caixinha;
    { Private declarations }
  public
     var_codVenda : Integer;
     dtaFEntrada: TDateTime;
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
    { Formata? da fonte }
    cINegrito = #27#71;
    cFNegrito = #27#72;
    cIItalico = #27#52;
    cFItalico = #27#53;

var
  F_Entrada: TF_Entrada;

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

uses UDm, UDM_MOV, UDMNF, uFiscalCls, uTerminal2, uTerminal_Delivery;

{$R *.dfm}

procedure TF_Entrada.FormCreate(Sender: TObject);
begin
  dtaFEntrada := now;
  usaDll := 'FALSE';
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'DLLBEMATECH';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
    usaDll := 'TRUE';

  dm.cds_parametro.Close;

  // Listo as Contas Caixa
 { if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CAIXA_BANCO';
  dm.cds_parametro.Open;
  if dm.cds_7_contas.Active then
    dm.cds_7_contas.Close;
  dm.cds_7_contas.Params[0].AsString := dm.cds_parametroDADOS.AsString;
  dm.cds_7_contas.Open;
  }
  // Opcoes para caixa interno
  if (s_contas.Active) then
    s_contas.Close;
  s_contas.Params[0].AsString := 'INTERNO';
  s_contas.Open;
  while not s_contas.Eof do
  begin
    cbDinheiro.Items.Add(s_contasNOME.asString);
    cbDinheiro.Text := s_contasNOME.asString;
    s_contas.Next;
  end;
  // Opcoes para Cartao de credito
  if (s_contas.Active) then
    s_contas.Close;
  s_contas.Params[0].AsString := 'CREDITO';
  s_contas.Open;
  while not s_contas.Eof do
  begin
    cbCartaoCDT1.Items.Add(s_contasNOME.asString);
    s_contas.Next;
  end;

  // Opcoes para Cartao de Debito
  if (s_contas.Active) then
    s_contas.Close;
  s_contas.Params[0].AsString := 'DEBITO';
  s_contas.Open;
  while not s_contas.Eof do
  begin
    cbCartaoDBT1.Items.Add(s_contasNOME.asString);
    s_contas.Next;
  end;

  // Opcoes para Vale
  if (s_contas.Active) then
    s_contas.Close;
  s_contas.Params[0].AsString := 'VALE';
  s_contas.Open;
  while not s_contas.Eof do
  begin
    cbVale.Items.Add(s_contasNOME.asString);
    s_contas.Next;
  end;

  // Opcoes para Outros
  if (s_contas.Active) then
    s_contas.Close;
  s_contas.Params[0].AsString := 'OUTROS';
  s_contas.Open;
  while not s_contas.Eof do
  begin
    cbOutros.Items.Add(s_contasNOME.asString);
    s_contas.Next;
  end;
  s_contas.Close;

end;

procedure TF_Entrada.JvGravarClick(Sender: TObject);
var total_parcial, resto : double;
  totalTrocoD, pagoTotal : double;
begin
  troco;
  {total_parcial := jvDinheiro.Value + JvCheque.Value + JvChequePre.Value +
                   JvCartaoCDT.Value + JvCartaoDBT.Value + JvVale.Value + JvOutros.Value;}
  total_parcial := JvPago.Value;

  if (c_formatotal.IsNull) then
     total_parcial := total_parcial
  else
     total_parcial := total_parcial + c_formatotal.Value;

  resto := total_parcial - (JvPedido.Value + JvComissao.Value + JvCaixinha.Value);
  //resto := resto + JvCaixinha.Value + JvTroco.Value);

  if (resto > 0.001) then
  begin
     ShowMessage('Valor Informado maior que total do Pedido');
     Exit;
  end;

  totalTrocoD := JvTroco.Value; //- JvCaixinha.Value;
  pagoTotal   := 0;

  if (jvDinheiro.Value > 0) then
  begin
    pagoTotal := jvDinheiro.Value;
    if (totalTrocoD < 0) then
    begin
      pagoTotal := (jvDinheiro.Value + totalTrocoD);
      if ((totalTrocoD*(-1)) > jvDinheiro.Value) then
        totalTrocoD := totalTrocoD - jvDinheiro.Value
      else
        totalTrocoD := 0;
    end;

    if (pagoTotal <= 0) then
      pagoTotal := jvDinheiro.Value;

    if (c_forma.Active) then
      c_forma.close;
    c_forma.Params[0].Clear;
    c_forma.Open;
    c_forma.Append;
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(gen_entrada, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    c_formaID_ENTRADA.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    c_formaCOD_VENDA.AsInteger := DM_MOV.ID_DO_MOVIMENTO;
    dm.c_6_genid.Close;
    c_formaFORMA_PGTO.AsString := '1';
    c_formaVALOR_PAGO.Value := pagoTotal;
    if (dm.cds_7_contas.Locate('NOME', cbDinheiro.Text, [loCaseInsensitive])) then
      c_formaCAIXA.AsInteger := dm.cds_7_contas.Fields[0].asInteger;
    c_forma.ApplyUpdates(0);
  end;

  if (JvCheque.Value > 0) then
  begin
    pagoTotal := jvCheque.Value;
    if (totalTrocoD < 0) then
    begin
      pagoTotal := (jvCheque.Value + totalTrocoD);
      if ((totalTrocoD*(-1)) > jvCheque.Value) then
        totalTrocoD := totalTrocoD - jvCheque.Value
      else
        totalTrocoD := 0;
    end;

    if (pagoTotal <= 0) then
      pagoTotal := jvCheque.Value;

    if (c_forma.Active) then
      c_forma.close;
    c_forma.Params[0].Clear;
    c_forma.Open;
    c_forma.Append;
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(gen_entrada, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    c_formaID_ENTRADA.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    c_formaCOD_VENDA.AsInteger := DM_MOV.ID_DO_MOVIMENTO;
    dm.c_6_genid.Close;
    c_formaFORMA_PGTO.AsString := '2';
    c_formaVALOR_PAGO.Value := pagoTotal;
    if (dm.cds_7_contas.Locate('NOME', cbDinheiro.Text, [loCaseInsensitive])) then
      c_formaCAIXA.AsInteger := dm.cds_7_contas.Fields[0].asInteger;
    c_formaN_DOC.AsString := ObsCheque.Text;
    c_forma.ApplyUpdates(0);
  end;

  if (JvChequePre.Value > 0) then
  begin
    pagoTotal := jvChequePre.Value;
    if (totalTrocoD < 0) then
    begin
      pagoTotal := (jvChequePre.Value + totalTrocoD);
      if ((totalTrocoD*(-1)) > jvChequePre.Value) then
        totalTrocoD := totalTrocoD - jvChequePre.Value
      else
        totalTrocoD := 0;
    end;

    if (pagoTotal <= 0) then
      pagoTotal := jvChequePre.Value;

    if (c_forma.Active) then
      c_forma.close;
    c_forma.Params[0].Clear;
    c_forma.Open;
    c_forma.Append;
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(gen_entrada, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    c_formaID_ENTRADA.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    c_formaCOD_VENDA.AsInteger := DM_MOV.ID_DO_MOVIMENTO;
    dm.c_6_genid.Close;
    c_formaFORMA_PGTO.AsString := '3';
    c_formaVALOR_PAGO.Value := pagoTotal;
    if (dm.cds_7_contas.Locate('NOME', cbDinheiro.Text, [loCaseInsensitive])) then
      c_formaCAIXA.AsInteger := dm.cds_7_contas.Fields[0].asInteger;
    c_formaN_DOC.AsString := ObsChequePre.Text;
    c_forma.ApplyUpdates(0);
  end;

  if (JvCartaoCDT.Value > 0) then
  begin
    pagoTotal := JvCartaoCDT.Value;
    if (totalTrocoD < 0) then
    begin
      pagoTotal := (JvCartaoCDT.Value + totalTrocoD);
      if ((totalTrocoD*(-1)) > JvCartaoCDT.Value) then
        totalTrocoD := totalTrocoD - JvCartaoCDT.Value
      else
        totalTrocoD := 0;
    end;

    if (pagoTotal <= 0) then
      pagoTotal := JvCartaoCDT.Value;

    if (c_forma.Active) then
      c_forma.close;
    c_forma.Params[0].Clear;
    c_forma.Open;
    c_forma.Append;
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(gen_entrada, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    c_formaID_ENTRADA.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    c_formaCOD_VENDA.AsInteger := DM_MOV.ID_DO_MOVIMENTO;
    dm.c_6_genid.Close;
    c_formaFORMA_PGTO.AsString := '6';
    c_formaVALOR_PAGO.Value := pagoTotal;
    if (dm.cds_7_contas.Locate('NOME', cbCartaoCDT1.Text, [loCaseInsensitive])) then
      c_formaCAIXA.Value := dm.cds_7_contas.Fields[0].Value;
    c_forma.ApplyUpdates(0);
  end;


  if (JvCartaoDBT.Value > 0) then
  begin
    pagoTotal := JvCartaoDBT.Value;
    if (totalTrocoD < 0) then
    begin
      pagoTotal := (JvCartaoDBT.Value + totalTrocoD);
      if ((totalTrocoD*(-1)) > JvCartaoDBT.Value) then
        totalTrocoD := totalTrocoD - JvCartaoDBT.Value
      else
        totalTrocoD := 0;
    end;

    if (pagoTotal <= 0) then
      pagoTotal := JvCartaoDBT.Value;

    if (c_forma.Active) then
      c_forma.close;
    c_forma.Params[0].Clear;
    c_forma.Open;
    c_forma.Append;
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(gen_entrada, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    c_formaID_ENTRADA.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    c_formaCOD_VENDA.AsInteger := DM_MOV.ID_DO_MOVIMENTO;
    dm.c_6_genid.Close;
    c_formaFORMA_PGTO.AsString := '7';
    c_formaVALOR_PAGO.Value := pagoTotal;
    if (dm.cds_7_contas.Locate('NOME', cbCartaoDBT1.Text, [loCaseInsensitive])) then
      c_formaCAIXA.AsInteger := dm.cds_7_contas.Fields[0].asInteger;
    c_forma.ApplyUpdates(0);
  end;

  if (JvVale.Value > 0) then
  begin
    pagoTotal := jvVale.Value;
    if (totalTrocoD < 0) then
    begin
      pagoTotal := (jvVale.Value + totalTrocoD);
      if ((totalTrocoD*(-1)) > jvVale.Value) then
        totalTrocoD := totalTrocoD - jvVale.Value
      else
        totalTrocoD := 0;
    end;

    if (pagoTotal <= 0) then
      pagoTotal := jvVale.Value;

    if (c_forma.Active) then
      c_forma.close;
    c_forma.Params[0].Clear;
    c_forma.Open;
    c_forma.Append;
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(gen_entrada, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    c_formaID_ENTRADA.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    c_formaCOD_VENDA.AsInteger := DM_MOV.ID_DO_MOVIMENTO;
    dm.c_6_genid.Close;
    c_formaFORMA_PGTO.AsString := 'G';
    c_formaVALOR_PAGO.Value := pagoTotal;
    if (dm.cds_7_contas.Locate('NOME', cbVale.Text, [loCaseInsensitive])) then
      c_formaCAIXA.AsInteger := dm.cds_7_contas.Fields[0].asInteger;
    c_forma.ApplyUpdates(0);
  end;

  if (JvOutros.Value > 0) then
  begin
    pagoTotal := jvOutros.Value;
    if (totalTrocoD < 0) then
    begin
      pagoTotal := (jvOutros.Value + totalTrocoD);
      if ((totalTrocoD*(-1)) > jvOutros.Value) then
        totalTrocoD := totalTrocoD - jvOutros.Value
      else
        totalTrocoD := 0;
    end;

    if (pagoTotal <= 0) then
      pagoTotal := jvOutros.Value;

    if (c_forma.Active) then
      c_forma.close;
    c_forma.Params[0].Clear;
    c_forma.Open;
    c_forma.Append;
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(gen_entrada, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    c_formaID_ENTRADA.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    c_formaCOD_VENDA.AsInteger := DM_MOV.ID_DO_MOVIMENTO;
    dm.c_6_genid.Close;
    c_formaFORMA_PGTO.AsString := 'H';
    c_formaVALOR_PAGO.Value := pagoTotal;
    if (dm.cds_7_contas.Locate('NOME', cbOutros.Text, [loCaseInsensitive])) then
      c_formaCAIXA.AsInteger := dm.cds_7_contas.Fields[0].asInteger;
    c_forma.ApplyUpdates(0);
  end;
  {
  if (JvCaixinha.Value > 0) then
  begin
    if (c_forma.Active) then
      c_forma.close;
    c_forma.Params[0].Clear;
    c_forma.Open;
    c_forma.Append;
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(gen_entrada, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    c_formaID_ENTRADA.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    c_formaCOD_VENDA.AsInteger := DM_MOV.ID_DO_MOVIMENTO;
    dm.c_6_genid.Close;
    c_formaFORMA_PGTO.AsString := 'H';
    c_formaVALOR_PAGO.Value := pagoTotal;
    if (dm.cds_7_contas.Locate('NOME', cbOutros.Text, [loCaseInsensitive])) then
      c_formaCAIXA.AsInteger := dm.cds_7_contas.Fields[0].asInteger;
    c_forma.ApplyUpdates(0);
  end;
    }
  jvDinheiro.Value := 0;
  JvCheque.Value := 0;
  JvChequePre.Value := 0;
  JvCartaoCDT.Value := 0;
  JvCartaoDBT.Value := 0;
  JvVale.Value := 0;
  JvOutros.Value := 0;
  ObsCheque.Text := '';
  ObsChequePre.Text := '';
  cbCartaoCDT1.Text := '';
  cbCartaoDBT1.Text := '';
  cbVale.Text := '';
  cbOutros.Text := '';

  if (c_forma.Active) then
      c_forma.close;
   c_forma.Params[0].Clear;
  c_forma.Params[0].AsInteger := DM_MOV.ID_DO_MOVIMENTO;
  c_forma.Open;
  //if (c_formatotal.Value = JvPedido.Value) then
    //JvFinalizar.Click();
end;

procedure TF_Entrada.btnIncluirClick(Sender: TObject);
begin
  if (c_forma.State <> dsInsert) then
     c_forma.Append;
  jvDinheiro.SetFocus;
end;

procedure TF_Entrada.JvExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     DataSource1.DataSet.Delete;
     (DataSource1.DataSet as TClientDataSet).ApplyUpdates(0);
  end
  else
    Abort;

  if (c_forma.Active) then
      c_forma.close;
   c_forma.Params[0].Clear;
  c_forma.Params[0].AsInteger := DM_MOV.ID_DO_MOVIMENTO;
  c_forma.Open;

end;

procedure TF_Entrada.JvSairClick(Sender: TObject);
begin
  if (c_forma.Active) then
    c_forma.Close;
  close;
end;

procedure TF_Entrada.JvFinalizarClick(Sender: TObject);
var
  sql_sp, movSaida, movEntrada: string;
  TDA: TTransactionDesc;
  FVen : TVendaCls;
  FRec : TReceberCls;
  codMovSaida, codMovEntrada, nota_fiscal, codigo_venda, codRecCR, codigo_cliente, codigo_almox : Integer;
  Save_Cursor:TCursor;
  serie_padrao, texto : string;
  baixou : Integer;
  resto : Double;
begin
  if (DM_MOV.c_venda.Active) then
      DM_MOV.c_venda.Close;
  DM_MOV.c_venda.Params[0].AsInteger := DM_MOV.ID_DO_MOVIMENTO;
  DM_MOV.c_venda.Open;
  if (not DM_MOV.c_venda.IsEmpty) then
  begin
    MessageDlg('Venda já Finalizada.', mtWarning, [mbOK], 0);
    fTerminal2.var_FINALIZOU := 'SIM';
    exit;
  end;

  if (not c_forma.Active) then
  begin
     ShowMessage('Para finalizar a Operacao e necessario antes informar '+#13+#10 +
     'o valor e a forma de pagamento');
     Exit;
  end;

  resto := c_formatotal.Value - (JvPedido.Value + JvComissao.Value - vlrDesc);

  if (resto < (-0.001)) then
  begin
     ShowMessage('Valor Pago diferente do valor do Pedido');
     Exit;
  end;
  // INSERIR VENDA
  Try
    FVen := TVendaCls.Create;
    Try
      if Dm.cds_parametro.Active then
         dm.cds_parametro.Close;
      dm.cds_parametro.Params[0].AsString := 'SERIETERMINAL';
      dm.cds_parametro.Open;
      serie_padrao := dm.cds_parametroDADOS.AsString;
      dm.cds_parametro.Close;
      if scds_serie_proc.Active then
        scds_serie_proc.Close;
      scds_serie_proc.Params[0].AsString := serie_padrao;
      scds_serie_proc.Open;
      if scds_serie_proc.IsEmpty then
      begin
        MessageDlg('Serie padra nao cadastrada?', mtWarning,[mbOk], 0);
        exit;
      end;
      nota_fiscal := scds_serie_procULTIMO_NUMERO.AsInteger + 1;
      scds_serie_proc.Close;
      dm.sqlsisAdimin.StartTransaction(TDA);
      fven.CodMov               := DM_MOV.ID_DO_MOVIMENTO;
      fven.DataVenda            := dtaFEntrada;
      fven.DataVcto             := dtaFEntrada;
      fven.Serie                := serie_padrao;
      fven.NotaFiscal           := nota_fiscal;
      if (fTerminal2.jvPageControl1.ActivePage = fTerminal2.TabVenda) then
      begin
         codigo_cliente            := DM_MOV.c_movimentoCODCLIENTE.AsInteger;
         codigo_almox              := DM_MOV.ID_CCUSTO;
      end;
      if (fTerminal2.jvPageControl1.ActivePage = fTerminal2.TabComanda) then
      begin
         codigo_cliente            := DM_MOV.c_comandaCODCLIENTE.AsInteger;
         codigo_almox              := DM_MOV.ID_CCUSTO;//DM_MOV.c_comandaCODALMOXARIFADO.AsInteger;
      end;
      if (fTerminal2.jvPageControl1.ActivePage = fTerminal2.TabDelivery) then
      begin
         codigo_cliente            := DM_MOV.c_DeliveryCODCLIENTE.AsInteger;
         codigo_almox              := DM_MOV.ID_CCUSTO; //DM_MOV.c_DeliveryCODALMOXARIFADO.AsInteger;
      end;
      fven.CodCliente           := codigo_cliente;
      fven.CodCCusto            := codigo_almox;
      fven.CodVendedor          := 1;
      fven.ValorPagar           := c_formatotal.Value;
      FVen.Entrada              := c_formatotal.Value;
      FVen.Valor                := c_formatotal.Value;
      fven.NParcela             := 1;
      FVen.Caixa                := c_formaCAIXA.AsInteger;
      FVen.FormaRec             := c_formaFORMA_PGTO.AsString;
      FVen.CodUsuario           := usulog;
      FVen.Desconto             := vlrDesc;
      FVen.NDoc                 := c_formaN_DOC.AsString;
      FVen.MultaJuros           := 0;
      FVen.Apagar               := c_formatotal.Value;
      FVen.Prazo                := '01-A Vista';
      FVen.ValorCaixinha        := JvCaixinha.Value;
      FVen.ValorRateio          := JvRateio.Value;
      FVen.ValorComissao        := JvComissao.Value;
      //fven.inserirVenda(0);
      codigo_venda := fven.inserirVenda(0);
      //if (fTerminal2.jvPageControl1.ActivePage = fTerminal2.TabVenda) then
      //  dmnf.baixaEstoque(DM_MOV.c_movimentoCODMOVIMENTO.AsInteger, DM_MOV.c_movimentoDATAMOVIMENTO.AsDateTime, 'VENDA');
      //if (fTerminal2.jvPageControl1.ActivePage = fTerminal2.TabComanda) then
      //  dmnf.baixaEstoque(DM_MOV.c_comandaCODMOVIMENTO.AsInteger, DM_MOV.c_comandaDATAMOVIMENTO.AsDateTime, 'VENDA');
      //if (fTerminal2.jvPageControl1.ActivePage = fTerminal2.TabDelivery) then
      //  dmnf.baixaEstoque(DM_MOV.c_DeliveryCODMOVIMENTO.AsInteger, DM_MOV.c_DeliveryDATAMOVIMENTO.AsDateTime, 'VENDA');
      dm.sqlsisAdimin.Commit(TDA);
      //Gravando o numero sequencial
      if scds_serie_proc.Active then
         scds_serie_proc.Close;
      scds_serie_proc.Params[0].AsString := serie_padrao;
      scds_serie_proc.Open;
      scds_serie_proc.Edit;
      scds_serie_procULTIMO_NUMERO.AsInteger := nota_fiscal;
      scds_serie_proc.ApplyUpdates(0);
      scds_serie_proc.Close;

    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.sqlsisAdimin.Rollback(TDA); //on failure, undo the changes
      end;
    end;
  Finally
    Screen.Cursor := Save_Cursor;
    FVen.Free;
  end;
  // INSERIR RECEBIMENTO
  try
     dm.sqlsisAdimin.StartTransaction(TDA);
     FRec := TReceberCls.Create;
     codRecCR := FRec.geraTitulo(0, codigo_venda);
     dm.sqlsisAdimin.Commit(TDA);
  finally
     Frec.Free;
  end;
  // baixa titulo
  try
     baixou := 0;
     FRec := TReceberCls.Create;
     while not c_forma.Eof do
     begin
       // Marco o T?lo
       if (baixou > 0) then
           codRecCR := baixou;

       Texto := 'UPDATE RECEBIMENTO SET DP = 0, USERID = ' + IntToStr(usulog) + ' WHERE CODVENDA = ' +
                IntToStr(codigo_venda);
       dm.sqlsisAdimin.StartTransaction(TDA);
       dm.sqlsisAdimin.ExecuteDirect(Texto);
       Try
        dm.sqlsisAdimin.Commit(TDA);
       except
        dm.sqlsisAdimin.Rollback(TDA); //on failure, undo the changes}
        MessageDlg('Erro no sistema, Marcar Titulo Falhou.', mtError,
           [mbOk], 0);
       end;
       baixou := FRec.baixaTitulo(c_formaVALOR_PAGO.Value, //Valor
                                  0, //Funrural
                                  0, // Juros
                                  0, //vlrDesc, // Desconto
                                  0, // Perda
                                  dtaFEntrada, //DM_MOV.c_vendaDATAVENDA.AsDateTime, // Data Baixa
                                  dtaFEntrada, //DM_MOV.c_vendaDATAVENDA.AsDateTime, // Data Recebimento
                                  dtaFEntrada, //DM_MOV.c_vendaDATAVENDA.AsDateTime, // Data Consolida
                                  c_formaFORMA_PGTO.AsString,  // FormaRecebimento
                                  c_formaN_DOC.AsString, //DM_MOV.c_vendaN_DOCUMENTO.AsString, // N?Documento
                                  c_formaCAIXA.AsInteger, // Caixa
                                  codigo_cliente, //DM_MOV.c_vendaCODCLIENTE.AsInteger, // Codigo do Cliente
                                  '7-',
                                  usulog, ''); // Usuario Logado
      Texto := 'UPDATE RECEBIMENTO SET DP = ' + 'null' + ', USERID = ' + 'null' + ' WHERE CODRECEBIMENTO = ' +
                IntToStr(codRecCR);;
      dm.sqlsisAdimin.StartTransaction(TDA);
      dm.sqlsisAdimin.ExecuteDirect(Texto);
      Try
        dm.sqlsisAdimin.Commit(TDA);
      except
        dm.sqlsisAdimin.Rollback(TDA); //on failure, undo the changes}
        MessageDlg('Erro no sistema, Desmarcar Titulo Falhou.', mtError,
           [mbOk], 0);
      end;
      codRecCR := 0;
      c_forma.Next;
    end;
  finally
     Frec.Free;
  end;
  // Mudo STATUS do MOVIMENTO e aplico o baixa estoque
  strSqlMov := 'UPDATE MOVIMENTO SET STATUS = ' + '0 ' +
  ' where CODMOVIMENTO = ' + IntToStr(DM_MOV.ID_DO_MOVIMENTO);
  dm.sqlsisAdimin.StartTransaction(TD);
  dm.sqlsisAdimin.ExecuteDirect(strSqlMov);

  // IMPRIMIR RECIBO
  if (MessageDlg('Imprimir Comprovante ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
      if (DM_MOV.c_movimento.Active) then
          DM_MOV.c_movimento.Close;
      DM_MOV.c_movimento.Params[0].AsInteger := DM_MOV.ID_DO_MOVIMENTO;
      DM_MOV.c_movimento.Open;

      if (DM_MOV.c_movdet.Active) then
          DM_MOV.c_movdet.Close;
      DM_MOV.c_movdet.Params[0].AsInteger := DM_MOV.ID_DO_MOVIMENTO;
      DM_MOV.c_movdet.Open;

      if (DM_MOV.c_venda.Active) then
          DM_MOV.c_venda.Close;
      DM_MOV.c_venda.Params[0].AsInteger := DM_MOV.ID_DO_MOVIMENTO;
      DM_MOV.c_venda.Open;

      if (scds_serie_proc.Active) then
          scds_serie_proc.Close;
      scds_serie_proc.Params[0].AsInteger := DM_MOV.c_vendaCODVENDA.AsInteger;
      scds_serie_proc.Open;

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
        ShowMessage('Parametro Tipo Impress?n?configurado');
        exit;
      end;

      if (tipoImpressao = 'CUPOM') then
      begin
         if (usaDll = 'TRUE') then
           imprimeDLLBema
         else
           imprimeCupom;
      end;
      if (tipoImpressao = 'RECIBO') then
        imprimeRecibo;
  end;
  // se informou caixinha gravo na MOVIMENTOCONT
  // if (JvCaixinha.Value > 0) then
  //   caixinha;

  // Encerra Processos do terminal
  fTerminal2.var_FINALIZOU := 'SIM';
  //Close;
  DecimalSeparator := ',';
end;

procedure TF_Entrada.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TF_Entrada.imprimeCupom;
begin
     if (not dm.cds_empresa.Active) then
      dm.cds_empresa.Open;
     {----- aqui monto o endere?----}
     logradouro := dm.cds_empresaENDERECO.Value + ', ' + dm.cds_empresaBAIRRO.Value;
     cep := dm.cds_empresaCIDADE.Value + ' - ' + dm.cds_empresaUF.Value +
     ' - ' + dm.cds_empresaCEP.Value;
     fone := '(19)' + dm.cds_empresaFONE.Value + ' / ' + dm.cds_empresaFONE_1.Value +
     ' / ' + dm.cds_empresaFONE_2.Value;
     Texto  := '------------------------------------------------------' ;
     Texto1 := DateTimeToStr(Now) + '            Cod.:  ' +
      IntToStr(DM_MOV.c_vendaNOTAFISCAL.AsInteger) + ' - ' + DM_MOV.c_vendaSERIE.AsString;
     Texto2 := '------------------------------------------------------' ;
     Texto3 := 'Produto                                               ' ;
     Texto4 := 'Codigo             UN      Qtde     V.Un.     V.Total ' ;

     if (fTerminal2.jvPageControl1.ActivePage = fTerminal2.TabVenda) then
       cliente := 'Cliente : ' + DM_MOV.c_movimentoNOMECLIENTE.Value;

     if (fTerminal2.jvPageControl1.ActivePage = fTerminal2.TabComanda) then
       cliente := 'Cliente : ' + DM_MOV.c_comandaNOMECLIENTE.Value;

     if (fTerminal2.jvPageControl1.ActivePage = fTerminal2.TabDelivery) then
       cliente := 'Cliente : ' + DM_MOV.c_DeliveryNOMECLIENTE.Value;


     if (s_parametro.Active) then
         s_parametro.close;
     s_parametro.Params[0].AsString := 'MENSAGEM';
     s_parametro.Open;
     if (not s_parametro.Eof) then
       DM.Mensagem := s_parametroDADOS.AsString
     else
       DM.Mensagem := '';

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'IMPARQUIVO';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
       dlgSave1.Execute;
       AssignFile(IMPRESSORA, dlgSave1.FileName);
       s_parametro.Close;
     end
     else
     begin
       if (s_parametro.Active) then
         s_parametro.Close;
       s_parametro.Params[0].Clear;
       s_parametro.Params[0].AsString := 'PORTA IMPRESSORA';
       s_parametro.Open;
       porta := s_parametroDADOS.AsString;
       s_parametro.Close;
       AssignFile(IMPRESSORA,porta);
     end;
     Rewrite(IMPRESSORA);
     Writeln(Impressora, c10cpi + Format('%-40s',[dm.cds_empresaRAZAO.Value]));
     Writeln(Impressora, c17cpi, logradouro);
     Writeln(Impressora, cep);
     Writeln(Impressora, fone);
     Writeln(Impressora, c10cpi + Format('%-40s',['CNPJ :' + dm.cds_empresaCNPJ_CPF.Value]));
     Writeln(Impressora, cliente);
     Writeln(Impressora, c17cpi, texto);
     Writeln(Impressora, c17cpi, texto1);
     Writeln(Impressora, c17cpi, texto2);
     Writeln(Impressora, c17cpi, texto3);
     Writeln(Impressora, c17cpi, texto4);
  {-----------------------------------------------------------}
  {-------------------Imprimi itens do boleto-----------------}
  try
     DM_MOV.c_movdet.First;
     while not DM_MOV.c_movdet.Eof do
     begin
       DM_MOV.c_movdet.RecordCount;
      // imprime
      Writeln(Impressora, c17cpi + Format('%-40s',[DM_MOV.c_movdetDESCPRODUTO.Value]));
      Write(Impressora, c17cpi, Format('%-13s  ',[DM_MOV.c_movdetCOD_BARRA.Value]));
      Write(Impressora, c17cpi + Format('   %-2s  ',[DM_MOV.c_movdetUN.Value]));
      Write(Impressora, c17cpi + Format('   %-5.2n',[DM_MOV.c_movdetQUANTIDADE.AsFloat]));
      Write(Impressora, c17cpi + Format('   %-6.2n',[DM_MOV.c_movdetPRECO.AsFloat]));
      Writeln(Impressora, c17cpi + Format('   %-8.2n',[DM_MOV.c_movdetValorTotal.value]));

      with Printer.Canvas do
      begin
       Font.Name := 'Courier New';
       Font.Size := 4;
      end;
      DM_MOV.c_movdet.next;
     end;
     Texto5 := 'Total.: R$';     
     total := DM_MOV.c_movdettotalpedido.Value;
     Writeln(Impressora, c17cpi, texto);
     Write(Impressora, c17cpi + Format('%40s',[texto5]));
     Writeln(Impressora, c17cpi + Format('%10.2n',[total]));

     // imprimir vencimentos
     while not scdsCr_proc.Eof do
     begin
       Texto5 := 'Vencimento :   ';
       Write(Impressora, c17cpi, texto5);
       Texto5 := DateTimeToStr(scdsCr_procDATAVENCIMENTO.AsDateTime);
       Texto5 := Texto5 + ' - Valor R$' + FloatToStr(scdsCr_procVALOR_RESTO.AsFloat);
       Writeln(Impressora, c17cpi, texto5);
       scdsCr_proc.Next;
     end;

     s_parametro.Close;
     if (s_parametro.Active) then
     s_parametro.Close;
     s_parametro.Params[0].AsString := 'PAGA_COMISSAO';
     s_parametro.Open;
     if (not s_parametro.IsEmpty) then
     begin
       if (fTerminal2.JvComissao.Value > 0) then
       begin
         Texto5 := '% : R$ ';
         Write(Impressora, c17cpi + Format('%40s',[texto5]));
         porc    := JvComissao.Value;
         Writeln(Impressora, c17cpi + Format('%10.2n',[porc]));
         total   := total + porc;
         Texto5 := 'Total + perc.: R$ ';
         Write(Impressora, c17cpi + Format('%40s',[texto5]));
         Writeln(Impressora, c17cpi + Format('%10.2n',[total]));
       end;
     end;
     s_parametro.Close;

     if (edDesconto.Value > 0) then
     begin
         Texto5 := 'Desconto : R$ ';
         Write(Impressora, c17cpi + Format('%40s',[texto5]));
         Writeln(Impressora, c17cpi + Format('%10.2n',[vlrDesc]));
         porc    := (fTerminal2.JvComissao.Value / 100) * total;
         total   := total - vlrDesc;
         Texto5 := 'Total : R$ ';
         Write(Impressora, c17cpi + Format('%40s',[texto5]));
         Writeln(Impressora, c17cpi + Format('%10.2n',[total]));
     end;

     Writeln(IMPRESSORA);
     Write(Impressora, c10cpi, DM.Mensagem);
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
     Writeln(IMPRESSORA);
     Write(IMPRESSORA, chr(ord(strtoint('29')))+chr(ord(strtoint( '+86')))+chr(ord(strtoint('+01'))));
  finally
    CloseFile(IMPRESSORA);
  end;
end;

procedure TF_Entrada.imprimeDLLBema;
begin
     if (not dm.cds_empresa.Active) then
      dm.cds_empresa.Open;
     {----- aqui monto o endere?----}
     logradouro := dm.cds_empresaENDERECO.Value + ' ' + dm.cds_empresaNUMERO.Value  + ', ' + dm.cds_empresaBAIRRO.Value;
     cep := dm.cds_empresaCIDADE.Value + ' - ' + dm.cds_empresaUF.Value +
     ' - ' + dm.cds_empresaCEP.Value;
     fone := '(19)' + dm.cds_empresaFONE.Value + ' / ' + dm.cds_empresaFONE_1.Value +
     ' / ' + dm.cds_empresaFONE_2.Value;
     Texto  := '--------------------------------------------------' ;
     Texto1 := DateTimeToStr(Now) + '            Cod.:  ' +
      IntToStr(DM_MOV.c_vendaNOTAFISCAL.AsInteger) + ' - ' + DM_MOV.c_vendaSERIE.AsString;
     Texto2 := '--------------------------------------------------' ;
     Texto3 := 'Produto ' ;
     Texto4 := 'Cod.Barra        UN   Qtde     V.Un.     V.Total ' ;
     Texto5 := DateTimeToStr(Now) + '          Total.: R$ ';
     cliente := 'Cliente : ' + DM_MOV.c_movimentoNOMECLIENTE.Value;
     if (s_parametro.Active) then
         s_parametro.close;
     s_parametro.Params[0].AsString := 'MENSAGEM';
     s_parametro.Open;
     if (not s_parametro.Eof) then
       DM.Mensagem := s_parametroDADOS.AsString
     else
       DM.Mensagem := '';

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'IMPARQUIVO';
     s_parametro.Open;
     if (not s_parametro.Eof) then
     begin
       dlgSave1.Execute;
       AssignFile(IMPRESSORA, dlgSave1.FileName);
       s_parametro.Close;
     end
     else
     begin
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
        iRetorno := IniciaPorta( pchar( porta ) );
        if (iRetorno <= 0) then
          ShowMessage('Erro Abrindo Porta');
     end;

      buffer  := dm.cds_empresaRAZAO.AsString + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        msgErro;
        exit;
      end;

      buffer  := logradouro + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        msgErro;
        exit;
      end;

      buffer  := cep + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        msgErro;
        exit;
      end;

      buffer  := fone + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        msgErro;
        exit;
      end;

      buffer  := 'CNPJ :' + dm.cds_empresaCNPJ_CPF.AsString + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        msgErro;
        exit;
      end;

      buffer  := cliente + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        msgErro;
        exit;
      end;

      buffer  := texto + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        msgErro;
        exit;
      end;

      buffer  := texto1 + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        msgErro;
        exit;
      end;

      buffer  := texto2 + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        msgErro;
        exit;
      end;

      buffer  := texto3 + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        msgErro;
        exit;
      end;

      buffer  := texto4 + Chr(13) + Chr(10);
      comando := FormataTX(buffer, 3, 0, 0, 0, 0);
      if comando = 0 then
      begin
        msgErro;
        exit;
      end;

     DM_MOV.c_movdet.First;
     while not DM_MOV.c_movdet.Eof do
     begin
         // imprime
        buffer  := DM_MOV.c_movdetDESCPRODUTO.Value + Chr(13) + Chr(10);
        comando := FormataTX(buffer, 3, 0, 0, 0, 0);
        if comando = 0 then
        begin
          msgErro;
          exit;
        end;
        buffer  := Format('%-13s  ',[DM_MOV.c_movdetCODPRO.Value]);
        buffer  := buffer + Format('  %2s ',[DM_MOV.c_movdetUN.Value]);
        buffer  := buffer + Format('  %6.2n',[DM_MOV.c_movdetQUANTIDADE.AsFloat]);
        buffer  := buffer + Format('  %6.2n',[DM_MOV.c_movdetPRECO.AsFloat]);
        buffer  := buffer + Format('  %8.2n',[DM_MOV.c_movdetValorTotal.value]);
        buffer  := buffer + Chr(13) + Chr(10);
        comando := FormataTX(buffer, 3, 0, 0, 0, 0);
        if comando = 0 then
        begin
          msgErro;
          exit;
        end;
        DM_MOV.c_movdet.next;
     end;

     buffer  := texto + Chr(13) + Chr(10);
     comando := FormataTX(buffer, 3, 0, 0, 0, 0);
     if comando = 0 then
     begin
       msgErro;
       exit;
     end;

     buffer  := texto5;
     total   := DM_MOV.c_movdettotalpedido.Value;
     buffer  := buffer + Format('%10.2n',[total]);
     buffer  := buffer + Chr(13) + Chr(10);
     comando := FormataTX(buffer, 3, 0, 0, 0, 0);



  {   // imprimir vencimentos
     while not scdsCr_proc.Eof do
     begin
       Texto5 := 'Vencimento :   ';
       Write(Impressora, c17cpi, texto5);
       Texto5 := DateTimeToStr(scdsCr_procDATAVENCIMENTO.AsDateTime);
       Texto5 := Texto5 + ' - Valor R$' + FloatToStr(scdsCr_procVALOR_RESTO.AsFloat);
       Writeln(Impressora, c17cpi, texto5);
       scdsCr_proc.Next;
     end;
     Writeln(IMPRESSORA);
     Write(Impressora, c10cpi, DM.Mensagem);

     }

     // Verifico se tem % Gar?
     s_parametro.Close;
     if (s_parametro.Active) then
     s_parametro.Close;
     s_parametro.Params[0].AsString := 'PAGA_COMISSAO';
     s_parametro.Open;
     if (not s_parametro.IsEmpty) then
     begin
       if (fTerminal2.JvComissao.Value > 0) then
       begin
         Texto5 := DateTimeToStr(Now) + '               % : R$ ';
         buffer  := texto5;
         porc    := (fTerminal2.JvComissao.Value / 100) * total;
         buffer  := buffer + Format('%10.2n',[porc]);
         buffer  := buffer + Chr(13) + Chr(10);
         comando := FormataTX(buffer, 3, 0, 0, 0, 0);

         buffer  := texto5;
         total   := total + porc;
         buffer  := buffer + Format('%10.2n',[total]);
         buffer  := buffer + Chr(13) + Chr(10);
         comando := FormataTX(buffer, 3, 0, 0, 0, 0);

       end;
     end;
     s_parametro.Close;


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
       MessageDlg('Problemas no corte do papel..' + #10 + 'Poss?is causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );

     // Comando para Acionar a Gaveta de Dinheiro
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'ABRIR_GAVETA';
     s_parametro.Open;
     if (s_parametro.Eof) then
     begin
       scomando := #27 + #118 + #140;
       iRetorno := ComandoTX( scomando, Length( scomando ));
     end;
     s_parametro.Close;
end;

procedure TF_Entrada.imprimeRecibo;
begin
  VCLReport2.FileName := str_relatorio + 'impr_texto.rep';
  VCLReport2.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport2.Report.Params.ParamByName('PVENDA').Value := DM_MOV.c_vendaCODVENDA.AsInteger;
  VCLReport2.Execute;
end;

procedure TF_Entrada.troco;
var totalPTroco: Double;
begin
  JvTroco.Value := 0;
  totalPTroco := jvDinheiro.Value + JvCheque.Value + JvChequePre.Value + JvCartaoDBT.Value +
    JvCartaoCDT.Value + JvVale.Value + JvOutros.Value;
 if (((JvPago.Value) - totalPTroco) < 0.009) then
    JvTroco.Value := (JvPago.Value) - totalPTroco;

 // if (((JvPago.Value + JvCaixinha.Value) - totalPTroco) < 0.009) then
 //   JvTroco.Value := (JvPago.Value + JvCaixinha.Value) - totalPTroco;
end;

procedure TF_Entrada.JvPagoExit(Sender: TObject);
begin
  troco;
  jvDinheiro.Value := JvPago.Value;
end;

procedure TF_Entrada.JvPagoEnter(Sender: TObject);
begin
  troco;
  jvDinheiro.Value := JvPago.Value;
end;

procedure TF_Entrada.jvDinheiroExit(Sender: TObject);
begin
  troco;
end;

procedure TF_Entrada.jvDinheiroEnter(Sender: TObject);
begin
  Troco;
end;

procedure TF_Entrada.caixinha;
var
  FCaixinha : TFiscalCls;
  v_caixinha : Double;
  var_nomecaixa, var_cDebito, var_cCredito : string;
  var_codCaixa, var_codCCustoCD, var_codCCustoCC : Integer;
begin
  v_caixinha := JvCaixinha.Value;
  Try
    FCaixinha := TFiscalCls.Create;
    FCaixinha.VerificaCaixaAberto();
    var_codCaixa  := FCaixinha.v_idcaixa;  // Codigo do caixa na tabela CAIXA_CONTROLE
    var_nomecaixa := FCaixinha.v_NomeCaixa;

    if (DM_MOV.s_parametro.Active) then
       DM_MOV.s_parametro.Close;
    DM_MOV.s_parametro.Params[0].AsString := 'CONTACAIXINHA';
    DM_MOV.s_parametro.Open;
    var_cCredito := DM_MOV.s_parametroD1.AsString;
    var_codCCustoCC := FCaixinha.v_Cod_Caixa;

    DM_MOV.s_parametro.Close;
    DM_MOV.s_parametro.Params[0].AsString := 'CONTACAIXAINTERNA';
    DM_MOV.s_parametro.Open;
    var_cDebito := DM_MOV.s_parametroD1.AsString;
    DM_MOV.s_parametro.Close;
    var_codCCustoCD := FCaixinha.v_Cod_Caixa;
    FCaixinha.SangriadeCaixa(var_codCaixa,usulog,var_codCCustoCD, var_codCCustoCC,var_cDebito,var_cCredito,v_caixinha,'CAIXINHA');
  Finally
    //Screen.Cursor := Save_Cursor;
    FCaixinha.Free;
  end;
end;

procedure TF_Entrada.FormShow(Sender: TObject);
begin
  if (c_forma.Active) then
      c_forma.close;
   c_forma.Params[0].Clear;
  c_forma.Params[0].AsInteger := DM_MOV.ID_DO_MOVIMENTO;
  c_forma.Open;

  totalPedidoC := 0;
  if (not c_forma.IsEmpty) then
    totalPedidoC := c_formatotal.Value;

  JvPago.Value := JvPedido.Value + JvComissao.Value - totalPedidoC;
  vlrDesc := 0;
end;

procedure TF_Entrada.edDescontoEnter(Sender: TObject);
begin
  if (rg1.ItemIndex = 0) then
    vlrDesc := (edDesconto.Value / 100) * (JvPedido.Value + JvComissao.Value)
  else
    vlrDesc := edDesconto.Value;
  JvPago.Value := JvPedido.Value + JvComissao.Value - vlrDesc  - totalPedidoC;
  Troco;
end;

procedure TF_Entrada.edDescontoExit(Sender: TObject);
begin
  if (rg1.ItemIndex = 0) then
    vlrDesc := (edDesconto.Value / 100) * (JvPedido.Value + JvComissao.Value)
  else
    vlrDesc := edDesconto.Value;
  JvPago.Value := JvPedido.Value + JvComissao.Value - vlrDesc - totalPedidoC;
  troco;
end;

procedure TF_Entrada.JvCaixinhaExit(Sender: TObject);
begin
  JvPago.Value := JvPedido.Value + JvComissao.Value + JvCaixinha.Value;
  troco;
end;

procedure TF_Entrada.JvCaixinhaEnter(Sender: TObject);
begin
  JvPago.Value := JvPedido.Value + JvComissao.Value + JvCaixinha.Value;
  troco;  
end;

procedure TF_Entrada.msgErro;
begin
  // MSG
  MessageDlg('Problemas na impressao do texto.' + #10 + 'Possiveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
end;

procedure TF_Entrada.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (DM_MOV.c_venda.Active) then
    DM_MOV.c_venda.Close;
  DM_MOV.c_venda.Params[0].AsInteger := DM_MOV.ID_DO_MOVIMENTO;
  DM_MOV.c_venda.Open;
  if (not DM_MOV.c_venda.IsEmpty) then
  begin
    fTerminal2.var_FINALIZOU := 'SIM';
  end;
  if (DM_MOV.ID_DO_MOVIMENTO > 0) then
    dm.EstoqueAtualiza(DM_MOV.ID_DO_MOVIMENTO);
end;

procedure TF_Entrada.btnCupomClick(Sender: TObject);
var str_sql : string;
begin
  if (fTerminal2.var_FINALIZOU <> 'SIM') then
  begin
    if (DM_MOV.c_venda.Active) then
      DM_MOV.c_venda.Close;
    DM_MOV.c_venda.Params[0].AsInteger := DM_MOV.ID_DO_MOVIMENTO;
    DM_MOV.c_venda.Open;
    if (not DM_MOV.c_venda.IsEmpty) then
    begin
      fTerminal2.var_FINALIZOU := 'SIM';
    end
    else begin
      MessageDlg('Execute a Finalização para ir para o Cupom.', mtWarning, [mbOK], 0);
      exit;
    end;
  end;
  if (fTerminal2.var_FINALIZOU = 'SIM') then
  begin
    if (sqlBuscaNota.Active) then
      sqlBuscaNota.Close;
    sqlBuscaNota.SQL.Clear;
    sqlBuscaNota.SQL.Add('select codMovimento from MOVIMENTO where (CODNATUREZA = 7) AND CONTROLE = ' +
        QuotedStr(IntToStr(DM_MOV.ID_DO_MOVIMENTO)));
    sqlBuscaNota.Open;
    if (sqlBuscaNota.IsEmpty) then
    begin
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      dm.sqlsisAdimin.StartTransaction(TD);
      try
        str_sql := 'EXECUTE PROCEDURE GERA_CUPOM(';
        str_sql := str_sql  + IntToStr(DM_MOV.ID_DO_MOVIMENTO) + ')';
        dm.sqlsisAdimin.ExecuteDirect(str_sql);
        dm.sqlsisAdimin.Commit(TD);
      except
        on E : Exception do
        begin
          ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
          dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
          Exit;
        end;
      end;
    end;

    //if (sqlBuscaNota.Active) then
        sqlBuscaNota.Close;
    sqlBuscaNota.SQL.Clear;
    sqlBuscaNota.SQL.Add('select codMovimento from MOVIMENTO where (CODNATUREZA = 7) AND CONTROLE = ' +
      QuotedStr(IntToStr(DM_MOV.ID_DO_MOVIMENTO)));
    sqlBuscaNota.Open;

    fTerminal_Delivery := TfTerminal_Delivery.Create(Application);
    try
      fTerminal_Delivery.cds_Movimento.Close;
      fTerminal_Delivery.cds_Movimento.Params[0].AsInteger := sqlBuscaNota.Fields[0].AsInteger;
      fTerminal_Delivery.cds_Movimento.Open;

      fTerminal_Delivery.cds_Mov_det.Close;
      fTerminal_Delivery.cds_Mov_det.Params[0].Clear;
      fTerminal_Delivery.cds_Mov_det.Params[1].AsInteger := sqlBuscaNota.Fields[0].AsInteger;
      fTerminal_Delivery.cds_Mov_det.Open;

      if (dm.totalpago > 0) then
        fTerminal_Delivery.jvPago.Value := dm.totalpago
      else
        fTerminal_Delivery.jvPago.Text := fTerminal_Delivery.DBEdit4.Text;

      fTerminal_Delivery.ShowModal;
    finally
      fTerminal_Delivery.Free;
    end;
  end;  
end;

end.