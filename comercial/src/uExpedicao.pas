unit uExpedicao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, FMTBcd, DBClient, Provider, SqlExpr, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, Mask, DBCtrls, JvExMask,
  JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, dbxpress,
  rpcompobase, rpvclreport;

type
  TfExpedicao = class(TfPai_new)
    rgStatus: TRadioGroup;
    GroupBox1: TGroupBox;
    JvDBGrid1: TJvDBGrid;
    dspPedido: TDataSetProvider;
    cdsPedido: TClientDataSet;
    sqlPedido: TSQLDataSet;
    sqlPedidoCODDETALHE: TIntegerField;
    sqlPedidoCODMOVIMENTO: TIntegerField;
    sqlPedidoDATA_ENTREGA: TDateField;
    sqlPedidoCODPRO: TStringField;
    sqlPedidoPRODUTO: TStringField;
    sqlPedidoQUANTIDADE: TFloatField;
    sqlPedidoPRECO: TFloatField;
    sqlPedidoVALTOTAL: TFloatField;
    cdsPedidoCODDETALHE: TIntegerField;
    cdsPedidoCODMOVIMENTO: TIntegerField;
    cdsPedidoDATA_ENTREGA: TDateField;
    cdsPedidoCODPRO: TStringField;
    cdsPedidoPRODUTO: TStringField;
    cdsPedidoQUANTIDADE: TFloatField;
    cdsPedidoPRECO: TFloatField;
    cdsPedidoVALTOTAL: TFloatField;
    sqlPedidoRECEBIDO: TFloatField;
    cdsPedidoRECEBIDO: TFloatField;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    cbMes: TComboBox;
    dta1: TJvDatePickerEdit;
    dta2: TJvDatePickerEdit;
    BitBtn2: TBitBtn;
    sqlPedidoCONTROLE: TStringField;
    cdsPedidoCONTROLE: TStringField;
    sqlPedidoCODPEDIDO: TIntegerField;
    cdsPedidoCODPEDIDO: TIntegerField;
    GroupBox3: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    cbSituacao: TComboBox;
    dtEntrega: TJvDatePickerEdit;
    edExpedicao: TEdit;
    sqlExpedicao: TSQLDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    DateField1: TDateField;
    StringField1: TStringField;
    StringField2: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    StringField3: TStringField;
    IntegerField3: TIntegerField;
    dspExpedicao: TDataSetProvider;
    cdsExpedicao: TClientDataSet;
    BitBtn3: TBitBtn;
    DataSource1: TDataSource;
    sqlExpedicaoCODCLIENTE: TIntegerField;
    sqlExpedicaoNOMECLIENTE: TStringField;
    sqlPedidoCODCLIENTE: TIntegerField;
    sqlPedidoNOMECLIENTE: TStringField;
    cdsPedidoCODCLIENTE: TIntegerField;
    cdsPedidoNOMECLIENTE: TStringField;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    cdsExpedicaoCODDETALHE: TIntegerField;
    cdsExpedicaoCODMOVIMENTO: TIntegerField;
    cdsExpedicaoDATA_ENTREGA: TDateField;
    cdsExpedicaoCODPRO: TStringField;
    cdsExpedicaoPRODUTO: TStringField;
    cdsExpedicaoQUANTIDADE: TFloatField;
    cdsExpedicaoPRECO: TFloatField;
    cdsExpedicaoVALTOTAL: TFloatField;
    cdsExpedicaoRECEBIDO: TFloatField;
    cdsExpedicaoCONTROLE: TStringField;
    cdsExpedicaoCODPEDIDO: TIntegerField;
    cdsExpedicaoCODCLIENTE: TIntegerField;
    cdsExpedicaoNOMECLIENTE: TStringField;
    sqlExpedicaoSTATUS: TStringField;
    cdsExpedicaoSTATUS: TStringField;
    sqlExpedicaoCODALMOXARIFADO: TIntegerField;
    cdsExpedicaoCODALMOXARIFADO: TIntegerField;
    sqlExpedicaoCODPRODUTO: TIntegerField;
    cdsExpedicaoCODPRODUTO: TIntegerField;
    sqlExpedicaoSITUACAO: TSmallintField;
    cdsExpedicaoSITUACAO: TSmallintField;
    BitBtn5: TBitBtn;
    sProc: TSQLStoredProc;
    sqlPedidoCODPRODUTO: TIntegerField;
    cdsPedidoCODPRODUTO: TIntegerField;
    sqlPedidoUN: TStringField;
    cdsPedidoUN: TStringField;
    JvDBGrid2: TJvDBGrid;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    edPedido: TEdit;
    Label2: TLabel;
    edFornec: TEdit;
    btnClienteProcura: TBitBtn;
    edFornecNome: TEdit;
    BitBtn6: TBitBtn;
    VCLReport1: TVCLReport;
    procedure edFornecExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure cdsPedidoBeforePost(DataSet: TDataSet);
    procedure btnProcurarClick(Sender: TObject);
    procedure cbMesChange(Sender: TObject);
    procedure JvDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnClienteProcuraClick(Sender: TObject);
    procedure JvDBGrid1TitleClick(Column: TColumn);
    procedure edPedidoKeyPress(Sender: TObject; var Key: Char);
    procedure edFornecKeyPress(Sender: TObject; var Key: Char);
    procedure edExpedicaoKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    TD: TTransactionDesc;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fExpedicao: TfExpedicao;

