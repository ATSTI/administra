unit uApontHoras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, StdCtrls, Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, DB, Menus, XPMenu, Buttons,
  ExtCtrls, MMJPanel, Grids, DBGrids, JvExDBGrids, JvDBGrid, ComCtrls,
  JvExStdCtrls, JvEdit, JvValidateEdit, FMTBcd, DBClient, Provider, SqlExpr,
  DBCtrls, JvDBControls, rpcompobase, rpvclreport, DBxPress, DBLocal,
  DBLocalS;

type
  TfApontHoras = class(TfPai)
    pnl1: TPanel;
    grp3: TGroupBox;
    grp2: TGroupBox;
    cbb1: TComboBox;
    grp1: TGroupBox;
    grp4: TGroupBox;
    pnl3: TPanel;
    JvDBGrid1: TJvDBGrid;
    grp5: TGroupBox;
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    edt10: TEdit;
    lbl11: TLabel;
    medt6: TMaskEdit;
    lbl12: TLabel;
    medt7: TMaskEdit;
    lbl13: TLabel;
    edt11: TEdit;
    lbl14: TLabel;
    medt8: TMaskEdit;
    lbl15: TLabel;
    edt12: TEdit;
    lbl16: TLabel;
    medt9: TMaskEdit;
    lbl17: TLabel;
    medt10: TMaskEdit;
    lbl18: TLabel;
    lbl19: TLabel;
    lbl20: TLabel;
    lbl21: TLabel;
    lbl22: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edt7: TEdit;
    lbl4: TLabel;
    JvValidateEdit1: TJvValidateEdit;
    JvValidateEdit2: TJvValidateEdit;
    JvValidateEdit3: TJvValidateEdit;
    JvValidateEdit4: TJvValidateEdit;
    JvValidateEdit5: TJvValidateEdit;
    JvValidateEdit6: TJvValidateEdit;
    JvValidateEdit7: TJvValidateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    sApontHoras: TSQLDataSet;
    dApont: TDataSetProvider;
    dsApont: TClientDataSet;
    sApontDet: TSQLDataSet;
    dApontDet: TDataSetProvider;
    dsApontDet: TClientDataSet;
    ds3: TDataSource;
    sApontHorasID_APONTHORAS: TIntegerField;
    sApontHorasCOD_CLIENTE: TIntegerField;
    sApontHorasCOD_FORNECEDOR: TIntegerField;
    sApontHorasCOD_USUARIO: TIntegerField;
    sApontHorasDATA_MOVIMENTO: TDateField;
    sApontHorasCOD_PRODUTO: TIntegerField;
    sApontHorasCOD_CC: TIntegerField;
    sApontHorasNOMEFORNECEDOR: TStringField;
    sApontHorasNOMECLIENTE: TStringField;
    sApontHorasPRODUTO: TStringField;
    dbedtCOD_CLIENTE: TDBEdit;
    dbedtNOMECLIENTE: TDBEdit;
    dsApontID_APONTHORAS: TIntegerField;
    dsApontCOD_CLIENTE: TIntegerField;
    dsApontCOD_FORNECEDOR: TIntegerField;
    dsApontCOD_USUARIO: TIntegerField;
    dsApontDATA_MOVIMENTO: TDateField;
    dsApontCOD_PRODUTO: TIntegerField;
    dsApontCOD_CC: TIntegerField;
    dsApontNOMEFORNECEDOR: TStringField;
    dsApontNOMECLIENTE: TStringField;
    dsApontPRODUTO: TStringField;
    dbedtNOMEFORNECEDOR: TDBEdit;
    dbedtCOD_FORNECEDOR: TDBEdit;
    dbedtPRODUTO: TDBEdit;
    dbedtCODPRO: TDBEdit;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    dsApontDetID_APONTHORASDET: TIntegerField;
    dsApontDetID_APONTHORAS: TIntegerField;
    dsApontDetDATA: TDateField;
    dsApontDetTAREFA_LOCAL: TStringField;
    dsApontDetINICIO: TTimeField;
    dsApontDetTERMINO: TTimeField;
    dsApontDetOBS: TStringField;
    dsApontDetKM: TFloatField;
    dsApontDetKM_VALOR: TFloatField;
    dsApontDetKM_TOTAL: TFloatField;
    dsApontDetDESPESA: TFloatField;
    dsApontDetPEDAGIO: TFloatField;
    dsApontDetVALOR_HORA: TFloatField;
    dsApontDetTOTAL_HORA: TFloatField;
    dsApontDetTOTAL_GERAL: TFloatField;
    dsApontDetN_RELATORIO: TIntegerField;
    sApontDetID_APONTHORASDET: TIntegerField;
    sApontDetID_APONTHORAS: TIntegerField;
    sApontDetDATA: TDateField;
    sApontDetTAREFA_LOCAL: TStringField;
    sApontDetINICIO: TTimeField;
    sApontDetTERMINO: TTimeField;
    sApontDetOBS: TStringField;
    sApontDetKM: TFloatField;
    sApontDetKM_VALOR: TFloatField;
    sApontDetKM_TOTAL: TFloatField;
    sApontDetDESPESA: TFloatField;
    sApontDetPEDAGIO: TFloatField;
    sApontDetVALOR_HORA: TFloatField;
    sApontDetTOTAL_HORA: TFloatField;
    sApontDetTOTAL_GERAL: TFloatField;
    sApontDetN_RELATORIO: TIntegerField;
    JvDBDateEdit1: TJvDBDateEdit;
    grp6: TGroupBox;
    dbedtID: TDBEdit;
    ds_ccusto: TClientDataSet;
    ds_ccustoCODIGO: TIntegerField;
    ds_ccustoCONTA: TStringField;
    ds_ccustoNOME: TStringField;
    d_2: TDataSetProvider;
    s_2: TSQLDataSet;
    s_2CODIGO: TIntegerField;
    s_2CONTA: TStringField;
    s_2NOME: TStringField;
    VCLReport1: TVCLReport;
    sApontHorasCODPRO: TStringField;
    dsApontCODPRO: TStringField;
    scds_proc: TSQLClientDataSet;
    scds_procDATA_MOVIMENTO: TDateField;
    scds_procNOMEFORNECEDOR: TStringField;
    scds_procID_APONTHORAS: TIntegerField;
    JvDateEdit1: TJvDateEdit;
    lbl5: TLabel;
    procedure btnIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fApontHoras: TfApontHoras;

