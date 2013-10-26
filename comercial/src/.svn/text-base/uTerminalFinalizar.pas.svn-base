unit uTerminalFinalizar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBSearchComboBox,
  StdCtrls, Mask, DBCtrls, JvExStdCtrls, JvCombobox, Buttons, ExtCtrls,
  MMJPanel, FMTBcd, SqlExpr, Provider, DB, DBClient, DBLocal, DBLocalS,
  Menus;

type
  TfTerminalFinalizar = class(TForm)
    MMJPanel1: TMMJPanel;
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    btnGravar: TBitBtn;
    btnProcurar: TBitBtn;
    btnSair: TBitBtn;
    btnImprimir: TBitBtn;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label24: TLabel;
    Label20: TLabel;
    dbeSerie: TDBEdit;
    btnSerie: TBitBtn;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    cbConta: TComboBox;
    ComboBox1: TComboBox;
    DBEdit1: TDBEdit;
    GroupBox4: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    GroupBox3: TGroupBox;
    MMJPanel2: TMMJPanel;
    BitBtn4: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    JvDBGrid1: TJvDBGrid;
    DtSrc: TDataSource;
    cds: TClientDataSet;
    cdsCODMOVIMENTO: TIntegerField;
    cdsCODCLIENTE: TIntegerField;
    cdsDATAVENDA: TDateField;
    cdsDATAVENCIMENTO: TDateField;
    cdsNUMEROBORDERO: TIntegerField;
    cdsBANCO: TSmallintField;
    cdsCODVENDEDOR: TSmallintField;
    cdsCODUSUARIO: TSmallintField;
    cdsDATASISTEMA: TDateField;
    cdsVALOR: TFloatField;
    cdsNOTAFISCAL: TIntegerField;
    cdsSERIE: TStringField;
    cdsNOMECLIENTE: TStringField;
    cdsNOMEUSUARIO: TStringField;
    cdsBANCO_1: TStringField;
    cdsCODVENDA: TIntegerField;
    cdsDESCONTO: TFloatField;
    cdsCODCCUSTO: TSmallintField;
    cdsN_PARCELA: TSmallintField;
    cdsN_DOCUMENTO: TStringField;
    cdsCAIXA: TSmallintField;
    cdsMULTA_JUROS: TFloatField;
    cdsAPAGAR: TFloatField;
    cdsVALOR_PAGAR: TFloatField;
    cdsENTRADA: TFloatField;
    cdsN_BOLETO: TStringField;
    cdsFORMARECEBIMENTO: TStringField;
    cdsOPERACAO: TStringField;
    cdsSTATUS: TSmallintField;
    cdsSTATUS1: TStringField;
    cdsCONTROLE: TStringField;
    cdsOBS: TStringField;
    cdsdiferenca: TFloatField;
    cdsVALOR_ICMS: TFloatField;
    cdsVALOR_FRETE: TFloatField;
    cdsVALOR_SEGURO: TFloatField;
    cdsOUTRAS_DESP: TFloatField;
    cdsVALOR_IPI: TFloatField;
    cdsCOD_TRANPORTADORA: TIntegerField;
    cdsPRAZO: TStringField;
    dsp_venda: TDataSetProvider;
    sds_venda: TSQLDataSet;
    sds_vendaCODMOVIMENTO: TIntegerField;
    sds_vendaCODCLIENTE: TIntegerField;
    sds_vendaDATAVENDA: TDateField;
    sds_vendaDATAVENCIMENTO: TDateField;
    sds_vendaNUMEROBORDERO: TIntegerField;
    sds_vendaBANCO: TSmallintField;
    sds_vendaCODVENDEDOR: TSmallintField;
    sds_vendaCODUSUARIO: TSmallintField;
    sds_vendaDATASISTEMA: TDateField;
    sds_vendaVALOR: TFloatField;
    sds_vendaNOTAFISCAL: TIntegerField;
    sds_vendaSERIE: TStringField;
    sds_vendaNOMECLIENTE: TStringField;
    sds_vendaNOMEUSUARIO: TStringField;
    sds_vendaBANCO_1: TStringField;
    sds_vendaCODVENDA: TIntegerField;
    sds_vendaDESCONTO: TFloatField;
    sds_vendaCODCCUSTO: TSmallintField;
    sds_vendaN_PARCELA: TSmallintField;
    sds_vendaN_DOCUMENTO: TStringField;
    sds_vendaCAIXA: TSmallintField;
    sds_vendaMULTA_JUROS: TFloatField;
    sds_vendaAPAGAR: TFloatField;
    sds_vendaVALOR_PAGAR: TFloatField;
    sds_vendaENTRADA: TFloatField;
    sds_vendaN_BOLETO: TStringField;
    sds_vendaFORMARECEBIMENTO: TStringField;
    sds_vendaOPERACAO: TStringField;
    sds_vendaSTATUS: TSmallintField;
    sds_vendaSTATUS1: TStringField;
    sds_vendaCONTROLE: TStringField;
    sds_vendaOBS: TStringField;
    sds_vendaVALOR_ICMS: TFloatField;
    sds_vendaVALOR_FRETE: TFloatField;
    sds_vendaVALOR_SEGURO: TFloatField;
    sds_vendaOUTRAS_DESP: TFloatField;
    sds_vendaVALOR_IPI: TFloatField;
    sds_vendaCOD_TRANPORTADORA: TIntegerField;
    sds_vendaPRAZO: TStringField;
    dbDtaVencimento: TDBEdit;
    btnIncluir: TBitBtn;
    ds_Cr: TDataSource;
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
    DBEdit4: TDBEdit;
    dbeUsuario: TDBEdit;
    scds_serie_proc: TSQLClientDataSet;
    scds_serie_procCODSERIE: TStringField;
    scds_serie_procSERIE: TStringField;
    scds_serie_procULTIMO_NUMERO: TIntegerField;
    scds_serie_procNOTAFISCAL: TSmallintField;
    SQLDataSet2: TSQLDataSet;
    sqs_tit: TSQLDataSet;
    PopupMenu1: TPopupMenu;
    Procurar1: TMenuItem;
    Incuir1: TMenuItem;
    Gravar1: TMenuItem;
    Excluir1: TMenuItem;
    Cancelar1: TMenuItem;
    Sair1: TMenuItem;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    sCaixaAberto: TSQLDataSet;
    sCaixaAbertoNOMECAIXA: TStringField;
    sCaixaAbertoIDCAIXACONTROLE: TIntegerField;
    sds_vendaCODORIGEM: TIntegerField;
    cdsCODORIGEM: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnSerieClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure btnSairClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbeSerieExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    vrr, nparc : double;
    { Public declarations }
  end;