implementation

uses uUtils, UDm, uProcurar, uEstoque, uMovimento, uProcurar_nf, UDMNF;

{$R *.dfm}

procedure TfExpedicao.edFornecExit(Sender: TObject);
begin
  //inherited;
   if edFornec.Text = '' then exit;
   if dm.scds_forn_proc.Active then
     dm.scds_forn_proc.Close;
   dm.scds_forn_proc.Params[0].Clear;
   dm.scds_forn_proc.Params[1].Clear;
   dm.scds_forn_proc.Params[2].AsInteger := StrToInt(edFornec.Text);
   dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
   dm.scds_forn_proc.Params.ParamByName('pSegmento').AsInteger := 1;
   dm.scds_forn_proc.Open;
   edFornecNome.Text := dm.scds_forn_procNOMEFORNECEDOR.asString;
end;

procedure TfExpedicao.FormCreate(Sender: TObject);
begin
  //inherited;

end;

procedure TfExpedicao.btnGravarClick(Sender: TObject);
begin
  inherited;
  //Teste
end;

procedure TfExpedicao.cdsPedidoBeforePost(DataSet: TDataSet);
 //var str_sql : string;
  //TD: TTransactionDesc;
begin
  if (cdsPedidoRECEBIDO.AsFloat > cdsPedidoQUANTIDADE.AsFloat) then
  begin
    MessageDlg('Quantidade inválida (Maior do que o pedido).', mtWarning, [mbOK], 0);
    cdsPedido.Cancel;
    exit;
  end;
  {if (cdsPedidoRECEBIDO.AsFloat < cdsPedidoQUANTIDADE.AsFloat) then
  begin
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
    try
      str_sql := 'INSERT '
      dm.sqlsisAdimin.ExecuteDirect(str_sql);
      dm.sqlsisAdimin.Commit(TD);
    except
      dm.sqlsisAdimin.Rollback(TD);
      MessageDlg('Erro para efetuar a baixa.', mtError, [mbOK], 0);
      exit;
    end;
  end;}
  inherited;
end;

