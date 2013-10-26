unit uCompraFinalizar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  FMTBcd, DBClient, Provider, SqlExpr, Grids, DBGrids, Mask, DBCtrls,
  rpcompobase, rpvclreport, UCHist_Base, UCHistDataset, JvBaseEdits,
  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvExStdCtrls, JvCombobox, JvDBSearchComboBox,fClassCitrus, uUtils ,Printers,
  DBxPress, DBLocal, DBLocalS;

type
  TfCompraFinalizar = class(TfPai)
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    dbeUsuario: TDBEdit;
    DBEdit14: TDBEdit;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    dbeSerie: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    cbConta: TComboBox;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox4: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DataSource1: TDataSource;
    SQLDataSet1: TSQLDataSet;
    SQLDataSet1CODPAGAMENTO: TIntegerField;
    SQLDataSet1TITULO: TStringField;
    SQLDataSet1EMISSAO: TDateField;
    SQLDataSet1CODFORNECEDOR: TIntegerField;
    SQLDataSet1DATAVENCIMENTO: TDateField;
    SQLDataSet1DATAPAGAMENTO: TDateField;
    SQLDataSet1CAIXA: TSmallintField;
    SQLDataSet1CONTADEBITO: TIntegerField;
    SQLDataSet1CONTACREDITO: TIntegerField;
    SQLDataSet1STATUS: TStringField;
    SQLDataSet1VIA: TStringField;
    SQLDataSet1FORMAPAGAMENTO: TStringField;
    SQLDataSet1DATABAIXA: TDateField;
    SQLDataSet1HISTORICO: TStringField;
    SQLDataSet1CODCOMPRA: TIntegerField;
    SQLDataSet1CODALMOXARIFADO: TSmallintField;
    SQLDataSet1CODCOMPRADOR: TSmallintField;
    SQLDataSet1CODUSUARIO: TSmallintField;
    SQLDataSet1N_DOCUMENTO: TStringField;
    SQLDataSet1DATASISTEMA: TSQLTimeStampField;
    SQLDataSet1VALORRECEBIDO: TFloatField;
    SQLDataSet1JUROS: TFloatField;
    SQLDataSet1DESCONTO: TFloatField;
    SQLDataSet1PERDA: TFloatField;
    SQLDataSet1TROCA: TFloatField;
    SQLDataSet1FUNRURAL: TFloatField;
    SQLDataSet1VALOR_PRIM_VIA: TFloatField;
    SQLDataSet1VALOR_RESTO: TFloatField;
    SQLDataSet1VALORTITULO: TFloatField;
    SQLDataSet1OUTRO_CREDITO: TFloatField;
    SQLDataSet1OUTRO_DEBITO: TFloatField;
    SQLDataSet1NOMEFORNECEDOR: TStringField;
    SQLDataSet1VALORPAG: TFloatField;
    DataSetProvider1: TDataSetProvider;
    scdsCr_proc: TClientDataSet;
    scdsCr_procCODPAGAMENTO: TIntegerField;
    scdsCr_procTITULO: TStringField;
    scdsCr_procEMISSAO: TDateField;
    scdsCr_procCODFORNECEDOR: TIntegerField;
    scdsCr_procDATAVENCIMENTO: TDateField;
    scdsCr_procDATAPAGAMENTO: TDateField;
    scdsCr_procCAIXA: TSmallintField;
    scdsCr_procCONTADEBITO: TIntegerField;
    scdsCr_procCONTACREDITO: TIntegerField;
    scdsCr_procSTATUS: TStringField;
    scdsCr_procVIA: TStringField;
    scdsCr_procFORMAPAGAMENTO: TStringField;
    scdsCr_procDATABAIXA: TDateField;
    scdsCr_procHISTORICO: TStringField;
    scdsCr_procCODCOMPRA: TIntegerField;
    scdsCr_procCODALMOXARIFADO: TSmallintField;
    scdsCr_procCODCOMPRADOR: TSmallintField;
    scdsCr_procCODUSUARIO: TSmallintField;
    scdsCr_procN_DOCUMENTO: TStringField;
    scdsCr_procDATASISTEMA: TSQLTimeStampField;
    scdsCr_procVALORRECEBIDO: TFloatField;
    scdsCr_procJUROS: TFloatField;
    scdsCr_procDESCONTO: TFloatField;
    scdsCr_procPERDA: TFloatField;
    scdsCr_procTROCA: TFloatField;
    scdsCr_procFUNRURAL: TFloatField;
    scdsCr_procVALOR_PRIM_VIA: TFloatField;
    scdsCr_procVALOR_RESTO: TFloatField;
    scdsCr_procVALORTITULO: TFloatField;
    scdsCr_procOUTRO_CREDITO: TFloatField;
    scdsCr_procOUTRO_DEBITO: TFloatField;
    scdsCr_procNOMEFORNECEDOR: TStringField;
    scdsCr_procVALORPAG: TFloatField;
    scdsCr_procTRecebido: TAggregateField;
    scdsCr_procTotal_resto: TAggregateField;
    scdsCr_procTotalTitulo: TAggregateField;
    ds_Cr: TDataSource;
    sqs_tit: TSQLDataSet;
    sds_compra: TSQLDataSet;
    sds_compraCODCOMPRA: TIntegerField;
    sds_compraCODMOVIMENTO: TIntegerField;
    sds_compraCODFORNECEDOR: TIntegerField;
    sds_compraDATACOMPRA: TDateField;
    sds_compraDATAVENCIMENTO: TDateField;
    sds_compraNUMEROBORDERO: TIntegerField;
    sds_compraBANCO: TSmallintField;
    sds_compraCODCOMPRADOR: TSmallintField;
    sds_compraSTATUS: TSmallintField;
    sds_compraCODUSUARIO: TSmallintField;
    sds_compraDATASISTEMA: TDateField;
    sds_compraVALOR: TFloatField;
    sds_compraNOTAFISCAL: TIntegerField;
    sds_compraSERIE: TStringField;
    sds_compraDESCONTO: TFloatField;
    sds_compraCODCCUSTO: TSmallintField;
    sds_compraN_PARCELA: TSmallintField;
    sds_compraOPERACAO: TStringField;
    sds_compraFORMAPAGAMENTO: TStringField;
    sds_compraN_DOCUMENTO: TStringField;
    sds_compraCAIXA: TSmallintField;
    sds_compraMULTA_JUROS: TFloatField;
    sds_compraAPAGAR: TFloatField;
    sds_compraVALOR_PAGAR: TFloatField;
    sds_compraENTRADA: TFloatField;
    sds_compraN_BOLETO: TStringField;
    sds_compraSTATUS1: TStringField;
    sds_compraNOMEFORNECEDOR: TStringField;
    sds_compraNOMEUSUARIO: TStringField;
    sds_compraBANCO_1: TStringField;
    sds_compraVALOR_ICMS: TFloatField;
    sds_compraVALOR_FRETE: TFloatField;
    sds_compraVALOR_SEGURO: TFloatField;
    sds_compraOUTRAS_DESP: TFloatField;
    sds_compraVALOR_IPI: TFloatField;
    sds_compraCFOP: TStringField;
    dsp_compra: TDataSetProvider;
    cds_compra: TClientDataSet;
    cds_compraCODCOMPRA: TIntegerField;
    cds_compraCODMOVIMENTO: TIntegerField;
    cds_compraCODFORNECEDOR: TIntegerField;
    cds_compraDATACOMPRA: TDateField;
    cds_compraDATAVENCIMENTO: TDateField;
    cds_compraNUMEROBORDERO: TIntegerField;
    cds_compraBANCO: TSmallintField;
    cds_compraCODCOMPRADOR: TSmallintField;
    cds_compraSTATUS: TSmallintField;
    cds_compraCODUSUARIO: TSmallintField;
    cds_compraDATASISTEMA: TDateField;
    cds_compraVALOR: TFloatField;
    cds_compraNOTAFISCAL: TIntegerField;
    cds_compraSERIE: TStringField;
    cds_compraDESCONTO: TFloatField;
    cds_compraCODCCUSTO: TSmallintField;
    cds_compraN_PARCELA: TSmallintField;
    cds_compraOPERACAO: TStringField;
    cds_compraFORMAPAGAMENTO: TStringField;
    cds_compraN_DOCUMENTO: TStringField;
    cds_compraCAIXA: TSmallintField;
    cds_compraMULTA_JUROS: TFloatField;
    cds_compraAPAGAR: TFloatField;
    cds_compraVALOR_PAGAR: TFloatField;
    cds_compraENTRADA: TFloatField;
    cds_compraN_BOLETO: TStringField;
    cds_compraSTATUS1: TStringField;
    cds_compraNOMEFORNECEDOR: TStringField;
    cds_compraNOMEUSUARIO: TStringField;
    cds_compraBANCO_1: TStringField;
    cds_compraVALOR_ICMS: TFloatField;
    cds_compraVALOR_FRETE: TFloatField;
    cds_compraVALOR_SEGURO: TFloatField;
    cds_compraOUTRAS_DESP: TFloatField;
    cds_compraVALOR_IPI: TFloatField;
    cds_compraCFOP: TStringField;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit13: TDBEdit;
    Label6: TLabel;
    DBEdit15: TDBEdit;
    Label20: TLabel;
    DBEdit16: TDBEdit;
    Label21: TLabel;
    DBEdit17: TDBEdit;
    Label22: TLabel;
    Label23: TLabel;
    Edit1: TEdit;
    BtnCheque: TBitBtn;
    cds_compradiferenca: TFloatField;
    Label24: TLabel;
    ComboBox1: TComboBox;
    DBEdit12: TDBEdit;
    Label25: TLabel;
    btnImprimir: TBitBtn;
    VCLReport1: TVCLReport;
    btnNotaFiscal: TBitBtn;
    UCHist_DataSetComprasFinalizar: TUCHist_DataSet;
    UCControlHistoricoComprasFinalizar: TUCControlHistorico;
    Panel4: TPanel;
    GroupBox5: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    Label30: TLabel;
    Label36: TLabel;
    edCodigoColhedor: TEdit;
    cbNomeColhedor: TJvDBSearchComboBox;
    dtPagColhedor: TJvDatePickerEdit;
    edVlrColhedor: TJvCalcEdit;
    JvCalcEdit1: TJvCalcEdit;
    edPrecoColhedor: TJvCalcEdit;
    CheckBox1: TCheckBox;
    GroupBox6: TGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    edCodFretista: TEdit;
    cbNomeFretista: TJvDBSearchComboBox;
    dtDataPagFrete: TJvDatePickerEdit;
    edVlrFrete: TJvCalcEdit;
    JvCalcEdit2: TJvCalcEdit;
    JvCalcEdit3: TJvCalcEdit;
    DBGrid2: TDBGrid;
    Label26: TLabel;
    cbDespesaFrete: TComboBox;
    s_7: TSQLDataSet;
    s_7CODIGO: TIntegerField;
    s_7CONTA: TStringField;
    s_7NOME: TStringField;
    s_7RATEIO: TStringField;
    s_7CODREDUZIDO: TStringField;
    d_7: TDataSetProvider;
    cds_7_contas: TClientDataSet;
    cds_7_contasCODIGO: TIntegerField;
    cds_7_contasCONTA: TStringField;
    cds_7_contasNOME: TStringField;
    cds_7_contasRATEIO: TStringField;
    cds_7_contasCODREDUZIDO: TStringField;
    SpeedButton2: TBitBtn;
    SpeedButton3: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    btnUsuarioProcura: TBitBtn;
    sds_compraPRAZO: TStringField;
    cds_compraPRAZO: TStringField;
    cbPrazo: TJvComboBox;
    dbDtaVencimento: TDBEdit;
    CheckBox2: TCheckBox;
    sqlBuscaNota: TSQLQuery;
    OpenDialog1: TOpenDialog;
    btnSerie: TBitBtn;
    scds_serie_proc: TSQLClientDataSet;
    scds_serie_procCODSERIE: TStringField;
    scds_serie_procSERIE: TStringField;
    scds_serie_procULTIMO_NUMERO: TIntegerField;
    scds_serie_procNOTAFISCAL: TSmallintField;
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
    DBEdit4: TDBEdit;
    Label39: TLabel;
    Button1: TButton;
    sds_compraCHAVENF: TStringField;
    cds_compraCHAVENF: TStringField;
    sds_compraICMS_ST: TFloatField;
    sds_compraICMS_BASE_ST: TFloatField;
    sds_compraINDPAG: TIntegerField;
    cds_compraICMS_ST: TFloatField;
    cds_compraICMS_BASE_ST: TFloatField;
    cds_compraINDPAG: TIntegerField;
    Label40: TLabel;
    DBEdit18: TDBEdit;
    sds_compraDIGITOVALIDACAO: TStringField;
    cds_compraDIGITOVALIDACAO: TStringField;
    DBEdit19: TDBEdit;
    Label41: TLabel;
    sds_compraMODELO: TStringField;
    cds_compraMODELO: TStringField;
    scds_serie_procMODELO: TStringField;
    procedure btnIncluirClick(Sender: TObject);
    procedure dbeUsuarioExit(Sender: TObject);
    procedure btnUsuarioProcuraClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure scdsCr_procSTATUSGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure BtnChequeClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DtSrcStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cds_compraBeforePost(DataSet: TDataSet);
    procedure cds_compraCalcFields(DataSet: TDataSet);
    procedure cds_compraNewRecord(DataSet: TDataSet);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnNotaFiscalClick(Sender: TObject);
    procedure cbNomeColhedorChange(Sender: TObject);
    procedure cbNomeFretistaChange(Sender: TObject);
    procedure edCodigoColhedorKeyPress(Sender: TObject; var Key: Char);
    procedure edCodFretistaKeyPress(Sender: TObject; var Key: Char);
    procedure dtPagColhedorChange(Sender: TObject);
    procedure dtDataPagFreteChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure JvCalcEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure edPrecoColhedorKeyPress(Sender: TObject; var Key: Char);
    procedure cbPrazoChange(Sender: TObject);
    procedure cds_compraReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure CheckBox2Click(Sender: TObject);
    procedure btnSerieClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ValidaNFe();
  private
    TD: TTransactionDesc;
    procedure notafiscal ;
    procedure imprimecompra;
    function RemoveAcento(Str: string): string;
    procedure excluinf;
    { Private declarations }
  public
    grava: TCompras;
    contaDespesa: string;
    contaDespesaFrete, contaFrete , tipoimpressao ,portaimpr: string;
    n_parcelas : double;
    { Public declarations }
  end;

