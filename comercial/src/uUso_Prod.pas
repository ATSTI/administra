unit uUso_Prod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, FMTBcd, SqlExpr, Provider, StdCtrls, DBCtrls, DBLocal,
  DBLocalS, DBClient, DB, EDBNav, Menus, XPMenu, Buttons, ExtCtrls,
  MMJPanel, Grids, DBGrids, Mask;

type
  TfUso_Prod = class(TfPai)
    EvDBNavigator1: TEvDBNavigator;
    sds_u: TSQLDataSet;
    sds_uCOD_USO: TIntegerField;
    sds_uCOD_PRODUTO: TIntegerField;
    sds_uDESCRICAO: TStringField;
    sds_uANO_DE: TIntegerField;
    sds_uANO_ATE: TIntegerField;
    sds_uUSO_VENDA: TStringField;
    sds_uGRUPO: TStringField;
    sds_uQUANTIDADE: TFloatField;
    sds_uUSO_ORCAMENTO: TStringField;
    sds_uCODPRO: TStringField;
    sds_uPRODUTO: TStringField;
    sds_uAUMENTAACIMA: TFloatField;
    sds_uAUMENTAACIMAQTDE: TFloatField;
    sds_uREDUZABAIXO: TFloatField;
    sds_uREDUZABAIXOQTDE: TFloatField;
    sds_uTIPO: TStringField;
    dst_u: TDataSetProvider;
    cds_u: TClientDataSet;
    cds_uCOD_USO: TIntegerField;
    cds_uCOD_PRODUTO: TIntegerField;
    cds_uDESCRICAO: TStringField;
    cds_uANO_DE: TIntegerField;
    cds_uANO_ATE: TIntegerField;
    cds_uUSO_VENDA: TStringField;
    cds_uGRUPO: TStringField;
    cds_uQUANTIDADE: TFloatField;
    cds_uUSO_ORCAMENTO: TStringField;
    cds_uCODPRO: TStringField;
    cds_uPRODUTO: TStringField;
    cds_uAUMENTAACIMA: TFloatField;
    cds_uAUMENTAACIMAQTDE: TFloatField;
    cds_uREDUZABAIXO: TFloatField;
    cds_uREDUZABAIXOQTDE: TFloatField;
    cds_uTIPO: TStringField;
    cds_proc: TSQLClientDataSet;
    cds_procG: TSQLClientDataSet;
    DBComboBox1: TDBComboBox;
    Label3: TLabel;
    BitBtn12: TBitBtn;
    dbeProduto: TDBEdit;
    Label4: TLabel;
    btnProdutoProcura: TBitBtn;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    rg_tipo: TRadioGroup;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    BitBtn2: TBitBtn;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    btnNovo: TBitBtn;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure btnProdutoProcuraClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fUso_Prod: TfUso_Prod;
  centro_receita, cod_nat, cod_vendedor_padrao, ent_sai: integer;
  natureza, contas_pendentes, nome_vendedor_padrao,serie, descricao, grupo : string;

implementation

uses UDm, uProcurar, ufprocura_prod;

{$R *.dfm}

procedure TfUso_Prod.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if cds_u.Active then
     cds_u.Close;
end;

procedure TfUso_Prod.FormCreate(Sender: TObject);
begin
  inherited;

  if (cds_proc.active) then
    cds_proc.Close;
  cds_proc.Params[0].AsString := 'O';
  cds_proc.Open;
  while not cds_proc.Eof do
  begin
    DBComboBox1.Items.Add(cds_proc.fields[0].AsString);
    cds_proc.Next;
  end;
end;

procedure TfUso_Prod.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBComboBox1.SetFocus;
end;

procedure TfUso_Prod.btnGravarClick(Sender: TObject);
begin
 if cds_u.State in [dsInsert] then
 begin
   if dm.c_6_genid.Active then
     dm.c_6_genid.Close;
   dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_USO, 1) as INTEGER) as CODIGO FROM RDB$DATABASE';
   dm.c_6_genid.Open;
   cds_uCOD_USO.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
   dm.c_6_genid.Close;
   if (rg_tipo.ItemIndex = 0) then
     cds_uUSO_ORCAMENTO.AsString := 'O'
   else
     cds_uUSO_ORCAMENTO.AsString := 'V';
 end;
  inherited;

end;

