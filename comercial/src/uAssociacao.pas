unit uAssociacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, FMTBcd, SqlExpr, Provider, DBLocal, DBLocalS, DBClient,
  DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel, Mask, DBCtrls;

type
  TfAssociacao = class(TfPai)
    SQLDataSet1: TSQLDataSet;
    SQLDataSet1COD_ASSOCIACAO: TIntegerField;
    SQLDataSet1COD_CLIENTE: TIntegerField;
    SQLDataSet1VALOR: TFloatField;
    SQLDataSet1COD_ASSOCIADO: TIntegerField;
    SQLDataSet1ASSOCIADO: TStringField;
    SQLDataSet1D_VENDA: TDateField;
    SQLDataSet1D_ATRASO: TDateField;
    SQLDataSet1D_ENTRADA: TDateField;
    SQLDataSet1D_RETIRADA: TDateField;
    SQLDataSet1NOMECLIENTE: TStringField;
    SQLDataSet1CNPJ: TStringField;
    SQLDataSet1INSCESTADUAL: TStringField;
    SQLDataSet1DATANASC: TDateField;
    SQLDataSet1LOGRADOURO: TStringField;
    SQLDataSet1BAIRRO: TStringField;
    SQLDataSet1CIDADE: TStringField;
    SQLDataSet1UF: TStringField;
    SQLDataSet1CEP: TStringField;
    SQLDataSet1DOCUMENTO: TStringField;
    SQLDataSet1COD_ENDERECO: TIntegerField;
    SQLDataSet1D_NASC: TDateField;
    DataSetProvider1: TDataSetProvider;
    cds_associacao: TClientDataSet;
    cds_associacaoCOD_ASSOCIACAO: TIntegerField;
    cds_associacaoCOD_CLIENTE: TIntegerField;
    cds_associacaoVALOR: TFloatField;
    cds_associacaoCOD_ASSOCIADO: TIntegerField;
    cds_associacaoASSOCIADO: TStringField;
    cds_associacaoD_VENDA: TDateField;
    cds_associacaoD_ATRASO: TDateField;
    cds_associacaoD_ENTRADA: TDateField;
    cds_associacaoD_RETIRADA: TDateField;
    cds_associacaoNOMECLIENTE: TStringField;
    cds_associacaoCNPJ: TStringField;
    cds_associacaoINSCESTADUAL: TStringField;
    cds_associacaoDATANASC: TDateField;
    cds_associacaoLOGRADOURO: TStringField;
    cds_associacaoBAIRRO: TStringField;
    cds_associacaoCIDADE: TStringField;
    cds_associacaoUF: TStringField;
    cds_associacaoCEP: TStringField;
    cds_associacaoDOCUMENTO: TStringField;
    cds_associacaoCOD_ENDERECO: TIntegerField;
    cds_associacaoD_NASC: TDateField;
    proc_associacao: TSQLClientDataSet;
    proc_associacaoCOD_ASSOCIACAO: TIntegerField;
    proc_associacaoNOMECLIENTE: TStringField;
    prod_cli: TSQLClientDataSet;
    prod_cliLOGRADOURO: TStringField;
    prod_cliBAIRRO: TStringField;
    prod_cliCIDADE: TStringField;
    prod_cliUF: TStringField;
    prod_cliCEP: TStringField;
    prod_cliCODENDERECO: TIntegerField;
    scds_cliente_proc: TSQLClientDataSet;
    scds_cliente_procCODCLIENTE: TIntegerField;
    scds_cliente_procNOMECLIENTE: TStringField;
    scds_cliente_procDATANASC: TDateField;
    scds_cliente_procCNPJ: TStringField;
    scds_cliente_procINSCESTADUAL: TStringField;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    BitBtn8: TBitBtn;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    BitBtn1: TBitBtn;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    procedure BitBtn8Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAssociacao: TfAssociacao;

implementation

uses UDm, uListaClientes, uProcurar;

{$R *.dfm}

procedure TfAssociacao.BitBtn8Click(Sender: TObject);
begin
  inherited;
  fListaClientes:=TfListaClientes.Create(Application);
  try
    fListaClientes.ShowModal;
    if dtSrc.State=dsBrowse then
      DtSrc.DataSet.Edit;
    cds_associacaoCOD_CLIENTE.AsInteger := fListaClientes.cdsCODCLIENTE.AsInteger;
    cds_associacaoNOMECLIENTE.AsString := fListaClientes.cdsNOMECLIENTE.AsString;
    if fListaClientes.cdsDATANASC.AsString <> '' then
     cds_associacaoD_NASC.AsDateTime := fListaClientes.cdsDATANASC.AsDateTime
    else
     cds_associacaoD_NASC.AsString:='';
    cds_associacaoCNPJ.AsString := fListaClientes.cdsCNPJ.AsString;
    cds_associacaoINSCESTADUAL.AsString := fListaClientes.cdsINSCESTADUAL.AsString;
    fListaClientes.cdsNOMECLIENTE.AsString;
  finally
   fListaClientes.cds.Close;
   fListaClientes.Free;
  end;
  DBEdit3.SetFocus;