var
  fCompraFinalizar: TfCompraFinalizar;

implementation

uses uComercial, UDm, uProcurar, uCheques_bol, uCompra, ufCpAltera,
  uNotafiscal, uITENS_NF, uDmCitrus, sCtrlResize, uNotafc, UDMNF,
  uAtsAdmin, uEstoque, uNFeletronica, pcnProcNFe;

{$R *.dfm}

procedure TfCompraFinalizar.btnIncluirClick(Sender: TObject);
begin
  inherited;
  dbeUsuario.SetFocus;
end;

procedure TfCompraFinalizar.dbeUsuarioExit(Sender: TObject);
begin
  inherited;
  if (dbeUsuario.Text = '') then exit;
  if dtsrc.State = dsInsert then
  begin
    if dm.scds_usuario_proc.Active then
    dm.scds_usuario_proc.Close;
    dm.scds_usuario_proc.Params[0].Clear;
    dm.scds_usuario_proc.Params[1].AsInteger:=StrToInt(dbeUsuario.Text);
    dm.scds_usuario_proc.Params.ParamByName('pPerfil').AsString := 'COMPRADOR';
    dm.scds_usuario_proc.Params.ParamByName('pPerfil1').AsString := 'AMBOS';
    dm.scds_usuario_proc.Open;
    if dm.scds_usuario_proc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      btnUsuarioProcura.Click;
      exit;
    end;
    cds_compraCODCOMPRADOR.AsInteger:=dm.scds_usuario_procCODUSUARIO.AsInteger;
    cds_compraCODUSUARIO.AsInteger:=dm.scds_usuario_procCODUSUARIO.AsInteger;
    cds_compraNOMEUSUARIO.AsString:=dm.scds_usuario_procNOMEUSUARIO.AsString;
    dm.scds_usuario_proc.Close;
  end
  else
  if dbeUsuario.Field.OldValue<>dbeUsuario.Field.NewValue then
  begin
    if dm.scds_usuario_proc.Active then
    dm.scds_usuario_proc.Close;
    dm.scds_usuario_proc.Params[0].Clear;
    dm.scds_usuario_proc.Params[1].AsInteger:=StrToInt(dbeUsuario.Text);
    dm.scds_usuario_proc.Open;
    if dm.scds_usuario_proc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      btnUsuarioProcura.Click;
      exit;
    end;
    cds_compraCODCOMPRADOR.AsInteger:=dm.scds_usuario_procCODUSUARIO.AsInteger;
    cds_compraCODUSUARIO.AsInteger:=dm.scds_usuario_procCODUSUARIO.AsInteger;
    cds_compraNOMEUSUARIO.AsString:=dm.scds_usuario_procNOMEUSUARIO.AsString;
    dm.scds_usuario_proc.Close;
  end;

end;

procedure TfCompraFinalizar.btnUsuarioProcuraClick(Sender: TObject);
begin
  inherited;
  fProcurar:= TfProcurar.Create(self,dm.scds_usuario_proc);
  dm.scds_usuario_proc.Params[0].Clear;
  dm.scds_usuario_proc.Params[1].AsInteger := StrToInt(dbeUsuario.Text);
  dm.scds_usuario_proc.Params.ParamByName('pPerfil').AsString := 'COMPRADOR';
  dm.scds_usuario_proc.Params.ParamByName('pPerfil1').AsString := 'AMBOS';
  fProcurar.usuarioproc := 'COMPRADOR';
  fProcurar.BtnProcurar.Click;
  try
   fProcurar.EvDBFind1.DataField := 'NOMEUSUARIO';
   if fProcurar.ShowModal=mrOk then
    begin
    if dtSrc.State=dsBrowse then
     cds_compra.Edit;
     cds_compraCODCOMPRADOR.AsInteger := dm.scds_usuario_ProcCODusuario.AsInteger;
     cds_compraCODUSUARIO.AsInteger:=dm.scds_usuario_procCODUSUARIO.AsInteger;
     cds_compraNOMEUSUARIO.AsString :=  dm.scds_usuario_procNOMEUSUARIO.AsString;
    end;
   finally
    dm.scds_usuario_proc.Close;
    fProcurar.Free;
   end;
end;

procedure TfCompraFinalizar.btnGravarClick(Sender: TObject);
var cod_id : integer;
  utilcrtitulo : Tutils;
  strSql, tipoMov: String;
  TD: TTransactionDesc;
  FEstoque: TEstoque;