var
  fTerminalFinalizar: TfTerminalFinalizar;
  varcancela : string;

implementation

uses uTerminal_Delivery, UDm, uUtils, uProcurar_nf, sCtrlResize,
  ufCrAltera;

{$R *.dfm}

procedure TfTerminalFinalizar.FormCreate(Sender: TObject);
var utilcrtitulo : Tutils;
  i, j : integer;
begin
//  inherited;
 // sCtrlResize.CtrlResize(TForm(fTerminalFinalizar));
  // Listo as Contas Caixa
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CAIXA_BANCO';
  dm.cds_parametro.Open;
  if dm.cds_7_contas.Active then
    dm.cds_7_contas.Close;
  dm.cds_7_contas.Params[0].AsString := dm.cds_parametroDADOS.AsString;
  dm.cds_7_contas.Open;
  while not dm.cds_7_contas.Eof do
  begin
    cbConta.Items.Add(dm.cds_7_contas.Fields[2].asString);
    dm.cds_7_contas.Next;
  end;
  utilcrtitulo := Tutils.Create;
  // Popula Status
  j := utilcrtitulo.Forma.Count;
  for i := 0 to j - 1 do
  begin
    combobox1.Items.Add(utilcrtitulo.Forma.Strings[i]);
  end;

end;

procedure TfTerminalFinalizar.FormShow(Sender: TObject);
 var utilcrtitulo : Tutils;