procedure TfExpedicao.btnProcurarClick(Sender: TObject);
var str, stra: string;
begin
  stra := '';

  if (cdsPedido.Active) then
    cdsPedido.Close;

  if (rgStatus.ItemIndex = 0) then
  begin
    str := 'select md.CODDETALHE, md.CODMOVIMENTO, m.DATA_ENTREGA, p.CODPRO, p.PRODUTO' +
      ', (md.QUANTIDADE - COALESCE((select sum(mdc.QUANTIDADE) from MOVIMENTO mc, MOVIMENTODETALHE mdc ' +
      ' where mc.CODMOVIMENTO = mdc.CODMOVIMENTO '+
      '   and mc.CODNATUREZA  = 6 '+
      '   and mdc.CODIGO      = m.CODPEDIDO ' +
      '   and mdc.CODPRODUTO  = md.CODPRODUTO),0)) QUANTIDADE ' +
      ',  md.PRECO, md.VALTOTAL , md.RECEBIDO' +
      ',  m.CONTROLE, m.CODPEDIDO , m.CODCLIENTE, cli.NOMECLIENTE, md.codproduto, md.UN ' +
      ' from MOVIMENTODETALHE md ' +
      ' inner join MOVIMENTO m on  m.CODMOVIMENTO  = md.CODMOVIMENTO ' +
      ' inner join PRODUTOS   p on  md.CODPRODUTO    = p.CODPRODUTO ' +
      ' inner join CLIENTES cli on cli.codcliente = m.codcliente ' +
      ' where m.CODNATUREZA   = 3 ';
    stra := stra + ' and ((md.QUANTIDADE - md.RECEBIDO) > 0) ';
    BitBtn1.Enabled := True;
  end;

  if (rgStatus.ItemIndex = 1) then
  begin
    str := 'select md.CODDETALHE, md.CODMOVIMENTO, m.DATA_ENTREGA, p.CODPRO, p.PRODUTO' +
      ', md.QUANTIDADE, md.PRECO, md.VALTOTAL , md.RECEBIDO, md.UN' +
      ',  m.CONTROLE, m.CODPEDIDO, m.CODCLIENTE, cli.NOMECLIENTE , md.codproduto' +
      ' from MOVIMENTODETALHE md ' +
      ' inner join MOVIMENTO m on  m.CODMOVIMENTO  = md.CODMOVIMENTO ' +
      ' inner join PRODUTOS   p on  md.CODPRODUTO    = p.CODPRODUTO ' +
      ' inner join CLIENTES cli on cli.codcliente = m.codcliente ' +
      ' where m.CODNATUREZA   = 6 ';

   // stra := stra + ' and m.STATUS = 0';
    BitBtn1.Enabled := False;
  end;

  if (edFornec.Text <> '') then
  begin
    stra := stra + ' and m.CODCLIENTE = ' + edFornec.Text;
  end;

  if (edPedido.Text <> '') then
  begin
    stra := stra + ' and m.CODPEDIDO = ' + edPedido.Text;
  end;

  // Período
  if ((dta1.Checked) and (dta2.Checked)) then
  begin
    stra := stra + ' and m.DATA_ENTREGA BETWEEN ' +
      QuotedStr(FormatDateTime('mm/dd/yyyy', dta1.Date)) + ' AND '  +
      QuotedStr(FormatDateTime('mm/dd/yyyy', dta2.Date));
  end;

  cdsPedido.CommandText := str + stra;

  cdsPedido.Open;
end;

procedure TfExpedicao.cbMesChange(Sender: TObject);
var  periodo : TUtils;
begin
  periodo := TUtils.Create;
  periodo.criaIni(cbMes.text);
  periodo.criaFim(cbMes.text);
  dta1.Text := periodo.PeriodoIni;
  dta2.Text := periodo.PeriodoFim;
  periodo.Destroy;
end;

procedure TfExpedicao.JvDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = #13) then
  begin
    if (not cdsPedido.Eof) then
      cdsPedido.Next;
  end;
end;

procedure TfExpedicao.BitBtn1Click(Sender: TObject);
var
  tudo, alteraStatus: String;
  codFornec, codMov: Integer;
  fMov: TMovimento;
  jaInclui : Integer;
