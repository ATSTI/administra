unit uFiltroMovMaterias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, XPMenu, DB, DBClient, Provider, SqlExpr, Menus, Grids,
  DBGrids, StdCtrls, Mask, ExtCtrls, Buttons, MMJPanel;

type
  TfFiltroMovMateriais = class(TForm)
    MMJPanel2: TMMJPanel;
    btnProcurar: TBitBtn;
    btnSair: TBitBtn;
    BitBtn9: TBitBtn;
    MMJPanel1: TMMJPanel;
    Label9: TLabel;
    Label10: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    edControle: TEdit;
    Edit2: TEdit;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Edit3: TEdit;
    Edit4: TEdit;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    edtNF: TEdit;
    Edit8: TEdit;
    BitBtn7: TBitBtn;
    rgStatus: TRadioGroup;
    meDta1: TMaskEdit;
    meDta2: TMaskEdit;
    BitBtn10: TBitBtn;
    ComboBox1: TComboBox;
    DBGrid1: TDBGrid;
    PopupMenu1: TPopupMenu;
    Consultar1: TMenuItem;
    VerMovimento1: TMenuItem;
    Fechar1: TMenuItem;
    Confirma1: TMenuItem;
    sds_cns: TSQLDataSet;
    sds_cnsCODMOVIMENTO: TIntegerField;
    sds_cnsCODCLIENTE: TIntegerField;
    sds_cnsCODFORNECEDOR: TIntegerField;
    sds_cnsCODNATUREZA: TSmallintField;
    sds_cnsDATAMOVIMENTO: TDateField;
    sds_cnsSTATUS: TSmallintField;
    sds_cnsNOMECLIENTE: TStringField;
    sds_cnsDESCNATUREZA: TStringField;
    sds_cnsNOMEFORNECEDOR: TStringField;
    sds_cnsNOTAFISCAL: TIntegerField;
    sds_cnsSERIE: TStringField;
    dsp_cns: TDataSetProvider;
    cds_cns: TClientDataSet;
    cds_cnsCODMOVIMENTO: TIntegerField;
    cds_cnsCODCLIENTE: TIntegerField;
    cds_cnsCODNATUREZA: TSmallintField;
    cds_cnsDATAMOVIMENTO: TDateField;
    cds_cnsSTATUS: TSmallintField;
    cds_cnsNOMECLIENTE: TStringField;
    cds_cnsDESCNATUREZA: TStringField;
    cds_cnsCODFORNECEDOR: TIntegerField;
    cds_cnsNOMEFORNECEDOR: TStringField;
    cds_cnsNOTAFISCAL: TIntegerField;
    cds_cnsSERIE: TStringField;
    ds_Cr: TDataSource;
    XPMenu1: TXPMenu;
    cds_ccusto: TClientDataSet;
    cds_ccustoCODIGO: TIntegerField;
    cds_ccustoCONTA: TStringField;
    cds_ccustoNOME: TStringField;
    d_2: TDataSetProvider;
    s_2: TSQLDataSet;
    s_2CODIGO: TIntegerField;
    s_2CONTA: TStringField;
    s_2NOME: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure edControleExit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFiltroMovMateriais: TfFiltroMovMateriais;

implementation

uses UDm, uProcurar, uListaClientes;

{$R *.dfm}

procedure TfFiltroMovMateriais.FormCreate(Sender: TObject);
begin
  if (dm.usuario.Active) then
     dm.usuario.Close;
  dm.usuario.Params[0].AsString := usuario;
  dm.usuario.Open;
  if (not dm.usuario.IsEmpty) then
  begin
       DM.videoW := dm.UsuarioP1.AsString;
       DM.videoH := dm.UsuarioP2.AsString;
  end;
  if DM.videoW = '800' then
    Position := poDesigned;
  if DM.videoW <> '' then
  begin
   ScreenWidth := StrToInt(DM.videoW);
   ScreenHeight := StrToInt(DM.videoH);
   scaled := true;
   if (screen.width <> ScreenWidth) then
   begin
     height := longint(height) * longint(screen.height) DIV ScreenHeight;
     width := longint(width) * longint(screen.width) DIV ScreenWidth;
     scaleBy(screen.width, ScreenWidth);
   end;
  end;
end;

procedure TfFiltroMovMateriais.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfFiltroMovMateriais.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(ds_Cr.DataSet.RecNo) then // se for impar
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

