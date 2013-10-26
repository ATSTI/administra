unit uRomaneio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SqlExpr, Provider, DBCtrls, Grids, DBGrids, StdCtrls, Buttons,
  ExtCtrls, Mask, DB, DBClient, DBLocal, DBLocalS, rpcompobase, rpvclreport,
  MMJPanel;

type
  TfRomaneio = class(TForm)
    DtSrc: TDataSource;
    DtSrc1: TDataSource;
    proc_romaneio: TSQLClientDataSet;
    proc_romaneioCODROMANEIO: TIntegerField;
    proc_romaneioDATA: TDateField;
    dbeProduto: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBComboBox1: TDBComboBox;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBNavigator1: TDBNavigator;
    VCLReport1: TVCLReport;
    MMJPanel2: TMMJPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    MMJPanel1: TMMJPanel;
    btnExcluir: TBitBtn;
    btnIncluir: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnProcurar: TBitBtn;
    BitBtn3: TBitBtn;
    btnSair: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbeProdutoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure btnProcurarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure DtSrc1StateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRomaneio: TfRomaneio;

implementation

uses UDm, uProcurar;

{$R *.dfm}

procedure TfRomaneio.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfRomaneio.dbeProdutoExit(Sender: TObject);
begin
  if dbeProduto.Text='' then
  begin
   btnGravar.SetFocus;
   exit;
  end;
  if dbeProduto.Field.OldValue<>dbeProduto.Field.NewValue then
  begin
    if DM.proc_pedido.Active then
      DM.proc_pedido.Close;
    DM.proc_pedido.Params[0].Clear;
    DM.proc_pedido.Params[0].AsString:=dbeProduto.Text;
    DM.proc_pedido.Open;
    if DM.proc_pedido.IsEmpty then
    begin
      MessageDlg('Pedido não encontrado, verifique se o numero digitado está correto ?', mtWarning,
      [mbOk], 0);
      exit;
    end;
    DM.cds_romaneioCODRECEBIMENTO.AsInteger :=
      DM.proc_pedidoCODRECEBIMENTO.AsInteger;
    DM.cds_romaneioCODCLIENTE.AsInteger :=
    DM.proc_pedidoCODCLIENTE.AsInteger;
    DM.cds_romaneioNOMECLIENTE.AsString :=
    DM.proc_pedidoNOMECLIENTE.AsString;
    DM.cds_romaneioTELEFONE.AsString :=
    DM.proc_pedidoTELEFONE.AsString;
    DM.cds_romaneioTELEFONE1.AsString :=
    DM.proc_pedidoTELEFONE1.AsString;
    DM.cds_romaneioTELEFONE2.AsString :=
    DM.proc_pedidoTELEFONE2.AsString;
    DM.cds_romaneioVALOR.AsFloat :=
    DM.proc_pedidoVALORTITULO.AsFloat;
  end;
  BitBtn1.SetFocus;

end;

procedure TfRomaneio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DtSrc1.DataSet.Active then
     DtSrc1.DataSet.Close;

  if DtSrc.DataSet.Active then
     DtSrc.DataSet.Close;
end;

procedure TfRomaneio.BitBtn1Click(Sender: TObject);
begin
  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_ROMANEIO_F, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  DM.cds_romaneioCODROMANEIO_F.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
  dm.c_6_genid.Close;

  if DtSrc.State in [dsInsert, dsEdit, dsBrowse] then
  begin
   if DtSrc.State in [dsInsert, dsEdit] then
      DM.cds_romaneio.Post;
   if DM.ClientDataSet1.State in [dsBrowse, dsInactive] then
     DM.ClientDataSet1.Edit;
    DtSrc.DataSet.Append;
//    DMCadastro.cds_romaneioTIPO.AsString := 'Entrega';
    DBComboBox1.SetFocus;
  end;
   DBComboBox1.SetFocus;
end;

procedure TfRomaneio.BitBtn2Click(Sender: TObject);
 Var str_del: String;