begin
  sCtrlResize.CtrlResize(TForm(fTerminalFinalizar));
  //a tabela esta aberta, então verifica se é edicao ou inserção
  //procurando na tabela venda pelo código do movimento.
  if dm.scds_venda_proc.Active then
    dm.scds_venda_proc.Close;
  dm.scds_venda_proc.Params[0].AsInteger:= fTerminal_Delivery.cds_MovimentoCODMOVIMENTO.AsInteger;
  dm.scds_venda_proc.Open;
  if dm.scds_venda_proc.IsEmpty then
  begin
    btnIncluir.Visible:=True;
    btnIncluir.Click;
    dm.scds_venda_proc.Close;
    exit;
  end
  else
  begin
    btnIncluir.Visible:=False;
    if cds.Active then
      cds.Close;
    cds.Params[0].AsInteger:=dm.scds_venda_procCODVENDA.AsInteger;
    cds.Open;
  end;

    if (cdsFORMARECEBIMENTO.asString <> '') then
    begin
        utilcrtitulo := Tutils.Create;
        ComboBox1.ItemIndex := utilcrtitulo.retornaForma(cdsFORMARECEBIMENTO.asString);
    end;

    if (dm.cds_7_contas.Locate('CODIGO', cdsCAIXA.AsInteger, [loCaseInsensitive])) then
      cbConta.Text := dm.cds_7_contas.Fields[2].asString;

  dm.scds_venda_proc.Close;
  scdsCr_proc.Close;
  scdsCr_proc.Params[0].AsInteger := cdsCODVENDA.AsInteger;
  scdsCr_proc.Open;

  dbeSerie.SetFocus;
end;

procedure TfTerminalFinalizar.btnIncluirClick(Sender: TObject);
begin

  if not DtSrc.DataSet.Active then
     DtSrc.DataSet.open;
  DtSrc.DataSet.Append;

  {------Pesquisando na tab Parametro o valor padrão para a Natureza Operação ---------}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'SERIEPADRAO';
  dm.cds_parametro.Open;
  dbeSerie.Text := dm.cds_parametroDADOS.AsString;
  cdsSERIE.AsString := dm.cds_parametroDADOS.AsString;
  dm.cds_parametro.Close;
  { 006 ------Pesquisando na tab Parametro o Vendedor padrão ---- 09-05-2005 -----}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'VENDEDORPADRAO';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
    dbeUsuario.Text := dm.cds_parametroDADOS.AsString;
  dm.cds_parametro.Close;
  { ---- 06 ----}
  dbeSerie.SetFocus;

  scds_serie_proc.Close;
  scds_serie_proc.Params[0].AsString := dbeSerie.Text;
  scds_serie_proc.Open;
  cdsNOTAFISCAL.AsInteger := scds_serie_procULTIMO_NUMERO.AsInteger + 1;
  scds_serie_proc.Close;

  cdsDATASISTEMA.AsDateTime := now;
  cdsDATAVENDA.AsDateTime := now;
  cdsDATAVENCIMENTO.AsDateTime := cdsDATAVENDA.AsDateTime + fTerminal_Delivery.prazoparapgto;
  cdsCODCLIENTE.AsInteger := fTerminal_Delivery.cds_MovimentoCODCLIENTE.AsInteger;
  cdsCODUSUARIO.AsInteger := fTerminal_Delivery.cds_MovimentoCODUSUARIO.AsInteger;
  cdsNOMECLIENTE.AsString := fTerminal_Delivery.cds_MovimentoNOMECLIENTE.AsString;
  cdsNOMEUSUARIO.AsString := fTerminal_Delivery.cds_MovimentoNOMEUSUARIO.AsString;
  cdsVALOR.AsFloat := fTerminal_Delivery.cds_Mov_detTotalPedido.Value;
  cdsDESCONTO.AsFloat := 0;
  cdsMULTA_JUROS.AsFloat := 0;
  cdsN_PARCELA.AsInteger := 1;
  cdsAPAGAR.AsFloat := fTerminal_Delivery.cds_Mov_detTotalPedido.Value;
  cdsENTRADA.AsFloat := 0;
end;

procedure TfTerminalFinalizar.btnSerieClick(Sender: TObject);
begin
  fProcurar_nf := TfProcurar_nf.Create(self,scds_serie_proc);
  fProcurar_nf.BtnProcurar.Click;
  try
   fProcurar_nf.EvDBFind1.DataField := 'SERIE';
   if fProcurar_nf.ShowModal=mrOk then
    begin
    if dtSrc.State=dsBrowse then
     cds.Edit;
     cdsSERIE.AsString := scds_serie_procSERIE.AsString;
     cdsNOTAFISCAL.AsInteger := scds_serie_procULTIMO_NUMERO.AsInteger+1;
    end;
   finally
    scds_serie_proc.Close;
    fProcurar_nf.Free;
   end;
    DBEdit2.SetFocus;