end;

procedure TfAssociacao.btnGravarClick(Sender: TObject);
begin
  if (DtSrc.DataSet.State in [dsInsert]) then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_ASSOCIACAO, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_associacaoCOD_ASSOCIACAO.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
  end;
  inherited;

end;

procedure TfAssociacao.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBEdit1.SetFocus;
end;

procedure TfAssociacao.BitBtn1Click(Sender: TObject);
begin
  inherited;
  fProcurar:=TfProcurar.Create(self,prod_cli);
  try
   prod_cli.Params[1].AsInteger := cds_associacaoCOD_CLIENTE.AsInteger;
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'CIDADE';
   if fProcurar.ShowModal=mrOk then
   begin
    if cds_associacao.State in [dsBrowse] then
      cds_associacao.Edit;
    cds_associacaoCOD_ENDERECO.AsInteger:=prod_cliCODENDERECO.AsInteger;
    cds_associacaoLOGRADOURO.AsString:=prod_cliLOGRADOURO.AsString;
    cds_associacaoBAIRRO.AsString:=prod_cliBAIRRO.AsString;
    cds_associacaoCIDADE.AsString:=prod_cliCIDADE.AsString;
    cds_associacaoUF.AsString:=prod_cliUF.AsString;
    cds_associacaoCEP.AsString:=prod_cliCEP.AsString;
   end;
   finally
    prod_cli.Close;
    fProcurar.Free;
   end;
end;

procedure TfAssociacao.btnProcurarClick(Sender: TObject);
begin
  inherited;
  fProcurar:=TfProcurar.Create(self,proc_associacao);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOMECLIENTE';
   if fProcurar.ShowModal=mrOk then
   begin
     if cds_associacao.Active then
       cds_associacao.Close;
     cds_associacao.Params[0].AsInteger := proc_associacaoCOD_ASSOCIACAO.AsInteger;
     cds_associacao.Open;
   end;
   finally
    proc_associacao.Close;
    fProcurar.Free;
   end;
end;

procedure TfAssociacao.DtSrcStateChange(Sender: TObject);
begin
  Incluir  := 'S';
  Excluir  := 'S';
  Alterar  := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure TfAssociacao.DBEdit1Exit(Sender: TObject);
begin
  inherited;
  if DBEdit1.Text='' then exit;
  if dtsrc.State = dsInsert then
  begin
    if scds_cliente_proc.Active then
    scds_cliente_proc.Close;
    scds_cliente_proc.Params[0].Clear;
    scds_cliente_proc.Params[1].Clear;
    scds_cliente_proc.Params[2].Clear;
    scds_cliente_proc.Params[2].AsInteger:=StrToInt(DBEdit1.Text);
    scds_cliente_proc.Open;
    if scds_cliente_proc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      BitBtn8.Click;
      exit;
    end;
    cds_associacaoCOD_CLIENTE.AsInteger := scds_cliente_procCODCLIENTE.AsInteger;
    cds_associacaoNOMECLIENTE.AsString := scds_cliente_procNOMECLIENTE.AsString;
    if  scds_cliente_procDATANASC.AsString <> '' then
      cds_associacaoD_NASC.AsDateTime := scds_cliente_procDATANASC.AsDateTime
    else
      cds_associacaoD_NASC.AsString := '';
    cds_associacaoCNPJ.AsString := scds_cliente_procCNPJ.AsString;
    cds_associacaoINSCESTADUAL.AsString := scds_cliente_procINSCESTADUAL.AsString;
    scds_cliente_proc.Close;
  end
  else
  if DBEdit1.Field.OldValue<>DBEdit1.Field.NewValue then
  begin
    if scds_cliente_proc.Active then
    scds_cliente_proc.Close;
    scds_cliente_proc.Params[0].Clear;
    scds_cliente_proc.Params[1].Clear;
    scds_cliente_proc.Params[2].AsInteger := StrToInt(DBEdit1.Text);
    scds_cliente_proc.Open;
    if scds_cliente_proc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      BitBtn8.Click;
      exit;
    end;
    cds_associacaoCOD_CLIENTE.AsInteger := scds_cliente_procCODCLIENTE.AsInteger;
    cds_associacaoNOMECLIENTE.AsString := scds_cliente_procNOMECLIENTE.AsString;
    if  scds_cliente_procDATANASC.AsString <> '' then
      cds_associacaoD_NASC.AsDateTime := scds_cliente_procDATANASC.AsDateTime
    else
      cds_associacaoD_NASC.AsString := '';
    cds_associacaoCNPJ.AsString := scds_cliente_procCNPJ.AsString;
    cds_associacaoINSCESTADUAL.AsString := scds_cliente_procINSCESTADUAL.AsString;
    scds_cliente_proc.Close;
  end;

end;

end.