procedure TfFiltroMovMateriais.DBGrid1TitleClick(Column: TColumn);
begin
  cds_cns.IndexFieldNames := Column.FieldName;
end;

procedure TfFiltroMovMateriais.edControleExit(Sender: TObject);
begin
  if edControle.Text = '' then exit;
  if dm.scds_cliente_proc.Active then
    dm.scds_cliente_proc.Close;
  dm.scds_cliente_proc.Params[0].Clear;
  dm.scds_cliente_proc.Params[1].Clear;
  dm.scds_cliente_proc.Params[2].AsInteger := StrToInt(edControle.Text);
  dm.scds_cliente_proc.Open;
   Edit2.Text := dm.scds_cliente_procNOMECLIENTE.asString;
  dm.scds_cliente_proc.Close;
end;

procedure TfFiltroMovMateriais.Edit3Exit(Sender: TObject);
begin
  if Edit3.Text = '' then exit;
  if dm.scds_NaturezaProcura.Active then
    dm.scds_NaturezaProcura.Close;
  dm.scds_NaturezaProcura.Params[0].Clear;
  dm.scds_NaturezaProcura.Params[1].AsInteger := StrToInt(Edit3.Text);
  dm.scds_NaturezaProcura.Open;
  Edit4.Text := dm.scds_NaturezaProcuraDESCNATUREZA.asString;
  dm.scds_NaturezaProcura.Close;
end;

procedure TfFiltroMovMateriais.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (not dm.parametro.Active) then
    dm.parametro.Open;
  if (dm.parametro.Locate('PARAMETRO', 'PADRAOFILTROVENDA', [loCaseInsensitive])) then
  if (dm.parametroCONFIGURADO.AsString = 'S') then
  begin
    dm.parametro.Edit;
    dm.parametroD1.AsString := meDta1.Text;
    dm.parametroD2.AsString := meDta2.Text;
    try
      dm.parametro.ApplyUpdates(0);
    except
      MessageDlg('Erro na gravação dos parâmetros.', mtError, [mbOK], 0);
    end;
  end;
end;

procedure TfFiltroMovMateriais.BitBtn1Click(Sender: TObject);
begin
  edControle.Text:='';
  Edit2.Text:='';
end;

procedure TfFiltroMovMateriais.BitBtn4Click(Sender: TObject);
begin
  Edit3.Text:='';
  Edit4.Text:='';
end;

procedure TfFiltroMovMateriais.BitBtn6Click(Sender: TObject);
begin
  ComboBox1.Text:='';
end;

procedure TfFiltroMovMateriais.BitBtn7Click(Sender: TObject);
begin
  edtNF.Text:='';
  Edit8.Text:='';
end;

procedure TfFiltroMovMateriais.BitBtn10Click(Sender: TObject);
begin
  meDta1.Text:='';
  meDta2.Text:=''
end;

procedure TfFiltroMovMateriais.BitBtn3Click(Sender: TObject);
begin
  fProcurar := TfProcurar.create(self,dm.scds_NaturezaProcura);
  Try
     fProcurar.EvDBFind1.DataField := 'DESCNATUREZA';
     if fProcurar.ShowModal=mrOk then
     begin
       Edit3.Text := IntToStr(dm.scds_NaturezaProcuraCODNATUREZA.asInteger);
       Edit4.Text := dm.scds_NaturezaProcuraDESCNATUREZA.asString;
     end;
  Finally
  dm.scds_NaturezaProcura.Close;
  fProcurar.Free;
  end;
end;

procedure TfFiltroMovMateriais.BitBtn2Click(Sender: TObject);
begin
  fListaClientes := TfListaClientes.Create(Application);
  Try
    fListaClientes.ShowModal;
    edControle.Text := IntToStr(codcli); //IntToStr(fListaClientes.ListaClienteCODCLIENTE.asInteger);
    Edit2.Text := nomecli; //fListaClientes.ListaClienteNOMECLIENTE.asString;
  Finally
    fListaClientes.ListaCliente.close;
    fListaClientes.Free;
  end;
end;

procedure TfFiltroMovMateriais.BitBtn9Click(Sender: TObject);
begin
  Close;
end;

