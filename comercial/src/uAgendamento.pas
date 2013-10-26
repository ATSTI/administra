unit uAgendamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, DBCtrls, XPMenu, ComCtrls, Buttons, StdCtrls, Grids,
  DBGrids, ExtCtrls, FMTBcd, DB, DBClient, Provider, SqlExpr, dxCore,
  dxButton, Menus, DBLocal, DBLocalS, rpcompobase, rpvclreport, ToolEdit;

type
  TfAgendamento = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    DBMemo1: TDBMemo;
    Panel1: TPanel;
    Label8: TLabel;
    Label11: TLabel;
    MonthCalendar1: TMonthCalendar;
    Panel4: TPanel;
    Label4: TLabel;
    Label2: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    XPMenu1: TXPMenu;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    sds_ag: TSQLDataSet;
    dsp_ag: TDataSetProvider;
    cds_ag: TClientDataSet;
    dts_ag: TDataSource;
    cds_agCOD_AGENDAMENTO: TIntegerField;
    cds_agCODCLIENTE: TIntegerField;
    cds_agASSUNTO: TStringField;
    cds_agHORA: TTimeField;
    cds_agDATA: TDateField;
    cds_agFONE: TStringField;
    sds_agCOD_AGENDAMENTO: TIntegerField;
    sds_agCODCLIENTE: TIntegerField;
    sds_agASSUNTO: TStringField;
    sds_agHORA: TTimeField;
    sds_agDATA: TDateField;
    sds_agFONE: TStringField;
    sds_agDia: TSQLDataSet;
    sds_agDiaDATA: TDateField;
    sds_agDiaHISTORICO: TBlobField;
    dsp_agDia: TDataSetProvider;
    cds_agDia: TClientDataSet;
    cds_agDiaDATA: TDateField;
    cds_agDiaHISTORICO: TBlobField;
    dts_agdia: TDataSource;
    Label3: TLabel;
    btnClienteProcura: TBitBtn;
    btnIncluir: TdxButton;
    btnGravar: TdxButton;
    btnCancelar: TdxButton;
    btnExcluir: TdxButton;
    dxButton1: TdxButton;
    PopupMenu1: TPopupMenu;
    Sair1: TMenuItem;
    Incluir1: TMenuItem;
    Salvar1: TMenuItem;
    Cancelar1: TMenuItem;
    Excluir1: TMenuItem;
    Procurar1: TMenuItem;
    sds_agNOMECLIENTE: TStringField;
    cds_agNOMECLIENTE: TStringField;
    proc_cliente: TSQLClientDataSet;
    proc_clienteCODCLIENTE: TIntegerField;
    proc_clienteNOMECLIENTE: TStringField;
    btnProcurar: TdxButton;
    dxButton2: TdxButton;
    Imprimir1: TMenuItem;
    DBGrid1: TDBGrid;
    sds_agSTATUS: TStringField;
    cds_agSTATUS: TStringField;
    GroupBox1: TGroupBox;
    DateEdit1: TDateEdit;
    Label6: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    DateEdit2: TDateEdit;
    Edit2: TEdit;
    Label9: TLabel;
    BitBtn2: TBitBtn;
    sql_proc_fun: TSQLClientDataSet;
    sql_proc_funCOD_FUNCIONARIO: TIntegerField;
    sql_proc_funNOME_FUNCIONARIO: TStringField;
    sds_agCODVENDA: TIntegerField;
    sds_agCODUSUARIO: TIntegerField;
    cds_agCODVENDA: TIntegerField;
    cds_agCODUSUARIO: TIntegerField;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    DBEdit5: TEdit;
    Edit4: TEdit;
    limpacampofuncionrio1: TMenuItem;
    ProcuraFuncionrio1: TMenuItem;
    Limpacampocliente1: TMenuItem;
    Procuracliente1: TMenuItem;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    procedure MonthCalendar1Click(Sender: TObject);
    procedure dts_agStateChange(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure btnClienteProcuraClick(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure dxFinalizaClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
  private
      procedure agenda(medico: Integer; profissional: integer; dia: TDateTime; dia1: TDateTime);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAgendamento: TfAgendamento;
  programa, prof : integer;

implementation

uses UDM, uProcurar, uTipoImprimiAgenda, uListaClientes, uVisitas;

{$R *.dfm}

{ TfAgendamento }

procedure TfAgendamento.agenda(medico: Integer; profissional: integer; dia: TDateTime; dia1: TDateTime);
begin
  if cds_ag.Active then
     cds_ag.close;
    cds_ag.Params[0].Clear;
    cds_ag.Params[1].Clear;
    cds_ag.Params[2].Clear;
    cds_ag.Params[3].Clear;
    cds_ag.Params[4].Clear;
    cds_ag.Params[5].Clear;

    if DBEdit5.Text <> '' then
      cds_ag.Params[0].AsInteger := medico
    else
      cds_ag.Params[1].AsInteger := medico;
    cds_ag.Params[2].AsDate := dia;
    cds_ag.Params[3].AsDate := dia1;
    if Edit1.Text <> '' then
      cds_ag.Params[4].AsInteger := profissional
    else
      cds_ag.Params[5].AsInteger := profissional;
    cds_ag.Open;

  if cds_agDia.Active then
    cds_agDia.Close;
  cds_agDia.Params[0].AsDate := dia;
  cds_agDia.Open;

end;

procedure TfAgendamento.MonthCalendar1Click(Sender: TObject);
begin

   if DBEdit5.Text = '' then
      programa := 9999999;

   if DBEdit5.Text <> '' then
      programa := StrToInt(DBEdit5.Text);

   if Edit1.Text = '' then
      prof := 9999999;

   if Edit1.Text <> '' then
      prof := StrToInt(Edit1.Text);

   agenda(programa,prof,MonthCalendar1.Date,MonthCalendar1.Date);   // programa é uma variavel que recebe
                                           // o codigo do cliente

end;

procedure TfAgendamento.dts_agStateChange(Sender: TObject);
begin
  btnIncluir.Enabled:=dts_ag.State in [dsBrowse,dsInactive];
  btnGravar.Enabled:=dts_ag.State in [dsInsert,dsEdit];
  btnCancelar.Enabled:=dts_ag.State in [dsInsert,dsEdit];
  btnExcluir.Enabled:=dts_ag.State in [dsBrowse];
end;

procedure TfAgendamento.btnIncluirClick(Sender: TObject);
begin
  if not dts_ag.DataSet.Active then
     dts_ag.DataSet.open;
  dts_ag.DataSet.Append;
  cds_agDATA.AsDateTime := Date;
  cds_agHORA.value := time;
  if (dts_ag.State in [dsInsert]) then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_AGENDA, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_agCOD_AGENDAMENTO.AsInteger := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
  end;

  DBEdit1.SetFocus;
end;

procedure TfAgendamento.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfAgendamento.FormShow(Sender: TObject);
begin
//  if not dm.cds_funcionario.Active then
//    dm.cds_funcionario.Open;

  if cds_ag.Active then
    cds_ag.Close;
    cds_ag.Params[0].Clear;
    cds_ag.Params[1].AsInteger := 9999999;
    cds_ag.Params[2].AsDate := date;
    cds_ag.Params[3].Clear;
    cds_ag.Params[4].Clear;
    cds_ag.Params[5].AsInteger := 9999999;
    cds_ag.Open;

  if cds_agDia.Active then
    cds_agDia.Close;
  cds_agDia.Params[0].AsDate := date;
  cds_agDia.Open;

  MonthCalendar1.Date := now;

  DateEdit1.Text := DateToStr(Now);
  DateEdit2.Text := DateToStr(Now);

  agenda(9999999,9999999,StrToDate(DateEdit1.Text),StrToDate(DateEdit2.Text));

  dxButton1.SetFocus;

end;

procedure TfAgendamento.btnGravarClick(Sender: TObject);
var
 dia, mes, ano : word;
 data,hora, cliente, assunto : string;
 codigo : integer;
begin
   if  Edit1.Text = '' then
   begin
     MessageDlg('Escolha para qual Funcionário será esse Agendamento', mtInformation, [mbOK], 0);
     exit;
   end;

   if DBEdit5.Text = '' then
   begin
     MessageDlg('Escolha para qual Cliente será esse Agendamento', mtInformation, [mbOK], 0);
     exit;
   end;
   cds_agCODUSUARIO.AsInteger := StrToInt(Edit1.Text);
   cds_agCODCLIENTE.AsInteger := StrToInt(DBEdit5.Text);
   dts_ag.DataSet.Post;
  (dts_ag.DataSet as TClientDataset).ApplyUpdates(0);
   btnIncluir.SetFocus;
end;

procedure TfAgendamento.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     dts_ag.DataSet.Delete;
     (dts_ag.DataSet as TClientDataSet).ApplyUpdates(0);
  end;

end;

procedure TfAgendamento.btnCancelarClick(Sender: TObject);
begin
  dts_ag.DataSet.Cancel;
end;

procedure TfAgendamento.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not odd(dts_ag.DataSet.RecNo) then // se for impar
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

procedure TfAgendamento.DBGrid1TitleClick(Column: TColumn);
begin
    cds_ag.IndexFieldNames := Column.FieldName;
end;

procedure TfAgendamento.SpeedButton4Click(Sender: TObject);
begin
  close;
end;

procedure TfAgendamento.DBEdit5Exit(Sender: TObject);
begin
  if DBEdit5.Text='' then exit;
  if dts_ag.State = dsInsert then
  begin
    if dm.scds_cliente_proc.Active then
    dm.scds_cliente_proc.Close;
    dm.scds_cliente_proc.Params[0].Clear;
    dm.scds_cliente_proc.Params[1].Clear;
    dm.scds_cliente_proc.Params[2].Clear;
    dm.scds_cliente_proc.Params[2].AsInteger:=StrToInt(DBEdit5.Text);
    dm.scds_cliente_proc.Open;
    if dm.scds_cliente_proc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      btnClienteProcura.Click;
      exit;
    end;
    cds_agNOMECLIENTE.AsString:=dm.scds_cliente_procNOMECLIENTE.AsString;
    dm.scds_cliente_proc.Close;
  end
  else
  begin
    if dm.scds_cliente_proc.Active then
    dm.scds_cliente_proc.Close;
    dm.scds_cliente_proc.Params[0].Clear;
    dm.scds_cliente_proc.Params[1].Clear;
    dm.scds_cliente_proc.Params[2].AsInteger:=StrToInt(DBEdit5.Text);
    dm.scds_cliente_proc.Open;
    if dm.scds_cliente_proc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      btnClienteProcura.Click;
      exit;
    end;
    if dm.scds_cliente_procSTATUS.AsInteger = 2 then
    begin
      MessageDlg('Cliente com status "INATIVO" para efetuar uma venda para '+#13+#10+'esse cliente, antes vc terá que mudar seu status para "ATIVO".', mtError, [mbOK], 0);
      DBEdit5.SetFocus;
      exit;
    end;
    cds_agNOMECLIENTE.AsString:=dm.scds_cliente_procNOMECLIENTE.AsString;
    dm.scds_cliente_proc.Close;
  end;

end;

procedure TfAgendamento.btnClienteProcuraClick(Sender: TObject);
begin
  fListaClientes:=TfListaClientes.Create(Application);
  try
    varform := 'agenda';
    codcli := 0;
    nomecli := '';
    fListaClientes.ShowModal;
    DBEdit5.Text := IntToStr(codcli);//fListaClientes.cdsCODCLIENTE.AsInteger;
    Edit4.Text := nomecli;//fListaClientes.cdsNOMECLIENTE.AsString;
    if (cds_ag.State in [dsInsert, dsEdit]) then
    begin
      cds_agCODCLIENTE.AsInteger := StrToInt(DBEdit5.Text);
      cds_agNOMECLIENTE.AsString := Edit4.Text;
    end;
  finally
   fListaClientes.cds.Close;
   fListaClientes.Free;
  end;
  varform := '';
  codcli := 0;
  nomecli := '';


end;

procedure TfAgendamento.dxButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfAgendamento.DBEdit4Exit(Sender: TObject);
begin
 if dts_ag.DataSet.State in [dsInsert, dsEdit] then
   btnGravar.SetFocus;
end;

procedure TfAgendamento.BitBtn1Click(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,sql_proc_fun);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOME_FUNCIONARIO';
   if fProcurar.ShowModal=mrOk then
   begin
    Edit1.Text := intTostr(sql_proc_funCOD_FUNCIONARIO.AsInteger);
    Edit2.Text := sql_proc_funNOME_FUNCIONARIO.AsString;
   end;
   finally
    sql_proc_fun.Close;
    fProcurar.Free;
   end;
end;

procedure TfAgendamento.dxButton2Click(Sender: TObject);
begin
  fTipoImprimiAgenda :=TfTipoImprimiAgenda.Create(Application);
  try
    fTipoImprimiAgenda.ShowModal;
  finally
    fTipoImprimiAgenda.Free;
  end;  
end;

procedure TfAgendamento.dxButton3Click(Sender: TObject);
var
 dia, mes, ano : word;
 data,hora, cliente, assunto : string;
 codigo : integer;
begin
  if (dts_ag.State in [dsInactive]) then exit;

   if MessageDlg('Deseja ajendar Retorno?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
   begin
      data := DBEdit1.Text;
      hora := DBEdit2.Text;
      codigo := StrToInt(DBEdit5.Text);
      cliente := Edit4.Text;
      assunto := DBEdit4.Text;

      if not dts_ag.DataSet.Active then
         dts_ag.DataSet.open;
      dts_ag.DataSet.Append;
      DecodeDate(StrToDate(data),ano,mes,dia);
      mes := mes + 1;
      if mes > 12 then
        ano := ano + 1;
      data := DateToStr(EncodeDate(ano,mes,dia));
      cds_agDATA.AsDateTime := StrToDate(Data);
       cds_agHORA.value := time;
      cds_agCODCLIENTE.AsInteger := codigo;
      cds_agNOMECLIENTE.AsString := cliente;
      cds_agASSUNTO.AsString := 'Retorno - ' + assunto;

      if (dts_ag.State in [dsInsert]) then
      begin
        if dm.c_6_genid.Active then
          dm.c_6_genid.Close;
        dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_PROD, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
        dm.c_6_genid.Open;
        cds_agCOD_AGENDAMENTO.AsInteger := dm.c_6_genidCODIGO.AsInteger;
        dm.c_6_genid.Close;
      end;
      dts_ag.DataSet.Post;
      (dts_ag.DataSet as TClientDataset).ApplyUpdates(0);
   end;
   btnIncluir.SetFocus;

end;

procedure TfAgendamento.btnProcurarClick(Sender: TObject);
begin
  if (DateEdit1.Text = '  /  /    ') then
  begin
    MessageDlg('Preencha o campo data', mtWarning, [mbOK], 0);
    DateEdit1.SetFocus;
    exit;
  end;
  if (DateEdit2.Text = '  /  /    ') then
  begin
    MessageDlg('Preencha o campo data', mtWarning, [mbOK], 0);
    DateEdit2.SetFocus;
    exit;
  end;

   if DBEdit5.Text = '' then
      programa := 9999999;

   if DBEdit5.Text <> '' then
      programa := StrToInt(DBEdit5.Text);

   if Edit1.Text = '' then
      prof := 9999999;

   if Edit1.Text <> '' then
      prof := StrToInt(Edit1.Text);

   agenda(programa,prof,StrToDate(DateEdit1.Text),StrToDate(DateEdit2.Text));   // programa é uma variavel que recebe
                                           // o codigo do cliente

end;

procedure TfAgendamento.BitBtn2Click(Sender: TObject);
begin
  fVisitas := TfVisitas.Create(Application);
  id_cliente := cds_agCODCLIENTE.AsInteger;
  try
    fVisitas.Label1.Caption := cds_agNOMECLIENTE.AsString;
    fVisitas.Label2.Caption := cds_agNOMECLIENTE.AsString;
    fVisitas.ShowModal;
  finally
    id_cliente := 0;  
    fVisitas.Free;
  end;
end;

procedure TfAgendamento.dxFinalizaClick(Sender: TObject);
begin
   if not cds_ag.Active then
     exit;
   if not cds_ag.IsEmpty then
     if cds_ag.State in [dsBrowse] then
     begin
       cds_ag.Edit;
       cds_agSTATUS.AsString := 'Finalizado';
       dts_ag.DataSet.Post;
      (dts_ag.DataSet as TClientDataset).ApplyUpdates(0);
       btnIncluir.SetFocus;
     end;
end;

procedure TfAgendamento.BitBtn4Click(Sender: TObject);
begin
   DateEdit1.Text := '  /  /    ';
   DateEdit2.Text := '  /  /    ';
   Edit1.Text := '';
   Edit2.Text := '';
end;

procedure TfAgendamento.BitBtn3Click(Sender: TObject);
begin
  DBEdit5.Text := '';
  Edit4.Text := '';

end;

procedure TfAgendamento.BitBtn5Click(Sender: TObject);
begin
   if not cds_ag.Active then
     exit;
   if not cds_ag.IsEmpty then
     if cds_ag.State in [dsBrowse] then
     begin
       cds_ag.Edit;
       cds_agSTATUS.AsString := 'Finalizado';
       dts_ag.DataSet.Post;
      (dts_ag.DataSet as TClientDataset).ApplyUpdates(0);
       btnIncluir.SetFocus;
     end;
end;

procedure TfAgendamento.BitBtn6Click(Sender: TObject);
begin
   if not cds_ag.Active then
     exit;
   if not cds_ag.IsEmpty then
     if cds_ag.State in [dsBrowse] then
     begin
       cds_ag.Edit;
       cds_agSTATUS.AsString := '';
       dts_ag.DataSet.Post;
      (dts_ag.DataSet as TClientDataset).ApplyUpdates(0);
       btnIncluir.SetFocus;
     end;
end;

procedure TfAgendamento.BitBtn7Click(Sender: TObject);
begin
   if dts_agdia.DataSet.State in [dsInsert, dsEdit] then
   begin
     if (DBMemo1.Text <> '') then
     begin
       cds_agDiaDATA.Value := MonthCalendar1.Date;
       cds_agDia.ApplyUpdates(0);
     end;
   end;
end;

procedure TfAgendamento.BitBtn8Click(Sender: TObject);
begin
     if (DBMemo1.Text <> '') then
     begin
        if (not cds_agDia.IsEmpty) then
        begin
            cds_agDia.Delete;
            cds_agDia.ApplyUpdates(0);
        end;
     end;
end;

end.
