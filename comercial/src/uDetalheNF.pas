unit uDetalheNF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvExDBGrids, JvDBGrid, StdCtrls, Mask, DBCtrls,
  SqlExpr, Provider, DBXpress, Buttons, ExtCtrls, DB, DBClient, FMTBcd;

type
  TfDetalheNF = class(TForm)
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    dbeCodpro: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit11: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Calcman: TCheckBox;
    btnSair: TBitBtn;
    DBNavigator1: TDBNavigator;
    btnGravar: TBitBtn;
    btnProdutoProcura: TBitBtn;
    Label21: TLabel;
    DBEdit4: TDBEdit;
    DBEdit23: TDBEdit;
    Label24: TLabel;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    Label25: TLabel;
    Label26: TLabel;
    Label35: TLabel;
    DBEdit34: TDBEdit;
    DBEdit44: TDBEdit;
    Label45: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit1: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    GroupBox2: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Label27: TLabel;
    Label32: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    GroupBox3: TGroupBox;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label44: TLabel;
    DBEdit43: TDBEdit;
    GroupBox4: TGroupBox;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label53: TLabel;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit52: TDBEdit;
    label22: TLabel;
    Label23: TLabel;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    Label55: TLabel;
    DBEdit53: TDBEdit;
    Label56: TLabel;
    DBEdit54: TDBEdit;
    Label57: TLabel;
    DBEdit55: TDBEdit;
    Label58: TLabel;
    DBEdit56: TDBEdit;
    procedure btnSairClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure dbeCodproExit(Sender: TObject);
    procedure btnProdutoProcuraClick(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure abproc(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Label11Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    tipoFiscalNota: String;
    UFNota : String;
    { Public declarations }
  end;

var
  fDetalheNF: TfDetalheNF;

implementation

uses UDMNF, uNotaf, UDm, ufprocura_prod;

{$R *.dfm}

procedure TfDetalheNF.btnSairClick(Sender: TObject);
begin
  if( dmnf.cds_nf.active) then
    fNotaf.calculaicms(dmnf.cds_nfUF.AsString);
  Close;
end;



procedure TfDetalheNF.btnGravarClick(Sender: TObject);
var codmovdet : integer;
begin
  if (calcman.Checked = True) then
    fNotaf.inativaCalc;

  if (dmnf.cds_Mov_det.State in [dsEdit, dsInsert]) then
    dmnf.cds_mov_det.Post;
  //********************************************************************************
  dmnf.cds_Mov_det.First;
  While not dmnf.cds_Mov_det.Eof do
  begin
    if (dmnf.cds_Mov_detCODDETALHE.AsInteger >= 1999999) then
    begin
      dmnf.cds_Mov_det.Edit;
      if dmnf.cds_Mov_detCODPRODUTO.IsNull then
         dmnf.cds_Mov_detCODPRODUTO.AsInteger := 1;
      dmnf.cds_Mov_detCODMOVIMENTO.AsInteger := dmnf.cds_MovimentoCODMOVIMENTO.AsInteger;
      IF (dmnf.cds_Mov_detQTDE_ALT.IsNull) then
         dmnf.cds_Mov_detQTDE_ALT.AsFloat := 0;
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOVDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      codmovdet := dm.c_6_genid.Fields[0].AsInteger;
      dmnf.cds_Mov_detCODDETALHE.AsInteger := codmovdet;
      dmnf.cds_Mov_det.post;
    end;
    dmnf.cds_Mov_det.Next;
  end;
  dmnf.cds_Mov_det.ApplyUpdates(0);

  if (calcman.Checked = True) then
    fNotaf.ativaCalc;
end;

procedure TfDetalheNF.dbeCodproExit(Sender: TObject);
var sql: String;
begin
  if (dmnf.DtSrc1.State in [dsInsert, dsEdit]) then
  begin
    if (dbeCodpro.Text = dmnf.cds_Mov_detCODPRO.OldValue) then
    begin
      exit;
    end;
  if (dm.codBarra = 'N') then
  begin
    if (dmnf.dtSrc1.State in [dsInsert, dsEdit]) then
    begin
    if (dbeCodpro.Text = '') then
    begin
      exit;
    end;
    if dmnf.DtSrc1.DataSet.State in [dsInactive] then
      if dbeCodpro.Text='' then exit;
    //begin
      if dmnf.DtSrc1.DataSet.State in [dsBrowse] then
         dmnf.DtSrc1.DataSet.Edit;
      if dm.scds_produto_proc.Active then
        dm.scds_produto_proc.Close;
      dm.scds_produto_proc.Params[0].AsInteger := 0;
      dm.scds_produto_proc.Params[1].AsString := dbeCodpro.Text;
      dm.scds_produto_proc.Open;
      if dm.scds_produto_proc.IsEmpty then begin
        MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
        [mbOk], 0);
        //btnProdutoProcura.Click;
        exit;
      end;
      dmnf.cds_Mov_detCODPRODUTO.AsInteger := dm.scds_produto_procCODPRODUTO.AsInteger;
      dmnf.cds_Mov_detDESCPRODUTO.Value := dm.scds_produto_procPRODUTO.Value;
      dmnf.cds_Mov_detLOCALIZACAO.Value := dm.scds_produto_procLOCALIZACAO.Value;
      dmnf.cds_Mov_detCOD_COMISSAO.AsInteger := dm.scds_produto_procCOD_COMISSAO.AsInteger;
      dmnf.cds_Mov_detUN.AsString := dm.scds_produto_procUNIDADEMEDIDA.AsString;
      if ( dmnf.cds_nf.Active) then
        dmnf.cds_Mov_detCFOP.AsString := dmnf.cds_nfCFOP.AsString
      else
        dmnf.cds_Mov_detCFOP.AsString := dmnf.cds_nf1CFOP.AsString;
      if ( dmnf.cds_Mov_detQTDE_PCT.AsFloat < 1) then
        dmnf.cds_Mov_detQTDE_PCT.AsFloat := 1;
      dmnf.cds_Mov_detUN.AsString := dm.scds_produto_procUNIDADEMEDIDA.AsString;
      if ( dmnf.cds_Mov_detQUANTIDADE.AsFloat < 1) then
        dmnf.cds_Mov_detQUANTIDADE.AsFloat := 1;
      dmnf.cds_Mov_detQTDE_ALT.AsFloat := 0;
      dmnf.cds_Mov_detPRECOCUSTO.AsFloat := dm.scds_produto_procPRECOMEDIO.AsFloat;
      if dm.scds_produto_procQTDE_PCT.AsFloat > 1 then
         dmnf.cds_Mov_detPRECO.AsFloat :=
         dm.scds_produto_procVALOR_PRAZO.AsFloat / dm.scds_produto_procQTDE_PCT.AsFloat
      else
         dmnf.cds_Mov_detPRECO.AsFloat := dm.scds_produto_procVALOR_PRAZO.AsFloat;
      dmnf.cds_Mov_detCODALMOXARIFADO.AsInteger := dm.scds_produto_procCODALMOXARIFADO.AsInteger;
      dmnf.cds_Mov_detALMOXARIFADO.AsString := '';
      dmnf.cds_Mov_detICMS.AsFloat := dm.scds_produto_procICMS.AsFloat;
    end;
  end
  else
  begin
  if (dmnf.DtSrc1.DataSet.State in [dsInsert]) then
    begin

        if (dm.codBarra = 'S') then // usa codigo de barra
        begin
          // busca pelo código de barra
          if dm.scds_produto_proc.Active then
            dm.scds_produto_proc.Close;
          sql := 'select CODPRODUTO, CODPRO, PRODUTO, UNIDADEMEDIDA, QTDE_PCT' +
             ', ICMS, CODALMOXARIFADO, PRECO_COMPRAULTIMO as  VALORUNITARIOATUAL ' +
             ', PRECO_VENDA AS VALOR_PRAZO, TIPO, ESTOQUEATUAL, LOCALIZACAO ' +
             ', LOTES  , PRECO_COMPRAMEDIO AS PRECOMEDIO, PESO_QTDE, COD_COMISSAO' +
             ', RATEIO, conta_despesa , IPI, OBS, ORIGEM, NCM '  +
             'from LISTAPRODUTO(:CODPRODUTO, :CODPRO, ' + QuotedStr('TODOSGRUPOS') +
             ', ' + QuotedStr('TODOSSUBGRUPOS') + ' ,' + QuotedStr('TODASMARCAS') +
             ', ' + QuotedStr('TODASAPLICACOES') + ', 0)';
          dm.scds_produto_proc.CommandText := sql + ' WHERE COD_BARRA = ' +
            QuotedStr(dbeCodpro.Text) + ' or CODPRO = ' + QuotedStr(dbeCodpro.Text);
          dm.scds_produto_proc.Params[0].AsInteger := 0;
          dm.scds_produto_proc.Params[1].AsString := 'TODOSPRODUTOS';
          dm.scds_produto_proc.Open;
          if dm.scds_produto_proc.IsEmpty then begin
             MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
            [mbOk], 0);
            //btnProdutoProcura.Click;
            exit;
          end;
        end
        else begin
          // busca pelo código de barra
          if dm.scds_produto_proc.Active then
            dm.scds_produto_proc.Close;
          dm.scds_produto_proc.Params[0].AsInteger := 0;
          dm.scds_produto_proc.Params[1].AsString := 'TODOSPRODUTOS';
          dm.scds_produto_proc.Open;
          if dm.scds_produto_proc.IsEmpty then
          begin
             MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
            [mbOk], 0);
           // btnProdutoProcura.Click;
            exit;
          end;
        end;
        dmnf.cds_Mov_detCODPRODUTO.AsInteger := dm.scds_produto_procCODPRODUTO.AsInteger;
        dmnf.cds_Mov_detDESCPRODUTO.Value := dm.scds_produto_procPRODUTO.Value;
        dmnf.cds_Mov_detLOCALIZACAO.Value := dm.scds_produto_procLOCALIZACAO.Value;
        dmnf.cds_Mov_detCOD_COMISSAO.AsInteger := dm.scds_produto_procCOD_COMISSAO.AsInteger;
        dmnf.cds_Mov_detUN.AsString := dm.scds_produto_procUNIDADEMEDIDA.AsString;
        if ( dmnf.cds_nf.Active) then
          dmnf.cds_Mov_detCFOP.AsString := dmnf.cds_nfCFOP.AsString
        else
          dmnf.cds_Mov_detCFOP.AsString := dmnf.cds_nf1CFOP.AsString;
        if ( dmnf.cds_Mov_detQTDE_PCT.AsFloat < 1) then
          dmnf.cds_Mov_detQTDE_PCT.AsFloat := 1;
        dmnf.cds_Mov_detUN.AsString := dm.scds_produto_procUNIDADEMEDIDA.AsString;
        if ( dmnf.cds_Mov_detQUANTIDADE.AsFloat < 1) then
          dmnf.cds_Mov_detQUANTIDADE.AsFloat := 1;
        dmnf.cds_Mov_detQTDE_ALT.AsFloat := 0;
        dmnf.cds_Mov_detPRECOCUSTO.AsFloat := dm.scds_produto_procPRECOMEDIO.AsFloat;
        if dm.scds_produto_procQTDE_PCT.AsFloat > 1 then
           dmnf.cds_Mov_detPRECO.AsFloat :=
           dm.scds_produto_procVALOR_PRAZO.AsFloat / dm.scds_produto_procQTDE_PCT.AsFloat
        else
          dmnf.cds_Mov_detPRECO.AsFloat := dm.scds_produto_procVALOR_PRAZO.AsFloat;
        dmnf.cds_Mov_detCODALMOXARIFADO.AsInteger := dm.scds_produto_procCODALMOXARIFADO.AsInteger;
        dmnf.cds_Mov_detALMOXARIFADO.AsString := '';//dm.scds_produto_procALMOXARIFADO.AsString;
        dmnf.cds_Mov_detICMS.AsFloat := dm.scds_produto_procICMS.AsFloat;
      end;
    end;
  end;