procedure TfFiltroMovMateriais.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfFiltroMovMateriais.btnProcurarClick(Sender: TObject);
 Var
 SqlTexto, DataStr: String;
  Save_Cursor:TCursor;
Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
    if cds_cns.Active then
       cds_cns.Close;
     cds_cns.CommandText:= 'select mov.CODCLIENTE, mov.CODMOVIMENTO, ' +
       ' mov.CODNATUREZA, mov.DATAMOVIMENTO, mov.STATUS, cli.NOMECLIENTE, ' +
       ' nat.DESCNATUREZA, mov.CODFORNECEDOR, forn.NOMEFORNECEDOR, ven.NOTAFISCAL, ven.SERIE ' +
       ' from MOVIMENTO mov left outer join CLIENTES cli on cli.CODCLIENTE = ' +
       ' mov.CODCLIENTE  inner join NATUREZAOPERACAO nat on nat.CODNATUREZA ' +
       ' = mov.CODNATUREZA left outer join FORNECEDOR forn on forn.CODFORNECEDOR = ' +
       ' mov.CODFORNECEDOR left outer join VENDA ven on ven.CODMOVIMENTO = mov.CODMOVIMENTO';
    //==============================================================================
    {$IFDEF LINUX}
    datastr:='  -  -  ';
    {$ENDIF}
    {$IFDEF MSWINDOWS}
    datastr:='  /  /  ';
    {$ENDIF}
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
    sqlTexto := ' where mov.DATAMOVIMENTO between ' +
    '''' + formatdatetime('mm/dd/yy', StrToDate(medta1.Text)) + '''' +
    ' and ' +
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
    //Status
    //------------------------------------------------------------------------------
    if sqlTexto='' then
       sqlTexto := sqlTexto + ' where mov.STATUS = '
    else
      sqlTexto := sqlTexto + ' and mov.STATUS = ';
      sqlTexto := sqlTexto + IntToStr(rgStatus.ItemIndex);
    //==============================================================================
    //------------------------------------------------------------------------------
    //Natureza da operação
    //------------------------------------------------------------------------------
    if Edit3.Text<>'' then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where mov.CODNATUREZA = '
      else
        sqlTexto := sqlTexto + ' and mov.CODNATUREZA = ';
        sqlTexto := sqlTexto + '' + Edit3.Text + '';
    end;
    //==============================================================================
    //------------------------------------------------------------------------------
    //Centro de Custo
    //------------------------------------------------------------------------------
    if ComboBox1.Text<>'' then
    begin
      //Vejo quais são as contas de Receitas para listar no lookupcombobox.
      if dm.cds_parametro.Active then
        dm.cds_parametro.Close;
      dm.cds_parametro.Params[0].AsString := 'CENTRORECEITA';
      dm.cds_parametro.Open;
      if cds_ccusto.Active then
        cds_ccusto.Close;
      cds_ccusto.Params[0].AsString := dm.cds_parametroDADOS.AsString;
      cds_ccusto.Open;
      dm.cds_parametro.Close;
      cds_ccusto.Locate('NOME',ComboBox1.Text, [loCaseInsensitive]);
      Edit1.Text := cds_ccustoCODIGO.AsString;
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where mov.CODALMOXARIFADO = '
      else
        sqlTexto := sqlTexto + ' and mov.CODALMOXARIFADO = ';
        sqlTexto := sqlTexto + '' + Edit1.Text + '';
    end;
    //==============================================================================
    //------------------------------------------------------------------------------
    //Cliente
    //------------------------------------------------------------------------------
    if edControle.Text <> '' then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where mov.CODCLIENTE = '
      else
        sqlTexto := sqlTexto + ' and mov.CODCLIENTE = ';
        sqlTexto := sqlTexto + '' + edControle.Text + '';
    end;
    if edtNF.Text<>'' then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where ven.NOTAFISCAL = '
      else
        sqlTexto := sqlTexto + ' and ven.NOTAFISCAL = ';
        sqlTexto := sqlTexto + '' + edtNF.Text + '';
    end;
    if Edit8.Text<>'' then
    begin
      if sqlTexto='' then
        sqlTexto := sqlTexto + ' where ven.SERIE like ' + '''' + Edit8.Text + '%' + ''''
      else
        sqlTexto := sqlTexto + ' and ven.SERIE like ' + '''' + Edit8.Text + '%' + '''';
    end;
    //==============================================================================
    sqlTexto := sqlTexto + ' order by mov.CODMOVIMENTO DESC';
    cds_cns.CommandText := cds_cns.CommandText + sqlTexto;
    cds_cns.Open;
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;

end;

end.