end;

procedure TfTerminalFinalizar.btnGravarClick(Sender: TObject);
var  strSql, strTit, tipoMov: String;
     diferenca : double;
     utilcrtitulo : Tutils;
     varCaixa : integer;
begin
  if (sCaixaAberto.Active) then
    sCaixaAberto.Close;
  sCaixaAberto.Params[0].AsString := MICRO;
  sCaixaAberto.Params[1].AsString := 'A'; //Caixa Aberto
  sCaixaAberto.Open;
  varCaixa := sCaixaAbertoIDCAIXACONTROLE.AsInteger;
  sCaixaAberto.Close;
  
  tipoMov := 'EDIT';
  if DtSrc.State in [dsInsert] then
  begin
    tipoMov := 'INSERT';
    if (cdsCODUSUARIO.asinteger = 0) then
      cdsCODUSUARIO.AsInteger := cdsCODVENDEDOR.AsInteger;

    if (cdsENTRADA.AsFloat > 0) then
    begin
      if (cbConta.Text = '') then
      begin
        MessageDlg('Informe o CAIXA.', mtError, [mbOK], 0);
        cbConta.SetFocus;
        exit;
      end;
      try
        if (StrToInt(dbedit5.Text) = 1) then
        begin
          diferenca := cdsVALOR.AsFloat - cdsDESCONTO.AsFloat;
          diferenca := diferenca - cdsENTRADA.AsFloat;
          if (diferenca > 0.01) then
          begin
            MessageDlg('O sistema considera a parcela 1 como a entrada.', mtError, [mbOK], 0);
            dbedit5.SetFocus;
            exit;
          end;
        end;
      except
        MessageDlg('Informe um número para PARCELAS.', mtError, [mbOK], 0);
        dbedit5.SetFocus;
        exit;
      end;
    end;
      if (dbeSerie.Text = '') then
      begin
        MessageDlg('Informe uma Série.', mtError, [mbOK], 0);
        dbeSerie.SetFocus;
        exit;
      end;
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENVENDA, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cdsCODVENDA.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;

    cdsCODMOVIMENTO.AsInteger := fTerminal_Delivery.cds_MovimentoCODMOVIMENTO.AsInteger;
    cdsCODORIGEM.AsInteger := varCaixa;

    strTit := IntToStr(cdsNOTAFISCAL.AsInteger) + '-' + cdsSERIE.AsString;

    strSql := 'SELECT TITULO FROM RECEBIMENTO where TITULO = ' ;
    strSql := strSql + '''' + strTit + '''';
    if sqs_tit.Active then
      sqs_tit.Close;
    sqs_tit.CommandText := strSql;
    sqs_tit.Open;
    if not sqs_tit.IsEmpty then
    begin
       strSql := 'SELECT TITULO FROM RECEBIMENTO where CODRECEBIMENTO = ' +
       ' (select MAX(CODRECEBIMENTO) from recebimento)';
       if sqs_tit.Active then
         sqs_tit.Close;
       sqs_tit.CommandText := strSql;
       sqs_tit.Open;
       MessageDlg('Número do Título repetido, último nº : ''' + sqs_tit.Fields[0].AsSTring + '''',
       mtWarning, [mbOK], 0);
       DBEdit2.SetFocus;
       exit;
    end;

  end;

  //A lançamento do cr tem que ser antes de salvar á venda
  //pois, caso o título já tenha sido baixado não é permitido alterar a venda.
  //Gerando o contas a receber
  //  gerar_cr; **************** 22/10/03
  if DtSrc.State in [dsEdit, dsInsert] then
  begin
    utilcrtitulo := Tutils.Create;
    cdsFORMARECEBIMENTO.AsString := utilcrtitulo.pegaForma(ComboBox1.Text);
    if (not dm.cds_7_contas.Active) then
       dm.cds_7_contas.Open;
    if (dm.cds_7_contas.Locate('NOME', cbConta.Text, [loCaseInsensitive])) then
      cdsCAIXA.Value := dm.cds_7_contas.Fields[0].asInteger;

    cdsVALOR.AsFloat := cdsVALOR.AsFloat +
      cdsVALOR_FRETE.AsFloat +
      cdsVALOR_SEGURO.AsFloat +
      cdsOUTRAS_DESP.AsFloat +
      cdsVALOR_IPI.AsFloat;
    cdsAPAGAR.AsFloat := cdsVALOR.AsFloat -
      cdsENTRADA.AsFloat + cdsMULTA_JUROS.AsFloat -
      cdsDESCONTO.AsFloat +
      cdsVALOR_FRETE.AsFloat +
      cdsVALOR_SEGURO.AsFloat +
      cdsOUTRAS_DESP.AsFloat +
      cdsVALOR_IPI.AsFloat;

    {Usado para bloquear alteração em RECEBIMENTO pelas triggers
     da notafiscal }
    if (cds.State in [dsInsert, dsEdit]) then
    if (cdsVALOR.AsFloat <> vrr) then
      cdsSTATUS1.AsString := 'B';

    cds.ApplyUpdates(0);
    //inherited;
  end;
  //baixando o movimento na tabela estoque
  btnIncluir.Visible:=False;
  //Gravando o numero sequencial
  if not scds_serie_proc.Active then
  begin
     scds_serie_proc.Params[0].AsString:=dbeSerie.Text;
     scds_serie_proc.Open;
  end;
  if (cdsNOTAFISCAL.AsInteger > scds_serie_procULTIMO_NUMERO.AsInteger) then
  begin
    scds_serie_proc.Edit;
    scds_serie_procULTIMO_NUMERO.AsInteger := cdsNOTAFISCAL.AsInteger;
    scds_serie_proc.ApplyUpdates(0);
  end;
  scds_serie_proc.Close;

  scdsCr_proc.Close;
  scdsCr_proc.Params[0].AsInteger := cdsCODVENDA.AsInteger;
  scdsCr_proc.Open;
 { codrec := scdsCr_procCODRECEBIMENTO.AsInteger;
  Cod_orig := cdsCODVENDA.AsInteger;
  tipo_origem := 'VENDA';
  cod_cli_forn := cdsCODCLIENTE.AsInteger;
  c_f := 'C'; // C=Cliente
  }
  if DtSrc.State in [dsInsert, dsEdit] then
     btnGravar.Click;

end;

procedure TfTerminalFinalizar.cdsNewRecord(DataSet: TDataSet);
begin
    cdsCODMOVIMENTO.AsInteger := fTerminal_Delivery.cds_MovimentoCODMOVIMENTO.AsInteger;
    cdsCODVENDEDOR.AsInteger := fTerminal_Delivery.cds_MovimentoCODVENDEDOR.AsInteger;
    cdsCODCCUSTO.AsInteger := fTerminal_Delivery.cds_MovimentoCODALMOXARIFADO.AsInteger;
    cdsCODUSUARIO.AsInteger := usulog;
 {  cdsDESCONTO.AsFloat := 0;
    cdsMULTA_JUROS.AsFloat := 0;
    cdsENTRADA.AsFloat := 0;
    cdsVALOR_PAGAR.AsFloat := 0;
    cdsAPAGAR.AsFloat := 0;
    cdsN_PARCELA.AsInteger := StrToInt(FloatToStr(nparc));
  } cdsBANCO.AsInteger := 0;
//    cdsDATAVENCIMENTO.AsDateTime := cdsDATAVENDA.AsDateTime + prazo;
    cdsSTATUS.AsInteger:=0;

    if (sqs_tit.Active) then
      sqs_tit.Close;

    sqs_tit.CommandText := 'SELECT SUM((QUANTIDADE * PRECO) - ((QTDE_ALT/100)*(QUANTIDADE * PRECO))) FROM MOVIMENTODETALHE' +
                           ' WHERE CODMOVIMENTO = ' +
                           IntToStr(fTerminal_Delivery.cds_MovimentoCODMOVIMENTO.asInteger);

    sqs_tit.Open;
    cdsVALOR.AsCurrency := FloatToCurr(sqs_tit.Fields[0].AsFloat);
    cdsVALOR_PAGAR.AsCurrency := FloatToCurr(sqs_tit.Fields[0].AsFloat);
    vrr := FloatToCurr(sqs_tit.Fields[0].AsFloat);
    sqs_tit.Close;
end;

procedure TfTerminalFinalizar.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TfTerminalFinalizar.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfTerminalFinalizar.dbeSerieExit(Sender: TObject);
begin
  if DtSrc.State in [dsInsert,dsEdit] then
  begin
    if dbeSerie.Text='' then
      exit;
    if dbeSerie.Field.OldValue<>dbeSerie.Field.NewValue then
    begin
      if scds_serie_proc.Active then
        scds_serie_proc.Close;
      scds_serie_proc.Params[0].AsString:=dbeSerie.Text;
      scds_serie_proc.Open;
      if scds_serie_proc.IsEmpty then
      begin
        MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
        [mbOk], 0);
        btnSerie.Click;
        exit;
      end;
      cdsSERIE.AsString := scds_serie_procSERIE.AsString;
      cdsNOTAFISCAL.AsInteger := scds_serie_procULTIMO_NUMERO.AsInteger + 1;
    end;
  end;
end;

procedure TfTerminalFinalizar.BitBtn2Click(Sender: TObject);
begin
  fCrAltera := TfCrAltera.Create(Application);
  try
    fCrAltera.ntitulo := scdsCr_procTITULO.AsString;
    fCrAltera.codcliente := scdsCr_procCODCLIENTE.AsInteger;
    fCrAltera.demissao := scdsCr_procEMISSAO.AsDateTime;


    if (fCrAltera.cds.Active) then
      fCrAltera.cds.Close;
    fCrAltera.cds.Params[0].AsString := scdsCr_procTITULO.AsString;
    fCrAltera.cds.Params[1].AsInteger := scdsCr_procCODCLIENTE.AsInteger;
    fCrAltera.cds.Params[2].AsDateTime := scdsCr_procEMISSAO.AsDateTime;
    fCrAltera.cds.Open;

    if (fCrAltera.cds1.Active) then
      fCrAltera.cds1.Close;
    fCrAltera.cds1.Params[0].AsString := scdsCr_procTITULO.AsString;
    fCrAltera.cds1.Params[1].AsInteger := scdsCr_procCODCLIENTE.AsInteger;
    fCrAltera.cds1.Params[2].AsDateTime := scdsCr_procEMISSAO.AsDateTime;
    fCrAltera.cds1.Open;

    fCrAltera.Label1.Caption := scdsCr_procTITULO.AsString;
    fCrAltera.Label2.Caption := scdsCr_procTITULO.AsString;    
    fCrAltera.ShowModal;
    scdsCr_proc.Close;
    scdsCr_proc.Open;
  finally
    fCrAltera.Free;
  end;
end;

procedure TfTerminalFinalizar.BitBtn3Click(Sender: TObject);
begin
  if (fTerminal_Delivery.cds_MovimentoCODNATUREZA.AsInteger = 14) then //Cancelado
  begin
    if  MessageDlg('NF CANCELADA, confirma mudança do Status : ''' + scdscr_procTITULO.AsSTring + '''',
      mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
    Try
      if (scdsCr_proc.State in [dsBrowse, dsInactive]) then
        scdsCr_proc.Edit;
      scdsCr_procSTATUS.AsString := '5-';
      scdsCr_proc.ApplyUpdates(0);
      // NF ou Venda Cancelada
      if (cds.State in [dsBrowse]) then
         cds.Edit;
      cdsSTATUS.AsInteger := 0;
      cds.ApplyUpdates(0);
      if (fTerminal_Delivery.cds_Movimento.State in [dsBrowse]) then
         fTerminal_Delivery.cds_Movimento.edit;
      fTerminal_Delivery.cds_MovimentoCODNATUREZA.AsInteger := 3; //Venda
      fTerminal_Delivery.cds_Movimento.ApplyUpdates(0);
      MessageDlg('Status alterado com sucesso.', mtInformation, [mbOK], 0);
      scdsCr_proc.Refresh;
    Except
      MessageDlg('Não foi possível alterar STATUS.', mtError, [mbOK], 0);
    end;
  end
  else
  begin
    if  MessageDlg('Confirma o cancelamento da baixa do Título : ''' + scdscr_procTITULO.AsSTring + '''',
      mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
    Try
      if (scdsCr_proc.State in [dsBrowse, dsInactive]) then
        scdsCr_proc.Edit;
      scdsCr_procSTATUS.AsString := '5-';
      scdsCr_proc.ApplyUpdates(0);
      MessageDlg('Baixa cancelada com sucesso.', mtInformation, [mbOK], 0);
      scdsCr_proc.Refresh;
    Except
      MessageDlg('Não foi possível cancelar a baixa.', mtError, [mbOK], 0);
    end;
  end;
end;

end.