procedure TfUso_Prod.btnProcurarClick(Sender: TObject);
begin
  inherited;
  if (cds_proc.Active) then
    cds_proc.Close;
  fProcurar:= TfProcurar.Create(self,cds_proc);
  fProcurar.BtnProcurar.Click;
  fProcurar.EvDBFind1.DataField := 'TIPOORC';
  try
   if fProcurar.ShowModal=mrOk then
    begin
      if (not cds_proc.IsEmpty) then
      begin
        if (cds_u.Active) then
          cds_u.Close;
        cds_u.Params[1].AsString := cds_Proc.Fields[0].AsString;
        descricao := cds_Proc.Fields[0].AsString;
        cds_u.Open;
        grupo := cds_uGRUPO.AsString;
        if (cds_uUSO_ORCAMENTO.AsString = 'O') then
          rg_tipo.ItemIndex := 0
        else
          rg_tipo.ItemIndex := 1;
      end;
    end;
   finally
    cds_proc.Close;
    DBComboBox1.SetFocus;
    fProcurar.Free;
   end;
end;

procedure TfUso_Prod.BitBtn12Click(Sender: TObject);
begin
  inherited;
  if (cds_proc.Active) then
    cds_proc.Close;
  fProcurar:= TfProcurar.Create(self,cds_proc);
  fProcurar.BtnProcurar.Click;
  fProcurar.EvDBFind1.DataField := 'TIPOORC';
  try
   if fProcurar.ShowModal=mrOk then
    begin
      if (not cds_proc.IsEmpty) then
      begin
        if (cds_u.Active) then
          cds_u.Close;
        cds_u.Params[1].AsString := cds_Proc.Fields[0].AsString;
        descricao := cds_Proc.Fields[0].AsString;
        cds_u.Open;
        grupo := cds_uGRUPO.AsString;
        if (cds_uUSO_ORCAMENTO.AsString = 'O') then
          rg_tipo.ItemIndex := 0
        else
          rg_tipo.ItemIndex := 1;
      end;
    end;
   finally
    cds_proc.Close;
    DBComboBox1.SetFocus;
    fProcurar.Free;
   end;
end;

procedure TfUso_Prod.btnProdutoProcuraClick(Sender: TObject);
begin
  inherited;
  if fProcura_prod.ShowModal = mrOk then
  begin
    if dtSrc.State=dsBrowse then
     cds_u.Edit;
     cds_uCOD_PRODUTO.AsInteger:=
       fProcura_prod.cds_procCODPRODUTO.AsInteger;
     cds_uCODPRO.AsString:=
       fProcura_prod.cds_procCODPRO.AsString;
     cds_uPRODUTO.AsString:=
       fProcura_prod.cds_procPRODUTO.AsString;
  end;
    dm.scds_produto_proc.Close;
end;

procedure TfUso_Prod.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if (cds_procG.Active) then
    cds_procG.Close;
  fProcurar:= TfProcurar.Create(self,cds_procG);
  fProcurar.BtnProcurar.Click;
  fProcurar.EvDBFind1.DataField := 'GRUPO';
  try
   if fProcurar.ShowModal=mrOk then
    begin
      if (not cds_procG.IsEmpty) then
      begin
        if dtSrc.State=dsBrowse then
          cds_u.Edit;
        cds_uGRUPO.AsString :=
        cds_ProcG.Fields[0].AsString;
        grupo := cds_ProcG.Fields[0].AsString;
      end;
    end;
   finally
    cds_procG.Close;
    DBEdit3.SetFocus;
    fProcurar.Free;
   end;
end;

procedure TfUso_Prod.btnNovoClick(Sender: TObject);
begin
  inherited;
   if (DtSrc.State in [dsInsert, dsEdit]) then
     btnGravar.Click;
   descricao := cds_uDESCRICAO.AsString;
   grupo := cds_uGRUPO.AsString;
   cds_u.Append;
   DBComboBox1.Text := descricao;
   DBEdit3.Text := grupo;
   dbeProduto.SetFocus;
end;

procedure TfUso_Prod.BitBtn1Click(Sender: TObject);
 Var str_del: String;
begin
  inherited;
  str_del := 'DELETE FROM USO_PRODUTO WHERE COD_USO = ';
  str_del := str_del + IntToStr(cds_uCOD_USO.AsInteger);
//  str_del := str_del + '
  if  MessageDlg('Confirma a exclusão do item ''' + cds_uPRODUTO.AsString + '''?',
    mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
    dm.sqlsisAdimin.ExecuteDirect(str_del);
  if cds_u.State in [dsInsert, dsEdit, dsBrowse] then
  begin
    cds_u.ApplyUpdates(0);
    dm.sqlsisAdimin.ExecuteDirect(str_del);
  end;
end;

end.
