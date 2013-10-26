unit uPrecoTabela;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, DBCtrls, Grids, DBGrids, Mask, JvExMask, JvToolEdit,
  JvMaskEdit, JvDBControls, DBClient;

type
  TfPrecoTabela = class(TfPai_new)
    Label1: TLabel;
    cbTipo: TComboBox;
    Label6: TLabel;
    Panel1: TPanel;
    cboperacao: TComboBox;
    Label2: TLabel;
    cbmov: TComboBox;
    DBGrid1: TDBGrid;
    cbcarga: TComboBox;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    cbcobertura: TComboBox;
    Label3: TLabel;
    DBNavigator1: TDBNavigator;
    Label5: TLabel;
    Label7: TLabel;
    DtSrcDet: TDataSource;
    DtSrcCarga: TDataSource;
    DtSrcCob: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DtSrcDetStateChange(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DtSrcCargaStateChange(Sender: TObject);
    procedure DtSrcCobStateChange(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrecoTabela: TfPrecoTabela;

implementation

uses uDmTransp;

{$R *.dfm}

procedure TfPrecoTabela.FormShow(Sender: TObject);
begin
  inherited;
  // tipo
  if (not dmTransp.cdsCarretaTipo.Active) then
          dmTransp.cdsCarretaTipo.Open;
  dmTransp.cdsCarretaTipo.First;
  while not dmTransp.cdsCarretaTipo.Eof do
  begin
     cbTipo.Items.Add(dmTransp.cdsCarretaTipoDESCRICAO.AsString);
     dmTransp.cdsCarretaTipo.Next;
  end;
  dmTransp.cdsCarretaTipo.Close;
  // operação
  if (not dmTransp.cdsTipoOper.Active) then
          dmTransp.cdsTipoOper.Open;
  dmTransp.cdsTipoOper.First;
  while not dmTransp.cdsTipoOper.Eof do
  begin
     cboperacao.Items.Add(dmTransp.cdsTipoOperDESCRICAO.AsString);
     dmTransp.cdsTipoOper.Next;
  end;
  dmTransp.cdsTipoOper.Close;
  // Movimento
  if (not dmTransp.cdsTipoMovimento.Active) then
          dmTransp.cdsTipoMovimento.Open;
  dmTransp.cdsTipoMovimento.First;
  while not dmTransp.cdsTipoMovimento.Eof do
  begin
     cbmov.Items.Add(dmTransp.cdsTipoMovimentoDESCRICAO.AsString);
     dmTransp.cdsTipoMovimento.Next;
  end;
  dmTransp.cdsTipoMovimento.Close;
  // Carga
  if (not dmTransp.cdsTipoCarga.Active) then
          dmTransp.cdsTipoCarga.Open;
  dmTransp.cdsTipoCarga.First;
  while not dmTransp.cdsTipoCarga.Eof do
  begin
     cbcarga.Items.Add(dmTransp.cdsTipoCargaDESCRICAO.AsString);
     dmTransp.cdsTipoCarga.Next;
  end;
  dmTransp.cdsTipoCarga.Close;
  // Cobertura
  if (not dmTransp.cdsTipoCobertura.Active) then
          dmTransp.cdsTipoCobertura.Open;
  dmTransp.cdsTipoCobertura.First;
  while not dmTransp.cdsTipoCobertura.Eof do
  begin
     cbcobertura.Items.Add(dmTransp.cdsTipoCoberturaDESCRICAO.AsString);
     dmTransp.cdsTipoCobertura.Next;
  end;
  dmTransp.cdsTipoCobertura.Close;

  if (not dmTransp.cdsPrecos.Active) then
      dmTransp.cdsPrecos.Open;
  cbTipo.Text := dmTransp.cdsPrecosTIPO.AsString;
  cboperacao.Text := dmTransp.cdsPrecosOPERACAO.AsString;

  if (dmTransp.cdsPrecosDet.Active) then
     dmTransp.cdsPrecosDet.Close;
  dmTransp.cdsPrecosDet.Params[0].AsInteger :=  dmTransp.cdsPrecosCODFAIXA.AsInteger;
  dmTransp.cdsPrecosDet.Open;

  if (dmTransp.cdsPrecosCarga.Active) then
     dmTransp.cdsPrecosCarga.Close;
  dmTransp.cdsPrecosCarga.Params[0].AsInteger :=  dmTransp.cdsPrecosCODFAIXA.AsInteger;
  dmTransp.cdsPrecosCarga.Open;

  if (dmTransp.cdsPrecosCob.Active) then
     dmTransp.cdsPrecosCob.Close;
  dmTransp.cdsPrecosCob.Params[0].AsInteger :=  dmTransp.cdsPrecosCODFAIXA.AsInteger;
  dmTransp.cdsPrecosCob.Open;

end;

procedure TfPrecoTabela.btnIncluirClick(Sender: TObject);
begin
  inherited;
  if (dmTransp.cdsPrecosDet.Active) then
       dmTransp.cdsPrecosDet.Close;
  dmTransp.cdsPrecosDet.Params[0].Clear;
  dmTransp.cdsPrecosDet.Params[0].AsInteger :=   dmTransp.cdsPrecosCODFAIXA.AsInteger;
  dmTransp.cdsPrecosDet.Open;

  if (dmTransp.cdsPrecosCarga.Active) then
       dmTransp.cdsPrecosCarga.Close;
  dmTransp.cdsPrecosCarga.Params[0].Clear;
  dmTransp.cdsPrecosCarga.Params[0].AsInteger :=   dmTransp.cdsPrecosCODFAIXA.AsInteger;
  dmTransp.cdsPrecosCarga.Open;

  if (dmTransp.cdsPrecosCob.Active) then
       dmTransp.cdsPrecosCob.Close;
  dmTransp.cdsPrecosCob.Params[0].Clear;
  dmTransp.cdsPrecosCob.Params[0].AsInteger :=   dmTransp.cdsPrecosCODFAIXA.AsInteger;
  dmTransp.cdsPrecosCob.Open;

  cbTipo.Text := '';
  cboperacao.Text := '';  
  DBEdit2.SetFocus;
end;

procedure TfPrecoTabela.btnGravarClick(Sender: TObject);
begin
  dmTransp.cdsPrecosTIPO.AsString := cbTipo.Text;
  dmTransp.cdsPrecosOPERACAO.AsString := cboperacao.Text;
  inherited;

end;

procedure TfPrecoTabela.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;

  cbTipo.Text := dmTransp.cdsPrecosTIPO.AsString;
  cboperacao.Text := dmTransp.cdsPrecosOPERACAO.AsString;


  if (dmTransp.cdsPrecosDet.Active) then
     dmTransp.cdsPrecosDet.Close;
  dmTransp.cdsPrecosDet.Params[0].AsInteger :=  dmTransp.cdsPrecosCODFAIXA.AsInteger;
  dmTransp.cdsPrecosDet.Open;

  if (dmTransp.cdsPrecosCarga.Active) then
     dmTransp.cdsPrecosCarga.Close;
  dmTransp.cdsPrecosCarga.Params[0].AsInteger :=  dmTransp.cdsPrecosCODFAIXA.AsInteger;
  dmTransp.cdsPrecosCarga.Open;

  if (dmTransp.cdsPrecosCob.Active) then
     dmTransp.cdsPrecosCob.Close;
  dmTransp.cdsPrecosCob.Params[0].AsInteger :=  dmTransp.cdsPrecosCODFAIXA.AsInteger;
  dmTransp.cdsPrecosCob.Open;

end;

procedure TfPrecoTabela.BitBtn1Click(Sender: TObject);
begin
  inherited;
  DtSrcDet.DataSet.Append;
  cbmov.SetFocus;
end;

procedure TfPrecoTabela.BitBtn2Click(Sender: TObject);
begin
  inherited;
    dmTransp.cdsPrecosDetDESCRICAO.AsString := cbmov.Text;
    dmTransp.cdsPrecosDetTIPO.AsString := 'MOVIMENTO';
    DtSrcDet.DataSet.Post;
    (DtSrcDet.DataSet as TClientDataset).ApplyUpdates(0);
end;

procedure TfPrecoTabela.DtSrcDetStateChange(Sender: TObject);
begin
  inherited;
  BitBtn1.Enabled:=DtSrcDet.State in [dsBrowse,dsInactive];
  BitBtn2.Enabled:=DtSrcDet.State in [dsInsert,dsEdit];
  BitBtn3.Enabled:=DtSrcDet.State in [dsBrowse];
  if DtSrcDet.State in [dsInsert, dsEdit] then
  begin
    BitBtn1.Visible := False;
    BitBtn2.Visible := True;
  end;
  if DtSrcDet.State in [dsBrowse,dsInactive] then
  begin
    BitBtn1.Visible := True;
    BitBtn2.Visible := False;
  end;
end;

procedure TfPrecoTabela.BitBtn3Click(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     DtSrcDet.DataSet.Delete;
     (DtSrcDet.DataSet as TClientDataSet).ApplyUpdates(0);
  end;
end;

procedure TfPrecoTabela.DtSrcCargaStateChange(Sender: TObject);
begin
  inherited;
  BitBtn5.Enabled:=DtSrcCarga.State in [dsBrowse,dsInactive];
  BitBtn4.Enabled:=DtSrcCarga.State in [dsInsert,dsEdit];
  BitBtn6.Enabled:=DtSrcCarga.State in [dsBrowse];
  if DtSrcCarga.State in [dsInsert, dsEdit] then
  begin
    BitBtn5.Visible := False;
    BitBtn4.Visible := True;
  end;
  if DtSrcCarga.State in [dsBrowse,dsInactive] then
  begin
    BitBtn5.Visible := True;
    BitBtn4.Visible := False;
  end;
end;

procedure TfPrecoTabela.DtSrcCobStateChange(Sender: TObject);
begin
  inherited;
  BitBtn8.Enabled:=DtSrcCob.State in [dsBrowse,dsInactive];
  BitBtn7.Enabled:=DtSrcCob.State in [dsInsert,dsEdit];
  BitBtn9.Enabled:=DtSrcCob.State in [dsBrowse];
  if DtSrcCob.State in [dsInsert, dsEdit] then
  begin
    BitBtn8.Visible := False;
    BitBtn7.Visible := True;
  end;
  if DtSrcCob.State in [dsBrowse,dsInactive] then
  begin
    BitBtn8.Visible := True;
    BitBtn7.Visible := False;
  end;
end;

procedure TfPrecoTabela.BitBtn5Click(Sender: TObject);
begin
  inherited;
  DtSrcCarga.DataSet.Append;
  cbcarga.SetFocus;
end;

procedure TfPrecoTabela.BitBtn4Click(Sender: TObject);
begin
  inherited;
    dmTransp.cdsPrecosCargaDESCRICAO.AsString := cbcarga.Text;
    dmTransp.cdsPrecosCargaTIPO.AsString := 'CARGA';
    DtSrcCarga.DataSet.Post;
    (DtSrcCarga.DataSet as TClientDataset).ApplyUpdates(0);
end;

procedure TfPrecoTabela.BitBtn6Click(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     DtSrcCarga.DataSet.Delete;
     (DtSrcCarga.DataSet as TClientDataSet).ApplyUpdates(0);
  end;
end;

procedure TfPrecoTabela.BitBtn8Click(Sender: TObject);
begin
  inherited;
  DtSrcCob.DataSet.Append;
  cbcobertura.SetFocus;
end;

procedure TfPrecoTabela.BitBtn7Click(Sender: TObject);
begin
  inherited;
    dmTransp.cdsPrecosCobDESCRICAO.AsString := cbcobertura.Text;
    dmTransp.cdsPrecosCobTIPO.AsString := 'COBERTURA';
    DtSrcCob.DataSet.Post;
    (DtSrcCob.DataSet as TClientDataset).ApplyUpdates(0);
end;

procedure TfPrecoTabela.BitBtn9Click(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     DtSrcCob.DataSet.Delete;
     (DtSrcCob.DataSet as TClientDataSet).ApplyUpdates(0);
  end;
end;

end.
