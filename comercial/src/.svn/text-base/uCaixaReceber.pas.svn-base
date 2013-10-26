unit uCaixaReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  JvExStdCtrls, JvEdit, JvBaseEdits, JvSpin, Mask, JvExMask, JvToolEdit,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, ExtCtrls, JvExExtCtrls,
  JvRadioGroup, FMTBcd, DBClient, Provider, DB, SqlExpr, DBXpress, Menus;

type
  TfCaixaReceber = class(TForm)
    Panel1: TPanel;
    lbTroco: TLabel;
    lbTotal: TLabel;
    lbVendedor: TLabel;
    lbForma: TLabel;
    lbCliente: TLabel;
    lbEmissao: TLabel;
    lbVencimento: TLabel;
    lbValor: TLabel;
    lbParcela: TLabel;
    lbDoc: TLabel;
    lbDesconto: TLabel;
    lbPago: TLabel;
    Label9: TLabel;
    cbVendedor: TComboBox;
    cbForma: TComboBox;
    cbCliente: TComboBox;
    edEmissao: TJvDatePickerEdit;
    edVencimento: TJvDatePickerEdit;
    edParcela: TJvSpinEdit;
    edEntrada: TJvCalcEdit;
    edDocumento: TJvEdit;
    edDesconto: TJvCalcEdit;
    JvDBGrid3: TJvDBGrid;
    edTotal: TJvCalcEdit;
    edValorPago: TJvCalcEdit;
    edTroco: TJvCalcEdit;
    edComissao: TJvCalcEdit;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    edComanda: TEdit;
    Label1: TLabel;
    EdCaixa: TEdit;
    EdUsuario: TEdit;
    Label4: TLabel;
    EdMovimento: TEdit;
    edCodCusto: TEdit;
    sPlano1: TSQLDataSet;
    sPlano1CODIGO: TIntegerField;
    sPlano1CONTA: TStringField;
    sPlano1CONTAPAI: TStringField;
    sPlano1NOME: TStringField;
    sPlano1CONSOLIDA: TStringField;
    sPlano1DESCRICAO: TStringField;
    sPlano1RATEIO: TStringField;
    sPlano1CODREDUZIDO: TStringField;
    sPlano1REDUZRECEITA: TStringField;
    sTitulo: TSQLDataSet;
    sTituloTITULO: TStringField;
    sTituloDATAVENCIMENTO: TDateField;
    sTituloCAIXA: TSmallintField;
    sTituloSTATUS: TStringField;
    sTituloVIA: TStringField;
    sTituloN_DOCUMENTO: TStringField;
    sTituloVALORRECEBIDO: TFloatField;
    sTituloVALOR_RESTO: TFloatField;
    sTituloVALORTITULO: TFloatField;
    sTituloVALORREC: TFloatField;
    sTituloCODRECEBIMENTO: TIntegerField;
    sTituloNOMECLIENTE: TStringField;
    sTituloDP: TIntegerField;
    sTituloEMISSAO: TDateField;
    sTituloVALOR_PRIM_VIA: TFloatField;
    sTituloCODCLIENTE: TIntegerField;
    sTituloTIT: TStringField;
    sTituloSITUACAO: TStringField;
    sTituloFORMARECEBIMENTO: TStringField;
    dTitulo: TDataSetProvider;
    cTitulo: TClientDataSet;
    cTituloTITULO: TStringField;
    cTituloEMISSAO: TDateField;
    cTituloDATAVENCIMENTO: TDateField;
    cTituloCAIXA: TSmallintField;
    cTituloSTATUS: TStringField;
    cTituloVIA: TStringField;
    cTituloN_DOCUMENTO: TStringField;
    cTituloVALORRECEBIDO: TFloatField;
    cTituloVALOR_RESTO: TFloatField;
    cTituloVALORTITULO: TFloatField;
    cTituloNOMECLIENTE: TStringField;
    cTituloVALORREC: TFloatField;
    cTituloCODRECEBIMENTO: TIntegerField;
    cTituloDP: TIntegerField;
    cTituloVALOR_PRIM_VIA: TFloatField;
    cTituloCODCLIENTE: TIntegerField;
    cTituloTIT: TStringField;
    cTituloSITUACAO: TStringField;
    cTituloFORMARECEBIMENTO: TStringField;
    cTituloTRecebido: TAggregateField;
    cTituloTotal_resto: TAggregateField;
    cTituloTotalTitulo: TAggregateField;
    ds_Cr: TDataSource;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    sds_s: TSQLDataSet;
    btnAlteraTitulo: TBitBtn;
    sClientes: TSQLDataSet;
    sClientesCODCLIENTE: TIntegerField;
    sClientesNOMECLIENTE: TStringField;
    sClientesREGIAO: TSmallintField;
    sVendedor: TSQLDataSet;
    sVendedorCOD_FUNCIONARIO: TIntegerField;
    sVendedorNOME_FUNCIONARIO: TStringField;
    sVendedorFUNCAO_CARGO: TStringField;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    Excluir1: TMenuItem;
    Recibo1: TMenuItem;
    Itens1: TMenuItem;
    ExcluirItem1: TMenuItem;
    sTituloFORMARECBTO: TStringField;
    cTituloFORMARECBTO: TStringField;
    sTituloCODVENDA: TIntegerField;
    cTituloCODVENDA: TIntegerField;
    sTituloDATACONSOLIDA: TDateField;
    sTituloBANCO: TStringField;
    sTituloAGENCIA: TStringField;
    sTituloCONTA: TStringField;
    cTituloDATACONSOLIDA: TDateField;
    cTituloBANCO: TStringField;
    cTituloAGENCIA: TStringField;
    cTituloCONTA: TStringField;
    edConsolida: TJvDatePickerEdit;
    lbConsolida: TLabel;
    lbAgencia: TLabel;
    edAgencia: TJvEdit;
    lbBanco: TLabel;
    edBanco: TJvEdit;
    edConta: TJvEdit;
    lbConta: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edConsumacao: TJvCalcEdit;
    OpenDialog1: TOpenDialog;
    edSerie: TJvEdit;
    edtNF: TJvEdit;
    lbSerie: TLabel;
    lbNF: TLabel;
    edPorcento: TJvCalcEdit;
    Label5: TLabel;
    sCaixa1: TSQLDataSet;
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
    sCaixa: TSQLDataSet;
    sCaixaIDCAIXACONTROLE: TIntegerField;
    sCaixaCODCAIXA: TIntegerField;
    sCaixaCODUSUARIO: TIntegerField;
    sCaixaDATAFECHAMENTO: TDateField;
    sCaixaSITUACAO: TStringField;
    sCaixaMAQUINA: TStringField;
    sCaixaDATAABERTURA: TDateField;
    sCaixaVALORABRE: TFloatField;
    sCaixaVALORFECHA: TFloatField;
    sCaixaNOMECAIXA: TStringField;
    cdsCaixa: TSQLDataSet;
    cdsCaixaIDCAIXACONTROLE: TIntegerField;
    cdsCaixaCODCAIXA: TIntegerField;
    cdsCaixaCODUSUARIO: TIntegerField;
    cdsCaixaDATAFECHAMENTO: TDateField;
    cdsCaixaSITUACAO: TStringField;
    cdsCaixaMAQUINA: TStringField;
    cdsCaixaDATAABERTURA: TDateField;
    cdsCaixaVALORABRE: TFloatField;
    cdsCaixaVALORFECHA: TFloatField;
    cdsCaixaNOMECAIXA: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edValorPagoExit(Sender: TObject);
    procedure edDescontoExit(Sender: TObject);
    procedure edEntradaExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure JvDBGrid3DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAlteraTituloClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure edPorcentoChange(Sender: TObject);
  private
    { Private declarations }
    procedure vendaavista;
    procedure vendaaprazo;
    procedure atualizaserie;
    procedure imprimecomprovante;
  public
     vPagou, banco, agencia, conta, dataconsolida : string;
     vComanda, vConsumacao, vDesconto, vResultado, vComDesconto, vValorDesc : Double;
    { Public declarations }
  end;