begin
  if (dm.cCustoFechado(cds_compraCODCCUSTO.AsInteger, cds_compraDATACOMPRA.AsDateTime)) then
  begin
    MessageDlg('Centro de Resultado já finalizado.', mtWarning, [mbOK], 0);
    Exit;
  end;
  if (cbPrazo.Visible = true) then
  begin
    if (not dm.cdsPrazo.Locate('PARAMETRO', cbPrazo.Text, [loCaseinsensitive])) then
    begin
      MessageDlg('Escolha o prazo de pagamento.', mtError, [mbOK], 0);
      cbPrazo.SetFocus;
      exit;
    end;
    cds_compraPRAZO.AsString := cbPrazo.Text;
  end;
  if (DtSrc.State in [dsEdit]) then // Busco o valor novamente , pois estava acumulando
  begin
    // qdo o usuario alterava um ipi por exemplo.
    if dm.scds_Mov_Det_proc.Active then
      dm.scds_Mov_Det_proc.Close;
    dm.scds_Mov_Det_proc.Params[0].AsInteger := fCompra.cds_MovimentoCODMOVIMENTO.AsInteger;
    dm.scds_Mov_Det_proc.Open;
    cds_compraVALOR.Value := dm.scds_Mov_Det_procTotalPedido.Value;
    if (sqs_tit.Active) then
      sqs_tit.Close;
    sqs_tit.CommandText := 'SELECT SUM((QTDE_ALT/100) * VALTOTAL), sum(VIPI) FROM MOVIMENTODETALHE' +
     ' WHERE CODMOVIMENTO = ' + IntToStr(fCompra.cds_MovimentoCODMOVIMENTO.asInteger);
    sqs_tit.Open;
    //cds_compraVALOR_IPI.AsCurrency := FloatToCurr(sqs_tit.Fields[1].AsFloat);
    sqs_tit.Close;
  end;
  tipoMov := 'EDIT';
  cod_id := cds_compraCODCOMPRA.AsInteger;
  if DtSrc.State in [dsInsert] then
  begin
    tipoMov := 'INSERT';
    If (cds_compraENTRADA.AsFloat > 0) then
    begin
      if (cbConta.Text = '') then
      begin
        MessageDlg('Informe o CAIXA.', mtError, [mbOK], 0);
        cbConta.SetFocus;
        exit;
      end;
      if (ComboBox1.Text = '') then
      begin
        MessageDlg('Informe a forma de Pagamento.', mtError, [mbOK], 0);
        ComboBox1.SetFocus;
        exit;
      end else
      begin
        utilcrtitulo := Tutils.Create;
        cds_compraFORMAPAGAMENTO.AsString := utilcrtitulo.pegaForma(ComboBox1.Text);
      end;
    end;
    //Abre a c_genid para pegar o número do CODCOMPRA
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_COD_COMPRA, 1) as INTEGER) as CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cod_id := dm.c_6_genid.Fields[0].AsInteger;
    cds_compraCODCOMPRA.AsInteger := dm.c_6_genid.fields[0].AsInteger;
    dm.c_6_genid.Close;

    if (cds_compraNOTAFISCAL.IsNull) then
     cds_compraNOTAFISCAL.AsInteger := StrToInt(formatdatetime('yyyy',cds_compraDATACOMPRA.AsDateTime) +
      (IntToStr(cds_compraCODCOMPRA.AsInteger)));
  end;
  if DtSrc.State in [dsInsert, dsEdit] then
  begin
    // Inserindo FRETE + SEGURO + OUTROS + IPI + ST
    cds_compraVALOR.AsFloat := cds_compraVALOR.AsFloat + cds_compraVALOR_FRETE.AsFloat + cds_compraVALOR_SEGURO.AsFloat +
      cds_compraOUTRAS_DESP.AsFloat + cds_compraVALOR_IPI.AsFloat + cds_compraICMS_ST.AsFloat;
    cds_compraAPAGAR.AsFloat := cds_compraVALOR.AsFloat - cds_compraENTRADA.AsFloat + cds_compraMULTA_JUROS.AsFloat -
      cds_compraDESCONTO.AsFloat;
    if (   cds_compraAPAGAR.AsFloat = 0) then
      cds_compraINDPAG.AsInteger := 0
    else
      cds_compraINDPAG.AsInteger := 1;

      if (dm.cds_7_contas.Locate('NOME', cbConta.Text, [loCaseInsensitive])) then
        cds_compraCAIXA.AsInteger := dm.cds_7_contas.Fields[0].asInteger;

      if (ComboBox1.Text <> '') then
      begin
        utilcrtitulo := Tutils.Create;
        cds_compraFORMAPAGAMENTO.AsString := utilcrtitulo.pegaForma(ComboBox1.Text);
      end;
  end;

  if (fCompra.cds_MovimentoCODNATUREZA.AsInteger = 9) then // E devolucao de Compra
  begin
    strSql := 'update PAGAMENTO p set p.STATUS = ' + QuotedStr('6-') +
      ' , p.USERID = ' + QuotedStr(IntToStr(dm.varUserId)) +
      ' WHERE p.CODFORNECEDOR = ';
    strSql := strSql + IntToStr(cds_compraCODFORNECEDOR.AsInteger);
    strSql := strSql + ' AND TITULO = ' + QuotedStr(IntToStr(cds_compraNOTAFISCAL.AsInteger));
    strSql := strSql + ' AND STATUS = ' + QuotedStr('5-');
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(strSql);
    Try
       dm.sqlsisAdimin.Commit(TD);
    except
       dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
       MessageDlg('Erro efetuando update na tabela PAGAMENTO.', mtError,
           [mbOk], 0);
    end;
    //Grava Estoque Devolução Compra
  end;

  //Grava Estoque
  {try
    dm.sqlsisAdimin.StartTransaction(TD);
    inherited;
    // Gravando o Estoque
    Try
      FEstoque := TEstoque.Create;
      if (fCompra.cds_MovimentoCODNATUREZA.AsInteger = 4) then
        FEstoque.baixaEstoque(cds_compraCODMOVIMENTO.AsInteger, cds_compraDATACOMPRA.AsDateTime, 'COMPRA')
      else
        FEstoque.baixaEstoque(cds_compraCODMOVIMENTO.AsInteger, cds_compraDATACOMPRA.AsDateTime, 'DEV.COMPRA');
    Finally
      FEstoque.Free;
    end;
    dm.sqlsisAdimin.Commit(TD);
  Except
    on E : Exception do
    begin
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      dm.sqlsisAdimin.Rollback(TD);
      Exit;
    end;
  end;}

  if (fCompra.cds_MovimentoCODNATUREZA.AsInteger = 4) then // Alterando o Status para Finalizado
  begin
    strSql := 'UPDATE MOVIMENTO set STATUS = 4 ' +
      ' WHERE CODMOVIMENTO = ' + IntToStr(cds_compraCODMOVIMENTO.AsInteger);
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(strSql);
    Try
       cds_Compra.ApplyUpdates(0);
       dm.sqlsisAdimin.Commit(TD);
    except
       dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
       MessageDlg('Status do pedido não alterado.', mtError, [mbOk], 0);
    end;
  end;

  if (dm.moduloUsado = 'CITRUS') then
  begin
    if (cds_7_contas.Locate('NOME', cbDespesaFrete.Text, [loCaseInsensitive])) then
      contaDespesaFrete := IntToStr(cds_7_contas.Fields[0].asInteger);

    if (tipoMov = 'EDIT') then  // Se e insercao nao preciso ver se ja existe
    begin
      // Ver se ja existe o Lancamento
      strSql := 'SELECT TITULO FROM PAGAMENTO where TITULO = ' ;
      strSql := strSql + QuotedStr(IntToStr(fCompra.cds_MovimentoCODMOVIMENTO.AsInteger) + '-C');
      strSql := strSql + ' OR TITULO = ' + QuotedStr(IntToStr(fCompra.cds_MovimentoCODMOVIMENTO.AsInteger) + '-F');
      if sqs_tit.Active then
        sqs_tit.Close;
      sqs_tit.CommandText := strSql;
      sqs_tit.Open;
      if (sqs_tit.IsEmpty) then
        tipoMov := 'INSERT'
      else
        tipoMov := 'EDIT';
    end;
    grava := TCompras.Create;
    grava.CentroResultado := fCompra.cds_MovimentoCODALMOXARIFADO.AsInteger;
    grava.CFO := fCompra.cds_Mov_detLOTE.AsString;
    //-----------------
    if (edCodigoColhedor.Text <> '') then
    begin
      grava.DataVenda := fCompra.cds_MovimentoDATAMOVIMENTO.AsDateTime;
      grava.CodMovimento := IntToStr(fCompra.cds_MovimentoCODMOVIMENTO.AsInteger);
      grava.CodColhedor := edCodigoColhedor.Text;
      grava.ContaDespesa := contaDespesa;
      grava.DataPagColhedor := dtPagColhedor.Date;
      grava.VlrColhedor := edVlrColhedor.Value;
      grava.QtdeVenda := jvCalcEdit1.Value;
      grava.CodProdutor := IntToStr(fCompra.cds_MovimentoCODFORNECEDOR.AsInteger);
      if (tipoMov = 'INSERT') then
        grava.InsereDespesa;
      if (tipoMov = 'EDIT') then
        grava.AlteraDespesa;
    end;
    if (edCodFretista.Text <> '') then
    begin
      grava.DataVenda := fCompra.cds_MovimentoDATAMOVIMENTO.AsDateTime;
      grava.CodMovimento := IntToStr(fCompra.cds_MovimentoCODMOVIMENTO.AsInteger);
      grava.CodColhedor := edCodigoColhedor.Text;
      grava.CodFretista := edCodFretista.Text;
      grava.VlrFrete := edVlrFrete.Value;
      grava.DataPagFrete := dtDataPagFrete.Date;
      grava.ContaDespesaFrete := contaDespesaFrete;
      grava.QtdeVenda := jvCalcEdit1.Value;
      if (dm.usuario.Active) then
        dm.usuario.Close;
      dm.usuario.Params[0].AsString := usuario;
      dm.usuario.Open;

      if (tipoMov = 'INSERT') then
        grava.InsereDespesaFrete;
      if (tipoMov = 'EDIT') then
        grava.AlteraDespesaFrete;
    end;
    grava.Destroy;
  end;

  scdsCr_proc.Close;
  scdsCr_proc.Params[0].AsInteger := cod_id;
  scdsCr_proc.Open;

  // Gravando sequencial
  if (dbeSerie.Text <> '') then
  begin
    if not scds_serie_proc.Active then
    begin
       scds_serie_proc.Params[0].AsString := dbeSerie.Text;
       scds_serie_proc.Open;
    end;
    if (cds_compraNOTAFISCAL.AsInteger > scds_serie_procULTIMO_NUMERO.AsInteger) then
    begin
      scds_serie_proc.Edit;
      scds_serie_procULTIMO_NUMERO.AsInteger := cds_compraNOTAFISCAL.AsInteger;
      scds_serie_proc.ApplyUpdates(0);
    end;
    scds_serie_proc.Close;
  end;
  scdsCr_proc.Close;
  scdsCr_proc.Params[0].AsInteger := cds_compraCODCOMPRA.AsInteger;
  scdsCr_proc.Open;
  
