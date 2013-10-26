unit uRateioPag;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  FMTBcd, DBClient, Provider, SqlExpr, Grids, DBGrids, Mask, DBCtrls,
  JvExControls, JvLabel;

type
  TfRateioPag = class(TfPai)
    ds_ccusto: TDataSource;
    Label3: TLabel;
    Edit1: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    BitBtn1: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    JvLabel1: TJvLabel;
    procedure cds_rateioNewRecord(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRateioPag: TfRateioPag;
    valor_rateio, valor_1, percent, percent_total, percent_origem, quant, valorTotal : Double;
    codigo, cod_usuario : integer;
    tipo, conta_desp: string;
    data_lanc : TdateTime;


implementation

uses UDm, uFiltro_forn_plano, sCtrlResize;

{$R *.dfm}

procedure TfRateioPag.cds_rateioNewRecord(DataSet: TDataSet);
begin
  inherited;
  with dm do
  begin
    cds_rateioDATA.AsDateTime := data_lanc;
    cds_rateioCODUSUARIO.AsInteger := cod_usuario;
    cds_rateioCODMOVIMENTO.AsInteger := codigo;
    cds_rateioCODSERVICO.AsInteger := 0;
    cds_rateioSTATUS.AsInteger := 0;
    cds_rateioCONTA.AsString := conta_pl;
    cds_rateioTIPO.AsString := tipo;
    cds_rateioCONTADEBITO.AsString := conta_pl;
  end;
end;

procedure TfRateioPag.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if DtSrc.DataSet.State in [dsInsert, dsEdit] then
  begin
    tipo_for := 'CONTASRECEITAS';
    fFiltro_forn_plano.BitBtn6.Click;
    fFiltro_forn_plano.ShowModal;
    edit1.Text := varconta_cod;
    //edtconta.Text := varconta_nome;
    //usa_rateio := com_rateio;
    dm.cds_crCONTACREDITO.AsInteger := codigo_conta;
    //conta_rateio := varconta;
    //dbeCliente.SetFocus;
  end;
  varconta_cod := '';
  varconta_nome := '';

  {
  fPlanoContas:=TfPlanoContas.Create(Application);
  try
    fPlanoContas.ShowModal;
  finally
    fPlanoContas.Free;
  end;
 }
end;

procedure TfRateioPag.Edit1Exit(Sender: TObject);
 Var str_sql2: string;
begin
  inherited;
 if Edit1.Text <> '' then
 begin
  if DM.c_1_planoc.Active then
    DM.c_1_planoc.Close;
  str_sql2 := 'Select * from PLANO ';
  str_sql2 := str_sql2 + 'WHERE CODREDUZIDO = ';
  str_sql2 := str_sql2 + '''' + Edit1.Text + '''';
  DM.c_1_planoc.CommandText := str_sql2;
  DM.c_1_planoc.Open;
  if DM.c_1_planoc.IsEmpty then
  begin
    MessageDlg('Codigo não cadastrado.', mtWarning, [mbOK], 0);
    DBLookupComboBox1.TabStop := True;
    DBLookupComboBox1.SetFocus;
    exit;
  end
  else
  begin
    dm.cds_rateioCODCCUSTO.AsInteger := DM.c_1_planocCODIGO.AsInteger;
    DBLookupComboBox1.KeyValue := DM.c_1_planocCODIGO.AsInteger;
  end;
    DBLookupComboBox1.TabStop := True;
 end;

end;

procedure TfRateioPag.DBEdit1Exit(Sender: TObject);
begin
  inherited;
//  percent := dm.cds_rateioPERCENTUAL.AsFloat;
  if (DBEdit1.Text <> '') then
  begin
  if (dm.cds_rateioVALOR.OldValue <> dm.cds_rateioVALOR.NewValue) then
  begin
    valor_1 := dm.cds_rateioVALOR.AsFloat;
    if valor_1 > 0 then
    begin
      percent := (valor_1 / valor_rateio);
      if DtSrc.State in [dsBrowse, dsInactive] then
        dm.cds_rateio.Edit;
      dm.cds_rateioPERCENTUAL.AsFloat := percent;
      dm.cds_rateioQTDE.AsFloat := quant * percent;
     // DBEdit5.SetFocus;
    end;
//    if (valor_1 <> valor_rateio) then
//      btnGravar.SetFocus;
  end;
  end;

end;

procedure TfRateioPag.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  percent := StrToFloat(DBEdit2.text);
  if percent > 0 then
  begin
    valor_1 := percent * valor_rateio;
    if DtSrc.State in [dsBrowse, dsInactive] then
      dm.cds_rateio.Edit;
    dm.cds_rateioVALOR.AsFloat := valor_1;
    dm.cds_rateioQTDE.AsFloat := quant * percent;
  end;
  if btnGravar.Enabled = True then
    btnGravar.SetFocus;

end;

procedure TfRateioPag.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure TfRateioPag.btnIncluirClick(Sender: TObject);
begin

    if (dm.cds_rateioTOTALPERCENTUAL.value > 99.9999009) then
    begin
      MessageDlg('Rateio completo.', mtInformation, [mbOK], 0);
      Exit;
    end;


//  percent_total := percent_total + percent;
  if (percent_total >= 0.999) then
  begin
    if (percent_total > 1.009) then
    begin
      MessageDlg('Total do rateio maior que o valor a dividir.', mtError, [mbOK], 0);
      Exit;
    end
    else
    MessageDlg('Rateio completo, pressione o botão gravar para finalizar.', mtInformation, [mbOK], 0);
    Exit;
  end;
  if dm.cds_rateio.State in [dsInsert] then
    dm.cds_rateio.Post;
  inherited;
  dm.cds_rateioCODMOVIMENTO.AsInteger := codigo;
  dm.cds_rateioTIPO.AsString := tipo;
  percent := 0;
  dm.cds_rateioCODSERVICO.AsInteger := 0;
  dm.cds_rateioSTATUS.AsInteger := 0;
  dm.cds_rateioCONTA.AsString := '0';
  dm.cds_rateioCONTADEBITO.AsString := conta_pl;
  dm.cds_rateioVALOR.AsFloat := dm.Arredondar(valorTotal,2);
  Edit1.SetFocus;
  Edit1.Color := clYellow;
end;

procedure TfRateioPag.FormShow(Sender: TObject);
begin
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';

  if dm.cds_ccusto.Active then
    dm.cds_ccusto.Close;
  dm.cds_ccusto.Params[0].AsString := conta_desp;
  dm.cds_ccusto.Open;
  percent := 0;
  valor_1 := 0;
  percent_total := 0;
  percent_origem := 0;
  //Com o codigo e o tipo vindo do form q esta abrindo este.
  if dm.cds_rateio.Active then
    dm.cds_rateio.Close;
  dm.cds_rateio.Params[0].AsInteger := codigo;
  dm.cds_rateio.Params[1].AsString := tipo;
  dm.cds_rateio.Params[2].AsString := conta_pl;
  dm.cds_rateio.Open;
  if not dm.cds_rateio.IsEmpty then
  begin
    valor_rateio := 0;  
    data_lanc := dm.cds_rateioDATA.AsDateTime;
    cod_usuario := dm.cds_rateioCODUSUARIO.AsInteger;
    dm.cds_rateio.First;
    While not dm.cds_rateio.Eof do
    begin
      valor_rateio := valor_rateio + dm.cds_rateioVALOR.AsFloat;
      percent_origem := percent_origem + dm.cds_rateioPERCENTUAL.AsFloat;
      dm.cds_rateio.Next;
    end;
    quant := dm.cds_rateioQTDE.AsFloat;
    dm.cds_rateio.Edit;
    Edit1.SetFocus;
    Edit1.Color := clYellow;
    valorTotal := dm.Arredondar(valor_rateio, 2);
  end
  else begin
    dm.cds_rateio.Append;
    dm.cds_rateioCODMOVIMENTO.AsInteger := codigo;
    dm.cds_rateioTIPO.AsString := tipo;
    percent := 0;
    dm.cds_rateioCODSERVICO.AsInteger := 0;
    dm.cds_rateioSTATUS.AsInteger := 0;
    dm.cds_rateioCONTA.AsString := '0';
    dm.cds_rateioCONTADEBITO.AsString := conta_pl;
    dm.cds_rateioVALOR.AsFloat := dm.Arredondar(valor_rateio,2);
    valorTotal := dm.Arredondar(valor_rateio, 2);    
  end;
end;

procedure TfRateioPag.btnGravarClick(Sender: TObject);
begin
  if (valorTotal >= (valorTotal - valor_1)) then
    valorTotal := valorTotal - valor_1
  else
  begin
    dbedit1.Text := FloatToStr(dm.Arredondar(valorTotal,2));
    dbedit1.SetFocus;
  end;
  percent_origem := percent_total + percent;
  percent_total := percent_total + percent;
  if (percent_total >= 1.009991) then
  begin
    MessageDlg('Total do rateio maior que o valor a dividir.', mtError, [mbOK], 0);
    exit;
  end;

  if dm.cds_rateioPERCENTUAL.IsNull then
  begin
    dm.cds_rateioPERCENTUAL.AsFloat := percent;
    dm.cds_rateioQTDE.AsFloat := quant * percent;
  end;

  if dm.cds_rateio.State in [dsInsert] then
  begin
    //Abre a c_genid para pegar o número do CODRATEIO
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(COD_MOV_RATEIO, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    dm.cds_rateioCODRATEIO.AsInteger := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
    dm.cds_rateioDATA.AsDateTime :=  data_lanc;
    dm.cds_rateioCODUSUARIO.AsInteger := cod_usuario;
  end;
{  if dm.cds_rateio.State in [dsEdit] then
  begin
    dm.cds_rateio.First;
    percent_total := 0;
    while not dm.cds_rateio.Eof do
    begin
      percent_total := percent_total + dm.cds_rateioPERCENTUAL.AsFloat;
      dm.cds_rateio.Next;
    end;
    dm.cds_rateio.Edit;
  end;}
  inherited;
  if percent_total = 1 then
  begin
    if MessageDlg('Rateio completo, sair ?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
      Close
    else
    begin
      btnIncluir.Click;
    end;
  end;
  btnIncluir.SetFocus;


end;

procedure TfRateioPag.FormCreate(Sender: TObject);
begin
  //inherited;
   sCtrlResize.CtrlResize(TForm(fRateioPag));
end;

end.