begin
  inherited;
  str_del := 'DELETE FROM ROMANEIO_F WHERE CODROMANEIO_F = ';
  str_del := str_del + IntToStr (DM.cds_romaneioCODROMANEIO_F.AsInteger);
  if  MessageDlg('Confirma a exclusão desse Pedido ''' + DM.cds_romaneioPEDIDO.AsString + '''?',
    mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;

    dm.sqlsisAdimin.ExecuteDirect(str_del);
  if DM.cds_romaneio.State in [dsInsert, dsEdit, dsBrowse] then
  begin
    DM.cds_romaneio.ApplyUpdates(0);
    dm.sqlsisAdimin.ExecuteDirect(str_del);
  end;
    DM.cds_romaneio.Close;
    DM.cds_romaneio.Params[0].Clear;
    DM.cds_romaneio.Params[0].AsInteger :=
      DM.ClientDataSet1CODROMANEIO.AsInteger;
    DM.cds_romaneio.Open;
end;

procedure TfRomaneio.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not odd(DtSrc.DataSet.RecNo) then // se for impar
  // se a coluna ñ está selecionada
   if not (gdSelected in State) then
   begin
    //define uma COR DE FUNDO
    DBGrid1.Canvas.Brush.Color := $00FFEFDF;
    DBGrid1.Canvas.FillRect(Rect); //Pinta a celula
    //Pinta o texto padrão
    DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
   end;
end;

procedure TfRomaneio.DBGrid1TitleClick(Column: TColumn);
begin
    DM.cds_romaneio.IndexFieldNames := Column.FieldName;
end;

procedure TfRomaneio.btnProcurarClick(Sender: TObject);
begin
  fProcurar:=TfProcurar.create(self,proc_romaneio);
  Try
     fProcurar.BtnProcurar.Click;
     fProcurar.EvDBFind1.DataField := 'DATA';
     if fProcurar.ShowModal=mrOk then
     begin
      if DM.ClientDataSet1.Active then
        DM.ClientDataSet1.Close;
      if DM.cds_romaneio.Active then
        DM.cds_romaneio.Close;

      DM.ClientDataSet1.Params[0].AsInteger :=
        proc_romaneioCODROMANEIO.AsInteger;
      DM.ClientDataSet1.Open;

      DM.cds_romaneio.Params[0].AsInteger :=
        proc_romaneioCODROMANEIO.AsInteger;
      DM.cds_romaneio.Open;
     end;
  Finally
   proc_romaneio.Close;
   fProcurar.Free;
  end;
end;

procedure TfRomaneio.btnIncluirClick(Sender: TObject);
begin
  if DtSrc1.DataSet.Active then
     DtSrc1.DataSet.Close;
   DtSrc1.DataSet.open;
   DtSrc1.DataSet.Append;
  if DtSrc.DataSet.Active then
     DtSrc.DataSet.Close;
  DM.cds_romaneio.Params[0].Clear;
  DtSrc.DataSet.open;
  DtSrc.DataSet.Append;
  DBComboBox1.SetFocus;
  DM.ClientDataSet1DATA.AsDateTime := now;
end;

procedure TfRomaneio.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     DtSrc1.DataSet.Delete;
     (DtSrc1.DataSet as TClientDataSet).ApplyUpdates(0);
  end;
    if DtSrc.DataSet.Active then
     DtSrc.DataSet.Close;
end;

procedure TfRomaneio.BitBtn3Click(Sender: TObject);
begin
    VCLReport1.Filename := str_relatorio + 'Romaneio.rep';
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;    
    VCLReport1.Report.Params.ParamByName('PCOD').Value := DM.ClientDataSet1CODROMANEIO.AsInteger;
    VCLReport1.Execute;
end;

procedure TfRomaneio.btnSairClick(Sender: TObject);
begin
  CLOSE;
end;

procedure TfRomaneio.FormShow(Sender: TObject);
begin

 btnIncluir.SetFocus;
end;

procedure TfRomaneio.btnGravarClick(Sender: TObject);
begin
  if (DtSrc.State in [dsInsert]) then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_ROMANEIO, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    DM.ClientDataSet1CODROMANEIO.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
  end;
   if DtSrc.DataSet.State in [dsInsert] then
     DtSrc.DataSet.Cancel;
    DtSrc1.DataSet.Post;
    (DtSrc1.DataSet as TClientDataset).ApplyUpdates(0);
   if DtSrc.DataSet.State in [dsBrowse] then
      DtSrc.DataSet.Edit;
      DtSrc.DataSet.Post;
    (DtSrc.DataSet as TClientDataset).ApplyUpdates(0);
end;

procedure TfRomaneio.btnCancelarClick(Sender: TObject);
begin
  DtSrc1.DataSet.Cancel;
  if DtSrc.DataSet.Active then
    DtSrc.DataSet.Close;
  DtSrc.DataSet.Cancel;
end;

procedure TfRomaneio.DtSrc1StateChange(Sender: TObject);
begin
  btnIncluir.Enabled:=DtSrc1.State in [dsBrowse,dsInactive];
  btnGravar.Enabled:=DtSrc1.State in [dsInsert,dsEdit];
  btnCancelar.Enabled:=DtSrc1.State in [dsInsert,dsEdit];
  btnExcluir.Enabled:=DtSrc1.State in [dsBrowse];
  btnProcurar.Enabled:=DtSrc1.State in [dsBrowse,dsInactive];
  btnSair.Enabled:=DtSrc1.State in [dsBrowse,dsInactive];
  if DtSrc1.State in [dsInsert, dsEdit] then
  begin
    btnIncluir.Visible := False;
    btnexcluir.Visible := False;
    btngravar.Visible := true;
    btnCancelar.Visible := true;
  end;

  if DtSrc1.State in [dsBrowse,dsInactive] then
  begin
    btnIncluir.Visible := true;
    btnexcluir.Visible := true;
    btngravar.Visible := false;
    btnCancelar.Visible := false;
  end;

end;

end.