begin
  if ((edExpedicao.Text = '') or (dtEntrega.Checked = False)) then
  begin
    MessageDlg('Informe a Expedição , e/ou Data Entrega.', mtInformation, [mbOK], 0);
    Exit;
  end;
  if  MessageDlg('Confirma Envio Pedido ?', mtConfirmation, [mbYes, mbNo],0) = mrNo then
     exit;
  //TD.TransactionID := 1;
  //TD.IsolationLevel := xilREADCOMMITTED;
  try
    cdsPedido.DisableControls;
    DecimalSeparator := '.';
  try
    cdsPedido.First;
    cdsPedido.First;
    tudo := 'S';
   Try
     fMov := TMovimento.Create;
     jaInclui := fMov.verMovimento(edExpedicao.Text, 'CONTROLE',  'STRING', 6);
     if (jaInclui = 0) then
     begin
       fMov.CodMov      := 0;
       fMov.CodNatureza := 6;
       fMov.DataMov     := dtEntrega.Date;
       fMov.CodCliente  := cdsPedidoCODCLIENTE.AsInteger;
       fMov.Status      := 0;
       fMov.CodUsuario  := 1;
       fMov.CodVendedor := 1;
       fMov.CodFornec   := 0;
       fmov.Controle    := edExpedicao.Text;
       fMov.DataEntrega := dtEntrega.Date;
       fMov.CodPedido   := cdsPedidoCODPEDIDO.AsInteger;

       codMov := fMov.inserirMovimento(0);
     end
     else begin
       codMov := jaInclui;
     end;
       //dm.sqlsisAdimin.StartTransaction(TD);

     While not cdsPedido.Eof do
      begin
        if (cdsPedidoRECEBIDO.AsFloat > 0) then
        begin
          // Detalhe Natureza 6
          fMov.MovDetalhe.CodMov     := codMov;
          fMov.MovDetalhe.CodProduto := cdsPedidoCODPRODUTO.AsInteger;
          fMov.MovDetalhe.Qtde       := cdsPedidoRECEBIDO.asFloat;
          fMov.MovDetalhe.Preco      := cdsPedidoPRECO.AsFloat;
          fMov.MovDetalhe.Descricao  := cdsPedidoPRODUTO.AsString;
          fMov.MovDetalhe.Desconto   := 0;
          fMov.MovDetalhe.Un         := cdsPedidoUN.AsString;
          fMov.MovDetalhe.Baixa      := '1';
          fMov.MovDetalhe.Codigo     := cdsPedidoCODPEDIDO.AsInteger;
          fMov.MovDetalhe.inserirMovDet;
          {if (cdsPedidoRECEBIDO.AsFloat < cdsPedidoQUANTIDADE.AsFloat) then
          begin
            // Detalhe Natureza 3 - se sobrou qtde a ser entregue deste item
            fDet.CodMov       := cdsPedidoCODMOVIMENTO.AsInteger;
            fDet.CodProduto   := cdsPedidoCODPRODUTO.AsInteger;
            fDet.Qtde         := cdsPedidoQUANTIDADE.AsFloat - cdsPedidoRECEBIDO.asFloat;
            fDet.Preco        := cdsPedidoPRECO.AsFloat;
            fDet.Descricao    := cdsPedidoPRODUTO.AsString;
            fDet.Desconto     := 0;
            fDet.Un           := cdsPedidoUN.AsString;
            //fDet.Baixa        := null;
            fDet.inserirMovDet;
          end;}

          {alteraStatus := 'UPDATE MOVIMENTODETALHE SET RECEBIDO = ' +
            FloatToStr(cdsPedidoRECEBIDO.asFloat) +
            ' WHERE CODDETALHE = ' + IntToStr(cdsPedidoCODDETALHE.AsInteger);
          dm.sqlsisAdimin.ExecuteDirect(alteraStatus);
           }
        end;
        cdsPedido.Next;
      end;
      //dm.sqlsisAdimin.Commit(TD);

      //dm.sqlsisAdimin.Commit(TD);
    Finally
      fMov.Free;
    end;
    {dm.sqlsisAdimin.StartTransaction(TD);
    if (sProc.Active) then
      sProc.Close;
    sProc.ParamByName('CARGA').AsString     := edExpedicao.Text;
    sProc.ParamByName('DATAENTREGA').AsDate := dtEntrega.Date;
    sProc.ExecProc;
    dm.sqlsisAdimin.Commit(TD);}
      // Gravando o Estoque



    // Limpa o CODIGO1 - usado apenas para marcar os Itens que vão ser incluidos
    {alteraStatus := 'UPDATE MOVIMENTODETALHE SET CODIGO1 = NULL WHERE CODIGO1 = 99999';
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(alteraStatus);
    dm.sqlsisAdimin.Commit(TD);}

    MessageDlg('Expedição Gerada com sucesso.', mtInformation, [mbOK], 0);
  except
    //dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro para gravar a Expedição.', mtError, [mbOK], 0);
    DecimalSeparator := ',';
    exit;
  end;
  finally
    cdsPedido.EnableControls;
    DecimalSeparator := ',';
  end;
  bitbtn2.Click;
  BitBtn3.Click;
end;