end;

procedure TfCompraFinalizar.DBEdit8Exit(Sender: TObject);
begin
  inherited;
  if cds_compraMULTA_JUROS.AsFloat > 0 then
  begin
    cds_compraAPAGAR.AsFloat := cds_compraVALOR.AsFloat -
    cds_compraENTRADA.AsFloat + cds_compraMULTA_JUROS.AsFloat;
  end;
end;

procedure TfCompraFinalizar.DBEdit9Exit(Sender: TObject);
begin
  inherited;
  if cds_compraDESCONTO.AsFloat > 0 then
  begin
    cds_compraAPAGAR.AsFloat := cds_compraVALOR.AsFloat -
    cds_compraENTRADA.AsFloat + cds_compraMULTA_JUROS.AsFloat -
    cds_compraDESCONTO.AsFloat;
    cds_compraVALOR_PAGAR.AsFloat := cds_compraVALOR.AsFloat -
    cds_compraENTRADA.AsFloat + cds_compraMULTA_JUROS.AsFloat -
    cds_compraDESCONTO.AsFloat;
  end;

end;

procedure TfCompraFinalizar.DBEdit11Exit(Sender: TObject);
begin
  inherited;
  if cds_compraVALOR_PAGAR.AsFloat > 0 then
  begin
    Edit1.Text := format('%8.2m',[cds_compraENTRADA.AsFloat - cds_compraVALOR_PAGAR.AsFloat]);
  end;
end;

procedure TfCompraFinalizar.scdsCr_procSTATUSGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = '5-' then
    begin
     Text:='PENDENTE';
     exit;
    end;
  if Sender.AsString = '7-' then
    begin
     Text:='PAGO';
     exit;
    end;
  if Sender.AsString = '8-' then
    begin
     Text:='SUSPENSO';
     exit;
    end;
  if Sender.AsString = '14' then
    begin
     Text:='CANCELADO';
     exit;
    end;
end;

procedure TfCompraFinalizar.BtnChequeClick(Sender: TObject);
begin
  inherited;
  if (DtSrc.State in [dsInsert, dsEdit]) then
    btnGravar.Click;
  Cod_orig := cds_compraCODCOMPRA.AsInteger;
  tipo_origem := 'COMPRA';
  cod_cli_forn := cds_compraCODFORNECEDOR.AsInteger;
  c_f := 'F'; // F=Fornecedor

  if (codrec = 0) then
    codrec := scdsCr_procCODPAGAMENTO.AsInteger;
  caixa := cds_compraCAIXA.AsInteger;
  fCheques_bol.titulo := scdsCr_procTITULO.AsString;
  valortitulo := cds_compraVALOR.AsFloat - cds_compraDESCONTO.AsFloat;
  fCheques_bol.btnBaixarTitulo.Enabled := True;
  fCheques_bol.ShowModal;
  scdsCr_proc.Refresh;
end;

procedure TfCompraFinalizar.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  fcpAltera := TfcpAltera.Create(Application);
  try
    if (not fCpAltera.cds.Active) then
      fCpAltera.cds.Close;
    fCpAltera.cds.Params[0].AsString := scdsCr_procTITULO.AsString;
    fCpAltera.cds.Params[1].AsInteger := scdsCr_procCODFORNECEDOR.AsInteger;
//    fCpAltera.cds.Params[2].AsDateTime := scdsCr_procEMISSAO.AsDateTime;
    fCpAltera.cds.Open;
    fCpAltera.Label1.Caption := scdsCr_procTITULO.AsString;
    fCpAltera.Label2.Caption := scdsCr_procTITULO.AsString;

    fcpAltera.ShowModal;
    scdsCr_proc.Close;
    scdsCr_proc.Open;
  finally
    fcpAltera.Free;
  end;

end;

