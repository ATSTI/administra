unit uDetalhe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Mask, DB, dbxpress, dbClient;

type
  TfDetalhe = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    dbeCodpro: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    btnSair: TBitBtn;
    DBNavigator1: TDBNavigator;
    btnGravar: TBitBtn;
    btnProdutoProcura: TBitBtn;
    DBEdit4: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    Label27: TLabel;
    DBEdit26: TDBEdit;
    Label28: TLabel;
    DBEdit27: TDBEdit;
    Label29: TLabel;
    DBEdit28: TDBEdit;
    ds1: TDataSource;
    DBEdit29: TDBEdit;
    Label30: TLabel;
    DBEdit30: TDBEdit;
    Label31: TLabel;
    DBCheckBox1: TDBCheckBox;
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbeCodproExit(Sender: TObject);
    procedure btnProdutoProcuraClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
      detcodMovimento: Integer;
    { Public declarations }
  end;

var
  fDetalhe: TfDetalhe;

implementation

uses UDm, UDMNF, ufprocura_prod, uCompra, uVendas;

{$R *.dfm}

procedure TfDetalhe.btnGravarClick(Sender: TObject);
var codmovdet : integer;
TD: TTransactionDesc;
cm: string;
begin
  //********************************************************************************
  TD.TransactionID  := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  Try
    dm.sqlsisAdimin.StartTransaction(TD);
    cm := 'ALTER TRIGGER CALCULA_ICMS_ST INACTIVE;';
    dm.sqlsisAdimin.ExecuteDirect(cm);
    dm.sqlsisAdimin.Commit(TD);
    if (ds1.DataSet.State in [dsEdit, dsInsert]) then
    begin
      dm.sqlsisAdimin.StartTransaction(TD);
      if (ds1.DataSet = fCompra.DtSrc1.DataSet) then
        fCompra.cds_Mov_detPAGOU.AsString := 'M';
      ds1.DataSet.Post;
      (Ds1.DataSet as TClientDataset).ApplyUpdates(0);
      dm.sqlsisAdimin.Commit(TD);
    end;
    dm.sqlsisAdimin.StartTransaction(TD);
    cm := 'ALTER TRIGGER CALCULA_ICMS_ST ACTIVE;';
    dm.sqlsisAdimin.ExecuteDirect(cm);
    dm.sqlsisAdimin.Commit(TD);
  except
    on E : Exception do
    begin
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      dm.sqlsisAdimin.Rollback(TD);
    end;
  end;
  
end;

procedure TfDetalhe.FormShow(Sender: TObject);
begin
{  dmnf.cds_Mov_det.Close;
  dmnf.cds_Mov_det.Params[0].AsInteger := detcodMovimento;
  dmnf.cds_Mov_det.Open;}
  if (fCompra.DtSrc1.DataSet.State in [dsInsert, dsEdit, dsBrowse]) then
    ds1.DataSet := fCompra.DtSrc1.DataSet;
  if (fVendas.DtSrc1.DataSet.State in [dsInsert, dsEdit, dsBrowse]) then
    ds1.DataSet := fVendas.DtSrc1.DataSet;

end;

