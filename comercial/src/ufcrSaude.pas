unit ufcrSaude;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Provider, SqlExpr, FMTBcd, ImgList, Menus, DBClient, DB,
  DBLocal, DBLocalS, Grids, DBGrids, XPMenu, ExtCtrls, MMJPanel, Mask,
  StdCtrls, Buttons, DBCtrls, rpcompobase, rpvclreport, VDOBasePrinter,
  rplabelitem, VDODmPrinter, EExtenso, gbCobranca, JvExStdCtrls, JvEdit,
  JvDBSearchEdit, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, JvComponentBase, JvFormPlacement, JvAppStorage,
  JvAppXMLStorage, JvCombobox, JvBaseEdits;

type
  TfcrProcSaude = class(TForm)
    ds_Cr: TDataSource;
    scdsCr_proc: TClientDataSet;
    scdsCr_procCODRECEBIMENTO: TIntegerField;
    scdsCr_procTITULO: TStringField;
    scdsCr_procEMISSAO: TDateField;
    scdsCr_procDATAVENCIMENTO: TDateField;
    scdsCr_procCODCLIENTE: TIntegerField;
    scdsCr_procVALORTITULO: TFloatField;
    scdsCr_procVALOR_RESTO: TFloatField;
    scdsCr_procVALOR_PRIM_VIA: TFloatField;
    scdsCr_procSTATUS: TStringField;
    scdsCr_procDATARECEBIMENTO: TDateField;
    scdsCr_procVALORRECEBIDO: TFloatField;
    scdsCr_procN_DOCUMENTO: TStringField;
    scdsCr_procDUP_REC_NF: TStringField;
    scdsCr_procDP: TIntegerField;
    scdsCr_procNOMECLIENTE: TStringField;
    scdsCr_procRAZAOSOCIAL: TStringField;
    scdsCr_procVALORREC: TFloatField;
    scdsCr_procSTATUSP: TStringField;
    scdsCr_proctot_titulo: TAggregateField;
    scdsCr_proctot_recebido: TAggregateField;
    scdsCr_procTotPend: TAggregateField;
    dsp: TDataSetProvider;
    sds: TSQLDataSet;
    sdsCODRECEBIMENTO: TIntegerField;
    sdsTITULO: TStringField;
    sdsEMISSAO: TDateField;
    sdsDATAVENCIMENTO: TDateField;
    sdsCODCLIENTE: TIntegerField;
    sdsVALORTITULO: TFloatField;
    sdsVALOR_RESTO: TFloatField;
    sdsVALOR_PRIM_VIA: TFloatField;
    sdsSTATUS: TStringField;
    sdsDATARECEBIMENTO: TDateField;
    sdsVALORRECEBIDO: TFloatField;
    sdsN_DOCUMENTO: TStringField;
    sdsDUP_REC_NF: TStringField;
    sdsDP: TIntegerField;
    sdsNOMECLIENTE: TStringField;
    sdsRAZAOSOCIAL: TStringField;
    sdsVALORREC: TFloatField;
    sdsSTATUSP: TStringField;
    DataSource1: TDataSource;
    cds_total: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    sds_total: TSQLDataSet;
    DataSource2: TDataSource;
    sds_ch: TSQLDataSet;
    ImageList1: TImageList;
    Label3: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    cbStatus: TComboBox;
    edTitulo: TEdit;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    meDta3: TMaskEdit;
    meDta4: TMaskEdit;
    BitBtn7: TBitBtn;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    meDta5: TMaskEdit;
    meDta6: TMaskEdit;
    BitBtn6: TBitBtn;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    meDta1: TMaskEdit;
    meDta2: TMaskEdit;
    BitBtn2: TBitBtn;
    edCodCliente: TEdit;
    edCodCCusto: TComboBox;
    Edit1: TEdit;
    MMJPanel1: TMMJPanel;
    btnGravar: TBitBtn;
    btnIncluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    btnProcurar: TBitBtn;
    btnSair: TBitBtn;
    Panel2: TPanel;
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    BitBtn5: TBitBtn;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    btnNotaFiscal: TBitBtn;
    DBGrid1: TDBGrid;
    MMJPanel2: TMMJPanel;
    BitBtn10: TBitBtn;
    BitBtn15: TBitBtn;
    PopupMenu1: TPopupMenu;
    Executarconsulta1: TMenuItem;
    Receber1: TMenuItem;
    LimparCampos1: TMenuItem;
    Sair1: TMenuItem;
    edValor: TEdit;
    Label1: TLabel;
    repContasReceber: TVCLReport;
    repRelDuplicata: TVCLReport;
    Panel4: TPanel;
    Panel5: TPanel;
    sdsHISTORICO: TStringField;
    scdsCr_procHISTORICO: TStringField;
    sdsVIA: TStringField;
    scdsCr_procVIA: TStringField;
    VDODmPrinter1: TVDODmPrinter;
    cds_end_cli: TSQLDataSet;
    cds_end_cliCODENDERECO: TIntegerField;
    cds_end_cliCODCLIENTE: TIntegerField;
    cds_end_cliLOGRADOURO: TStringField;
    cds_end_cliBAIRRO: TStringField;
    cds_end_cliCOMPLEMENTO: TStringField;
    cds_end_cliCIDADE: TStringField;
    cds_end_cliUF: TStringField;
    cds_end_cliCEP: TStringField;
    cds_end_cliTELEFONE: TStringField;
    cds_end_cliTELEFONE1: TStringField;
    cds_end_cliTELEFONE2: TStringField;
    cds_end_cliFAX: TStringField;
    cds_end_cliE_MAIL: TStringField;
    cds_end_cliRAMAL: TStringField;
    cds_end_cliTIPOEND: TSmallintField;
    cds_end_cliDADOSADICIONAIS: TStringField;
    cds_end_cliDDD: TStringField;
    VCLReport1: TVCLReport;
    EvExtenso1: TEvExtenso;
    sdsCODVENDA: TIntegerField;
    scdsCr_procCODVENDA: TIntegerField;
    sql_Banco: TSQLDataSet;
    sql_BancoCODBANCO: TSmallintField;
    sql_BancoBANCO: TStringField;
    sql_BancoNOMEBANCO: TStringField;
    sql_BancoCARTEIRA: TStringField;
    sql_BancoCODIGO_CEDENTE: TStringField;
    sql_BancoCODIGO_EMPRESA: TStringField;
    sql_BancoCODIGO_AGENCIA: TStringField;
    sql_BancoDIGITO_AGENCIA: TStringField;
    sql_BancoNUMERO_CONTA: TStringField;
    sql_BancoDIGITO_CONTA: TStringField;
    sql_BancoCODIGO_PLANO: TIntegerField;
    sql_BancoINSTRUCAO1: TStringField;
    sql_BancoINSTRUCAO2: TStringField;
    sql_BancoINSTRUCAO3: TStringField;
    sql_BancoINSTRUCAO4: TStringField;
    DataSetProvider2: TDataSetProvider;
    sds_parametro: TSQLDataSet;
    sds_parametroDESCRICAO: TStringField;
    sds_parametroPARAMETRO: TStringField;
    sds_parametroCONFIGURADO: TStringField;
    sds_parametroDADOS: TStringField;
    sds_parametroD1: TStringField;
    sds_parametroD2: TStringField;
    sds_parametroD3: TStringField;
    sds_parametroD4: TStringField;
    sds_parametroD5: TStringField;
    sds_parametroD6: TStringField;
    sds_parametroD7: TStringField;
    sds_parametroD8: TStringField;
    sds_parametroD9: TStringField;
    sds_parametroINSTRUCOES: TStringField;
    cds_parametro: TClientDataSet;
    cds_parametroDESCRICAO: TStringField;
    cds_parametroPARAMETRO: TStringField;
    cds_parametroCONFIGURADO: TStringField;
    cds_parametroDADOS: TStringField;
    cds_parametroD1: TStringField;
    cds_parametroD2: TStringField;
    cds_parametroD3: TStringField;
    cds_parametroD4: TStringField;
    cds_parametroD5: TStringField;
    cds_parametroD6: TStringField;
    cds_parametroD7: TStringField;
    cds_parametroD8: TStringField;
    cds_parametroD9: TStringField;
    cds_parametroINSTRUCOES: TStringField;
    btnGeraMensalidade: TBitBtn;
    edCliente: TJvDBSearchEdit;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider3: TDataSetProvider;
    cdsClienteBusca: TClientDataSet;
    DataSource3: TDataSource;
    cdsClienteBuscaCODCLIENTE: TIntegerField;
    cdsClienteBuscaNOMECLIENTE: TStringField;
    cdsClienteBuscaRAZAOSOCIAL: TStringField;
    btnLimpa: TBitBtn;
    cdsClienteBuscaRA: TStringField;
    cbGeraBol: TComboBox;
    cbGeraAviso: TComboBox;
    cbGeraEnvelope: TComboBox;
    Label12: TLabel;
    Label13: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    cbEmViagem: TComboBox;
    marcarTodos: TMenuItem;
    desmarcar: TMenuItem;
    Label21: TLabel;
    Label22: TLabel;
    JvFormStorage1: TJvFormStorage;
    JvAppXMLFileStorage1: TJvAppXMLFileStorage;
    Label4: TLabel;
    cbConta: TJvComboBox;
    sdsRA: TStringField;
    scdsCr_procRA: TStringField;
    Label23: TLabel;
    cbForma: TComboBox;
    Label18: TLabel;
    JvCalcEdit2: TJvCalcEdit;
    JvCalcEdit3: TJvCalcEdit;
    Label16: TLabel;
    JvCalcEdit1: TJvCalcEdit;
    Label14: TLabel;
    CheckBox1: TCheckBox;
    sCR: TSQLDataSet;
    dCR: TDataSetProvider;
    cCR: TClientDataSet;
    cCRDATAVENCIMENTO: TDateField;
    cCRRA: TStringField;
    cCRNOMECLIENTE: TStringField;
    cCRRAZAOSOCIAL: TStringField;
    sCRDATAVENCIMENTO: TDateField;
    sCRRA: TStringField;
    sCRNOMECLIENTE: TStringField;
    sCRRAZAOSOCIAL: TStringField;
    DataSource4: TDataSource;
    DBGrid2: TDBGrid;
    sCRVALORTITULO: TFloatField;
    sCRVALOR_RESTO: TFloatField;
    sCRVALOR_PRIM_VIA: TFloatField;
    sCRVALORRECEBIDO: TFloatField;
    cCRVALORTITULO: TFloatField;
    cCRVALOR_RESTO: TFloatField;
    cCRVALOR_PRIM_VIA: TFloatField;
    cCRVALORRECEBIDO: TFloatField;
    procedure edCodClienteExit(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure edValorKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btnNotaFiscalClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btn_boletoClick(Sender: TObject);
    procedure btnGeraMensalidadeClick(Sender: TObject);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edClienteChange(Sender: TObject);
    procedure edCodCCustoChange(Sender: TObject);
    procedure btnLimpaClick(Sender: TObject);
    procedure edCodClienteChange(Sender: TObject);
    procedure marcarTodosClick(Sender: TObject);
    procedure desmarcarClick(Sender: TObject);
    procedure edClienteExit(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    procedure ChkDBGridDrawColumnCell(DBGrid: TDBGrid;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure ChkDBGridColEnter(DBGrid: TDBGrid);
    procedure ChkDBGridColExit(DBGrid: TDBGrid);
    procedure ChkDBGridCellClick(Column: TColumn);
    procedure ChkDBGridKeyPress(DBGrid: TDBGrid; var Key: Char);
    procedure resumido;
    procedure detalhado;
    { Private declarations }
  public
    imp: string;
    { Public declarations }
  end;

var
  fcrProcSaude: TfcrProcSaude;
  SqlCr, sqlTexto1, DataStr, sqlGrupoCR, impCR: String;

implementation

uses uComercial, UDm, uListaClientes, uProcurar, ucrTitulo, uDuplicata,
  uRemessaTitulo, uMostraDetalhe, uGeraCob, ufDlgLogin, uUtils,
  ufcr, uRelCr2, sCtrlResize;

{$R *.dfm}

procedure TfcrProcSaude.edCodClienteExit(Sender: TObject);
begin
{   if edCodCliente.Text = '' then exit;
   if dm.scds_cliente_proc.Active then
      dm.scds_cliente_proc.Close;
   dm.scds_cliente_proc.Params[0].Clear;
   dm.scds_cliente_proc.Params[1].Clear;
   dm.scds_cliente_proc.Params[2].AsInteger := StrToInt(edCodCliente.Text);
   dm.scds_cliente_proc.Open;
     edCliente.Text := dm.scds_cliente_procNOMECLIENTE.asString;
   dm.scds_cliente_proc.Close;}
end;

procedure TfcrProcSaude.BitBtn9Click(Sender: TObject);
begin
  inherited;
  edCodCliente.Text:='';
  edCliente.Text:='';
end;

procedure TfcrProcSaude.FormCreate(Sender: TObject);
var varCrProcSaude : TUtils;
  i, j : integer;
begin
  varCrProcSaude := TUtils.Create;

  // Popula Status
  j := varCrProcSaude.Forma.Count;
  for i := 0 to j - 1 do
  begin
    cbForma.Items.Add(varCrProcSaude.Forma.Strings[i]);
  end;

  j := varCrProcSaude.StatusRec.Count;
  for i := 0 to j - 1 do
  begin
    cbStatus.Items.Add(varCrProcSaude.StatusRec.Strings[i]);
  end;

  // Listo as Contas Caixa
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CAIXA_BANCO';
  dm.cds_parametro.Open;
  if (dm.cds_7_contas.Active) then
    dm.cds_7_contas.close;
  dm.cds_7_contas.Params[0].AsString := dm.cds_parametroDADOS.AsString;
  dm.cds_7_contas.Open;
  while (not dm.cds_7_contas.Eof) do
  begin
    cbConta.Items.Add(dm.cds_7_contasNOME.AsString);
    dm.cds_7_contas.next;
  end;
  dm.cds_parametro.Close;

end;

procedure TfcrProcSaude.ChkDBGridCellClick(Column: TColumn);
  var
    Field: TField;
  begin
    Field := Column.Field;
    if (Field <> nil) and (Field.Name = 'scdsCr_procDUP_REC_NF')
        and Field.CanModify and not Column.ReadOnly then
      with Field.Dataset do begin
        if State = dsBrowse then
          Edit;
        if (scdsCr_procDUP_REC_NF.AsString = '') then
        begin
          //dbGrid1.SelectedRows.CurrentRowSelected := True;
          //dbgrid1.Refresh;
          scdsCr_procDUP_REC_NF.AsString := 'S';
          scdsCr_procDP.AsInteger := 0;
          scdsCr_proc.Post;
        end
        else begin
          scdsCr_procDUP_REC_NF.AsString := '';
          scdsCr_procDP.Clear;;
        end;
      end;
end;

procedure TfcrProcSaude.ChkDBGridColEnter(DBGrid: TDBGrid);
  var
    Field: TField;
  begin
    Field := DBGrid.SelectedField;
    if (Field <> nil) and (Field.Name = 'scdsCr_procDUP_REC_NF') then
      DBGrid.Options := DBGrid.Options - [dgEditing];
end;

procedure TfcrProcSaude.ChkDBGridColExit(DBGrid: TDBGrid);
  var
    Field: TField;
  begin
    Field := DBGrid.SelectedField;
    if (Field <> nil) and (Field.Name = 'scdsCr_procDUP_REC_NF') then
      DBGrid.Options := DBGrid.Options + [dgEditing];
end;

procedure TfcrProcSaude.ChkDBGridDrawColumnCell(DBGrid: TDBGrid;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  X, Y, Index: integer;
  Field: TField;
begin
  Field := Column.Field;
  if (Field <> nil) and (Field.Name = 'scdsCr_procDUP_REC_NF') then begin
    // Fill the cell with the background color
    DBGrid.Canvas.FillRect(Rect);
    // Determine the position of the graphic inside the cell
    case Column.Alignment of
    taRightJustify:
      X := Rect.Right - 2 - 16;
    taCenter:
      X := (Rect.Right - Rect.Left - 16) div 2 + Rect.Left;
    else // taLeftJustify:
      X := Rect.Left + 2;
    end;
    Y := (Rect.Bottom - Rect.Top - 16) div 2 + Rect.Top;
    // Determine the image to be used
//    if Field.AsBoolean then Index := 1 else Index := 0;
    if scdsCr_procDUP_REC_NF.AsString = '' then Index := 1 else Index := 0;
    // Draw the graphic
    ImageList1.Draw(DBGrid.Canvas, X, Y, Index);
  end else // Default drawing
    DBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfcrProcSaude.ChkDBGridKeyPress(DBGrid: TDBGrid; var Key: Char);
  var
    Field: TField;
  begin
    Field := DBGrid.SelectedField;
    if (Field <> nil) and (Field.Name = 'scdsCr_procDUP_REC_NF') then
      if (Key = ' ') and Field.CanModify and
          not DBGrid.Columns[DBGrid.SelectedIndex].ReadOnly then
        with Field.Dataset do begin
          if State = dsBrowse then
            Edit;
//          Field.AsBoolean := not Field.AsBoolean;
        if (scdsCr_procDUP_REC_NF.AsString = '') then
        begin
          scdsCr_procDUP_REC_NF.AsString := 'S';
          scdsCr_procDP.AsInteger := 0;
          scdsCr_proc.Post;
        end
        else begin
          scdsCr_procDUP_REC_NF.AsString := '';
          scdsCr_procDP.Clear;;
        end;
        end;
end;

procedure TfcrProcSaude.DBGrid1CellClick(Column: TColumn);
begin
  ChkDBGridCellClick(Column);
end;

procedure TfcrProcSaude.DBGrid1ColEnter(Sender: TObject);
begin
  ChkDBGridColEnter(Sender as TDBGrid);
end;

procedure TfcrProcSaude.DBGrid1ColExit(Sender: TObject);
begin
 ChkDBGridColEnter(Sender as TDBGrid);
end;

procedure TfcrProcSaude.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
//***************************************************
// destacando Campos
//***************************************************
  if Column.Field = scdsCr_procSTATUSP then
   if (scdsCr_procSTATUS.AsString = '5-') then
   begin
     DBGrid1.Canvas.Font.Color := clRed;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
  if Column.Field = scdsCr_procSTATUSP then
   if (scdsCr_procSTATUS.AsString = '7-') then
   begin
     DBGrid1.Canvas.Font.Color := clBlue;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;

  ChkDBGridDrawColumnCell(Sender as TDBGrid, Rect,
    DataCol, Column, State);



end;

procedure TfcrProcSaude.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   ChkDBGridKeyPress(Sender as TDBGrid, Key);


 if (key = #13) then
 begin
   fMostraDetalhe := TfMostraDetalhe.Create(Application);
   try
     codigovenda := scdsCr_procCODVENDA.AsInteger;
     fMostraDetalhe.ShowModal;
   finally
     fMostraDetalhe.Free;
   end;
 end;
end;

procedure TfcrProcSaude.DBGrid1TitleClick(Column: TColumn);
begin
    scdsCr_proc.IndexFieldNames := Column.FieldName;
end;

procedure TfcrProcSaude.FormShow(Sender: TObject);
var conta_local , banco_boleto: String;
begin
    sCtrlResize.CtrlResize(TForm(fcrProcSaude));
     // Apaga as Datas das Pesquisas
     meDta3.Text := '  /  /  ';
     meDta4.Text := '  /  /  ';
     meDta1.Text := '  /  /  ';
     meDta2.Text := '  /  /  ';
     meDta5.Text := '  /  /  ';
     meDta6.Text := '  /  /  ';


    //Vejo quais são as contas de Receitas para listar no lookupcombobox.
    if dm.cds_parametro.Active then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'CENTRORECEITA';
    dm.cds_parametro.Open;
    conta_local := dm.cds_parametroDADOS.AsString;
    dm.cds_parametro.Close;

    if dm.cds_parametro.Active then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'BOLETO';
    dm.cds_parametro.Open;
    banco_boleto := dm.cds_parametroDADOS.AsString;
    dm.cds_parametro.Close;
    if (banco_boleto <> '') then
    begin
      if sql_Banco.Active then
        sql_Banco.Close;
      sql_Banco.Params[0].AsInteger := StrToInt(banco_boleto);
      sql_Banco.Open;
    end;

    if dm.cds_ccusto.Active then
      dm.cds_ccusto.Close;
    dm.cds_ccusto.Params[0].AsString := conta_local;
    dm.cds_ccusto.Open;
    // populo a combobox
    DM.cds_ccusto.First;
    while not DM.cds_ccusto.Eof do
    begin
      edCodCCusto.Items.Add(dm.cds_ccustoNOME.AsString);
      DM.cds_ccusto.Next;
    end;
    edCodCCusto.ItemIndex := 0;
    cdsClienteBusca.Params[0].AsString := 'ASH';
    cdsClienteBusca.Open;
    edCliente.Text := '';
    edCodCliente.Text := '';
  cbStatus.ItemIndex := 2;
  cbStatus.SetFocus;
end;

procedure TfcrProcSaude.btnProcurarClick(Sender: TObject);
begin
  if (CheckBox1.Checked = False) then
     detalhado
  else
     resumido;
end;

procedure TfcrProcSaude.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfcrProcSaude.BitBtn7Click(Sender: TObject);
begin
 meDta3.Text := '  /  /  ';
 meDta4.Text := '  /  /  ';
end;

procedure TfcrProcSaude.BitBtn2Click(Sender: TObject);
begin
 meDta1.Text := '  /  /  ';
 meDta2.Text := '  /  /  ';
end;

procedure TfcrProcSaude.BitBtn6Click(Sender: TObject);
begin
 meDta5.Text := '  /  /  ';
 meDta6.Text := '  /  /  ';
end;

procedure TfcrProcSaude.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TfcrProcSaude.edValorKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [','] then Key := '.';
end;

procedure TfcrProcSaude.btnCancelarClick(Sender: TObject);
var icompA: integer;
begin
  for icompA:=0 to ComponentCount - 1 do
   if Components[icompA] is TEdit then
      (Components[icompA] as TEdit).Text := '';
  cbStatus.Text := '';
  if (scdsCr_proc.Active) then
    scdsCr_proc.Close;
end;

procedure TfcrProcSaude.btnIncluirClick(Sender: TObject);
  var vlr, vlrrec, vlrdesc, vlrjuros, vlrfunrural, vlrperda: double;
  i, j : integer;
begin
 try
   i := 1;
   vlr := 0;
   vlrrec := 0;
   vlrdesc := 0;
   vlrjuros := 0;
   vlrfunrural := 0;
   vlrperda := 0;
   // Se houve selecao de titulos entao gravo.
   if (scdsCr_proc.ChangeCount > 0) then
   begin
     //teste := scdsCr_proc.CommandText;
     //scdsCr_proc.ApplyUpdates(-1);
   end
   else begin
     MessageDlg('Marque o título a ser baixado!', mtWarning, [mbOK], 0);
     exit;
   end;
   if dm.cds_cr.Active then
     dm.cds_cr.Close;
   dm.cds_cr.Params[0].AsInteger := scdsCr_procCODRECEBIMENTO.AsInteger;
   dm.cds_cr.Open;
   dm.cds_cr.Edit;
   scdsCr_proc.DisableControls;
   scdsCr_proc.First;
   While not scdsCr_proc.Eof do
   begin
//   for j := 0 to DBGrid1.SelectedRows.Count - 1 do
//   begin
     //scdsCr_proc.GotoBookmark(pointer(DBGrid1.SelectedRows.Items[j]));

     if (scdsCr_procDUP_REC_NF.AsString = 'S') then
     begin
       setlength(nrec, i);
       nrec[i - 1] := scdsCr_procCODRECEBIMENTO.AsInteger;
       if (fcrtitulo.cds.active) then
         fcrtitulo.cds.close;
       fcrtitulo.cds.Params[0].AsInteger := scdsCr_procCODRECEBIMENTO.AsInteger;
       fcrtitulo.cds.Open;
       //if (fcrtitulo.cdsSUM.AsFloat = scdsCr_procVALORREC.AsFloat) then
       //begin
          vlr := vlr + fcrtitulo.cdsSUM.AsFloat;
          vlrfunrural := vlrfunrural + fcrtitulo.cdsSUM_1.AsFloat;
          vlrjuros := vlrjuros + fcrtitulo.cdsSUM_2.AsFloat;
          vlrperda := vlrperda +  fcrtitulo.cdsSUM_3.AsFloat;
          vlrdesc := vlrdesc +  fcrtitulo.cdsSUM_4.AsFloat;
          if (fcrtitulo.cdsSUM_5.AsFloat > 0) then
            vlrrec := vlrrec +  fcrtitulo.cdsSUM_5.AsFloat;
       //end;
       i := i + 1;
     end;
     scdsCr_proc.Next;
   end;
  scdsCr_proc.EnableControls;
  if (dm.cds_cr.State in [dsBrowse, dsInactive]) then
    dm.cds_cr.Edit;
 // adicionei esse If em 05/10/06  "Edson"
 if (dm.cds_crSTATUS.AsString <> '1-') then
  dm.cds_crVALOR_RESTO.AsFloat := vlr;
  dm.cds_crFUNRURAL.AsFloat := vlrfunrural;
  dm.cds_crJUROS.AsFloat := vlrjuros;
  dm.cds_crPERDA.AsFloat := vlrperda;
  dm.cds_crDESCONTO.AsFloat := vlrdesc;
  if (fcrtitulo.cdsSUM_5.AsFloat > 0) then
    dm.cds_crVALORRECEBIDO.AsFloat := vlrrec;
  dm.cds_crTITULO.AsString := 'Diversos';
  dm.cds_crCODVENDA.AsInteger := 0;
   fcrtitulo.cds.close;
   if (dm.cds_crSTATUS.AsString = '7-') then
   begin
     fcrTitulo.btnCancela_Baixa.Enabled := True;
     fcrTitulo.BitBtn2.Enabled := False;
   end;
   fCrTitulo.ShowModal;
 finally
   DBGrid1.SetFocus;
{   if (scdsCr_proc.ChangeCount > 0) then
   begin
     scdsCr_proc.ApplyUpdates(0);
   end;              }
   scdsCr_proc.Close;
   scdscr_Proc.Open;
 end;
end;

procedure TfcrProcSaude.btnImprimirClick(Sender: TObject);
begin
{  sqlGrupo := '';
  if not scdsCr_proc.Active then
  begin
   MessageDlg('Pôr favor efetue a pesquisa antes, para depois imprimir..', mtWarning, [mbOK], 0);
   exit;
  end;
 sqlGrupo := ' order by cli.NOMECLIENTE, rec.CODCLIENTE, '
            + ' rec.DATAVENCIMENTO, rec.EMISSAO';
  sqlGrupo := imp + SqlCr + sqlGrupo;
  repContasReceber.FileName := str_relatorio + 'RelContasReceber.rep';
  repContasReceber.Report.DataInfo.Items[0].SQL:= sqlGrupo;
  repContasReceber.Execute;
 }

  fRel_CR2 := TfRel_CR2.Create(Application);
  try
    fRel_CR2.ShowModal;
  finally
    fRel_CR2.Free;
  end;
   
end;

procedure TfcrProcSaude.BitBtn5Click(Sender: TObject);
var
 Valor_total :double;
begin
  if not scdsCr_proc.Active then
    exit;
  if ((scdsCr_procSTATUS.AsString <> '9-') and
    (scdsCr_procSTATUS.AsString <> '10') and (scdsCr_procSTATUS.AsString <> '12'))
  then
  begin
    if scdsCr_procDP.AsInteger <= 0 then
    begin
      Valor_total := 0;
      // Altera a o valor de DP
      if (scdsCr_proc.ChangeCount > 0) then
      begin
        qtde := scdsCr_proc.ChangeCount;
        scdsCr_proc.ApplyUpdates(-1);
      end;
      scdsCr_proc.First;
      while not scdsCr_proc.Eof do
      begin
        if (scdsCr_procDUP_REC_NF.AsString <> '') then
        begin
          Valor_total := Valor_total + scdsCr_procVALOR_RESTO.AsFloat;
          codrec := scdsCr_procCODRECEBIMENTO.AsInteger;
          codcliente := scdsCr_procCODCLIENTE.AsInteger;
          dta_Emissao := DateToStr(scdsCr_procEMISSAO.AsDateTime);
          titulo := scdsCr_procTITULO.AsString;
        end;
        scdsCr_proc.Next;
      end;
      valor_dupl := Valor_total;
    end;
    fDuplicata:=TfDuplicata.Create(Application);
    try
      fDuplicata.BitBtn2.Visible := false;
      fDuplicata.BitBtn1.Visible := true;
      fDuplicata.ShowModal;
    finally
      scdsCr_proc.Refresh;
      fDuplicata.Free;
    end;
  end
  else
  begin
    fDuplicata:=TfDuplicata.Create(Application);
    try
      if fDuplicata.cds_cr.Active then
        fDuplicata.cds_cr.Close;
      fDuplicata.cds_cr.Params[0].AsInteger := scdsCr_procDP.AsInteger;
      fDuplicata.cds_cr.Params[1].AsString := '9-';
      fDuplicata.cds_cr.Open;
      valor_dupl := scdsCr_procVALOR_RESTO.AsFloat;
      fDuplicata.Edit3.Text := IntToStr(scdsCr_procDP.AsInteger);
      fDuplicata.BitBtn1.Visible := false;
      fDuplicata.BitBtn2.Visible := true;
      fDuplicata.ShowModal;
    finally
      fDuplicata.Free;
      scdsCr_proc.Refresh;
    end;
  end;
end;

procedure TfcrProcSaude.BitBtn1Click(Sender: TObject);
begin
  if ((scdsCr_procSTATUS.AsString <> '9-') and (scdsCr_procSTATUS.AsString <> '12')) then
  begin
    MessageDlg('O Título : ''' + scdsCr_procTITULO.AsSTring + ''' não é uma Duplicata !',
    mtConfirmation, [mbOk],0);
    exit;
  end;
  // Altera a o valor de DP
  if (scdsCr_proc.ChangeCount > 0) then
  begin
    qtde := scdsCr_proc.ChangeCount;
    scdsCr_proc.ApplyUpdates(-1);
  end;
  fRemessaTitulo:=TfRemessaTitulo.Create(Application);
  try
    varRemetido := 0;
    varTitulo := scdsCr_procTITULO.AsString;
    if (fRemessaTitulo.cds.Active) then
      fRemessaTitulo.cds.Close;
    fRemessaTitulo.cds.Params[0].AsString := scdsCr_procTITULO.AsString;
    fRemessaTitulo.cds.Open;
    if (fRemessaTitulo.cds.IsEmpty) then
    begin
      fRemessaTitulo.cds.Append;
      fRemessaTitulo.cdsTITULO.AsString := scdsCr_procTITULO.AsString;
      fRemessaTitulo.cdsNUMEROBORDERO.AsInteger := scdsCr_procCODCLIENTE.AsInteger;
      fRemessaTitulo.cdsNOMECLIENTE.AsString := scdsCr_procNOMECLIENTE.AsString;
      fRemessaTitulo.cdsTIPOOPERACAO.AsInteger := 0;
      fRemessaTitulo.cdsDATAREMESSA.AsDateTime := scdsCr_procEMISSAO.AsDateTime;
      varRemetido := scdsCr_procCODRECEBIMENTO.AsInteger;
    end else
      fRemessaTitulo.cds.Edit;
    fRemessaTitulo.ShowModal;
  finally
    fRemessaTitulo.cds.Close;
    fRemessaTitulo.Free;
    scdsCr_proc.Refresh;
  end;
end;

procedure TfcrProcSaude.BitBtn3Click(Sender: TObject);
begin
  if (not scdsCr_proc.Active) then
  begin
   MessageDlg('Pôr favor efetue a pesquisa antes, para depois imprimir..', mtWarning, [mbOK], 0);
   exit;
  end;
  if (scdsCr_procSTATUS.AsString <> '12') then
  begin
   MessageDlg('O Status deve ser "12-Duplica Banco" para este relatório !', mtWarning, [mbOK], 0);
   exit;
  end;
  if ( medta3.Text <> datastr) then
  begin
    repRelDuplicata.Report.Params.ParamByName('PDTA1').Value := formatdatetime('dd/mm/yy', StrToDate(medta3.Text));
  end;
  if ( medta4.Text <> datastr) then
  begin
    repRelDuplicata.Report.Params.ParamByName('PDTA2').Value := formatdatetime('dd/mm/yy', StrToDate(medta4.Text));
  end;
  repRelDuplicata.FileName := str_relatorio + 'rel_duplicata_enviada.rep';
  repRelDuplicata.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;  
  repRelDuplicata.Execute;

end;

procedure TfcrProcSaude.btnNotaFiscalClick(Sender: TObject);
{  var
   sqlGrupo: String;
begin
  sqlGrupo := ' group by cli.NOMECLIENTE, rec.CODCLIENTE, '
            + ' rec.DATAVENCIMENTO, rec.EMISSAO, rec.CODRECEBIMENTO, '
            + ' rec.TITULO,  rec.VALOR_RESTO, rec.VALORTITULO, '
            + ' rec.STATUS, rec.DATARECEBIMENTO, rec.VALORRECEBIDO , '
            + ' rec.VIA, rec.N_DOCUMENTO, rec.VALOR_PRIM_VIA  ';
  repContasReceber.Report.DataInfo.Items[0].SQL:= sqlTexto1 + SqlCr + sqlGrupo;
  repContasReceber.FileName := str_relatorio + 'RelContasReceber.rep';
  repContasReceber.Execute;}
var
nrdiames: Integer;
diasemana: array[1..7] of String;
diames: array[1..31] of String;
meses: array[1..12] of String;
dia, mes, ano: Word;
valor: Double;
acompo2 : TRpLabel;
begin
  inherited;
    if not dm.cds_empresa.Active then
      dm.cds_empresa.Open;
    //*********************************
    // escreve o dia da semana pôr extenso
    diasemana[1]:= 'Domingo';
    diasemana[2]:= 'Segunda-feira';
    diasemana[3]:= 'Terça-feira';
    diasemana[4]:= 'Quarta-feira';
    diasemana[5]:= 'Quinta-feira';
    diasemana[6]:= 'Sexta-feira';
    diasemana[7]:= 'Sábado';

    //*********************************
    // escreve o dia do mês pôr extenso
    diames[1]:= 'Um';
    diames[2]:= 'Dois';
    diames[3]:= 'Tres';
    diames[4]:= 'Quatro';
    diames[5]:= 'Cinco';
    diames[6]:= 'Seis';
    diames[7]:= 'Sete';
    diames[8]:= 'Oito';
    diames[9]:= 'Nove';
    diames[10]:= 'Des';
    diames[11]:= 'Onze';
    diames[12]:= 'Doze';
    diames[13]:= 'Treze';
    diames[14]:= 'Quatorze';
    diames[15]:= 'Quinze';
    diames[16]:= 'Dezesseis';
    diames[17]:= 'Dezessete';
    diames[18]:= 'Dezoito';
    diames[19]:= 'Dezenove';
    diames[20]:= 'Vinte';
    diames[21]:= 'Vinte e um';
    diames[22]:= 'Vinte e dois';
    diames[23]:= 'Vinte e tres';
    diames[24]:= 'Vinte e quatro';
    diames[25]:= 'Vinte e cinco';
    diames[26]:= 'Vinte e seis';
    diames[27]:= 'Vinte e sete';
    diames[28]:= 'Vinte e oito';
    diames[29]:= 'Vinte e nove';
    diames[30]:= 'Trinta';
    diames[31]:= 'Trinta e um';

    //*********************************
    // escreve o mês pôr extenso
    meses[1]:= 'Janeiro';
    meses[2]:= 'Fevereiro';
    meses[3]:= 'Março';
    meses[4]:= 'Abril';
    meses[5]:= 'Maio';
    meses[6]:= 'Junho';
    meses[7]:= 'Julho';
    meses[8]:= 'Agosto';
    meses[9]:= 'Setembro';
    meses[10]:= 'Outubro';
    meses[11]:= 'Novembro';
    meses[12]:= 'Dezembro';

    VCLReport1.FileName := str_relatorio + 'promissoria.rep';
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    DecodeDate(scdsCr_procDATAVENCIMENTO.AsDateTime,ano,mes,dia);
    nrdiames := dia;

    VCLReport1.Report.Params.ParamByName('DIA').Value := diames[nrdiames];
    VCLReport1.Report.Params.ParamByName('MES').Value := meses[mes];
    VCLReport1.Report.Params.ParamByName('ANO').Value := INTTOSTR(ano);
//    VCLReport1.Report.Params.ParamByName('RAZAO').Value := dm.cds_empresaRAZAO.AsString;
//    VCLReport1.Report.Params.ParamByName('CNPJ').Value := dm.cds_empresaCNPJ_CPF.AsString;
    VCLReport1.Report.Params.ParamByName('VALOR').Value := floattostr(scdsCr_procVALOR_RESTO.AsFloat);
    valor := scdsCr_procVALOR_RESTO.AsFloat;



    VCLReport1.Report.Params.ParamByName('VALOREXTENSO').Value := EvExtenso1.GetExtenso(Valor);

    acompo2:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel5'));
    if Assigned(acompo2) then
      acompo2.Text := INTTOSTR(dia)+' de '+meses[mes]+
      ' de '+INTTOSTR(ano);


    {if Assigned(acompo1) then
      acompo1.Text :=}

    if (edCodCliente.Text <> '') then
      VCLReport1.Report.Params.ParamByName('CODCLI').Value := scdsCr_procCODCLIENTE.AsInteger
    else
      VCLReport1.Report.Params.ParamByName('CODCLI').Value := 999999999;
    if (edTitulo.Text <> '') then
      VCLReport1.Report.Params.ParamByName('TITULO').Value := scdsCr_procTITULO.AsString
    else
      VCLReport1.Report.Params.ParamByName('TITULO').Value := 'TODOSTITULO';

    if ( medta3.Text <> datastr) then
    begin
      VCLReport1.Report.Params.ParamByName('DTAINI').Value := formatdatetime('dd/mm/yy', StrToDate(medta3.Text));
    end
    else
    begin
      MessageDlg('Preencha a Período de vencimento !', mtInformation, [mbOK], 0);
      exit;
    end;
    if ( medta4.Text <> datastr) then
    begin
      VCLReport1.Report.Params.ParamByName('DTAFIM').Value := formatdatetime('dd/mm/yy', StrToDate(medta4.Text));
    end;

    VCLReport1.Execute;

end;

procedure TfcrProcSaude.DBGrid1DblClick(Sender: TObject);
begin
   fMostraDetalhe := TfMostraDetalhe.Create(Application);
   try
     codigovenda := scdsCr_procCODVENDA.AsInteger;
     fMostraDetalhe.ShowModal;
   finally
     fMostraDetalhe.Free;
   end;
end;

procedure TfcrProcSaude.btn_boletoClick(Sender: TObject);
begin
          { Cedente - Dados do Cedente}
   {
    gbTitulo.Sacado.Nome := scdsCr_procRAZAOSOCIAL.AsString; // Razao Social
    gbTitulo.DataDocumento := scdsCr_procEMISSAO.AsDateTime; // Data Emissão
    gbTitulo.ValorDocumento := scdsCr_procVALOR_RESTO.AsCurrency; // Valor Titulo
    gbTitulo.DataVencimento := scdsCr_procDATAVENCIMENTO.AsDateTime; // Data Vencimento

    gbTitulo.Cedente.Endereco.Rua := dm.cds_empresaENDERECO.AsString;
    //gbTitulo.Cedente.Endereco.Numero := dm.cds_empresaLOGRADOURO
  //  gbTitulo.Cedente.Endereco.Bairro := dm.cds_empresaLOGRADOURO.AsString;
  //  gbTitulo.Cedente.Endereco.Cidade := dm.cds_empresaCIDADE.AsString;
  //  gbTitulo.Cedente.Endereco.Estado := dm.cds_empresaUF.AsString;
  //  gbTitulo.Cedente.Endereco.CEP := dm.cds_empresaCEP.AsString;

 //   gbTitulo.Cedente.ContaBancaria.fBanco.Codigo :=
//    gbTitulo.Cedente.ContaBancaria.fBanco.Codigo :=

     if not (dm.cds_empresa.Active) then
      dm.cds_empresa.Open;
    gbTitulo.Cedente.Nome := dm.cds_empresaEMPRESA.AsString;

    if (cds_end_cli.Active) then
      cds_end_cli.Close;
      cds_end_cli.Params[0].AsInteger := scdsCr_procCODCLIENTE.AsInteger;
      cds_end_cli.Open;
   }
      { SACADO - Dados do Cliente}
  {
      gbTitulo.Sacado.Endereco.Rua := cds_end_cliLOGRADOURO.AsString; // Endereço
      gbTitulo.Sacado.Endereco.Bairro := cds_end_cliBAIRRO.AsString;  // Bairro
      gbTitulo.Sacado.Endereco.Cidade := cds_end_cliCIDADE.AsString;  // Cidade
      gbTitulo.Sacado.Endereco.Estado := cds_end_cliUF.AsString;      // UF
      gbTitulo.Sacado.Endereco.CEP := cds_end_cliCEP.AsString;        // CEP

   }    {Dados bo Banco }
   {
      gbTitulo.Cedente.ContaBancaria.CodigoAgencia := sql_BancoCODIGO_AGENCIA.AsString;
      gbTitulo.Cedente.ContaBancaria.DigitoAgencia := sql_BancoDIGITO_AGENCIA.AsString;
      gbTitulo.Cedente.ContaBancaria.NumeroConta := sql_BancoNUMERO_CONTA.AsString;
      gbTitulo.Cedente.ContaBancaria.DigitoConta := sql_BancoDIGITO_CONTA.AsString;
      gbTitulo.Carteira := sql_BancoCARTEIRA.AsString;


    gbTitulo.Instrucoes.Add(sql_BancoINSTRUCAO1.AsString);
    gbTitulo.Instrucoes.Add(sql_BancoINSTRUCAO2.AsString);
    gbTitulo.Instrucoes.Add(sql_BancoINSTRUCAO3.AsString);
    gbTitulo.Instrucoes.Add(sql_BancoINSTRUCAO4.AsString);

    gbTitulo.Visualizar;
    }
end;

procedure TfcrProcSaude.btnGeraMensalidadeClick(Sender: TObject);
begin
  fGeraCob := TfGeraCob.Create(Application);
  try
    fGeraCob.ComboBox2.Visible := true;
    fGeraCob.Label3.Visible := true;
    fGeraCob.ComboBox3.Visible := False;
    fGeraCob.Label12.Visible := False;
    fGeraCob.edCodCCusto.Visible := False;
    fGeraCob.Label11.Visible := False;
    fGeraCob.ShowModal;
  finally
    fGeraCob.Free;
  end;
  btnProcurar.Click;
end;

procedure TfcrProcSaude.edClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (KEY = VK_BACK) or (KEY = VK_DELETE) then
    //bPausa := True;
  if (KEY = 13) then edCliente.SelStart := Length(edCliente.Text);
  if (KEY = 27) then edCliente.Clear;  
end;

procedure TfcrProcSaude.edClienteChange(Sender: TObject);
//var util: TUtils;
begin
  //util := TUtils.Create;
  
end;

procedure TfcrProcSaude.edCodCCustoChange(Sender: TObject);
begin
  if (edCodCCusto.Text <> '') then
  begin
    if (cdsClienteBusca.Active) then
    begin
      cdsClienteBusca.Close;
    end;
    cdsClienteBusca.Params[0].AsString := edCodCCusto.Text;
    cdsClienteBusca.Open;
    edCliente.Text := '';
    edCodCliente.Text := '';
    edCodCliente.SetFocus;
  end;
end;

procedure TfcrProcSaude.btnLimpaClick(Sender: TObject);
begin
  edCodCliente.Text := '';
  edCliente.Text := '';
end;

procedure TfcrProcSaude.edCodClienteChange(Sender: TObject);
begin
  cdsClienteBusca.Locate('RA',edCodCliente.Text,[loCaseInsensitive]);
end;

procedure TfcrProcSaude.marcarTodosClick(Sender: TObject);
begin
  if (scdsCr_proc.Active) then
  begin
      scdsCr_proc.First;
      scdsCr_proc.DisableControls;
      while not scdsCr_proc.Eof do
      begin
        if scdsCr_proc.State = dsBrowse then
           scdsCr_proc.Edit;
        scdsCr_procDUP_REC_NF.AsString := 'S';
        scdsCr_procDP.AsInteger := 0;
        scdsCr_proc.Post;
        scdsCr_proc.Next;
      end;
      scdsCr_proc.First;
      scdsCr_proc.EnableControls;
  end;

end;

procedure TfcrProcSaude.desmarcarClick(Sender: TObject);
begin
  if (scdsCr_proc.Active) then
  begin
      scdsCr_proc.First;
      scdsCr_proc.DisableControls;
      while not scdsCr_proc.Eof do
      begin
        if scdsCr_proc.State = dsBrowse then
           scdsCr_proc.Edit;
        scdsCr_procDUP_REC_NF.AsString := '';
        scdsCr_procDP.Clear;
        scdsCr_proc.Post;
        scdsCr_proc.Next;
      end;
      scdsCr_proc.First;
      scdsCr_proc.EnableControls;
  end;

end;

procedure TfcrProcSaude.edClienteExit(Sender: TObject);
begin
  edCodCliente.Text := IntToStr(cdsClienteBuscaRA.asInteger);
//edCodCliente.Text := IntToStr(cdsClienteBuscaCODCLIENTE.asInteger);
end;

procedure TfcrProcSaude.detalhado;
var
   varCrProcSaude2 : TUtils;
begin
  varCrProcSaude2 := TUtils.Create;
  cbStatus.SetFocus;
  sqlTexto1 := '';
  SqlCr := '';
  if scdsCr_proc.Active then
     scdsCr_proc.Close;
   sqltexto1 :='select rec.CODRECEBIMENTO, rec.TITULO, rec.EMISSAO, rec.outro_debito , ';
   sqltexto1 := sqltexto1 + ' rec.DATAVENCIMENTO, rec.CODCLIENTE, rec.VALORTITULO, ';
   sqltexto1 := sqltexto1 + ' rec.VALOR_RESTO, rec.VALOR_PRIM_VIA, rec.STATUS, ';
   sqltexto1 := sqltexto1 + ' CASE rec.STATUS WHEN ' + QuotedStr('5-');
   sqltexto1 := sqltexto1 + ' THEN ' + QuotedStr('PENDENTE') + ' WHEN ' + QuotedStr('7-');
   sqltexto1 := sqltexto1 + ' THEN ' + QuotedStr('RECEBIDO') + ' WHEN ' + QuotedStr('8-');
   sqltexto1 := sqltexto1 + ' THEN ' + QuotedStr('CRÉD. DUVIDOSO') ;
   sqltexto1 := sqltexto1 + ' END AS STATUSP, ';
   sqltexto1 := sqltexto1 + ' rec.DATARECEBIMENTO, (rec.VALORRECEBIDO + rec.juros)as VALORRECEBIDO , ';
   sqltexto1 := sqltexto1 + ' UDF_PADL(CAST(UDF_TRIM(rec.VIA) AS VARCHAR(2)),' ;
   sqltexto1 := sqltexto1 + '''' + '0' + '''';
   sqltexto1 := sqltexto1 + ',2) || ';
   sqltexto1 := sqltexto1 + '''' + '/' + '''';
   sqltexto1 := sqltexto1 +' || CAST(UDF_PADL(rec.PARCELAS,';
   sqltexto1 := sqltexto1 + '''' + '0' + '''';
   sqltexto1 := sqltexto1 + ',2) as varchar(2)) as VIA, rec.HISTORICO ,';
   sqltexto1 := sqltexto1 + ' rec.N_DOCUMENTO, rec.DUP_REC_NF, rec.DP, rec.CODVENDA,';
   sqltexto1 := sqltexto1 + ' cli.NOMECLIENTE, cli.RAZAOSOCIAL, cli.RA, ';
   sqltexto1 := sqltexto1 + '(rec.VALOR_RESTO - rec.VALORRECEBIDO - rec.DESCONTO - rec.PERDA) as VALORREC ';
   sqltexto1 := sqltexto1 + 'from RECEBIMENTO rec ';
   sqltexto1 := sqltexto1 + ' inner join CLIENTES cli on cli.CODCLIENTE=rec.CODCLIENTE';
  //==============================================================================
  datastr:='  /  /  ';
  //------------------------------------------------------------------------------
  //Verifica se a data de emissão foi preenchido
  //------------------------------------------------------------------------------
  try
  if (medta1.Text<>datastr) then
  StrToDate(medta1.Text);
  if (medta2.Text<>datastr) then
  StrToDate(medta2.Text);
  if (medta1.Text<>datastr) then
  if (medta2.Text<>datastr) then
  begin
  SqlCr := ' WHERE rec.EMISSAO BETWEEN ' +
  '''' + formatdatetime('mm/dd/yy', StrToDate(medta1.Text)) + '''' +
  ' AND ' +
  '''' + formatdatetime('mm/dd/yy', StrToDate(medta2.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
  ShowMessage ('Data Inválida! dd/mm/aa');
  meDta1.SetFocus;
  end;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Verifica se a data de vencimento foi preenchido
  //------------------------------------------------------------------------------
  try
  if (medta3.Text<>datastr) then
  StrToDate(medta3.Text);
  if (medta4.Text<>datastr) then
  StrToDate(medta4.Text);
  if (medta3.Text<>datastr) then
  if (medta4.Text<>datastr) then
  begin
    if SqlCr='' then
      SqlCr := SqlCr + ' WHERE rec.DATAVENCIMENTO BETWEEN '
    else
      SqlCr := SqlCr + ' AND rec.DATAVENCIMENTO BETWEEN ';
      SqlCr := SqlCr + '''' + formatdatetime('mm/dd/yy', StrToDate(medta3.Text)) + '''';
      SqlCr := SqlCr + ' AND ';
      SqlCr := SqlCr + '''' + formatdatetime('mm/dd/yy', StrToDate(medta4.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
     ShowMessage ('Data Inválida! dd/mm/aa');
     medTa3.SetFocus;
  end;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Verifica se a data de Recebimento foi preenchido
  //------------------------------------------------------------------------------
  try
  if (medta5.Text<>datastr) then
  StrToDate(medta5.Text);
  if (medta6.Text<>datastr) then
  StrToDate(medta6.Text);
  if (medta5.Text<>datastr) then
  if (medta6.Text<>datastr) then
  begin
    if SqlCr='' then
      SqlCr := SqlCr + ' WHERE rec.DATARECEBIMENTO BETWEEN '
    else
      SqlCr := SqlCr + ' AND rec.DATARECEBIMENTO BETWEEN ';
      SqlCr := SqlCr + '''' + formatdatetime('mm/dd/yy', StrToDate(medta5.Text)) + '''';
      SqlCr := SqlCr + ' AND ';
      SqlCr := SqlCr + '''' + formatdatetime('mm/dd/yy', StrToDate(medta6.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
     ShowMessage ('Data Inválida! dd/mm/aa');
     medTa5.SetFocus;
  end;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Status
  //------------------------------------------------------------------------------
 if (cbStatus.Text <> '') then
  begin
    case (cbStatus.ItemIndex) of
      0:  //A Vencer
      begin
        if SqlCr='' then
          SqlCr := SqlCr + ' WHERE (rec.STATUS = '
        else
          SqlCr := SqlCr + ' AND (rec.STATUS = ';
        SqlCr := SqlCr + '''' + '5-' + ''')';
        SqlCr := SqlCr + ' AND (rec.DATAVENCIMENTO >= CURRENT_DATE)';
      end;
      1:  // Vencido
      begin
        if SqlCr='' then
          SqlCr := SqlCr + ' WHERE (rec.STATUS = '
        else
          SqlCr := SqlCr + ' AND (rec.STATUS = ';
        SqlCr := SqlCr + '''' + '5-' + ''')';
        SqlCr := SqlCr + ' AND (rec.DATAVENCIMENTO < CURRENT_DATE)';
      end;
      2:  // A Receber (A Vencer + Vencido)
      begin
        if SqlCr='' then
          SqlCr := SqlCr + ' WHERE (rec.STATUS = '
        else
          SqlCr := SqlCr + ' AND (rec.STATUS = ';
        SqlCr := SqlCr + '''' + '5-' + ''')';
      end;
      3:  // Recebido
      begin
        if SqlCr='' then
          SqlCr := SqlCr + ' WHERE (rec.STATUS = '
        else
          SqlCr := SqlCr + ' AND (rec.STATUS = ';
        SqlCr := SqlCr + '''' + '7-' + ''')';
      end;
      4:  // Suspenso
      begin
        if SqlCr='' then
          SqlCr := SqlCr + ' WHERE (rec.STATUS = '
        else
          SqlCr := SqlCr + ' AND (rec.STATUS = ';
        SqlCr := SqlCr + '''' + '8-' + ''')';
      end;
      5:  // Em Cobrança
      begin
        if SqlCr='' then
          SqlCr := SqlCr + ' WHERE (rec.STATUS = '
        else
          SqlCr := SqlCr + ' AND (rec.STATUS = ';
        SqlCr := SqlCr + '''' + '9-' + ''')';
      end;
    end;
  end;
  {  if cbStatus.Text<>'' then
  begin
    if SqlCr='' then
      SqlCr := SqlCr + ' WHERE (rec.STATUS = '
    else
      SqlCr := SqlCr + ' AND (rec.STATUS = ';
      if copy(cbStatus.Text,0,2) <> '11' then
      SqlCr := SqlCr + '''' + copy(cbStatus.Text,0,2) + ''')'
      else
      SqlCr := SqlCr + '''5-''  OR rec.STATUS = ''6-'' OR rec.STATUS = ''9-'') ' ;
  end;
 } //==============================================================================
  //------------------------------------------------------------------------------
  //------------------------------------------------------------------------------
  //Forma
  //------------------------------------------------------------------------------
  if (cbForma.Text <> '') then
  begin
    if SqlCr='' then
      SqlCr := SqlCr + ' WHERE (rec.FORMARECEBIMENTO = '
    else
      SqlCr := SqlCr + ' AND (rec.FORMARECEBIMENTO = ';
    SqlCr := SqlCr + QuotedStr(varCrProcSaude2.pegaForma(cbForma.Text))  + ')';
  end;
  //==============================================================================

  //Cliente
  //------------------------------------------------------------------------------
  if edCodCliente.Text<>'' then
  begin
    if SqlCr='' then
      SqlCr := SqlCr + ' WHERE rec.CODCLIENTE = '
    else
      SqlCr := SqlCr + ' AND rec.CODCLIENTE = ';
      SqlCr := SqlCr + IntToStr(cdsClienteBuscaCODCLIENTE.AsInteger);
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Centro de Custo
  //------------------------------------------------------------------------------
  if (not dm.cds_ccusto.Active) then
     dm.cds_ccusto.Open;
  dm.cds_ccusto.Locate('NOME', edCodCCusto.Text,[loPartialKey]);
  if edCodCCusto.Text<>'' then
  begin
    if SqlCr='' then
      SqlCr := SqlCr + ' WHERE CODALMOXARIFADO = '
    else
      SqlCr := SqlCr + ' AND CODALMOXARIFADO = ';
      SqlCr := SqlCr + IntToStr(dm.cds_ccustoCODIGO.AsInteger);
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Título
  //------------------------------------------------------------------------------
  if edTitulo.Text<>'' then
  begin
    {------VerificANDo o tipo de uso do sistema ---------}
    if Dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'USOSISTEMA';
    dm.cds_parametro.Open;
    if (dm.cds_parametroDADOS.AsString = 'LOTEAMENTO') THEN
    begin
      if SqlCr='' then
        SqlCr := SqlCr + ' WHERE N_DOCUMENTO = '
      else
        SqlCr := SqlCr + ' AND N_DOCUMENTO = ';
        SqlCr := SqlCr + '''' + edTitulo.Text + '''';
    end
    else
    begin
      if SqlCr='' then
        SqlCr := SqlCr + ' WHERE TITULO like '
      else
        SqlCr := SqlCr + ' AND TITULO like ';
        if edTitulo.Text <> '' then
          SqlCr := SqlCr + '''' + edTitulo.Text + ''''
        else
          SqlCr := SqlCr + '''' + edTitulo.Text + '%''';
    end;
  end;

  //==============================================================================
  //------------------------------------------------------------------------------
  //Valor
  //------------------------------------------------------------------------------
  if edValor.Text<>'' then
  begin
    if SqlCr='' then
      SqlCr := SqlCr + ' WHERE VALORTITULO = '
    else
      SqlCr := SqlCr + ' AND VALORTITULO = ';
      SqlCr := SqlCr + edValor.Text;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  // Conta Movimentada
  //------------------------------------------------------------------------------
  if (cbConta.Text<>'') then
  begin
    if (not dm.cds_7_contas.Locate('NOME', cbConta.Text, [loCaseInsensitive])) then
    begin
      if dm.cds_parametro.Active then
        dm.cds_parametro.Close;
      dm.cds_parametro.Params[0].AsString := 'CAIXA_BANCO';
      dm.cds_parametro.Open;
      if (dm.cds_7_contas.Active) then
        dm.cds_7_contas.close;
      dm.cds_7_contas.Params[0].AsString := dm.cds_parametroDADOS.AsString;
      dm.cds_7_contas.Open;
      while (not dm.cds_7_contas.IsEmpty) do
      begin
        cbconta.Items.Add(dm.cds_7_contasNOME.AsString);
        dm.cds_7_contas.next;
      end;
      dm.cds_parametro.Close;
    end
    else begin
      if SqlCr='' then
        SqlCr := SqlCr + ' WHERE REC.CAIXA = '
      else
        SqlCr := SqlCr + ' AND REC.CAIXA = ';
        SqlCr := SqlCr + IntToStr(dm.cds_7_contasCODIGO.AsInteger);
    end;
  end;
  //==============================================================================

  //------------------------------------------------------------------------------
  //Gera Boleto
  //------------------------------------------------------------------------------
  if (cbGeraBol.Text = 'SIM') then
  begin
    if SqlCr='' then
      SqlCr := SqlCr + ' WHERE GERABOL = '
    else
      SqlCr := SqlCr + ' AND GERABOL = ';
      SqlCr := SqlCr + QuotedStr('S');
  end
  else if (cbGeraBol.Text = 'NÃO') then
  begin
    if SqlCr='' then
      SqlCr := SqlCr + ' WHERE GERABOL = '
    else
      SqlCr := SqlCr + ' AND GERABOL = ';
      SqlCr := SqlCr + QuotedStr('N');
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Gera Avisos
  //------------------------------------------------------------------------------
  if (cbGeraAviso.Text = 'SIM') then
  begin
    if SqlCr='' then
      SqlCr := SqlCr + ' WHERE GERAAVISO = '
    else
      SqlCr := SqlCr + ' AND GERAAVISO = ';
      SqlCr := SqlCr + QuotedStr('S');
  end
  else if (cbGeraAviso.Text = 'NÃO') then
  begin
    if SqlCr='' then
      SqlCr := SqlCr + ' WHERE GERAAVISO = '
    else
      SqlCr := SqlCr + ' AND GERAAVISO = ';
      SqlCr := SqlCr + QuotedStr('N');
  end;

  //==============================================================================
  //------------------------------------------------------------------------------
  //Gera Envelope
  //------------------------------------------------------------------------------
  if (cbGeraEnvelope.Text = 'SIM') then
  begin
    if SqlCr='' then
      SqlCr := SqlCr + ' WHERE GERAENV = '
    else
      SqlCr := SqlCr + ' AND GERAENV = ';
      SqlCr := SqlCr + QuotedStr('S');
  end
  else  if (cbGeraEnvelope.Text = 'NÃO') then
  begin
    if SqlCr='' then
      SqlCr := SqlCr + ' WHERE GERAENV = '
    else
      SqlCr := SqlCr + ' AND GERAENV = ';
      SqlCr := SqlCr + QuotedStr('N');
  end;

  //==============================================================================
  //------------------------------------------------------------------------------
  //Em Viagem
  //------------------------------------------------------------------------------
  if (cbEmViagem.Text = 'SIM') then
  begin
    if SqlCr='' then
      SqlCr := SqlCr + ' WHERE EMVIAGEM = '
    else
      SqlCr := SqlCr + ' AND EMVIAGEM = ';
      SqlCr := SqlCr + QuotedStr('S');
  end
  else if (cbEmViagem.Text = 'NÃO') then
  begin
    if SqlCr='' then
      SqlCr := SqlCr + ' WHERE EMVIAGEM = '
    else
      SqlCr := SqlCr + ' AND EMVIAGEM = ';
      SqlCr := SqlCr + QuotedStr('N');
  end;

  //==============================================================================

  //------------------------------------------------------------------------------
  //Somente títulos com valores > 0
  //------------------------------------------------------------------------------
  {  if SqlCr='' then
      SqlCr := SqlCr + ' WHERE rec.VALORTITULO > 0 '
    else
      SqlCr := SqlCr + ' AND rec.VALORTITULO > 0 ';}
//==============================================================================
  impCR := sqlTexto1;
  scdsCr_proc.CommandText := sqlTexto1 + SqlCr + ' order by  cli.RA;'; //rec.DATAVENCIMENTO;';
  sds.CommandText := scdsCr_proc.CommandText;
  scdsCr_proc.Open;

  {**** Totalização ********}
  { sqltexto1 := 'SELECT SUM(rec.VALORRECEBIDO + rec.JUROS) as RECEBIDO, ';
   sqltexto1 := sqltexto1 + 'SUM(CASE WHEN ((rec.STATUS = ' + QuotedStr('5-') + ') ';
   sqltexto1 := sqltexto1 + 'OR (rec.STATUS = ' + QuotedStr('6-') + ')) THEN REC.VALOR_RESTO ';
   sqltexto1 := sqltexto1 + 'ELSE 0 END) AS RESTO, SUM(CASE WHEN (rec.STATUS = ' + QuotedStr('7-') + ') ';
   sqltexto1 := sqltexto1 + ' THEN (REC.VALOR_RESTO - rec.VALORRECEBIDO) ELSE REC.VALOR_RESTO END) AS VLT ';
   sqltexto1 := sqltexto1 + 'FROM RECEBIMENTO rec inner join CLIENTES cli ';
   sqltexto1 := sqltexto1 + 'on cli.CODCLIENTE=rec.CODCLIENTE';
   if (cds_total.Active) then
     cds_total.Close;
   cds_total.CommandText := sqlTexto1 + SqlCr;
   cds_total.Open;
  Edit3.Text := format('%8.2n',[cds_totalVLT.asFloat]);
  Edit4.Text := format('%8.2n',[cds_totalRESTO.asFloat]);
  Edit5.Text := format('%8.2n',[cds_totalRECEBIDO.asFloat]);
  DBGrid1.SetFocus;
  }

    sqlTexto1 := 'SELECT SUM(TOTALTITULO), SUM(TOTALRECEBIDO), SUM(TOTALPENDENTE)' +
    ' FROM REC_TOTAIS(';
  if cbStatus.Text<>'' then
  begin
    if copy(cbStatus.Text,0,2) <> '11' then
      sqlTexto1 := sqlTexto1 + '''' + copy(cbStatus.Text,0,2) + ''')'
    else
      sqlTexto1 := sqlTexto1 + QuotedStr('00') + ')';
  end
  else
    sqlTexto1 := sqlTexto1 + QuotedStr('00') + ')';
  Try
    if (cds_total.Active) then
      cds_total.Close;
    cds_total.CommandText := sqlTexto1 + ' REC ' + SqlCr;
    cds_total.Open;
    if (not cds_total.IsEmpty) then
    begin
      if (cds_total.Fields[0].Value > 0) then
        JvCalcEdit1.Text := cds_total.Fields[0].Value
      else
        JvCalcEdit1.Text := '0';

      if (cds_total.Fields[1].Value > 0) then
        JvCalcEdit2.Text := cds_total.Fields[1].Value
      else
        JvCalcEdit2.Text := '0';

      if (cds_total.Fields[2].Value > 0) then
        JvCalcEdit3.Text := cds_total.Fields[2].Value
      else
        JvCalcEdit3.Text := '0';
    end;
  Except
    ShowMessage ('Não existe dados para essa consulta');
  end;
  DBGrid1.SetFocus;