var
  fCaixaReceber: TfCaixaReceber;
  TD: TTransactionDesc;
  statusRecebimento : string;

implementation

uses UDm, uUtils, uControle, uBancoPgto, uRatearConta;

{$R *.dfm}

{ TfCaixaReceber }

procedure TfCaixaReceber.vendaaprazo;
var  utilcrtitulo : Tutils;
     vApagar : double;
     strSql : string;
     cliente, nparc, codVenda : integer;
     total, entrada, desconto : double;
begin
   { if (edEntrada.Value > 0) then
    begin
      try
        if (edParcela.AsInteger = 1) then
        begin
            MessageDlg('O sistema considera a parcela 1 como a entrada.', mtError, [mbOK], 0);
            edParcela.SetFocus;
            exit;
          end;
        end;
      except
        MessageDlg('Informe um número para PARCELAS.', mtError, [mbOK], 0);
        edParcela.SetFocus;
        exit;
      end;
    end;  }
    // Mudo a natureza do Movimento
    fControle.cMesas.Edit;
    fControle.cMesasCODNATUREZA.AsInteger := 3; //venda
    fControle.cMesas.ApplyUpdates(0);
    {---*********************************************************************---}
    {---                Inserindo dados na tabela VENDA                      ---}
    {---*********************************************************************---}
    if (dm.c_6_genid.Active) then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENVENDA, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    strSql := 'INSERT INTO VENDA (CODVENDA, CODMOVIMENTO, CODCLIENTE, DATAVENDA';
    strSql := strSql + ',DATAVENCIMENTO ,BANCO ,CODVENDEDOR ,STATUS ,CODUSUARIO';
    strSql := strSql + ',VALOR ,NOTAFISCAL ,SERIE, DESCONTO, CODCCUSTO, N_PARCELA'; //
    strSql := strSql + ',FORMARECEBIMENTO, N_DOCUMENTO, ENTRADA, CAIXA, MULTA_JUROS, APAGAR ';
    strSql := strSql + ') VALUES (';
    strSql := strSql + IntToStr(dm.c_6_genid.Fields[0].AsInteger);
    codVenda := dm.c_6_genid.Fields[0].AsInteger;
    strSql := strSql + ',' + EdMovimento.Text;
    cliente := StrToInt(edComanda.Text);
    strSql := strSql + ',' + IntToStr(cliente);
    strSql := strSql + ',''' + formatdatetime('mm/dd/yyyy', edEmissao.Date) + '''';
    strSql := strSql + ',''' + formatdatetime('mm/dd/yyyy',edVencimento.Date) + '''';
    strSql := strSql + ',1'; //Banco
    strSql := strSql + ',1'; //CodVendedor
    strSql := strSql + ',0'; //status
    strSql := strSql + ',1'; //codusuario
    dm.c_6_genid.Close;
    total := edTotal.Value;
    entrada := edEntrada.Value;
    desconto := edDesconto.Value;
    if (entrada < total) then
      nparc := 2
    else
      nparc := 0;
    DecimalSeparator := '.';
    ThousandSeparator := ',';
    strSql := strSql + ',' + FloatToStr(entrada); //valor
    strSql := strSql + ',' + edtNF.Text; //notafiscal
    strSql := strSql + ',''' + edSerie.Text + ''''; //serie
    if (edDesconto.Value > 0) then
      strSql := strSql + ', ' + FloatToStr(desconto) //desconto
    else
      strSql := strSql + ',0'; //desconto
    strSql := strSql + ',' + edCodCusto.Text;//CODCUSTO
    strSql := strSql + ', ' + IntToStr(nparc) + ', ';  // NUMERO DE PARCELAS
    utilcrtitulo := Tutils.Create;
    strSql := strSql + QuotedStr(utilcrtitulo.pegaForma(CbForma.Text)); //FORMA RECEBIMENTO
    strSql := strSql + QuotedStr(edDocumento.Text);
    strSql := strSql + ',' + FloatToStr(entrada);  // ENTRADA
    DecimalSeparator := '.';
    ThousandSeparator := ',';
    if (not sPlano1.Active) then
      sPlano1.Open;
    sPlano1.Locate('NOME',EdCaixa.Text, [loCaseInsensitive]);
    strSql := strSql + ', ' + IntToStr(sPlano1CODIGO.AsInteger); //Caixa
    sPlano1.Close;
    strSql := strSql + ',0'; //Multa_juros
    strSql := strSql + ',' + FloatToStr(entrada); //APAGAR
    strSql := strSql + ')';
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(strSql);
    Try
       dm.sqlsisAdimin.Commit(TD);
    except
       dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
       MessageDlg('Erro no sistema, a venda não foi gravada.', mtError,
           [mbOk], 0);
    end;
    DecimalSeparator := ',';
    ThousandSeparator := '.';
    if (cTitulo.Active) then
      cTitulo.Close;
    cTitulo.Params[0].AsInteger := codVenda;
    cTitulo.Open;
    cTiTUlo.Next;
    if (cTituloSTATUS.AsString = '5-') then
    begin
      edEntrada.Value := cTituloVALOR_RESTO.Value;
      btnAlteraTitulo.Enabled := True;
      edEntrada.SetFocus;
    end;
    atualizaserie;
    statusdavenda := 'FINALIZADA';

end;

procedure TfCaixaReceber.vendaavista;
var  utilcrtitulo : Tutils;
     vApagar : double;
     strSql : string;
     cliente, nparc, codVenda : integer;
     total, entrada, desconto, multa, porcentagen : double;
     codCaixa : integer;
begin
    if (sCaixa.Active) then
      sCaixa.Close;
    sCaixa.Params[0].AsString := MICRO;
    sCaixa.Params[1].AsString := 'A'; //Caixa Aberto
    sCaixa.Open;
    codCaixa := sCaixaIDCAIXACONTROLE.AsInteger;
    //sCaixa.Close;
    // Mudo a natureza do Movimento
    strSql := 'UPDATE MOVIMENTO SET CODNATUREZA = 3 where CODMOVIMENTO = ' + EdMovimento.Text;
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(strSql);
    Try
       dm.sqlsisAdimin.Commit(TD);
    except
       dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
       MessageDlg('Erro no sistema, a venda não foi gravada.', mtError,
           [mbOk], 0);
    end;
    {---*********************************************************************---}
    {---                Inserindo dados na tabela VENDA                      ---}
    {---*********************************************************************---}
    if (dm.c_6_genid.Active) then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENVENDA, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    strSql := 'INSERT INTO VENDA (CODVENDA, CODMOVIMENTO, CODCLIENTE, DATAVENDA, DATASISTEMA';
    strSql := strSql + ',DATAVENCIMENTO ,BANCO ,CODVENDEDOR ,STATUS ,CODUSUARIO';
    strSql := strSql + ',VALOR ,NOTAFISCAL ,SERIE, DESCONTO, CODCCUSTO, N_PARCELA'; //
    strSql := strSql + ',FORMARECEBIMENTO, N_DOCUMENTO, ENTRADA, CAIXA, MULTA_JUROS, APAGAR, PORCENTAGENDESC, VALOR_PAGAR, CODORIGEM ';
    strSql := strSql + ') VALUES (';
    strSql := strSql + IntToStr(dm.c_6_genid.Fields[0].AsInteger);
    codVenda := dm.c_6_genid.Fields[0].AsInteger;
    strSql := strSql + ',' + EdMovimento.Text;
    if (not sClientes.Active) then
      sClientes.Open;
    sClientes.Locate('NOMECLIENTE',edComanda.Text, [loCaseInsensitive]);
    cliente := sClientesCODCLIENTE.AsInteger;
    sClientes.Close;
    strSql := strSql + ',' + IntToStr(cliente);
    strSql := strSql + ',''' + formatdatetime('mm/dd/yyyy', edEmissao.Date) + '''';
    strSql := strSql + ',''' + formatdatetime('mm/dd/yyyy', now) + '''';
    strSql := strSql + ',''' + formatdatetime('mm/dd/yyyy',edVencimento.Date) + '''';
    strSql := strSql + ',1'; //Banco
    strSql := strSql + ',1'; //CodVendedor
    strSql := strSql + ',0'; //status
    strSql := strSql + ',1'; //codusuario
    dm.c_6_genid.Close;
    total := edTotal.Value;
    entrada := edEntrada.Value;
    desconto := edDesconto.Value;
    multa := edConsumacao.Value;
    nparc := edParcela.AsInteger;
    if (nparc = 0) then
      nparc := 1;
    porcentagen := edPorcento.Value;
    DecimalSeparator := '.';
    ThousandSeparator := ',';
    strSql := strSql + ',' + FloatToStr(entrada); //valor
    strSql := strSql + ',' + edtNF.Text; //notafiscal
    strSql := strSql + ',''' + edSerie.Text + ''''; //serie
    if (edDesconto.Value > 0) then
      strSql := strSql + ', ' + FloatToStr(desconto) //desconto
    else
      strSql := strSql + ',0'; //desconto
    strSql := strSql + ',' + edCodCusto.Text;//CODCUSTO
    strSql := strSql + ', ' + IntToStr(nparc) + ', ';  // NUMERO DE PARCELAS
    utilcrtitulo := Tutils.Create;
    strSql := strSql + QuotedStr(utilcrtitulo.pegaForma(CbForma.Text)); //FORMA RECEBIMENTO
    strSql := strSql + ',' + QuotedStr(edDocumento.Text);
    strSql := strSql + ',' + FloatToStr(entrada);  // ENTRADA
    if (not sPlano1.Active) then
      sPlano1.Open;
    sPlano1.Locate('NOME',EdCaixa.Text, [loCaseInsensitive]);
    strSql := strSql + ', ' + IntToStr(sPlano1CODIGO.AsInteger); //Caixa
    sPlano1.Close;
    //if (edConsumacao.Value > 0) then
    //  strSql := strSql + ', '+ FloatToStr(multa) //Multa Juros
    //else
    strSql := strSql + ',0'; //Multa_juros
    strSql := strSql + ',' + FloatToStr(entrada); //APAGAR
    strSql := strSql + ',' + FloatToStr(porcentagen); //Porcentagen de desconto
    strSql := strSql + ',' + FloatToStr(entrada);// VALORPAGAR
    strSql := strSql + ',' + IntToStr(codCaixa);
    strSql := strSql + ')';
    DecimalSeparator := '.';
    ThousandSeparator := ',';
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(strSql);
    Try
       dm.sqlsisAdimin.Commit(TD);
    except
       dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
       MessageDlg('Erro no sistema, a venda não foi gravada.', mtError,
           [mbOk], 0);
    end;
    DecimalSeparator := ',';
    ThousandSeparator := '.';
    if (cTitulo.Active) then
      cTitulo.Close;
    cTitulo.Params[0].AsInteger := codVenda;
    cTitulo.Open;
    // Gravo informações do banco Ag. Conta e data consolida
    cTitulo.Edit;
    if (edBanco.Text <> '') then
      cTituloBANCO.AsString := edBanco.Text;
    if (edAgencia.Text <> '') then
      cTituloAGENCIA.AsString := edAgencia.Text;
    if (edConta.Text <> '') then
      cTituloCONTA.AsString := edConta.Text;
    cTituloDATACONSOLIDA.AsDateTime := edConsolida.Date;
    cTitulo.ApplyUpdates(0);
    cTiTUlo.Next; // posiciono no proximo item
    if (cTituloSTATUS.AsString = '5-') then
    begin
      edEntrada.Value := cTituloVALOR_RESTO.Value;
      btnAlteraTitulo.Enabled := True;
      edEntrada.SetFocus;
    end;
    cbForma.Text := '1-DINHEIRO';
    atualizaserie;
    statusdavenda := 'FINALIZADA';
end;

procedure TfCaixaReceber.BitBtn1Click(Sender: TObject);
begin
  if (statusdavenda = 'FINALIZADA') then
  begin
    MessageDlg('Operação não permitida, Mesa / Comanda já Finalizada', mtWarning, [mbOK], 0);
    exit;
  end
  else
  begin
    if (statusRecebimento <> 'EDITANDO') then
    begin
      if (edEntrada.Value > 0) then
      begin
        try
          if (edParcela.AsInteger = 1) then
          begin
            MessageDlg('O sistema considera a parcela 1 como a entrada.', mtError, [mbOK], 0);
            edParcela.SetFocus;
            exit;
          end;
        except
          MessageDlg('Informe um número para PARCELAS.', mtError, [mbOK], 0);
          edParcela.SetFocus;
          exit;
        end;
      end;
      if (edEntrada.Value = edTotal.Value) then
          if (edParcela.AsInteger > 1) then
          begin
            MessageDlg('Para gerar mais de um Título, o valor da ENTRADA '+#13+#10+'     tem que ser menor que o TOTAL da venda.', mtWarning, [mbOK], 0);
            edEntrada.SetFocus;
            exit;
          end;

      vendaavista;
      if (fControle.cds_Mov_det.Active) then
          fControle.cds_Mov_det.Close;
      fControle.cds_Mov_det.Params[0].AsInteger := StrToInt(EdMovimento.Text);
      fControle.cds_Mov_det.Open;
      fControle.cds_Mov_det.First;
      while not fControle.cds_Mov_det.Eof do
      begin
         fControle.cds_Mov_det.Edit;
         fControle.cds_Mov_detPERIODOFIM.AsDateTime := Now;
         fControle.cds_Mov_det.Post;
         fControle.cds_Mov_det.Next;
      end;
      fControle.cds_Mov_det.ApplyUpdates(0);
      fControle.cds_Mov_det.Close;
      statusRecebimento := 'CONSULTA';
    end
    else
      btnAlteraTitulo.Click;
  end;
end;

procedure TfCaixaReceber.FormShow(Sender: TObject);
var
  empresaemuso : string;
begin
  if (cdsCaixa.Active) then
    cdsCaixa.Close;
  cdsCaixa.Params[0].AsString := MICRO;
  cdsCaixa.Params[1].AsString := 'A'; //Caixa Aberto
  cdsCaixa.Open;
  edEmissao.Date := cdsCaixaDATAABERTURA.Value;
  edVencimento.Date := cdsCaixaDATAABERTURA.Value;
  cdsCaixa.Close;  
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'VALORCOMANDA';
  dm.cds_parametro.Open;
  if (DM.varColaborador = '') then
  begin
    vComanda := StrToFloat(dm.cds_parametroDADOS.AsString);
    vDesconto := StrToFloat(dm.cds_parametroD1.AsString);
    vConsumacao := StrToFloat(dm.cds_parametroD2.AsString);
  end
  else
  begin
    vComanda := 0;
    vDesconto := 0;
    vConsumacao := 0;
  end;
  dm.cds_parametro.Close;
  if (statusdavenda = 'FINALIZADA') then
  begin
     edEntrada.Enabled := False;
     edDocumento.Enabled := False;
     cbForma.Enabled := False;
     edTotal.Enabled := False;
     edDesconto.Enabled := False;
     edValorPago.Enabled := False;
     edTroco.Enabled := False;
     lbTotal.Enabled := False;
     lbForma.Enabled := False;
     lbValor.Enabled := False;
     lbDoc.Enabled := False;
     lbDesconto.Enabled := False;
     lbPago.Enabled := False;
     edComissao.Value := vComanda;
     edConsumacao.Value := vConsumacao;
     if (vComDesconto > vDesconto) then
       edDesconto.Value := vDesconto
     else
       edDesconto.Value := vComDesconto;
      if (vPagou = 'SIM') then
        edDesconto.Value := vComDesconto;
     //vResultado := (edTotal.Value + vComanda) - vDesconto;
     //edEntrada.Value := vResultado;
     //edValorPago.Value := vResultado;
  end
  else
  begin
     edEntrada.Enabled := True;
     edDocumento.Enabled := True;
     cbForma.Enabled := True;
     edTotal.Enabled := True;
     edDesconto.Enabled := True;
     edValorPago.Enabled := True;
     edTroco.Enabled := True;
     lbTotal.Enabled := True;
     lbForma.Enabled := True;
     lbValor.Enabled := True;
     lbDoc.Enabled := True;
     lbDesconto.Enabled := True;
     lbPago.Enabled := True;
     edComissao.Value := vComanda;
     edConsumacao.Value := vConsumacao;
     if (vComDesconto > vDesconto) then
       vValorDesc := vDesconto
     else
       vValorDesc := vComDesconto;
     if (vPagou = 'SIM') then
        vValorDesc := vComDesconto;
     edDesconto.Value := vValorDesc;
     vResultado := (edTotal.Value + vComanda) - edDesconto.Value;
     edEntrada.Value := vResultado;
     edValorPago.Value := vResultado;

    if Dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'EMPRESA';
    dm.cds_parametro.Open;
    empresaemuso := dm.cds_parametroDADOS.AsString;
    if (empresaemuso = 'ILHA') then
     if (edTotal.Value < vComanda) then
     begin
       vResultado := vComanda;
       edEntrada.Value := vResultado;
       edValorPago.Value := vResultado;
     end
     else
     begin
       vResultado := (edTotal.Value - edDesconto.Value);
       edEntrada.Value := vResultado;
       edValorPago.Value := vResultado;
     end;
  end;
end;

procedure TfCaixaReceber.edValorPagoExit(Sender: TObject);
begin
 if (statusdavenda = '') then
   edTroco.Value := edValorPago.Value - edEntrada.Value;
end;

procedure TfCaixaReceber.edDescontoExit(Sender: TObject);
begin
 if (statusdavenda = '') then
  edValorPago.Value := edEntrada.Value;
end;

procedure TfCaixaReceber.edEntradaExit(Sender: TObject);
begin
 if (statusdavenda = '') then
  edValorPago.Value := edEntrada.Value;
end;

procedure TfCaixaReceber.FormCreate(Sender: TObject);
var utilcrtitulo : Tutils;
    i, j : integer;
begin
  utilcrtitulo := Tutils.Create;
  // Popula Status
  j := utilcrtitulo.Forma.Count;
  for i := 0 to j - 1 do
  begin
    cbForma.Items.Add(utilcrtitulo.Forma.Strings[i]);
  end;
  sVendedor.Open;
  sVendedor.First;
  cbVendedor.Items.Clear;
  while not sVendedor.Eof do
  begin
     cbVendedor.Items.Add(sVendedorNOME_FUNCIONARIO.AsString);
     sVendedor.Next;
  end;
  sVendedor.Close;
  sClientes.Open;
  sClientes.First;
  cbCliente.Items.Clear;
  while not sClientes.Eof do
  begin
     cbCliente.Items.Add(sClientesNOMECLIENTE.AsString);
     sClientes.Next;
  end;
  sClientes.Close;
end;

procedure TfCaixaReceber.atualizaserie;
var utilcrtitulo : Tutils;
    numTitulo : integer;
    serie, strSql : string;
begin
    numTitulo := StrToInt(edtNF.Text);
    if (sds_s.Active) then
      sds_s.Close;
    sds_s.CommandText := 'SELECT SERIE, ULTIMO_NUMERO FROM SERIES WHERE SERIE = ' + '''' + edSerie.Text + '''';
    sds_s.open;
    serie := sds_s.Fields[0].AsString;
    numTitulo := sds_s.Fields[1].AsInteger + 1;
    strSql := 'UPDATE SERIES SET ULTIMO_NUMERO = ';
    strSql := strSql + IntToStr(numTitulo);
    strSql := strSql + ' where SERIE = ';
    strSql := strSql + '''' + serie + '''';
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(strSql);
    Try
         dm.sqlsisAdimin.Commit(TD);
    except
         dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
         MessageDlg('Erro no sistema, a Tabela Série não foi atualizada.', mtError,
             [mbOk], 0);
    end;
end;

procedure TfCaixaReceber.JvDBGrid3DblClick(Sender: TObject);
begin
    if (cTituloSITUACAO.AsString = '5-') then
    begin
      edEntrada.Value := cTituloVALOR_RESTO.Value;
      btnAlteraTitulo.Enabled := True;
      edEntrada.Enabled := True;
      edDocumento.Enabled := True;
      cbForma.Enabled := True;
      lbForma.Enabled := True;
      lbDoc.Enabled := True;
      edEntrada.SetFocus;
      statusRecebimento := 'EDITANDO';    
    end;
end;

procedure TfCaixaReceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    statusdavenda := '';
end;

procedure TfCaixaReceber.btnAlteraTituloClick(Sender: TObject);
var  utilcrtitulo : Tutils;
     vCodVenda, vCodTitulo : integer;
begin
  vCodVenda := cTituloCODVENDA.AsInteger;
  vCodTitulo := cTituloCODRECEBIMENTO.AsInteger;
  if (cTitulo.State in [dsBrowse]) then
    cTitulo.Edit;
  if (edBanco.Text <> '') then
      cTituloBANCO.AsString := edBanco.Text;
  if (edAgencia.Text <> '') then
    cTituloAGENCIA.AsString := edAgencia.Text;
  if (edConta.Text <> '') then
    cTituloCONTA.AsString := edConta.Text;
  cTituloDATACONSOLIDA.AsDateTime := edConsolida.Date;
  if (edDocumento.Text <> '') then
    cTituloN_DOCUMENTO.AsString := edDocumento.Text;
  cTituloVALORRECEBIDO.Value := edEntrada.Value;
  cTituloSTATUS.AsString := '7-';
  utilcrtitulo := Tutils.Create;
  cTituloFORMARECEBIMENTO.AsString := utilcrtitulo.pegaForma(CbForma.Text);
  cTitulo.ApplyUpdates(0);
  if (cTitulo.Active) then
    cTitulo.Close;
  cTitulo.Params[0].AsInteger := vCodVenda;
  cTitulo.Open;
  cTitulo.Locate('CODRECEBIMENTO', vCodTitulo, [loCaseInsensitive]);
  cTitulo.Next;
  if (cTituloSTATUS.AsString = '5-') then
  begin
     edEntrada.Value := cTituloVALOR_RESTO.Value;
     edEntrada.SetFocus;
  end
  else
    btnAlteraTitulo.Enabled := False;
  statusRecebimento := 'CONSULTA';
end;

procedure TfCaixaReceber.BitBtn4Click(Sender: TObject);
begin
  if (cTitulo.Locate('SITUACAO', '5-', [loCaseInsensitive])) then
   exit;
  Close;
end;

procedure TfCaixaReceber.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfCaixaReceber.imprimecomprovante;
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
  IMPRESSORA:TextFile;
  Texto,Texto1,Texto2,Texto3,Texto4,texto5, texto6, texto7, logradouro,cep,fone : string;//Para recortar parte da descrição do produto,nome
  total, porc, totgeral : double;
  porta : string;
  vNomeCliente, vEnderecoCliente, vFonecli : string;
Begin
  {------Pesquisando na tab Parametro Centro de Receita Padrão ---------}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'PORTA IMPRESSORA';
  dm.cds_parametro.Open;
  if not dm.cds_parametro.IsEmpty then
  begin
    porta := dm.cds_parametroDADOS.AsString;
  end
  else
  begin
    dm.cds_parametro.Append;
    dm.cds_parametroDESCRICAO.AsString := 'Porta usada para impressoras de CUPOM';
    dm.cds_parametroPARAMETRO.AsString := 'PORTA IMPRESSORA';
    dm.cds_parametroDADOS.AsString := 'LPT1:';
    dm.cds_parametro.ApplyUpdates(0);
    porta := 'LPT1:';
  end;
  // Imprimindo
  if (not dm.cds_empresa.Active) then
    dm.cds_empresa.Open;
  {----- aqui monto o endereço-----}
  Texto  := '                NINFAS N. CLUB                ' ;
  Texto1 := '----------------------------------------------' ;
  Texto2 := '                  COMPROVANTE                 ' ;
  Texto7 := fControle.cMesasNOMECLIENTE.AsString;
  Texto3 := 'Dia : ' + DateTimeToStr(Now);
  Texto4 := 'Iten         Qtde    V.Un.     V.Total' ;
  Texto5 := '----------------------------------------------';
  {-----------------------------------------------------------}
  {-------------------Imprimi Cabeçalho-----------------------}
  // Para gravar em arquivo
  //OpenDialog1.Execute;
  //AssignFile(IMPRESSORA, OpenDialog1.FileName);
  AssignFile(IMPRESSORA,porta);
  Rewrite(IMPRESSORA);
  Writeln(Impressora, c10cpi, texto);
  Writeln(Impressora, c10cpi, texto1);
  Writeln(Impressora, c10cpi, texto2);
  Writeln(Impressora, c10cpi + Format('%-38s',['----------------------------------------------']));
  Writeln(Impressora, c10cpi, texto7);  //CLIENTE
  Writeln(Impressora, c10cpi, texto3);  //DATA
  Writeln(Impressora, c10cpi, texto5);
  Writeln(Impressora, c10cpi, texto4);
  Writeln(Impressora, c10cpi + Format('%-38s',['----------------------------------------------']));
  {-----------------------------------------------------------}
  {-------------------Imprimi itens do boleto-----------------}
  fControle.cds_Mov_det.First;
  while not fControle.cds_Mov_det.Eof do
  begin
    fControle.cds_Mov_det.RecordCount;
    texto6 := fControle.cds_Mov_detCODPRO.AsString + '-';
    texto6 := texto6 + Copy(fControle.cds_Mov_detDESCPRODUTO.Value, 0, 38);
    Writeln(Impressora, c17cpi, texto6);
    //Write(Impressora, c17cpi, Format('%-13s  ',['']));
    Write(Impressora, c10cpi + Format('               %-1.0n',[fControle.cds_Mov_detQUANTIDADE.AsFloat]));
    Write(Impressora, c10cpi + Format('     %-8.2n',[fControle.cds_Mov_detPRECO.AsFloat]));
    Writeln(Impressora, c10cpi + Format(' %-9.2n',[fControle.cds_Mov_detValorTotal.value]));
    fControle.cds_Mov_det.next;
  end;
  {-----------------------------------------------------------}
  {-------------------Imprimi final do Pedido-----------------}
  Writeln(Impressora, c10cpi + Format('%-38s',['----------------------------------------------']));
  Writeln(IMPRESSORA);
  Texto5 := '               Total : R$   ';
  Write(Impressora, c10cpi, texto5);
  total := edTotal.Value;
  Writeln(Impressora, c10cpi + Format('   %-6.2n',[total]));

  Texto1 := '             Comanda : R$   ';
  Write(Impressora, c10cpi, texto1);
  total := edComissao.Value;
  Writeln(Impressora, c10cpi + Format('   %-6.2n',[total]));

  Texto2 := '            Desconto : R$   ';
  Write(Impressora, c10cpi, texto2);
  total := edDesconto.Value;
  Writeln(Impressora, c10cpi + Format('   %-6.2n',[total]));

  Texto3 := '             a Pagar : R$   ';
  Write(Impressora, c10cpi, texto3);
  total := edValorPago.Value;
  Writeln(Impressora, c10cpi + Format('   %-6.2n',[total]));


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
end;

procedure TfCaixaReceber.BitBtn3Click(Sender: TObject);
begin
  imprimecomprovante;
end;

procedure TfCaixaReceber.edPorcentoChange(Sender: TObject);
var desconto : double;
begin
  if (statusdavenda <> 'FINALIZADA') then
  begin
    edDesconto.Value := vValorDesc;
    if (edDesconto.Value > 0) then
      if (edPorcento.Value > 0) then
      begin
        desconto := edTotal.Value * ((edPorcento.Value / 100));
        edDesconto.Value := edDesconto.Value + desconto;
      end;
    if (edDesconto.Value = 0) then
      if (edPorcento.Value > 0) then
        edDesconto.Value := edTotal.Value * ((edPorcento.Value / 100));
  end;
end;

end.