procedure TfExpedicao.btnClienteProcuraClick(Sender: TObject);
begin
  fProcurar_nf := TfProcurar_nf.Create(self,dmnf.scds_cli_proc);
  fProcurar_nf.BtnProcurar.Click;
  fProcurar_nf.EvDBFind1.DataField := 'NOMECLIENTE';
  fProcurar_nf.btnIncluir.Visible := True;
  try
    fProcurar_nf.ShowModal;
    edFornec.Text     := IntToStr(dm.codcli);
    edFornecNome.Text := dm.varNomeCliente;
  finally
    dmnf.scds_cli_proc.Close;
    fProcurar_nf.Free;
  end;
end;

procedure TfExpedicao.JvDBGrid1TitleClick(Column: TColumn);
var
  enum_IndexOption: TIndexOptions;
  str_IndexAsc,
  str_IndexDesc,
  str_IndexName: String;
begin
//  cdsPedido.IndexFieldNames := Column.FieldName;
  if (Column.Field.FieldKind = fkData) then
  begin
    str_IndexAsc := Concat('asc_',Column.FieldName);
    str_IndexDesc := Concat('desc_',Column.FieldName);

    str_IndexName := '';
    enum_IndexOption := [];

    if (cdsPedido.IndexName = str_IndexAsc) then
    begin
    str_IndexName := str_IndexDesc;
    enum_IndexOption := [ixDescending];
    end
    else if (cdsPedido.IndexName = str_IndexDesc) then
    begin
    str_IndexName := str_IndexAsc;
    end
    else
    begin
    str_IndexName := str_IndexAsc;
    end;

    cdsPedido.IndexDefs.Clear;

    cdsPedido.IndexDefs.Add(str_IndexName,Column.FieldName,enum_IndexOption);
    cdsPedido.IndexName := str_IndexName;
  end;

end;

procedure TfExpedicao.edPedidoKeyPress(Sender: TObject;
  var Key: Char);