end;

procedure TfDetalheNF.btnProdutoProcuraClick(Sender: TObject);
begin
  if DMNF.DtSrc1.DataSet.State in [dsInactive] then
   exit;
  fProcura_prod.cbTipo.ItemIndex := 4;
  fProcura_prod.btnIncluir.Visible := true;
  if (procprod <> 'PROC_PROD_COMPLETO') then
  begin
    fProcura_prod.Panel1.Visible := false;
    fProcura_prod.Panel2.Visible := true;
    fProcura_prod.BitBtn1.Click;
  end
  else begin
    fProcura_prod.Panel2.Visible := false;
    fProcura_prod.Panel1.Visible := true;
    if (fProcura_prod.cds_proc.Active) then
      fProcura_prod.cds_proc.Close;
  end;
  varonde := 'compra';
  if (var_f = '') then
    var_F := 'formnfCompra';
  fProcura_prod.codcli := DMNF.cds_MovimentoCODCLIENTE.AsInteger;
  fProcura_prod.ShowModal;

  if (procprod = 'PROC_PROD_COMPLETO') then
  begin
    if (DMNF.cds_Mov_det.State in [dsInsert, dsEdit]) then
    begin
      DMNF.cds_Mov_detCODPRO.AsString := fProcura_prod.cds_procCODPRO.AsString;
      DMNF.cds_Mov_detCODPRODUTO.asInteger := fProcura_prod.cds_procCODPRODUTO.AsInteger;
      DMNF.cds_Mov_detDESCPRODUTO.asString := fProcura_prod.cds_procPRODUTO.AsString;
      DMNF.cds_Mov_detPRECO.AsFloat := fProcura_prod.cds_procPRECO_VENDA.AsFloat;
      if ( fProcura_prod.cds_procQTDE_PCT.AsFloat < 1) then
        DMNF.cds_Mov_detQUANTIDADE.AsFloat := 1
      else
        DMNF.cds_Mov_detQUANTIDADE.AsFloat := fProcura_prod.cds_procQTDE_PCT.AsFloat;
      DMNF.cds_Mov_detPRECOCUSTO.AsFloat := fProcura_prod.cds_procPRECOMEDIO.AsFloat;
    end;
  end;
  DBNavigator1.SetFocus;