end;

procedure TfcrProcSaude.resumido;
var
   varCrProcSaude2 : TUtils;
begin
  varCrProcSaude2 := TUtils.Create;
  cbStatus.SetFocus;
  sqlTexto1 := '';
  SqlCr := '';
  if cCr.Active then
     cCr.Close;
   sqltexto1 :='select rec.DATAVENCIMENTO, cli.RA, cli.NOMECLIENTE, cli.RAZAOSOCIAL, ';
   sqltexto1 := sqltexto1 + ' Sum(rec.VALORTITULO) as VALORTITULO, ' ;
   sqltexto1 := sqltexto1 + 'Sum(rec.VALOR_RESTO) as VALOR_RESTO, ';//'Sum(rec.VALOR_RESTO - rec.VALORRECEBIDO - rec.DESCONTO - rec.PERDA) as VALOR_RESTO, ';
   sqltexto1 := sqltexto1 + 'Sum(rec.VALOR_PRIM_VIA) as VALOR_PRIM_VIA, Sum(rec.VALORRECEBIDO) as VALORRECEBIDO ' ;
   {qltexto1 := sqltexto1 + ' CASE rec.STATUS WHEN ' + QuotedStr('5-');
   sqltexto1 := sqltexto1 + ' THEN ' + QuotedStr('PENDENTE') + ' WHEN ' + QuotedStr('7-');
   sqltexto1 := sqltexto1 + ' THEN ' + QuotedStr('RECEBIDO') + ' WHEN ' + QuotedStr('8-');
   sqltexto1 := sqltexto1 + ' THEN ' + QuotedStr('CRÉD. DUVIDOSO') ;
   sqltexto1 := sqltexto1 + ' END AS STATUSP, ';
   }
   sqltexto1 := sqltexto1 + 'from RECEBIMENTO rec ';
   sqltexto1 := sqltexto1 + ' inner join CLIENTES cli on cli.CODCLIENTE=rec.CODCLIENTE';
  //==============================================================================
  datastr:='  /  /  ';
  //------------------------------------------------------------------------------
  //Verifica se a data de emissão foi preenchido
  //------------------------------------------------------------------------------
  try
  if (medta1.Text<>datastr) then
  StrToDate(medta1.Text);
  if (medta2.Text<>datastr) then
  StrToDate(medta2.Text);
  if (medta1.Text<>datastr) then
  if (medta2.Text<>datastr) then
  begin
  SqlCr := ' WHERE rec.EMISSAO BETWEEN ' +
  '''' + formatdatetime('mm/dd/yy', StrToDate(medta1.Text)) + '''' +
  ' AND ' +
  '''' + formatdatetime('mm/dd/yy', StrToDate(medta2.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
  ShowMessage ('Data Inválida! dd/mm/aa');
  meDta1.SetFocus;
  end;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Verifica se a data de vencimento foi preenchido
  //------------------------------------------------------------------------------
  try
  if (medta3.Text<>datastr) then
  StrToDate(medta3.Text);
  if (medta4.Text<>datastr) then
  StrToDate(medta4.Text);
  if (medta3.Text<>datastr) then
  if (medta4.Text<>datastr) then
  begin
    if SqlCr='' then
      SqlCr := SqlCr + ' WHERE rec.DATAVENCIMENTO BETWEEN '
    else
      SqlCr := SqlCr + ' AND rec.DATAVENCIMENTO BETWEEN ';
      SqlCr := SqlCr + '''' + formatdatetime('mm/dd/yy', StrToDate(medta3.Text)) + '''';
      SqlCr := SqlCr + ' AND ';
      SqlCr := SqlCr + '''' + formatdatetime('mm/dd/yy', StrToDate(medta4.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
     ShowMessage ('Data Inválida! dd/mm/aa');
     medTa3.SetFocus;
  end;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Verifica se a data de Recebimento foi preenchido
  //------------------------------------------------------------------------------
  try
  if (medta5.Text<>datastr) then
  StrToDate(medta5.Text);
  if (medta6.Text<>datastr) then
  StrToDate(medta6.Text);
  if (medta5.Text<>datastr) then
  if (medta6.Text<>datastr) then
  begin
    if SqlCr='' then
      SqlCr := SqlCr + ' WHERE rec.DATARECEBIMENTO BETWEEN '
    else
      SqlCr := SqlCr + ' AND rec.DATARECEBIMENTO BETWEEN ';
      SqlCr := SqlCr + '''' + formatdatetime('mm/dd/yy', StrToDate(medta5.Text)) + '''';
      SqlCr := SqlCr + ' AND ';
      SqlCr := SqlCr + '''' + formatdatetime('mm/dd/yy', StrToDate(medta6.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
     ShowMessage ('Data Inválida! dd/mm/aa');
     medTa5.SetFocus;
  end;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Status
  //------------------------------------------------------------------------------
 if (cbStatus.Text <> '') then
  begin
    case (cbStatus.ItemIndex) of
      0:  //A Vencer
      begin
        if SqlCr='' then
          SqlCr := SqlCr + ' WHERE (rec.STATUS = '
        else
          SqlCr := SqlCr + ' AND (rec.STATUS = ';
        SqlCr := SqlCr + '''' + '5-' + ''')';
        SqlCr := SqlCr + ' AND (rec.DATAVENCIMENTO >= CURRENT_DATE)';
      end;
      1:  // Vencido
      begin
        if SqlCr='' then
          SqlCr := SqlCr + ' WHERE (rec.STATUS = '
        else
          SqlCr := SqlCr + ' AND (rec.STATUS = ';
        SqlCr := SqlCr + '''' + '5-' + ''')';
        SqlCr := SqlCr + ' AND (rec.DATAVENCIMENTO < CURRENT_DATE)';
      end;
      2:  // A Receber (A Vencer + Vencido)
      begin
        if SqlCr='' then
          SqlCr := SqlCr + ' WHERE (rec.STATUS = '
        else
          SqlCr := SqlCr + ' AND (rec.STATUS = ';
        SqlCr := SqlCr + '''' + '5-' + ''')';
      end;
      3:  // Recebido
      begin
        if SqlCr='' then
          SqlCr := SqlCr + ' WHERE (rec.STATUS = '
        else
          SqlCr := SqlCr + ' AND (rec.STATUS = ';
        SqlCr := SqlCr + '''' + '7-' + ''')';
      end;
      4:  // Suspenso
      begin
        if SqlCr='' then
          SqlCr := SqlCr + ' WHERE (rec.STATUS = '
        else
          SqlCr := SqlCr + ' AND (rec.STATUS = ';
        SqlCr := SqlCr + '''' + '8-' + ''')';
      end;
      5:  // Em Cobrança
      begin
        if SqlCr='' then
          SqlCr := SqlCr + ' WHERE (rec.STATUS = '
        else
          SqlCr := SqlCr + ' AND (rec.STATUS = ';
        SqlCr := SqlCr + '''' + '9-' + ''')';
      end;
    end;
  end;
  //------------------------------------------------------------------------------
  //------------------------------------------------------------------------------
  //Forma
  //------------------------------------------------------------------------------
  if (cbForma.Text <> '') then
  begin
    if SqlCr='' then
      SqlCr := SqlCr + ' WHERE (rec.FORMARECEBIMENTO = '
    else
      SqlCr := SqlCr + ' AND (rec.FORMARECEBIMENTO = ';
    SqlCr := SqlCr + QuotedStr(varCrProcSaude2.pegaForma(cbForma.Text))  + ')';
  end;
  //==============================================================================

  //Cliente
  //------------------------------------------------------------------------------
  if edCodCliente.Text<>'' then
  begin
    if SqlCr='' then
      SqlCr := SqlCr + ' WHERE rec.CODCLIENTE = '
    else
      SqlCr := SqlCr + ' AND rec.CODCLIENTE = ';
      SqlCr := SqlCr + IntToStr(cdsClienteBuscaCODCLIENTE.AsInteger);
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Centro de Custo
  //------------------------------------------------------------------------------
  if (not dm.cds_ccusto.Active) then
     dm.cds_ccusto.Open;
  dm.cds_ccusto.Locate('NOME', edCodCCusto.Text,[loPartialKey]);
  if edCodCCusto.Text<>'' then
  begin
    if SqlCr='' then
      SqlCr := SqlCr + ' WHERE CODALMOXARIFADO = '
    else
      SqlCr := SqlCr + ' AND CODALMOXARIFADO = ';
      SqlCr := SqlCr + IntToStr(dm.cds_ccustoCODIGO.AsInteger);
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Título
  //------------------------------------------------------------------------------
  if edTitulo.Text<>'' then
  begin
    {------VerificANDo o tipo de uso do sistema ---------}
    if Dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'USOSISTEMA';
    dm.cds_parametro.Open;
    if (dm.cds_parametroDADOS.AsString = 'LOTEAMENTO') THEN
    begin
      if SqlCr='' then
        SqlCr := SqlCr + ' WHERE N_DOCUMENTO = '
      else
        SqlCr := SqlCr + ' AND N_DOCUMENTO = ';
        SqlCr := SqlCr + '''' + edTitulo.Text + '''';
    end
    else
    begin
      if SqlCr='' then
        SqlCr := SqlCr + ' WHERE TITULO like '
      else
        SqlCr := SqlCr + ' AND TITULO like ';
        if edTitulo.Text <> '' then
          SqlCr := SqlCr + '''' + edTitulo.Text + ''''
        else
          SqlCr := SqlCr + '''' + edTitulo.Text + '%''';
    end;
  end;

  //==============================================================================
  //------------------------------------------------------------------------------
  //Valor
  //------------------------------------------------------------------------------
  if edValor.Text<>'' then
  begin
    if SqlCr='' then
      SqlCr := SqlCr + ' WHERE VALORTITULO = '
    else
      SqlCr := SqlCr + ' AND VALORTITULO = ';
      SqlCr := SqlCr + edValor.Text;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  // Conta Movimentada
  //------------------------------------------------------------------------------
  if (cbConta.Text<>'') then
  begin
    if (not dm.cds_7_contas.Locate('NOME', cbConta.Text, [loCaseInsensitive])) then
    begin
      if dm.cds_parametro.Active then
        dm.cds_parametro.Close;
      dm.cds_parametro.Params[0].AsString := 'CAIXA_BANCO';
      dm.cds_parametro.Open;
      if (dm.cds_7_contas.Active) then
        dm.cds_7_contas.close;
      dm.cds_7_contas.Params[0].AsString := dm.cds_parametroDADOS.AsString;
      dm.cds_7_contas.Open;
      while (not dm.cds_7_contas.IsEmpty) do
      begin
        cbconta.Items.Add(dm.cds_7_contasNOME.AsString);
        dm.cds_7_contas.next;
      end;
      dm.cds_parametro.Close;
    end
    else begin
      if SqlCr='' then
        SqlCr := SqlCr + ' WHERE REC.CAIXA = '
      else
        SqlCr := SqlCr + ' AND REC.CAIXA = ';
        SqlCr := SqlCr + IntToStr(dm.cds_7_contasCODIGO.AsInteger);
    end;
  end;
  //==============================================================================

  //------------------------------------------------------------------------------
  //Gera Boleto
  //------------------------------------------------------------------------------
  if (cbGeraBol.Text = 'SIM') then
  begin
    if SqlCr='' then
      SqlCr := SqlCr + ' WHERE CLI.GERABOL = '
    else
      SqlCr := SqlCr + ' AND CLI.GERABOL = ';
      SqlCr := SqlCr + QuotedStr('S');
  end
  else if (cbGeraBol.Text = 'NÃO') then
  begin
    if SqlCr='' then
      SqlCr := SqlCr + ' WHERE CLI.GERABOL = '
    else
      SqlCr := SqlCr + ' AND CLI.GERABOL = ';
      SqlCr := SqlCr + QuotedStr('N');
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Gera Avisos
  //------------------------------------------------------------------------------
  if (cbGeraAviso.Text = 'SIM') then
  begin
    if SqlCr='' then
      SqlCr := SqlCr + ' WHERE CLI.GERAAVISO = '
    else
      SqlCr := SqlCr + ' AND CLI.GERAAVISO = ';
      SqlCr := SqlCr + QuotedStr('S');
  end
  else if (cbGeraAviso.Text = 'NÃO') then
  begin
    if SqlCr='' then
      SqlCr := SqlCr + ' WHERE CLI.GERAAVISO = '
    else
      SqlCr := SqlCr + ' AND CLI.GERAAVISO = ';
      SqlCr := SqlCr + QuotedStr('N');
  end;

  //==============================================================================
  //------------------------------------------------------------------------------
  //Gera Envelope
  //------------------------------------------------------------------------------
  if (cbGeraEnvelope.Text = 'SIM') then
  begin
    if SqlCr='' then
      SqlCr := SqlCr + ' WHERE CLI.GERAENV = '
    else
      SqlCr := SqlCr + ' AND CLI.GERAENV = ';
      SqlCr := SqlCr + QuotedStr('S');
  end
  else  if (cbGeraEnvelope.Text = 'NÃO') then
  begin
    if SqlCr='' then
      SqlCr := SqlCr + ' WHERE CLI.GERAENV = '
    else
      SqlCr := SqlCr + ' AND CLI.GERAENV = ';
      SqlCr := SqlCr + QuotedStr('N');
  end;

  //==============================================================================
  //------------------------------------------------------------------------------
  //Em Viagem
  //------------------------------------------------------------------------------
  if (cbEmViagem.Text = 'SIM') then
  begin
    if SqlCr='' then
      SqlCr := SqlCr + ' WHERE CLI.EMVIAGEM = '
    else
      SqlCr := SqlCr + ' AND CLI.EMVIAGEM = ';
      SqlCr := SqlCr + QuotedStr('S');
  end
  else if (cbEmViagem.Text = 'NÃO') then
  begin
    if SqlCr='' then
      SqlCr := SqlCr + ' WHERE CLI.EMVIAGEM = '
    else
      SqlCr := SqlCr + ' AND CLI.EMVIAGEM = ';
      SqlCr := SqlCr + QuotedStr('N');
  end;
  impCR := sqlTexto1;
  cCR.CommandText := sqlTexto1 + SqlCr + ' group by rec.DATAVENCIMENTO, cli.RA, cli.NOMECLIENTE, cli.RAZAOSOCIAL '; //rec.DATAVENCIMENTO;';
  //sds.CommandText := scdsCr_proc.CommandText;
  cCR.Open;

  {sqlTexto1 := 'SELECT SUM(TOTALTITULO), SUM(TOTALRECEBIDO), SUM(TOTALPENDENTE)' +
    ' FROM REC_TOTAIS(';
  if cbStatus.Text<>'' then
  begin
    if copy(cbStatus.Text,0,2) <> '11' then
      sqlTexto1 := sqlTexto1 + '''' + copy(cbStatus.Text,0,2) + ''')'
    else
      sqlTexto1 := sqlTexto1 + QuotedStr('00') + ')';
  end
  else
    sqlTexto1 := sqlTexto1 + QuotedStr('00') + ')';
  Try
    if (cds_total.Active) then
      cds_total.Close;
    cds_total.CommandText := sqlTexto1 + ' REC ' + SqlCr;
    cds_total.Open;
    if (not cds_total.IsEmpty) then
    begin
      if (cds_total.Fields[0].Value > 0) then
        JvCalcEdit1.Text := cds_total.Fields[0].Value
      else
        JvCalcEdit1.Text := '0';

      if (cds_total.Fields[1].Value > 0) then
        JvCalcEdit2.Text := cds_total.Fields[1].Value
      else
        JvCalcEdit2.Text := '0';

      if (cds_total.Fields[2].Value > 0) then
        JvCalcEdit3.Text := cds_total.Fields[2].Value
      else
        JvCalcEdit3.Text := '0';
    end;
  Except
    ShowMessage ('Não existe dados para essa consulta');
  end;
  DBGrid1.SetFocus;}
end;

procedure TfcrProcSaude.CheckBox1Click(Sender: TObject);
begin
  if (CheckBox1.Checked = True) then
  begin
    DBGrid1.Visible := False;
    DBGrid2.Visible := True;
  end
  else
  begin
    DBGrid2.Visible := False;
    DBGrid1.Visible := True;
  end;
end;

end.
