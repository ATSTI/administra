unit ucrdescontado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, FMTBcd, DBClient, Provider, DB, SqlExpr, Grids,
  DBGrids, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel, Mask,
  JvExMask, JvToolEdit, JvFormPlacement, JvComponentBase, JvAppStorage,
  JvAppXMLStorage, UCHistDataset, UCHist_Base, ImgList;

type
  Tfcrdescontado = class(TfPai_new)
    DBGrid1: TDBGrid;
    sds_Titulos_Descontado: TSQLDataSet;
    dsp_Titulos_Descontado: TDataSetProvider;
    Titulos_Descontado: TClientDataSet;
    DataSource1: TDataSource;
    GroupBox3: TGroupBox;
    Label14: TLabel;
    BitBtn7: TBitBtn;
    edCliente: TEdit;
    edCodCliente: TEdit;
    BitBtn8: TBitBtn;
    BitBtn1: TBitBtn;
    JvDateEdit1: TJvDateEdit;
    JvDateEdit2: TJvDateEdit;
    Descontado: TCheckBox;
    ImageList1: TImageList;
    HistoricoCheques: TUCControlHistorico;
    Hist_DataSetCheques: TUCHist_DataSet;
    JvAppXMLFileStorage1: TJvAppXMLFileStorage;
    JvFormStorage1: TJvFormStorage;
    Titulos_DescontadoCODRECEBIMENTO: TIntegerField;
    Titulos_DescontadoTITULO: TStringField;
    Titulos_DescontadoEMISSAO: TDateField;
    Titulos_DescontadoDATARECEBIMENTO: TDateField;
    Titulos_DescontadoCODCLIENTE: TIntegerField;
    Titulos_DescontadoNOMECLIENTE: TStringField;
    Titulos_DescontadoSELECIONOU: TStringField;
    Titulos_DescontadoDP: TIntegerField;    
    sds_Titulos_DescontadoCODRECEBIMENTO: TIntegerField;
    sds_Titulos_DescontadoTITULO: TStringField;
    sds_Titulos_DescontadoEMISSAO: TDateField;
    sds_Titulos_DescontadoDATARECEBIMENTO: TDateField;
    sds_Titulos_DescontadoCODCLIENTE: TIntegerField;
    sds_Titulos_DescontadoNOMECLIENTE: TStringField;
    sds_Titulos_DescontadoSELECIONOU: TStringField;
    sds_Titulos_DescontadoDP: TIntegerField;
    sds_Titulos_DescontadoSTATUS: TStringField;
    Titulos_DescontadoSTATUS: TStringField;
    Descontar: TBitBtn;
    sds_Titulos_DescontadoDESCONTADO: TStringField;
    Titulos_DescontadoDESCONTADO: TStringField;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    marcartodos1: TMenuItem;
    desmarcartudo1: TMenuItem;
    CancelaDesconto: TBitBtn;
    procedure btnProcurarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure edCodClienteExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure DescontarClick(Sender: TObject);
    procedure CancelaDescontoClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);

  private
    procedure ChkDBGridDrawColumnCell(DBGrid: TDBGrid;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure ChkDBGridColEnter(DBGrid: TDBGrid);
    procedure ChkDBGridColExit(DBGrid: TDBGrid);
    procedure ChkDBGridCellClick(Column: TColumn);
    procedure ChkDBGridKeyPress(DBGrid: TDBGrid; var Key: Char);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcrdescontado: Tfcrdescontado;

implementation

uses UDm, uUtils, uProcurar, sCtrlResize, uFinanceiro, uAtsAdmin,
  uProcurar_nf, UDMNF;

{$R *.dfm}

procedure Tfcrdescontado.btnProcurarClick(Sender: TObject);
var str, str1 : string;
begin
  str := 'Select rec.dp, rec.DESCONTADO, rec.STATUS, rec.CODRECEBIMENTO, rec.TITULO, rec.EMISSAO, ' +
  'rec.DATARECEBIMENTO, rec.CODCLIENTE, cli.NOMECLIENTE, rec.SELECIONOU from RECEBIMENTO rec ' +
  'inner join CLIENTES cli on cli.CODCLIENTE= rec.CODCLIENTE ' ;

  if (edCodCliente.Text <> '') then
  begin
    str := str + ' and rec.CODCLIENTE = ' + edCodCliente.Text;
  end;
  if(JvDateEdit1.Text <> '  /  /    ')then
  begin
      str := str + ' and rec.DATARECEBIMENTO between ';
      str := str + '''' + formatdatetime('mm/dd/yy', StrToDate(JvDateEdit1.Text)) + '''';
      str := str + ' and ';
      str := str + '''' + formatdatetime('mm/dd/yy', StrToDate(JvDateEdit2.Text)) + '''';
  end;
  if(Descontado.Checked)then
  begin
    str := str + ' and rec.DESCONTADO = ' + QuotedStr('S');
  end;
  if Titulos_Descontado.Active then
    Titulos_Descontado.Close;
  Titulos_Descontado.CommandText := str;
  Titulos_Descontado.Open;
end;


procedure Tfcrdescontado.ChkDBGridCellClick(Column: TColumn);
var
  Field: TField;
begin
  Field := Column.Field;
  if (Field <> nil) and (Field.Name = 'Titulos_DescontadoSELECIONOU')
      and Field.CanModify and not Column.ReadOnly then
  with Field.Dataset do
  begin
    if State = dsBrowse then
      Edit;
    if (Titulos_DescontadoSELECIONOU.AsString <> 'S') then
    begin
      //dbGrid1.SelectedRows.CurrentRowSelected := True;
      //dbgrid1.Refresh;
      Titulos_DescontadoSELECIONOU.AsString := 'S';
      Titulos_Descontado.post;
      dm.sqlsisAdimin.ExecuteDirect('update RECEBIMENTO set SELECIONOU = ' +
      QuotedStr('S') + 'where CODRECEBIMENTO = ' + inttostr(Titulos_DescontadoCODRECEBIMENTO.asinteger)) ;
    end
    else begin
      Titulos_DescontadoSELECIONOU.AsString := '';
      Titulos_Descontado.post;
      dm.sqlsisAdimin.ExecuteDirect('update RECEBIMENTO set SELECIONOU = null'  +
      ' where CODRECEBIMENTO = ' + inttostr(Titulos_DescontadoCODRECEBIMENTO.asinteger)) ;
    end;
  end;
end;

procedure Tfcrdescontado.ChkDBGridColEnter(DBGrid: TDBGrid);
var
  Field: TField;
begin
  Field := DBGrid.SelectedField;
  if (Field <> nil) and (Field.Name = 'Titulos_DescontadoSELECIONOU') then
    DBGrid.Options := DBGrid.Options - [dgEditing];
end;

procedure Tfcrdescontado.ChkDBGridColExit(DBGrid: TDBGrid);
var
  Field: TField;
begin
  Field := DBGrid.SelectedField;
  if (Field <> nil) and (Field.Name = 'Titulos_DescontadoSELECIONOU') then
    DBGrid.Options := DBGrid.Options + [dgEditing];
end;

procedure Tfcrdescontado.ChkDBGridDrawColumnCell(DBGrid: TDBGrid;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  X, Y, Index: integer;
  Field: TField;
begin
  Field := Column.Field;
  if (Field <> nil) and (Field.Name = 'Titulos_DescontadoSELECIONOU') then
  begin
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
    // if Field.AsBoolean then Index := 1 else Index := 0;
    if Titulos_DescontadoSELECIONOU.IsNull then Index := 1 else Index := 0;
    // Draw the graphic
    ImageList1.Draw(DBGrid.Canvas, X, Y, Index);
  end else // Default drawing
    DBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfcrdescontado.ChkDBGridKeyPress(DBGrid: TDBGrid; var Key: Char);
var
  Field: TField;
begin
  Field := DBGrid.SelectedField;
  if (Field <> nil) and (Field.Name = 'Titulos_DescontadoSELECIONOU') then
    if (Key = ' ') and Field.CanModify and
        not DBGrid.Columns[DBGrid.SelectedIndex].ReadOnly then
      with Field.Dataset do begin
        if State = dsBrowse then
          Edit;
        //Field.AsBoolean := not Field.AsBoolean;
      if (Titulos_DescontadoSELECIONOU.AsString <> 'S') then
      begin
        Titulos_DescontadoSELECIONOU.AsString := 'S';
        Titulos_Descontado.post;
        dm.sqlsisAdimin.ExecuteDirect('update RECEBIMENTO set SELECIONOU = ' +
        QuotedStr('S') + 'where CODRECEBIMENTO = ' + inttostr(Titulos_DescontadoCODRECEBIMENTO.asinteger)) ;
      end
      else begin
        Titulos_DescontadoSELECIONOU.AsString := '';
        Titulos_Descontado.post;
        dm.sqlsisAdimin.ExecuteDirect('update RECEBIMENTO set SELECIONOU = null' +
        ' where CODRECEBIMENTO = ' + inttostr(Titulos_DescontadoCODRECEBIMENTO.asinteger)) ;

      end;
  end;

end;

procedure Tfcrdescontado.DBGrid1CellClick(Column: TColumn);
begin
  ChkDBGridCellClick(Column);
end;

procedure Tfcrdescontado.DBGrid1ColEnter(Sender: TObject);
begin
  ChkDBGridColEnter(Sender as TDBGrid);
end;

procedure Tfcrdescontado.DBGrid1ColExit(Sender: TObject);
begin
  ChkDBGridColEnter(Sender as TDBGrid);
end;

procedure Tfcrdescontado.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  ChkDBGridKeyPress(Sender as TDBGrid, Key);
end;

procedure Tfcrdescontado.DBGrid1TitleClick(Column: TColumn);
begin
  Titulos_Descontado.IndexFieldNames := Column.FieldName;
end;

procedure Tfcrdescontado.edCodClienteExit(Sender: TObject);
begin
  if edCodCliente.Text = '' then exit;
  if dm.scds_cliente_proc.Active then
     dm.scds_cliente_proc.Close;
  dm.scds_cliente_proc.Params[0].Clear;
  dm.scds_cliente_proc.Params[1].Clear;
  dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
  dm.scds_cliente_proc.Params[2].AsInteger := StrToInt(edCodCliente.Text);
  dm.scds_cliente_proc.Open;
    edCliente.Text := dm.scds_cliente_procNOMECLIENTE.asString;
  dm.scds_cliente_proc.Close;
end;

procedure Tfcrdescontado.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    if (dtsrc.State in [dsInsert]) then
      if (edCodCliente.Text = '') then
        BitBtn8.Click;
  end;
  if (key = #13) then
  begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
  end;
end;

procedure Tfcrdescontado.BitBtn8Click(Sender: TObject);
begin
  fProcurar_nf := TfProcurar_nf.Create(self,dmnf.scds_cli_proc);
  fProcurar_nf.BtnProcurar.Click;
  fProcurar_nf.EvDBFind1.DataField := 'NOMECLIENTE';
  fProcurar_nf.btnIncluir.Visible := True;
  try
    if (fProcurar_nf.ShowModal = mrOK) then
    begin
      edCodCliente.Text := inttostr(dmnf.scds_cli_procCODCLIENTE.AsInteger);
      edCliente.Text := dmnf.scds_cli_procNOMECLIENTE.AsString;
    end;
  finally
   dmnf.scds_cli_proc.Close;
   fProcurar_nf.Free;
  end;
end;

procedure Tfcrdescontado.FormCreate(Sender: TObject);
begin
  //sCtrlResize.CtrlResize(TForm(fcrdescontado));
end;

procedure Tfcrdescontado.BitBtn1Click(Sender: TObject);
begin
  inherited;
  edCodCliente.Text:= '';
  edCliente.Text:= '';
end;

procedure Tfcrdescontado.BitBtn7Click(Sender: TObject);
begin
  inherited;
  JvDateEdit1.Clear;
  JvDateEdit2.Clear;
end;

procedure Tfcrdescontado.DescontarClick(Sender: TObject);
begin
    dm.sqlsisAdimin.ExecuteDirect('update RECEBIMENTO set DESCONTADO = ' +
    QuotedStr('S') + ' where SELECIONOU = ' + QuotedStr('S')) ;
    dm.sqlsisAdimin.ExecuteDirect('update RECEBIMENTO set SELECIONOU = null' +
    ' where SELECIONOU = ' + QuotedStr('S')) ;
    btnProcurar.Click;

end;

procedure Tfcrdescontado.CancelaDescontoClick(Sender: TObject);
begin
    dm.sqlsisAdimin.ExecuteDirect('update RECEBIMENTO set DESCONTADO = null' +
    ' where SELECIONOU = ' + QuotedStr('S')) ;
    dm.sqlsisAdimin.ExecuteDirect('update RECEBIMENTO set SELECIONOU = null' +
    ' where SELECIONOU = ' + QuotedStr('S')) ;
    btnProcurar.Click;
end;

procedure Tfcrdescontado.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
//***************************************************
// destacando Campos
//***************************************************
  if Column.Field = Titulos_DescontadoSELECIONOU then
   if (Titulos_DescontadoSELECIONOU.IsNull)then
   begin
     DBGrid1.Canvas.Font.Color := clRed;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
  if Column.Field = Titulos_DescontadoSELECIONOU then
   if (Titulos_DescontadoSELECIONOU.AsString = 'S') then
   begin
     DBGrid1.Canvas.Font.Color := clBlue;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;

  ChkDBGridDrawColumnCell(Sender as TDBGrid, Rect,
    DataCol, Column, State);

end;

end.