begin
 if (key = #13) then
 begin
   bitbtn2.Click;
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfExpedicao.edFornecKeyPress(Sender: TObject;
  var Key: Char);
begin
 if (key = #13) then
 begin
   bitbtn2.Click;
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;

end;

procedure TfExpedicao.edExpedicaoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if (key = #13) then
 begin
   bitbtn2.Click;
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;

end;

procedure TfExpedicao.BitBtn3Click(Sender: TObject);
var sqlQ, sqlX: String;
begin
  sqlQ := 'select md.CODDETALHE, md.CODMOVIMENTO, m.DATA_ENTREGA, p.CODPRO, ' +
    ' p.PRODUTO, md.QUANTIDADE, md.PRECO, md.VALTOTAL , md.RECEBIDO, ' +
    ' m.CONTROLE, md.CODIGO CODPEDIDO, m.CODCLIENTE, cli.NOMECLIENTE, ' +
    ' CASE WHEN m.STATUS = 0 THEN ' + QuotedStr('Pendente') +
    '      WHEN m.STATUS = 1 THEN ' + QuotedStr('Expedido') +
    '      WHEN m.STATUS = 2 THEN ' + QuotedStr('Entregue') +
    '      WHEN m.STATUS = 3 THEN ' + QuotedStr('Cancelado') +
    ' END STATUS , m.CODALMOXARIFADO, md.CODPRODUTO, m.STATUS SITUACAO ' +
    ' from MOVIMENTODETALHE md ' +
    ' inner join MOVIMENTO m on  m.CODMOVIMENTO = md.CODMOVIMENTO ' +
    ' inner join PRODUTOS   p on  md.CODPRODUTO = p.CODPRODUTO ' +
    ' inner join CLIENTES cli on cli.CodCliente = m.CodCliente ' +
    ' WHERE m.CODNATUREZA  = 6 ';

  sqlX := '';

  if (edExpedicao.Text <> '') then
  begin
    sqlX := ' AND UDF_COLLATEBR(m.CONTROLE) LIKE UDF_COLLATEBR(' + QuotedStr(edExpedicao.Text + '%') + ')';
  end;

  if (dtEntrega.Checked) then
  begin
    sqlX := sqlX + ' AND m.DATA_ENTREGA = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', dtEntrega.Date));
  end;

  sqlX := sqlX + ' AND m.STATUS = ' + IntToStr(cbSituacao.ItemIndex);

  if (cdsExpedicao.Active) then
    cdsExpedicao.Close;

  cdsExpedicao.CommandText := sqlQ + sqlX;

  cdsExpedicao.Open;

end;

procedure TfExpedicao.BitBtn4Click(Sender: TObject);
var codMov, SituacaoAtual: Integer;
 strAltera: String;
 FEstoque : TEstoque;
 qtde: Double;
begin
  codMov := 0;
  situacaoAtual := cdsExpedicaoSITUACAO.AsInteger;
  cdsExpedicao.DisableControls;
  cdsExpedicao.First;
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  try
    try
      FEstoque := TEstoque.Create;
      While not cdsExpedicao.Eof do
      begin
        if (codMov <> cdsExpedicaoCODMOVIMENTO.AsInteger) then
        begin
          strAltera := 'UPDATE MOVIMENTO SET STATUS = ' + IntToStr(cbSituacao.ItemIndex) +
           ' WHERE CODMOVIMENTO = ' + IntToStr(cdsExpedicaoCODMOVIMENTO.AsInteger);
          dm.sqlsisAdimin.ExecuteDirect(strAltera);

          if (cbSituacao.ItemIndex = 2) then
          begin
            strAltera := 'UPDATE MOVIMENTODETALHE SET BAIXA = 1 ' +
             ' WHERE CODMOVIMENTO = ' + IntToStr(cdsExpedicaoCODMOVIMENTO.AsInteger);
            dm.sqlsisAdimin.ExecuteDirect(strAltera);
          end;
          codMov := cdsExpedicaoCODMOVIMENTO.AsInteger;
        end;
        // Baixa Estoque
        if ((situacaoAtual <> 2) and (cbSituacao.ItemIndex = 2)) then
        begin
          qtde := cdsExpedicaoQUANTIDADE.AsFloat;
        end;
        // Cancela Baixa do Estoque
        if ((situacaoAtual = 2) and (cbSituacao.ItemIndex <> 2)) then
        begin
          qtde := (-1) * cdsExpedicaoQUANTIDADE.AsFloat;
        end;
        // Rodar Classe que grava Estoque (qtde Positiva baixa o estoque, Negativa cancela Baixa)
        FEstoque.QtdeVenda   := qtde;
        FEstoque.CodProduto  := cdsExpedicaoCODPRODUTO.AsInteger;
        FEstoque.Lote        := '0';
        FEstoque.CentroCusto := cdsExpedicaoCODALMOXARIFADO.AsInteger;
        FEstoque.MesAno      := cdsExpedicaoDATA_ENTREGA.AsDateTime;
        FEstoque.PrecoVenda  := cdsExpedicaoPRECO.AsFloat;
        FEstoque.Status      := '9';
        FEstoque.CodDetalhe  := cdsExpedicaoCODDETALHE.AsInteger;
        FEstoque.inserirMes;
        cdsExpedicao.Next;
      end;
      dm.sqlsisAdimin.Commit(TD);
      cdsExpedicao.EnableControls;
      MessageDlg('Situação da Expedição alterada com sucesso.', mtInformation, [mbOK], 0);
      BitBtn3.Click;
    Finally
      FEstoque.Free;
    end;
  except
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro para alterar a Situação, alteração não realizada.', mtError, [mbOK], 0);
    exit;
  end;


end;

procedure TfExpedicao.BitBtn5Click(Sender: TObject);
begin
  if (cdsExpedicaoSITUACAO.AsInteger = 2) then
  begin
    MessageDlg('Não é possível excluir cotação com situação ENTREGUE.', mtError, [mbOK], 0);
    exit;
  end;
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  try
    dm.sqlsisAdimin.ExecuteDirect('DELETE FROM MOVIMENTODETALHE ' +
    ' WHERE CODDETALHE = ' + IntToStr(cdsExpedicaoCODDETALHE.AsInteger));
    dm.sqlsisAdimin.Commit(TD);
    MessageDlg('Item Excluído com sucesso.', mtInformation, [mbOK], 0);
    BitBtn3.Click;
  except
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro para Excluir o Item.', mtError, [mbOK], 0);
  end;
end;

procedure TfExpedicao.FormShow(Sender: TObject);
begin
  inherited;
  cbSituacao.ItemIndex := 0;
end;

procedure TfExpedicao.BitBtn6Click(Sender: TObject);
begin
  VCLReport1.FileName := str_relatorio + 'expedicao.rep' ; //'expedicao.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('CONTROLE').Value := cdsExpedicaoCONTROLE.AsString;
  VCLReport1.Execute;

end;

end.