procedure TfCompraFinalizar.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  if  MessageDlg('Confirma a exclusão da baixa do Título : ''' + scdscr_procTITULO.AsSTring + '''',
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

procedure TfCompraFinalizar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (fcompra.cds_MovimentoCODMOVIMENTO.AsInteger > 0) then
    dm.EstoqueAtualiza(fcompra.cds_MovimentoCODMOVIMENTO.AsInteger);
  inherited;
  if scdsCr_proc.Active then
     scdsCr_proc.Close;
end;

procedure TfCompraFinalizar.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure TfCompraFinalizar.FormShow(Sender: TObject);
var utilcrtitulo : Tutils;
begin
  DecimalSeparator := ',';
  if (DM.tipoCompra = 'DEVOLUCAO') then
  begin
    MMJPanel1.Background.EndColor := clOlive;
    MMJPanel2.Background.StartColor := clOlive;
  end;
  if (not dm.parametro.Active) then
    dm.parametro.Open;
  if (dm.parametro.locate('DADOS', 'PRAZO', [loCaseInsensitive])) then
  begin
    if (dm.parametroCONFIGURADO.AsString = 'N') then
    begin
      dbDtaVencimento.Visible := True;
      cbPrazo.ItemIndex := -1;
      cbPrazo.Visible := False;
    end
    else begin
      try
        if (not dm.cdsPrazo.Active) then
          dm.cdsPrazo.open;
        if (not dm.cdsPrazo.IsEmpty) then
        begin
          dm.CdsPrazo.first;
          n_parcelas := dm.cdsPrazoValor.asFloat;
          cbPrazo.Items.clear;
          while not dm.CdsPrazo.eof do
          begin
            cbPrazo.Items.Add(dm.cdsPrazoPARAMETRO.asString);
            dm.cdsPrazo.next;
          end;
        end;
      except
      end;
    end;
  end;
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

  inherited;
  codrec := 0;
  cbconta.Text := '';
  //Se a tabela movimento não esta aberta então não existe pedido aberto
  if not fCompra.cds_Movimento.Active then
  //então o usuário deve ir para o form de procura
    btnProcurar.Click;

  //a tabela esta aberta, então verifica se é edicao ou inserção
  //procurando na tabela venda pelo código do movimento.
  if dm.scds_compra_proc.Active then
     dm.scds_compra_proc.Close;
  dm.scds_compra_proc.Params[0].AsInteger := fCompra.cds_MovimentoCODMOVIMENTO.AsInteger;
  dm.scds_compra_proc.Open;
  if dm.scds_compra_proc.IsEmpty then
  begin
    btnIncluir.Visible:=True;
    btnIncluir.Click;

    if (dm.moduloUsado = 'CITRUS') then
    begin
      jvCalcEdit1.Value := fCompra.cds_Mov_detQUANTIDADE.Value;
      jvCalcEdit2.Value := fCompra.cds_Mov_detQUANTIDADE.Value;
      if (dmCitrus.cdsColhedor.Active) then
        dmCitrus.cdsColhedor.Close;
      dmCitrus.cdsColhedor.Open;
      dmCitrus.cdsColhedor.RecordCount;
      cbNomeColhedor.Text := '';
      edCodigoColhedor.Text := '';
      edVlrColhedor.Value := 0;
      if (dmCitrus.cdsFretista.Active) then
        dmCitrus.cdsFretista.Close;
      dmCitrus.cdsFretista.Open;
      cbNomeFretista.Text := '';
      edCodFretista.Text := '';
      edVlrFrete.Value := 0;
    end;

    dm.scds_compra_proc.Close;
    exit;
  end
  else
  begin
    btnIncluir.Visible := False;
    if cds_compra.Active then
      cds_compra.Close;
    cds_compra.Params[0].AsInteger := dm.scds_compra_procCODCOMPRA.AsInteger;
    cds_compra.Open;
    if (cds_compraFORMAPAGAMENTO.AsString <> '') then
    begin
      utilcrtitulo := Tutils.Create;
      ComboBox1.ItemIndex := utilcrtitulo.retornaForma(cds_compraFORMAPAGAMENTO.asString);
    end;
    if (not cds_compraCAIXA.IsNull) then
    begin
      if (dm.cds_7_contas.Locate('CODIGO',IntToStr(cds_compraCAIXA.AsInteger),[loCaseInsensitive])) then
        cbConta.Text := dm.cds_7_contasNOME.Text
      else
        cbConta.Text := '';
    end;

    if (dm.moduloUsado = 'CITRUS') then
    begin
      jvCalcEdit1.Value := fCompra.cds_Mov_detQUANTIDADE.Value;
      jvCalcEdit2.Value := fCompra.cds_Mov_detQUANTIDADE.Value;
      // Colhedor ################################################################
      if (dmCitrus.sdsBusca.active) then
        dmCitrus.sdsBusca.Close;
      dmCitrus.sdsBusca.commandText := 'SELECT p.DATAVENCIMENTO, p.VALOR_RESTO, ' +
      ' p.CODFORNECEDOR, f.NOMEFORNECEDOR, p.OUTRO_DEBITO from PAGAMENTO p, FORNECEDOR f' +
      ' WHERE f.CODFORNECEDOR = p.CODFORNECEDOR AND p.TITULO = ' +
      QuotedStr(IntToStr(fCompra.cds_MovimentoCODMOVIMENTO.AsInteger) + '-C');
      dmCitrus.sdsBusca.open;
      if (not dmCitrus.sdsBusca.IsEmpty) then
      begin
        edCodigoColhedor.Text := IntToStr(dmCitrus.sdsBusca.Fields[2].AsInteger);
        cbNomeColhedor.Text := dmCitrus.sdsBusca.Fields[3].AsString;
        dtPagColhedor.Date := dmCitrus.sdsBusca.Fields[0].AsDateTime;
        edVlrColhedor.Value := dmCitrus.sdsBusca.Fields[1].AsFloat;
        if (dmCitrus.sdsBusca.Fields[4].AsFloat > 0) then
        begin
          edPrecoColhedor.Value := dmCitrus.sdsBusca.Fields[1].AsFloat/
          dmCitrus.sdsBusca.Fields[4].AsFloat;
        end
        else
          edPrecoColhedor.Value := 0;
      end
      else begin
        edCodigoColhedor.Text := '';
        cbNomeColhedor.Text := '';
        dtPagColhedor.Clear;
        edVlrColhedor.Value := 0;
        edPrecoColhedor.Value := 0;
      end;
      // FRETE ###################################################################
      if (dmCitrus.sdsBusca.active) then
        dmCitrus.sdsBusca.Close;
      dmCitrus.sdsBusca.commandText := 'SELECT p.DATAVENCIMENTO, p.VALOR_RESTO, ' +
      ' p.CODFORNECEDOR, f.NOMEFORNECEDOR, p.OUTRO_DEBITO, p.CONTACREDITO '+
      ' from PAGAMENTO p, FORNECEDOR f' +
      ' WHERE f.CODFORNECEDOR = p.CODFORNECEDOR AND p.TITULO = ' +
      QuotedStr(IntToStr(fCompra.cds_MovimentoCODMOVIMENTO.AsInteger) + '-F');
      dmCitrus.sdsBusca.open;
      if (not dmCitrus.sdsBusca.IsEmpty) then
      begin
        if cds_7_contas.Active then
          cds_7_contas.Close;
        cds_7_contas.Params[0].AsString := contaFrete;
        cds_7_contas.Open;
        cbDespesaFrete.Text := cds_7_contasNOME.AsString;
        edCodFretista.Text := IntToStr(dmCitrus.sdsBusca.Fields[2].AsInteger);
        cbNomeFretista.Text := dmCitrus.sdsBusca.Fields[3].AsString;
        dtDataPagFrete.Date := dmCitrus.sdsBusca.Fields[0].AsDateTime;
        edVlrFrete.Value := dmCitrus.sdsBusca.Fields[1].AsFloat;
        if (cds_7_contas.Locate('CODIGO', dmCitrus.sdsBusca.Fields[5].AsInteger, [loCaseInsensitive])) then
          cbDespesaFrete.Text := cds_7_contasNOME.AsString;

        if (dmCitrus.sdsBusca.Fields[4].AsFloat > 0) then
        begin
          JvCalcEdit3.Value := dmCitrus.sdsBusca.Fields[1].AsFloat/
          dmCitrus.sdsBusca.Fields[4].AsFloat;
        end
        else
          JvCalcEdit3.Value := 0;
      end
      else begin
        edCodFretista.Text := '';
        cbNomeFretista.Text := '';
        dtDataPagFrete.Clear;
        edVlrFrete.Value := 0;
        JvCalcEdit2.Value := 0;
      end;
    end; // Fim do CITRUS
    cbPrazo.Text := cds_compraPRAZO.AsString;
  end;
  dm.scds_compra_proc.Close;

  scdsCr_proc.Close;
  scdsCr_proc.Params[0].AsInteger := cds_compraCODCOMPRA.AsInteger;
  scdsCr_proc.Open;

end;

procedure TfCompraFinalizar.FormCreate(Sender: TObject);
var utilcrtitulo : Tutils;
  i, j : integer;
begin
  //inherited;
  //if (DM.videoW <> '1920') then
    sCtrlResize.CtrlResize(TForm(fCompraFinalizar));

  MMJPanel1.Background.EndColor   := dm.corStart;
  MMJPanel1.Background.StartColor := dm.corEnd;
  MMJPanel2.Background.EndColor   := dm.corEnd;
  MMJPanel2.Background.StartColor := dm.corStart;

  utilcrtitulo := Tutils.Create;
  // Popula Status
  j := utilcrtitulo.Forma.Count;
  for i := 0 to j - 1 do
  begin
    combobox1.Items.Add(utilcrtitulo.Forma.Strings[i]);
  end;

  n_parcelas := 1;

  if (dm.moduloUsado = 'CITRUS') then
  begin
    Panel4.Visible := True;
    GroupBox3.Visible := False;
    // Inicializo a Classe TCompras(fClassCitrus).
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'ContaDespesaColheita';
    dm.cds_parametro.Open;
    if (dm.cds_parametro.IsEmpty) then
    begin
      MessageDlg('Conta de Despesas de Colheita não cadastrado ' + #10#13 +
        'na tab. Parametro(conta em Dados) :' + #10#13 + 'ContaDespesaColheita',mtInformation,[mbOk],0);
    end
    else
      contaDespesa := dm.cds_parametroDADOS.AsString;
    if (dm.cds_parametro.Active) then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'ContaDespesaFrete';
    dm.cds_parametro.Open;
    if (dm.cds_parametro.IsEmpty) then
    begin
      MessageDlg('Conta de Despesas de Frete não cadastrado ' + #10#13 +
        'na tab. Parametro(conta em Dados) :' + #10#13 + 'ContaDespesaFrete',mtInformation,[mbOk],0);
    end
    else
      contaDespesaFrete := dm.cds_parametroDADOS.AsString;
    // Populando cbDespesaFrete
    if cds_7_contas.Active then
      cds_7_contas.Close;
    cds_7_contas.Params[0].AsString := dm.cds_parametroD1.AsString;
    contaFrete := dm.cds_parametroD1.AsString;
    cds_7_contas.Open;
    while not cds_7_contas.Eof do
    begin
      cbDespesaFrete.Items.Add(cds_7_contas.Fields[2].asString);
      cds_7_contas.Next;
    end;

  end;
{  n_parcelas := 1;
  try
  if (not dm.cdsPrazo.Active) then
    dm.cdsPrazo.open;
  if (not dm.cdsPrazo.IsEmpty) then
  begin
    dm.cdsPrazo.first;
    n_parcelas := dm.cdsPrazoValor.asFloat;
    cbPrazo.Items.clear;
    while not dm.CdsPrazo.eof do
    begin
      cbPrazo.Items.Add(dm.cdsPrazoPARAMETRO.asString);
      dm.cdsPrazo.next;
    end;
  end;
  except
  end;}
end;

procedure TfCompraFinalizar.cds_compraBeforePost(DataSet: TDataSet);
begin
  inherited;
    if cds_compraSTATUS1.AsString = '0' then
      cds_compraSTATUS.AsInteger := 0;
    if cds_compraSTATUS1.AsString = '1' then
      cds_compraSTATUS.AsInteger := 1;
    if cds_compraSTATUS1.AsString = '2' then
      cds_compraSTATUS.AsInteger := 2;
end;

procedure TfCompraFinalizar.cds_compraCalcFields(DataSet: TDataSet);
begin
  inherited;
  cds_compradiferenca.AsFloat := cds_compraENTRADA.AsFloat - cds_compraAPAGAR.AsFloat;
end;

procedure TfCompraFinalizar.cds_compraNewRecord(DataSet: TDataSet);
begin
  inherited;
    cds_compraCODMOVIMENTO.AsInteger := fCompra.cds_MovimentoCODMOVIMENTO.AsInteger;
    cds_compraCODFORNECEDOR.AsInteger := fCompra.cds_MovimentoCODFORNECEDOR.AsInteger;
    cds_compraNOMEFORNECEDOR.AsString := fCompra.cds_MovimentoNOMEFORNECEDOR.AsString;
    cds_compraCODCOMPRADOR.AsInteger := fCompra.cds_MovimentoCODVENDEDOR.AsInteger;
    cds_compraNOMEUSUARIO.AsString := fCompra.cds_MovimentoNOMEUSUARIO.AsString;
    cds_compraCODUSUARIO.AsInteger := usulog;
    cds_compraDATASISTEMA.AsDateTime := Now;
    cds_compraDATACOMPRA.AsDateTime := fCompra.cds_MovimentoDATAMOVIMENTO.AsDateTime;
    cbPrazo.Text := fCompra.cds_MovimentoPRAZO_PAGAMENTO.AsString;    
    cds_compraDESCONTO.AsFloat := 0;
    cds_compraMULTA_JUROS.AsFloat := 0;
    cds_compraENTRADA.AsFloat := 0;
    cds_compraVALOR_PAGAR.AsFloat := 0;
    cds_compraAPAGAR.AsFloat := 0;
    cds_compraN_PARCELA.AsInteger := StrToInt(FloatToStr(n_parcelas)); 
    cds_compraVALOR_FRETE.AsFloat := 0;
    cds_compraVALOR_SEGURO.AsFloat := 0;
    cds_compraOUTRAS_DESP.AsFloat := 0;
    cds_compraVALOR_ICMS.AsFloat := 0;
    cds_compraVALOR_IPI.AsFloat := 0;
    cds_compraOUTRAS_DESP.AsFloat := 0;    
    fCompra.cds_Mov_det.First;
    while not fCompra.cds_Mov_det.Eof do
    begin
      cds_compraVALOR_ICMS.AsFloat := cds_compraVALOR_ICMS.AsFloat + (fCompra.cds_Mov_detVALOR_ICMS.AsFloat);
      cds_compraVALOR_IPI.AsFloat := cds_compraVALOR_IPI.AsFloat + fCompra.cds_Mov_detVIPI.AsFloat;
      cds_compraICMS_ST.AsFloat := cds_compraICMS_ST.AsFloat + fCompra.cds_Mov_detICMS_SUBST.AsFloat;
      cds_compraVALOR_FRETE.AsFloat := cds_compraVALOR_FRETE.AsFloat + fCompra.cds_Mov_detFRETE.AsFloat;
      cds_compraOUTRAS_DESP.AsFloat := cds_compraOUTRAS_DESP.AsFloat + fCompra.cds_Mov_detVALOR_OUTROS.AsFloat;
      fCompra.cds_Mov_det.Next;
    end;
    cds_compraCODCCUSTO.AsInteger := fCompra.cds_MovimentoCODALMOXARIFADO.AsInteger;
    if dm.scds_forn_proc.Active then
       dm.scds_forn_proc.Close;
     dm.scds_forn_proc.Params[0].Clear;
     dm.scds_forn_proc.Params[1].Clear;
     dm.scds_forn_proc.Params[2].AsInteger := cds_compraCODFORNECEDOR.AsInteger;
     dm.scds_forn_proc.Open;
     cds_compraDATAVENCIMENTO.AsDateTime := cds_compraDATACOMPRA.AsDateTime +
     dm.scds_forn_procPRAZOPAGAMENTO.AsFloat;
     dm.scds_forn_proc.Close;
     cds_compraSTATUS.AsInteger:=0;

    if (dm.moduloUsado <> 'CITRUS') then
    begin
      {if dm.scds_Mov_Det_proc.Active then
        dm.scds_Mov_Det_proc.Close;
      dm.scds_Mov_Det_proc.Params[0].AsInteger := fCompra.cds_MovimentoCODMOVIMENTO.AsInteger;
      dm.scds_Mov_Det_proc.Open;
      cds_compraVALOR.Value := dm.scds_Mov_Det_procTotalPedido.Value;}
      if (sqs_tit.Active) then
        sqs_tit.Close;
      sqs_tit.CommandText := 'SELECT SUM(QUANTIDADE * PRECO), sum(VIPI), ' +
        'sum((ICMS/100)*valTotal), sum(FRETE)  FROM MOVIMENTODETALHE' +
          ' WHERE CODMOVIMENTO = ' + IntToStr(fCompra.cds_MovimentoCODMOVIMENTO.asInteger);
      sqs_tit.Open;
      cds_compraVALOR.AsCurrency := FloatToCurr(sqs_tit.Fields[0].AsFloat);//+sqs_tit.Fields[1].AsFloat+sqs_tit.Fields[3].AsFloat); //+ FloatToCurr(sqs_tit.Fields[1].AsFloat)  + FloatToCurr(sqs_tit.Fields[2].AsFloat);
      cds_compraVALOR_PAGAR.AsCurrency := FloatToCurr(sqs_tit.Fields[0].AsFloat);//+sqs_tit.Fields[1].AsFloat+sqs_tit.Fields[3].AsFloat); // + FloatToCurr(sqs_tit.Fields[1].AsFloat) + FloatToCurr(sqs_tit.Fields[2].AsFloat);
      //cds_compraVALOR_IPI.AsCurrency := FloatToCurr(sqs_tit.Fields[1].AsFloat);
    end;
    if (dm.moduloUsado = 'CITRUS') then
    begin
      if (sqs_tit.Active) then
        sqs_tit.Close;
      if (fCompra.CheckBox1.Checked = False) then
        sqs_tit.CommandText := 'SELECT SUM(QUANTIDADE * PRECO) FROM MOVIMENTODETALHE' + ' WHERE CODMOVIMENTO = ' + IntToStr(fCompra.cds_MovimentoCODMOVIMENTO.asInteger)
      else
          sqs_tit.CommandText := 'SELECT SUM((QUANTIDADE * PRECO) * 0.99) FROM MOVIMENTODETALHE' + ' WHERE CODMOVIMENTO = ' + IntToStr(fCompra.cds_MovimentoCODMOVIMENTO.asInteger);
      sqs_tit.Open;
      cds_compraVALOR.AsCurrency := FloatToCurr(sqs_tit.Fields[0].AsFloat);
      cds_compraVALOR_PAGAR.AsCurrency := FloatToCurr(sqs_tit.Fields[0].AsFloat);
      //vrr := FloatToCurr(sqs_tit.Fields[0].AsFloat);
      sqs_tit.Close;
    end;


end;

procedure TfCompraFinalizar.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'REL. VENDAS';
  dm.cds_parametro.Open;
  if dm.cds_parametro.IsEmpty then
  begin
    dm.cds_parametro.Append;
    dm.cds_parametroDESCRICAO.AsString := 'Tipo de Impressão (PADRÃO ou CUPOM)';
    dm.cds_parametroPARAMETRO.AsString := 'REL. VENDAS';
    dm.cds_parametroDADOS.AsString := 'PADRÃO';
    dm.cds_parametro.ApplyUpdates(0);

  end;

  if dm.cds_parametroDADOS.AsString = 'CUPOM' then
  //   if (MessageDlg('Imprimir Recibo ', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    portaimpr := dm.cds_parametroD2.AsString;
    tipoimpressao := dm.cds_parametroD1.AsString ;
    imprimecompra;
  end;
  if dm.cds_parametroDADOS.AsString = 'PADRÃO' then
  begin
    VCLReport1.FileName := str_relatorio + 'impr_compra.rep';
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport1.Title := VCLReport1.FileName;    
    VCLReport1.Report.Params.ParamByName('PCOMPRA').Value := cds_compraCODCOMPRA.AsInteger;
    VCLReport1.Execute;
  end;
end;

procedure TfCompraFinalizar.btnNotaFiscalClick(Sender: TObject);
begin
  inherited;

  if DtSrc.State in [dsInsert] then
  begin
    btnGravar.Click;
  end;
  notaFiscal;
end;

procedure TfCompraFinalizar.cbNomeColhedorChange(Sender: TObject);
begin
  inherited;
  if (DtSrc.State in [dsBrowse]) then
    cds_compra.Edit;
  edCodigoColhedor.Text := IntToStr(dmCitrus.cdsColhedorCODFORNECEDOR.asInteger);
end;

procedure TfCompraFinalizar.cbNomeFretistaChange(Sender: TObject);
begin
  inherited;
  if (DtSrc.State in [dsBrowse]) then
    cds_Compra.Edit;
  edCodFretista.Text := intToStr(dmCitrus.cdsFretistaCODFORNECEDOR.asinteger);

end;

procedure TfCompraFinalizar.edCodigoColhedorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if  (key = #13) then
  begin
    if (DtSrc.State in [dsBrowse]) then
      cds_Compra.Edit;

    if (edCodigoColhedor.Text <> '') then
      if (not dmCitrus.cdsColhedor.Locate('CODFORNECEDOR', edCodigoColhedor.Text, [loPartialKey])) then
      begin
         MessageDlg('Código não Cadastrado',mtInformation,[mbOk],0);
         cbNomeColhedor.Text := '';
      end;
    key := #0;
    SelectNext((Sender as TwinControl),True,True);
  end;
end;

procedure TfCompraFinalizar.edCodFretistaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if  (key = #13) then
  begin
    if (DtSrc.State in [dsBrowse]) then
      cds_Compra.Edit;

    if (edCodFretista.Text <> '') then
      if (not dmCitrus.cdsFretista.Locate('CODFORNECEDOR', edCodFretista.Text, [loPartialKey])) then
      begin
         MessageDlg('Código não Cadastrado',mtInformation,[mbOk],0);
         cbNomeFretista.Text := '';
      end;
    key := #0;
    SelectNext((Sender as TwinControl),True,True);
  end;

end;

procedure TfCompraFinalizar.dtPagColhedorChange(Sender: TObject);
begin
  inherited;
  if (DtSrc.State in [dsBrowse]) then
    cds_compra.Edit;
end;

procedure TfCompraFinalizar.dtDataPagFreteChange(Sender: TObject);
begin
  inherited;
  if (DtSrc.State in [dsBrowse]) then
    cds_compra.Edit;
end;

procedure TfCompraFinalizar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if  (key = #13) then
  begin
    key := #0;
    SelectNext((Sender as TwinControl),True,True);
  end;
end;

procedure TfCompraFinalizar.JvCalcEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if  (key = #13) then
  begin
    edVlrFrete.Value := jvCalcEdit2.Value * JvCalcEdit3.Value;
    key := #0;
    SelectNext((Sender as TwinControl),True,True);
  end;
end;

procedure TfCompraFinalizar.edPrecoColhedorKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if  (key = #13) then
  begin
    {Tira o 1% do Total Colhido.}
    if (CheckBox1.Checked = True) then
      edVlrColhedor.Value := (jvCalcEdit1.Value * 0.99) * edPrecoColhedor.Value
    else
      edVlrColhedor.Value := jvCalcEdit1.Value * edPrecoColhedor.Value;
    key := #0;
    SelectNext((Sender as TwinControl),True,True);
  end;

end;

procedure TfCompraFinalizar.cbPrazoChange(Sender: TObject);
begin
  inherited;
  if (dtsrc.State in [dsInsert, dsEdit]) then
    if (dm.cdsPrazo.Locate('PARAMETRO', cbPrazo.Text, [loCaseinsensitive])) then
      cds_compraN_PARCELA.AsInteger := StrToInt(FloatToStr(dm.cdsPrazoValor.asFloat));
end;

procedure TfCompraFinalizar.cds_compraReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  MessageDlg('Não é possível gravar o registro. Erro : ' + E.Message , mtWarning,
        [mbOk], 0);
end;

procedure TfCompraFinalizar.CheckBox2Click(Sender: TObject);
begin
  inherited;
  if (CheckBox2.Checked = True) then
  begin
    dbDtaVencimento.Visible := False;
    cbPrazo.Visible := True;
  end
  else
  begin
    dbDtaVencimento.Visible := True;
    cbPrazo.Visible := False;
  end;
end;

procedure TfCompraFinalizar.notafiscal;
var
  TD: TTransactionDesc;
  Save_Cursor:TCursor;
  str_sql : string;
begin
  if (sqlBuscaNota.Active) then
    sqlBuscaNota.Close;
  sqlBuscaNota.SQL.Clear;
  sqlBuscaNota.SQL.Add('select codMovimento, codFornecedor  from MOVIMENTO where ( (CODNATUREZA = 20) or (CODNATUREZA = 21) ) and CONTROLE = ' +
    QuotedStr(IntToStr(cds_compraCODMOVIMENTO.AsInteger)));
  sqlBuscaNota.Open;
  if (sqlBuscaNota.IsEmpty) then
  begin
    try
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crHourGlass;    { Show hourglass cursor }
    // Nota Fiscal
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
    try
      if ( DM.tipoCompra = 'DEVOLUCAO') then
      begin
        str_sql := 'EXECUTE PROCEDURE GERA_NF_DEVOLUCAOCOMPRA(';
        str_sql := str_sql + IntToStr(cds_COMPRACODFORNECEDOR.AsInteger);
        str_sql := str_sql + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', cds_COMPRADATACOMPRA.AsDateTime));
        str_sql := str_sql + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', cds_COMPRADATAVENCIMENTO.AsDateTime));
        str_sql := str_sql + ', ' + QuotedStr(cds_COMPRASERIE.AsString);
        str_sql := str_sql + ', ' + QuotedStr(inttostr(cds_COMPRANOTAFISCAL.AsInteger));
        str_sql := str_sql + ', ' + IntToStr(cds_COMPRACODMOVIMENTO.AsInteger) + ')';
      end;
      if ( DM.tipoCompra = 'COMPRA') then
      begin
        str_sql := 'EXECUTE PROCEDURE GERA_NF_COMPRA(';
        str_sql := str_sql + IntToStr(cds_COMPRACODFORNECEDOR.AsInteger);
        str_sql := str_sql + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', cds_COMPRADATACOMPRA.AsDateTime));
        str_sql := str_sql + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', cds_COMPRADATAVENCIMENTO.AsDateTime));
        str_sql := str_sql + ', ' + QuotedStr(cds_COMPRASERIE.AsString);
        str_sql := str_sql + ', ' + QuotedStr(inttostr(cds_COMPRANOTAFISCAL.AsInteger));
        str_sql := str_sql + ', ' + IntToStr(cds_COMPRACODMOVIMENTO.AsInteger) + ')';
      end;
      dm.sqlsisAdimin.ExecuteDirect(str_sql);
      dm.sqlsisAdimin.Commit(TD);
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
        exit;
      end;
    end;
    if (sqlBuscaNota.Active) then
      sqlBuscaNota.Close;
    sqlBuscaNota.SQL.Clear;
    sqlBuscaNota.SQL.Add('select codMovimento, codFornecedor from MOVIMENTO where ( (CODNATUREZA = 20) or (CODNATUREZA = 21)) and CONTROLE = ' +
      QuotedStr(IntToStr(cds_compraCODMOVIMENTO.AsInteger)));
    sqlBuscaNota.Open;
    // Abrindo a tela da nota
    //****************** ver como vou ter o código do Movimento para abrir esta no
    finally
      Screen.Cursor := Save_Cursor;  { Always restore to normal }
    end;
  end;
  fNotafc := TfNotafc.Create(Application);
  try
    fNotaFc.codMovFin := sqlBuscaNota.Fields[0].AsInteger;
    fNotaFc.codCliFin := sqlBuscaNota.Fields[1].AsInteger;

    if (not  dm.cds_empresa.Active) then
      dm.cds_empresa.open;
    fNotafc.ShowModal;
  finally
    fNotafc.Free;
  end;
end;

procedure TfCompraFinalizar.imprimecompra;
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

Centro = #27#97#49; // Centraliza a Impressão
var
  IMPRESSORA:TextFile;
  Texto,Texto1,Texto2,Texto3,Texto4,texto5, texto6,textoS, logradouro,cep,fone, clientecupom, doccli : string;//Para recortar parte da descrição do produto,nome
  total : double;

begin
      if (not dm.cds_empresa.Active) then
        dm.cds_empresa.Open;
      {----- aqui monto o endereço-----}
      logradouro := '  ' + dm.cds_empresaENDERECO.Value + ', ' + dm.cds_empresaBAIRRO.Value;
      cep :='  ' + dm.cds_empresaCIDADE.Value + ' - ' + dm.cds_empresaUF.Value +
      ' - ' + dm.cds_empresaCEP.Value;
      fone := '  (19)' + dm.cds_empresaFONE.Value + ' / ' + dm.cds_empresaFONE_1.Value +
      ' / ' + dm.cds_empresaFONE_2.Value;
      {------------------------DADOS DO CLIENTE--------------------------}
      clientecupom :='  ' + IntToStr(fCompra.cds_MovimentoCODFORNECEDOR.AsInteger) + '-' +
                   Copy(fCompra.cds_MovimentoNOMEFORNECEDOR.AsString, 0, 36); //fVendas.cds_MovimentoNOMECLIENTE.AsString;

    //  doccli := 'CPF : ' + fVendas.cds_MovimentoCNPJ.AsString;
      Texto  := '----------------------------------------' ;
      Texto1 := '  ' + FormatDateTime('dd/mm/yyyy', scdsCr_procEMISSAO.Value) + '  Titulo.:  ' +
      scdsCr_procTITULO.AsString;
      Texto2 := '-----------------------------------------' ;
      Texto4 := '  Produto  UN    Qtde    V.Un.   V.Total ' ;
      Texto5 :='  ' + DateTimeToStr(Now) + ' Total.: R$   ';
     // Texto5 := FormatDateTime('dd/mm/yyyy', scdsCr_procEMISSAO.Value) + ' Total.: R$   ' ;
      {-----------------------------------------------------------}
      {-------------------Imprimi Cabeçalho-----------------------}
      // Para gravar em arquivo
      //OpenDialog1.Execute;
      //AssignFile(IMPRESSORA, OpenDialog1.FileName);
     // AssignFile(IMPRESSORA,'COM1:');
  //   AssignFile ( IMPRESSORA, 'C:\venda.txt' );

   //   tipoimpressao := 'txt';

      if (tipoimpressao = 'txt') then
      begin
        OpenDialog1.Execute;
        AssignFile(IMPRESSORA, OpenDialog1.FileName);
      end
      else
      begin
        AssignFile(IMPRESSORA,portaimpr);//'LPT1:');
      end;
      Rewrite(IMPRESSORA);
      Writeln(Impressora, c10cpi + '  COMPRA');
      Writeln(IMPRESSORA);
      Writeln(Impressora, c17cpi + RemoveAcento(Format('  %-36s',[dm.cds_empresaRAZAO.Value])));
      Writeln(Impressora, c17cpi, logradouro);
      Writeln(Impressora, c17cpi, cep);
      Writeln(Impressora, c17cpi, fone);
     // Writeln(Impressora, c10cpi + Format('%-36s',['CNPJ :' + dm.cds_empresaCNPJ_CPF.Value]));
      Writeln(Impressora, c17cpi, texto);
      Writeln(Impressora, c17cpi, RemoveAcento( clientecupom));
      Writeln(Impressora, c17cpi, doccli);
      Writeln(Impressora, c17cpi, texto);
      Writeln(Impressora, c17cpi, texto1);
      Writeln(Impressora, c17cpi, texto2);
      Writeln(Impressora, c17cpi, texto4);
      {-----------------------------------------------------------}
      {-------------------Imprimi itens do boleto-----------------}
      try
        fCompra.cds_Mov_det.First;
        while not fCompra.cds_Mov_det.Eof do
        begin
          fCompra.cds_Mov_det.RecordCount;
          texto3 := '';
          texto6 := '';
          //texto6 := Format('%-4s',[fCompra.cds_Mov_detCODPRO.Value]);
          texto3 := texto3 + Format('           %-2s',[fCompra.cds_Mov_detUN.Value]);
          texto3 := texto3 + Format('     %-6.0n',[fCompra.cds_Mov_detQUANTIDADE.AsFloat]);
          texto3 := texto3 + Format(' %-6.2n',[fCompra.cds_Mov_detPRECO.AsFloat]);
          texto3 := texto3 + Format('   %-6.2n',[fCompra.cds_Mov_detValorTotal.value]);
          //texto6 := texto6 + fVendas.cds_Mov_detDESCPRODUTO.Value;
          texto6 := texto6 + '  ' + Copy(fCompra.cds_Mov_detDESCPRODUTO.Value, 0, 36);       //descrição do produto
          Writeln(Impressora, c17cpi, RemoveAcento(texto6));
          Writeln(Impressora, c17cpi, RemoveAcento(texto3));//NOME DO PRODUTO
          with Printer.Canvas do
          begin
            Font.Name := 'Courier New';
            Font.Size := 4;
          end;
          fCompra.cds_Mov_det.next;
        end;
        texto3 := '';
        texto6 := '';
        {-----------------------------------------------------------}
        {-------------------Imprimi Cabeçalho-----------------------}
        Texto2 := '----------------------------------------' ;
        Texto3 := '  Vencimento     Status         Valor R$' ;
        Writeln(Impressora, c17cpi, texto2);
        Writeln(Impressora, c17cpi, texto3);
        {------------------------------------------------------}
        {-------------------Imprimi Parcelas -----------------------}
        scdsCr_proc.First;
        while not scdsCr_proc.Eof do
        begin
          texto3 := '';
          scdsCr_proc.RecordCount;
          // imprime
          Texto3 := '  ' + FormatDateTime('dd/mm/yyyy', scdsCr_procDATAVENCIMENTO.Value);
          if scdsCr_procSTATUS.Value = '5-' then
          textoS := '  Pendente';

          if (scdsCr_procSTATUS.AsString = '7-') then
             Texto3 := Texto3 + ' - '  + '      Pago     ' +
                    Format('%-6.2n',[scdsCr_procVALORRECEBIDO.AsFloat])
           else begin
            Texto3 := Texto3 + ' - '  +  textoS;
            Texto3 := Texto3 + '   '  +
                    Format('%-6.2n',[scdsCr_procVALOR_RESTO.AsFloat]);
          end ;
          Writeln(Impressora, c17cpi, texto3);

          with Printer.Canvas do
          begin
            Font.Name := 'Courier New';
            Font.Size := 4;
          end;
          scdsCr_proc.next;
        end;
        {-----------------------------------------------------------}
        {-------------------Imprimi final do Pedido-----------------}
        total := fCompra.cds_Mov_detTotalPedido.Value;
        Writeln(Impressora, c17cpi, texto);
        Write(Impressora, c17cpi, texto5);
        Writeln(Impressora, c17cpi + Format('%-6.2n',[total]));
        texto3 := '';
        texto3 := '  Ass.:____________________________';
        Writeln(IMPRESSORA);
        Writeln(Impressora, c17cpi, texto3);
        // Pula linhas
        Writeln(IMPRESSORA);
        Writeln(IMPRESSORA);
        Writeln(IMPRESSORA);
        Writeln(IMPRESSORA);
        Writeln(IMPRESSORA);
        Writeln(IMPRESSORA);
        Writeln(IMPRESSORA);
      finally
        CloseFile(IMPRESSORA);
end;

end;



function TfCompraFinalizar.RemoveAcento(Str: string): string;
const
  ComAcento = 'àâêôûãõáéíóúçüÀÂÊÔÛÃÕÁÉÍÓÚÇÜ';
  SemAcento = 'aaeouaoaeioucuAAEOUAOAEIOUCU';
var
   x: Integer;
begin;
  for x := 1 to Length(Str) do
  if Pos(Str[x],ComAcento) <> 0 then
    Str[x] := SemAcento[Pos(Str[x], ComAcento)];
  Result := Str;
end;


procedure TfCompraFinalizar.btnSerieClick(Sender: TObject);
begin
  inherited;
  fProcurar:= TfProcurar.Create(self,scds_serie_proc);
  fProcurar.BtnProcurar.Click;
  try
    fProcurar.EvDBFind1.DataField := 'SERIE';
    if fProcurar.ShowModal=mrOk then
    begin
      if (dtSrc.State = dsBrowse) then
        cds.Edit;
      cds_compraSERIE.AsString := scds_serie_procSERIE.AsString;
      cds_compraNOTAFISCAL.AsInteger := scds_serie_procULTIMO_NUMERO.AsInteger+1;
      cds_compraMODELO.AsString := scds_serie_procMODELO.AsString;

    end;
  finally
    scds_serie_proc.Close;
    fProcurar.Free;
  end;
  DBEdit2.SetFocus;
end;

procedure TfCompraFinalizar.btnExcluirClick(Sender: TObject);
var     usu_n, usu_s, str : string;
        utilcrtitulo : Tutils;
        FEstoque : TEstoque;
        dataCompra  : TDateTime;
        codmov : Integer;
begin
  dataCompra   := cds_compraDATACOMPRA.AsDateTime;
  codmov       := cds_compraCODMOVIMENTO.AsInteger;
  usu_n        := fAtsAdmin.UserControlComercial.CurrentUser.UserLogin;
  usu_s        := fAtsAdmin.UserControlComercial.CurrentUser.Password;
  utilcrtitulo := Tutils.Create;
  if (utilcrtitulo.verificapermissao = True) then
  begin
    if Excluir = 'N' then
    Exit;
    if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin
        try
          dm.sqlsisAdimin.StartTransaction(TD);
          DtSrc.DataSet.Delete;
          (DtSrc.DataSet as TClientDataSet).ApplyUpdates(0);
          dm.sqlsisAdimin.Commit(TD);
          excluinf;
          ShowMessage('Compra Excluida com Sucesso');
        except
          on E : Exception do
            begin
              ShowMessage('Classe: '+ e.ClassName + chr(13) + 'Mensagem: '+ e.Message);
              dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
            end;
        end;
      end
    else
      Abort;
  end
  else
  begin
    if MessageDlg('Atenção, confirmando essa operação o sistema vai alterar o status para'+#13+#10+' "CANCELADO", não será excluido do sistema.',mtConfirmation,
                  [mbYes,mbNo],0) = mrYes then
    begin
      try
        dm.sqlsisAdimin.StartTransaction(TD);
        str := 'update MOVIMENTODETALHE set BAIXA = NULL where CODMOVIMENTO = ' + IntToStr(fCompra.cds_MovimentoCODMOVIMENTO.AsInteger);
        dm.sqlsisAdimin.ExecuteDirect(str);
        str := 'update COMPRA set STATUS = 14 where CODCOMPRA = ' + IntToStr(cds_compraCODCOMPRA.AsInteger);
        dm.sqlsisAdimin.ExecuteDirect(str);
        str := 'update PAGAMENTO set STATUS = 14 where CODCOMPRA = ' + IntToStr(cds_compraCODCOMPRA.AsInteger);
        dm.sqlsisAdimin.ExecuteDirect(str);

        dm.sqlsisAdimin.Commit(TD);
        ShowMessage('Compra Cancelada com Sucesso');
      except
        on E : Exception do
          begin
            ShowMessage('Classe: '+ e.ClassName + chr(13) + 'Mensagem: '+ e.Message);
            dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
          end;
      end;
    end;
  end;
  fAtsAdmin.UserControlComercial.VerificaLogin(usu_n,usu_s);
end;

procedure TfCompraFinalizar.excluinf;
var
  str_sql : string;
begin
  if (sqlBuscaNota.Active) then
    sqlBuscaNota.Close;
  sqlBuscaNota.SQL.Clear;
  sqlBuscaNota.SQL.Add('select m.codMovimento, m.codCliente, c.CODCOMPRA  from MOVIMENTO m ' +
    ' inner join compra c on c.CODMOVIMENTO = m.CODMOVIMENTO where ' +
    ' m.CODNATUREZA = 20 and m.CONTROLE = ' +
    QuotedStr(IntToStr(fCompra.cds_MovimentoCODMOVIMENTO.AsInteger)));
  sqlBuscaNota.Open;
  if (not sqlBuscaNota.IsEmpty) then
  begin
    // Nota Fiscal
    dm.sqlsisAdimin.StartTransaction(TD);
    try
      str_sql := 'DELETE FROM NOTAFISCAL ';
      str_sql := str_sql + ' where CODVENDA = ' + inttostr(sqlBuscaNota.Fields[2].AsInteger);
      dm.sqlsisAdimin.ExecuteDirect(str_sql);
      str_sql := 'DELETE FROM COMPRA ';
      str_sql := str_sql + ' where CODMOVIMENTO = ' + inttostr(sqlBuscaNota.Fields[0].AsInteger);
      dm.sqlsisAdimin.ExecuteDirect(str_sql);
      str_sql := 'DELETE FROM MOVIMENTO ';
      str_sql := str_sql + ' where CODMOVIMENTO = ' + inttostr(sqlBuscaNota.Fields[0].AsInteger);
      dm.sqlsisAdimin.ExecuteDirect(str_sql);
      dm.sqlsisAdimin.Commit(TD);
      ShowMessage('Nota Fiscal Excluída com suscesso');
    except
      dm.sqlsisAdimin.Rollback(TD);
      MessageDlg('Erro para Excluir a Nota Fiscal.', mtError, [mbOK], 0);
    end;
  end;
end;

procedure TfCompraFinalizar.btnSairClick(Sender: TObject);
begin
  if DtSrc.State in [dsInsert,dsEdit] then
  begin
    if MessageDlg('Você não salvou este registro deseja sair assim mesmo?',mtConfirmation, [mbYes,mbNo],0) = mrYes then
      close;
  end
  else
    Close;
end;

procedure TfCompraFinalizar.Button1Click(Sender: TObject);
begin
  if(not cds_compraCODCOMPRA.IsNull) then
  begin
    if(not cds_compraDIGITOVALIDACAO.IsNull) then
    begin
      if (MessageDlg('Deseja alterar a validação já existente?', mtInformation, [mbYes, mbNo], 0) = mrYes ) then
        ValidaNFe();
    end
    else
      ValidaNFe();
  end
  else
    MessageDlg('É necessario existir uma compra ou estar inserindo à para Validar NFe.', mtInformation, [mbOK], 0);

end;

procedure TfCompraFinalizar.ValidaNFe();
begin
  {$IFNDEF ACBrNFeOpenSSL}
    if( fNFeletronica.ACBrNFe1.Configuracoes.Certificados.NumeroSerie = '') then
    fNFeletronica.ACBrNFe1.Configuracoes.Certificados.SelecionarCertificado;
  {$ENDIF}
  try
    try
      cds_compraCHAVENF.AsString := fNFeletronica.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.chNFe;
      fNFeletronica.btnConsulta.Click;
    except
    end;
  finally
    if(cds_compra.State in [dsEdit, dsInsert]) then
    begin
      cds_compraDIGITOVALIDACAO.AsString := fNFeletronica.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.digVal;
    end
    else if(not cds_compraCODCOMPRA.IsNull) then
    begin
      cds_compra.Edit;
      cds_compraDIGITOVALIDACAO.AsString := fNFeletronica.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.digVal;
      cds_compra.ApplyUpdates(0);
    end;
  end
end;

end.