procedure TfDetalhe.dbeCodproExit(Sender: TObject);
var sql: String;
begin
if (fCompra.DtSrc1.State in [dsInsert, dsEdit]) then
  begin

  if (dm.codBarra = 'N') then
  begin
    if (fCompra.dtSrc1.State in [dsInsert, dsEdit]) then
    begin
    if (dbeCodpro.Text = '') then
    begin
      exit;
    end;
    if fCompra.DtSrc1.DataSet.State in [dsInactive] then
      if dbeCodpro.Text='' then exit;
    //begin
      if fCompra.DtSrc1.DataSet.State in [dsBrowse] then
         fCompra.DtSrc1.DataSet.Edit;
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
      fCompra.cds_Mov_detCODPRODUTO.AsInteger := dm.scds_produto_procCODPRODUTO.AsInteger;
      fCompra.cds_Mov_detDESCPRODUTO.Value := dm.scds_produto_procPRODUTO.Value;
      fCompra.cds_Mov_detCOD_COMISSAO.AsInteger := dm.scds_produto_procCOD_COMISSAO.AsInteger;
      fCompra.cds_Mov_detUN.AsString := dm.scds_produto_procUNIDADEMEDIDA.AsString;
      if ( fCompra.cds_Mov_detQTDE_PCT.AsFloat < 1) then
        fCompra.cds_Mov_detQTDE_PCT.AsFloat := 1;
      fCompra.cds_Mov_detUN.AsString := dm.scds_produto_procUNIDADEMEDIDA.AsString;
      if ( fCompra.cds_Mov_detQUANTIDADE.AsFloat < 1) then
        fCompra.cds_Mov_detQUANTIDADE.AsFloat := 1;
      fCompra.cds_Mov_detQTDE_ALT.AsFloat := 0;
      fCompra.cds_Mov_detPRECOCUSTO.AsFloat := dm.scds_produto_procPRECOMEDIO.AsFloat;
      if dm.scds_produto_procQTDE_PCT.AsFloat > 1 then
         fCompra.cds_Mov_detPRECO.AsFloat :=
         dm.scds_produto_procVALOR_PRAZO.AsFloat / dm.scds_produto_procQTDE_PCT.AsFloat
      else
         fCompra.cds_Mov_detPRECO.AsFloat := dm.scds_produto_procVALOR_PRAZO.AsFloat;
      fCompra.cds_Mov_detCODALMOXARIFADO.AsInteger := dm.scds_produto_procCODALMOXARIFADO.AsInteger;
      fCompra.cds_Mov_detALMOXARIFADO.AsString := '';
      fCompra.cds_Mov_detICMS.AsFloat := dm.scds_produto_procICMS.AsFloat;
    end;
  end
  else
  begin
  if (fCompra.DtSrc1.DataSet.State in [dsInsert]) then
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
             ', RATEIO, conta_despesa , IPI, OBS, ORIGEM, NCM  '  +
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
        fCompra.cds_Mov_detCODPRODUTO.AsInteger := dm.scds_produto_procCODPRODUTO.AsInteger;
        fCompra.cds_Mov_detDESCPRODUTO.Value := dm.scds_produto_procPRODUTO.Value;
        fCompra.cds_Mov_detCOD_COMISSAO.AsInteger := dm.scds_produto_procCOD_COMISSAO.AsInteger;
        fCompra.cds_Mov_detUN.AsString := dm.scds_produto_procUNIDADEMEDIDA.AsString;
        if ( fCompra.cds_Mov_detQTDE_PCT.AsFloat < 1) then
          fCompra.cds_Mov_detQTDE_PCT.AsFloat := 1;
        fCompra.cds_Mov_detUN.AsString := dm.scds_produto_procUNIDADEMEDIDA.AsString;
        if ( fCompra.cds_Mov_detQUANTIDADE.AsFloat < 1) then
          fCompra.cds_Mov_detQUANTIDADE.AsFloat := 1;
        fCompra.cds_Mov_detQTDE_ALT.AsFloat := 0;
        fCompra.cds_Mov_detPRECOCUSTO.AsFloat := dm.scds_produto_procPRECOMEDIO.AsFloat;
        if dm.scds_produto_procQTDE_PCT.AsFloat > 1 then
           fCompra.cds_Mov_detPRECO.AsFloat :=
           dm.scds_produto_procVALOR_PRAZO.AsFloat / dm.scds_produto_procQTDE_PCT.AsFloat
        else
          fCompra.cds_Mov_detPRECO.AsFloat := dm.scds_produto_procVALOR_PRAZO.AsFloat;
        fCompra.cds_Mov_detCODALMOXARIFADO.AsInteger := dm.scds_produto_procCODALMOXARIFADO.AsInteger;
        fCompra.cds_Mov_detALMOXARIFADO.AsString := '';//dm.scds_produto_procALMOXARIFADO.AsString;
        fCompra.cds_Mov_detICMS.AsFloat := dm.scds_produto_procICMS.AsFloat;
      end;
    end;
  end;

end;

procedure TfDetalhe.btnProdutoProcuraClick(Sender: TObject);
begin
  if fCompra.DtSrc1.DataSet.State in [dsInactive] then
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
  var_F := 'formnfCompra';
  fProcura_prod.codcli := fCompra.cds_MovimentoCODCLIENTE.AsInteger;
  fProcura_prod.ShowModal;

  if (procprod = 'PROC_PROD_COMPLETO') then
  begin
    if (fCompra.cds_Mov_det.State in [dsInsert, dsEdit]) then
    begin
      fCompra.cds_Mov_detCODPRO.AsString := fProcura_prod.cds_procCODPRO.AsString;
      fCompra.cds_Mov_detCODPRODUTO.asInteger := fProcura_prod.cds_procCODPRODUTO.AsInteger;
      fCompra.cds_Mov_detDESCPRODUTO.asString := fProcura_prod.cds_procPRODUTO.AsString;
      fCompra.cds_Mov_detPRECO.AsFloat := fProcura_prod.cds_procPRECO_VENDA.AsFloat;
      if ( fProcura_prod.cds_procQTDE_PCT.AsFloat < 1) then
        fCompra.cds_Mov_detQUANTIDADE.AsFloat := 1
      else
        fCompra.cds_Mov_detQUANTIDADE.AsFloat := fProcura_prod.cds_procQTDE_PCT.AsFloat;
      fCompra.cds_Mov_detPRECOCUSTO.AsFloat := fProcura_prod.cds_procPRECOMEDIO.AsFloat;
    end;
  end;
  DBNavigator1.SetFocus;

end;

procedure TfDetalhe.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