implementation

uses UDm, uProcurar_nf, UDMNF, uProcurar, ufprocura_prod;

{$R *.dfm}

procedure TfApontHoras.btnIncluirClick(Sender: TObject);
begin
  inherited;
  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(gen_aponthoras, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  dsApontID_APONTHORAS.AsInteger := dm.c_6_genidCODIGO.AsInteger;
  dm.c_6_genid.Close;
  dsApontDATA_MOVIMENTO.Value := Now;
end;

procedure TfApontHoras.FormCreate(Sender: TObject);
begin
//  inherited;

end;

procedure TfApontHoras.BitBtn1Click(Sender: TObject);
begin
//  inherited;
  if (dtsrc.State in [dsInsert, dsEdit]) then
  begin
    DM.varNomeCliente := '';
    dm.codcli := 0;
    fProcurar_nf := TfProcurar_nf.Create(self,dmnf.scds_cli_proc);
    fProcurar_nf.BtnProcurar.Click;
    fProcurar_nf.EvDBFind1.DataField := 'NOMECLIENTE';
    fProcurar_nf.btnIncluir.Visible := True;
    try
      if (fProcurar_nf.ShowModal = mrOK) then
        if dmnf.scds_cli_procSTATUS.AsInteger = 2 then
        begin
          MessageDlg('Cliente com status "INATIVO"', mtError, [mbOK], 0);
          exit;
        end;
        if dmnf.scds_cli_procBLOQUEIO.AsString = 'S' then
        begin
          MessageDlg('Cliente com cadastro "BLOQUEADO",  venda não permitida.', mtError, [mbOK], 0);
          dsApont.Cancel;
          exit;
        end;
    finally
      dsApontCOD_CLIENTE.AsInteger := dm.codcli;//fListaClientes.cdsCODCLIENTE.AsInteger;
      dsApontNOMECLIENTE.AsString := dm.varNomeCliente;//fListaClientes.cdsNOMECLIENTE.AsString;
      dmnf.scds_cli_proc.Close;
      fProcurar_nf.Free;
    end;
  end;
end;

procedure TfApontHoras.BitBtn2Click(Sender: TObject);
begin
//  inherited;
  fProcurar:= TfProcurar.Create(self,dm.scds_forn_proc);
  dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
  dm.scds_forn_proc.Params.ParamByName('pSegmento').AsInteger := 0;
  fProcurar.RadioGroup2.Visible := True;
  fProcurar.BtnProcurar.Click;
  fProcurar.EvDBFind1.DataField := 'NOMEFORNECEDOR';
  fProcurar.btnIncluir.Visible := True;
  try
    fProcurar.ShowModal;
    if dtSrc.State=dsBrowse then
      dsApont.Edit;
    dsApontCOD_FORNECEDOR.AsInteger := dm.scds_forn_procCODFORNECEDOR.AsInteger;
    dsApontNOMEFORNECEDOR.AsString := dm.scds_forn_procNOMEFORNECEDOR.AsString;
  finally
    dm.scds_forn_proc.Close;
    fProcurar.Free;
  end;
end;

procedure TfApontHoras.FormShow(Sender: TObject);
begin
//  inherited;
    //Vejo quais são as contas de Receitas para listar no combobox.
    if dm.cds_parametro.Active then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'CENTRORECEITA';
    dm.cds_parametro.Open;
    if ds_ccusto.Active then
      ds_ccusto.Close;
    ds_ccusto.Params[0].AsString := dm.cds_parametroDADOS.AsString;
    ds_ccusto.Open;
    dm.cds_parametro.Close;
    // populo a combobox
    ds_ccusto.First;
    while not ds_ccusto.Eof do
    begin
      cbb1.Items.Add(ds_ccustoNOME.AsString);
      ds_ccusto.Next;
    end;
end;

procedure TfApontHoras.BitBtn3Click(Sender: TObject);
var sql, sql1: string;
begin
  fProcura_prod.cbTipo.ItemIndex := 5;
  fProcura_prod.btnIncluir.Visible := true;
  fProcura_prod.Panel1.Visible := false;
  fProcura_prod.Panel2.Visible := true;
  fProcura_prod.BitBtn1.Click;
  fProcura_prod.ShowModal;

  dsApontCOD_PRODUTO.AsInteger := fProcura_prod.cds_procCODPRODUTO.AsInteger;
  dsApontCODPRO.AsString := fProcura_prod.cds_procCODPRO.AsString;
  dsApontPRODUTO.asString := fProcura_prod.cds_procPRODUTO.AsString;

end;

procedure TfApontHoras.BitBtn4Click(Sender: TObject);
var
  texto_sql : string;
  TD: TTransactionDesc;  
begin
  if (dsApont.State in [dsInsert, dsEdit]) then
    btnGravar.Click;
//  inherited;
  texto_sql := 'INSERT INTO APONTHORASDET(ID_APONTHORASDET, ID_APONTHORAS, DATA, ' +
               'TAREFA_LOCAL, INICIO, TERMINO, OBS, KM, KM_VALOR, ' +
               'KM_TOTAL, DESPESA, PEDAGIO, VALOR_HORA, TOTAL_HORA, ' +
               'TOTAL_GERAL, N_RELATORIO) ' + ' VALUES (';
  texto_sql := texto_sql + 'gen_id(gen_aponthorasdet, 1)' +  ', ';
  texto_sql := texto_sql + dbedtID.Text +  ', ';
  texto_sql := texto_sql + QuotedStr(FormatDateTime('MM/dd/yyyy', JvDateEdit1.Date)) + ', ';
  texto_sql := texto_sql + QuotedStr(edt10.Text) + ', ';
  texto_sql := texto_sql + QuotedStr(medt6.Text) + ', '; //Inicio
  texto_sql := texto_sql + QuotedStr(medt7.Text) + ', '; //Termino
  texto_sql := texto_sql + QuotedStr(edt11.Text) + ', '; //Obs
  texto_sql := texto_sql + 'null' + ', ';//KM
  texto_sql := texto_sql + 'null' + ', ';//KM_VALOR
  texto_sql := texto_sql + 'null' + ', ';//KM_TOTAL
  texto_sql := texto_sql + 'null' + ', ';//DESPESA
  texto_sql := texto_sql + 'null' + ', ';//PEDAGIO
  texto_sql := texto_sql + 'null' + ', ';//VALOR_HORA
  texto_sql := texto_sql + 'null' + ', ';//TOTAL_TOTAL
  texto_sql := texto_sql + 'null' + ', ';//TOTAL_GERAL
  texto_sql := texto_sql + 'null' + ') ';//N_REALTORIO
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  dm.sqlsisAdimin.ExecuteDirect(texto_sql);
  dm.sqlsisAdimin.Commit(TD);
  if (dsApontDet.Active) then
    dsApontDet.Close;
  dsApontDet.Params[0].AsInteger := dsApontID_APONTHORAS.AsInteger;
  dsApontDet.Open;
end;

procedure TfApontHoras.btnGravarClick(Sender: TObject);
begin
//  inherited;
  dsApont.ApplyUpdates(0);
end;

procedure TfApontHoras.btnProcurarClick(Sender: TObject);
begin
//  inherited;
    DM.varNomeCliente := '';
    dm.codcli := 0;
    fProcurar_nf := TfProcurar_nf.Create(self,scds_proc);
    fProcurar_nf.BtnProcurar.Click;
    fProcurar_nf.EvDBFind1.DataField := 'NOMEFORNECEDOR';
    fProcurar_nf.btnIncluir.Visible := True;
    try
      if (fProcurar_nf.ShowModal = mrOK) then
      begin
        if (dsApont.Active) then
          dsApont.Close;
        dsApont.Params[0].AsInteger := scds_procID_APONTHORAS.AsInteger;
        dsApont.Open;
        if (dsApontDet.Active) then
          dsApontDet.Close;
        dsApontDet.Params[0].AsInteger := scds_procID_APONTHORAS.AsInteger;
        dsApontDet.Open;
        scds_proc.Close;
      end
    finally
      fProcurar_nf.Free;
    end;

end;

procedure TfApontHoras.BitBtn5Click(Sender: TObject);
begin
//  inherited;
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     ds3.DataSet.Delete;
     (ds3.DataSet as TClientDataSet).ApplyUpdates(0);
  end
  else
    exit;
end;

procedure TfApontHoras.BitBtn6Click(Sender: TObject);
begin
 // inherited;
  (ds3.DataSet as TClientDataSet).ApplyUpdates(0);
end;

end.