end;

procedure TfDetalheNF.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  abproc(Sender);
end;

procedure TfDetalheNF.abproc(Sender: TObject);
begin
  if ( (DMNF.DtSrc1.DataSet.State in [dsInsert, dsEdit]) or (DMNF.DtSrc_NF.DataSet.State in [dsInsert, dsEdit])
     or (DMNF.DtSrc_NF1.DataSet.State in [dsInsert, dsEdit])) then
    btnProdutoProcura.Enabled := true
  else
    btnProdutoProcura.Enabled := false;
  if( dmnf.cds_nf.active) then
    dmnf.cds_nf.edit
  else
    dmnf.cds_nf1.edit;
end;

procedure TfDetalheNF.FormCreate(Sender: TObject);
begin
    if (DMNF.DtSrc1.DataSet.State in [dsBrowse]) then
     DMNF.cds_Mov_det.edit;
end;

procedure TfDetalheNF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (dm.scds_produto_proc.Active) then
  begin
    dm.scds_produto_proc.Close;
    dm.scds_produto_proc.CommandText := 'select CODPRODUTO, CODPRO, PRODUTO, UNIDADEMEDIDA, QTDE_PCT' +
    ', ICMS, CODALMOXARIFADO, PRECO_COMPRAULTIMO as  VALORUNITARIOATUAL ' +
    ', PRECO_VENDA AS VALOR_PRAZO, TIPO, ESTOQUEATUAL, LOCALIZACAO ' +
    ', LOTES  , PRECO_COMPRAMEDIO AS PRECOMEDIO, PESO_QTDE, COD_COMISSAO' +
    ', RATEIO, conta_despesa , IPI, OBS, ORIGEM, NCM  '  +
    'from LISTAPRODUTO(:CODPRODUTO, :CODPRO, ' + QuotedStr('TODOSGRUPOS') +
    ', ' + QuotedStr('TODOSSUBGRUPOS') + ' ,' + QuotedStr('TODASMARCAS') +
    ', ' + QuotedStr('TODASAPLICACOES') + ', 0)';
  end;
end;

procedure TfDetalheNF.Label11Click(Sender: TObject);
var tipoCalculo: String;
begin
  // abre o cfop
  //tipoCalculo := dm.cfopCalculoFiscal(dmnf.cds_Mov_detCFOP.AsString, dmnf.cds_movimentotipofiscal, uf, origem, codproduto, ncm);
end;

procedure TfDetalheNF.FormShow(Sender: TObject);
begin
  if Dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'ALTDESCPRECO';
  dm.cds_parametro.Open;
  if ((dm.cds_parametroCONFIGURADO.AsString = 'S')and (dm.usu_tipovendedor = 0)) then 
  begin
    DBEdit2.ReadOnly := True;
    DBEdit8.ReadOnly := True;
    DBEdit6.ReadOnly := True;
    DBEdit3.ReadOnly := True;  
  end;
end;

end.
