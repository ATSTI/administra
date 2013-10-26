unit uOperPesquisa1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvExDBGrids, JvDBGrid, StdCtrls, Mask, Buttons,
  ExtCtrls, MMJPanel, FMTBcd, DB, DBClient, Provider, SqlExpr, ImgList,
  Menus, rpcompobase, rpvclreport;

type
  TfOperPesquisa1 = class(TForm)
    MMJPanel2: TMMJPanel;
    btnProcurar: TBitBtn;
    btnSair: TBitBtn;
    MMJPanel1: TMMJPanel;
    meDta1: TMaskEdit;
    Label8: TLabel;
    meDta2: TMaskEdit;
    BitBtn7: TBitBtn;
    Label2: TLabel;
    edCliente: TEdit;
    Label10: TLabel;
    BitBtn8: TBitBtn;
    cbStatus: TComboBox;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    sPalm: TSQLDataSet;
    pPalm: TDataSetProvider;
    cPalm: TClientDataSet;
    dPalm: TDataSource;
    ImageList1: TImageList;
    sPalmCOD_PALM: TIntegerField;
    sPalmCLIENTE: TStringField;
    sPalmLOCAL: TStringField;
    sPalmVEICULO: TStringField;
    sPalmPLACA: TStringField;
    sPalmTRANSPORTE: TStringField;
    sPalmTIPO: TStringField;
    sPalmOPERACAO: TStringField;
    sPalmMODO: TStringField;
    sPalmSETOR: TStringField;
    sPalmSTATUS: TStringField;
    sPalmSERVICO: TStringField;
    sPalmOBSERVACAO: TStringField;
    sPalmDATAOPERACAO: TStringField;
    sPalmDATATERMINO: TStringField;
    sPalmFATURADO: TStringField;
    sPalmRESPONSAVEL: TStringField;
    sPalmRG: TStringField;
    sPalmHORAINICIAL: TStringField;
    sPalmHORAFINAL: TStringField;
    sPalmPESO: TStringField;
    sPalmMARCOU: TStringField;
    cPalmCOD_PALM: TIntegerField;
    cPalmCLIENTE: TStringField;
    cPalmLOCAL: TStringField;
    cPalmVEICULO: TStringField;
    cPalmPLACA: TStringField;
    cPalmTRANSPORTE: TStringField;
    cPalmTIPO: TStringField;
    cPalmOPERACAO: TStringField;
    cPalmMODO: TStringField;
    cPalmSETOR: TStringField;
    cPalmSTATUS: TStringField;
    cPalmSERVICO: TStringField;
    cPalmOBSERVACAO: TStringField;
    cPalmDATAOPERACAO: TStringField;
    cPalmDATATERMINO: TStringField;
    cPalmFATURADO: TStringField;
    cPalmRESPONSAVEL: TStringField;
    cPalmRG: TStringField;
    cPalmHORAINICIAL: TStringField;
    cPalmHORAFINAL: TStringField;
    cPalmPESO: TStringField;
    cPalmMARCOU: TStringField;
    DBGrid1: TDBGrid;
    PopupMenu1: TPopupMenu;
    marcarTodos: TMenuItem;
    desmarcar: TMenuItem;
    Label21: TLabel;
    Label22: TLabel;
    VCLReport1: TVCLReport;
    DBGrid2: TDBGrid;
    sPalmGEROUARQUIVO: TStringField;
    sPalmNOMEARQUIVO: TStringField;
    sPalmCODFAIXA: TIntegerField;
    sPalmVALOROPERACAO: TFloatField;
    sPalmGEROUFINANCEIRO: TStringField;
    cPalmGEROUARQUIVO: TStringField;
    cPalmNOMEARQUIVO: TStringField;
    cPalmCODFAIXA: TIntegerField;
    cPalmVALOROPERACAO: TFloatField;
    cPalmGEROUFINANCEIRO: TStringField;
    sPalmNF: TStringField;
    cPalmNF: TStringField;
    sPalmMODO1: TStringField;
    sPalmMODO2: TStringField;
    sPalmSERVICO1: TStringField;
    sPalmSERVICO2: TStringField;
    sPalmPLCA: TStringField;
    cPalmMODO1: TStringField;
    cPalmMODO2: TStringField;
    cPalmSERVICO1: TStringField;
    cPalmSERVICO2: TStringField;
    cPalmPLCA: TStringField;
    procedure BitBtn7Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure JvDBGrid1CellClick(Column: TColumn);
    procedure JvDBGrid1ColEnter(Sender: TObject);
    procedure JvDBGrid1ColExit(Sender: TObject);
    procedure JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure JvDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure JvDBGrid1TitleClick(Column: TColumn);
    procedure BitBtn8Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure marcarTodosClick(Sender: TObject);
    procedure desmarcarClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure ChkDBGridDrawColumnCell(DBGrid: TDBGrid;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure ChkDBGridColEnter(DBGrid: TDBGrid);
    procedure ChkDBGridColExit(DBGrid: TDBGrid);
    procedure ChkDBGridCellClick(Column: TColumn);
    procedure ChkDBGridKeyPress(DBGrid: TDBGrid; var Key: Char);
  public
    { Public declarations }
  end;

var
  fOperPesquisa1: TfOperPesquisa1;
  vSql, vCondicao, datastr: String;    

implementation

uses UDm, uListaClientes, uDmTransp, uOperacaoAltera;

{$R *.dfm}

procedure TfOperPesquisa1.BitBtn7Click(Sender: TObject);
begin
 meDta1.Text := '  /  /  ';
 meDta2.Text := '  /  /  ';
end;

procedure TfOperPesquisa1.btnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TfOperPesquisa1.btnProcurarClick(Sender: TObject);
begin
     vSql := '';
     vCondicao := '';

     vSql:='Select * from PALM ';
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
          vCondicao := ' WHERE DATAOPERACAO BETWEEN ' +
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

     if edCliente.Text <> '' then
       if vCondicao <> '' then
         vCondicao := vCondicao + ' and UDF_COLLATEBR(CLIENTE) containing ' + '''' + edCliente.Text +  ''''
       else
         vCondicao := 'where UDF_COLLATEBR(CLIENTE) containing ' + '''' + edCliente.Text + '''';

     if cbStatus.Text <> '' then
       if vCondicao <> '' then
         vCondicao := vCondicao + ' and STATUS = ' + '''' + cbStatus.Text + ''' '
       else
         vCondicao := 'where STATUS = ' + '''' + cbStatus.Text + ''' ';

      vCondicao := vSql + vCondicao + ' order by DATAOPERACAO';

      if cPalm.Active then
         cPalm.Close;
      cPalm.CommandText := '';
      cPalm.CommandText := vCondicao;
      cPalm.Open;
end;

procedure TfOperPesquisa1.ChkDBGridCellClick(Column: TColumn);
  var
    Field: TField;
begin
    Field := Column.Field;
    if (Field <> nil) and (Field.Name = 'cPalmMARCOU')and Field.CanModify and not Column.ReadOnly then
      with Field.Dataset do begin
        if State = dsBrowse then
          Edit;
        if (cPalmMARCOU.AsString <> 'S') then
        begin
          cPalmMARCOU.AsString := 'S';
          cPalm.Post;
        end
        else
        begin
          cPalmMARCOU.AsString := '';
        end;
      end;
end;

procedure TfOperPesquisa1.ChkDBGridColEnter(DBGrid: TDBGrid);
var
  Field: TField;
begin
  Field := DBGrid.SelectedField;
  if (Field <> nil) and (Field.Name = 'cPalmMARCOU') then
    DBGrid.Options := DBGrid.Options - [dgEditing];
end;

procedure TfOperPesquisa1.ChkDBGridColExit(DBGrid: TDBGrid);
var
  Field: TField;
begin
  Field := DBGrid.SelectedField;
  if (Field <> nil) and (Field.Name = 'cPalmMARCOU') then
    DBGrid.Options := DBGrid.Options + [dgEditing];
end;

procedure TfOperPesquisa1.ChkDBGridKeyPress(DBGrid: TDBGrid; var Key: Char);
var
  Field: TField;
begin
  Field := DBGrid.SelectedField;
  if (Field <> nil) and (Field.Name = 'cPalmMARCOU') then
    if (Key = ' ') and Field.CanModify and
        not DBGrid.Columns[DBGrid.SelectedIndex].ReadOnly then
      with Field.Dataset do begin
        if State = dsBrowse then
          Edit;
      //Field.AsBoolean := not Field.AsBoolean;
      if (cPalmMARCOU.AsString = '') then
      begin
        cPalmMARCOU.AsString := 'S';
        cPalm.Post;
      end
      else begin
        cPalmMARCOU.AsString := '';
      end;
      end;
end;

procedure TfOperPesquisa1.JvDBGrid1CellClick(Column: TColumn);
begin
  ChkDBGridCellClick(Column);
end;

procedure TfOperPesquisa1.JvDBGrid1ColEnter(Sender: TObject);
begin
  ChkDBGridColEnter(Sender as TDBGrid);
end;

procedure TfOperPesquisa1.JvDBGrid1ColExit(Sender: TObject);
begin
 ChkDBGridColExit(Sender as TDBGrid);
end;

procedure TfOperPesquisa1.JvDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

{  if Column.Field = scdsCr_procSTATUSP then
   if ((scdsCr_procSTATUS.AsString = '5-')) then
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

  if Column.Field = scdsCr_procSTATUSP then
   if (scdsCr_procSTATUS.AsString = '8-') then
   begin
     DBGrid1.Canvas.Font.Color := clYellow;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
        }
  ChkDBGridDrawColumnCell(Sender as TDBGrid, Rect,
    DataCol, Column, State);
end;

procedure TfOperPesquisa1.JvDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   ChkDBGridKeyPress(Sender as TDBGrid, Key);
end;

procedure TfOperPesquisa1.JvDBGrid1TitleClick(Column: TColumn);
begin
    cPalm.IndexFieldNames := Column.FieldName;
end;

procedure TfOperPesquisa1.ChkDBGridDrawColumnCell(DBGrid: TDBGrid;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  X, Y, Index: integer;
  Field: TField;
begin
  Field := Column.Field;
  if (Field <> nil) and (Field.Name = 'cPalmMARCOU') then
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
    if cPalmMARCOU.AsString <> 'S' then Index := 1 else Index := 0;
    // Draw the graphic
    ImageList1.Draw(DBGrid.Canvas, X, Y, Index);
  end else // Default drawing
    DBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure TfOperPesquisa1.BitBtn8Click(Sender: TObject);
begin
    varform := 'Logistica';
     fListaClientes:=TfListaClientes.Create(Application);
     fListaClientes.BitBtn8.Enabled := False;
     fListaClientes.ShowModal;
     try
       edCliente.Text := fListaClientes.nomecli;

     finally
        fListaClientes.Free;
     end;
end;

procedure TfOperPesquisa1.DBGrid1CellClick(Column: TColumn);
begin
  ChkDBGridCellClick(Column);
end;

procedure TfOperPesquisa1.DBGrid1ColEnter(Sender: TObject);
begin
  ChkDBGridColEnter(Sender as TDBGrid);
end;

procedure TfOperPesquisa1.DBGrid1ColExit(Sender: TObject);
begin
 ChkDBGridColEnter(Sender as TDBGrid);
end;

procedure TfOperPesquisa1.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if not odd(cPalm.RecNo) then // se for impar
  // se a coluna ñ está selecionada
   if not (gdSelected in State) then
   begin
    //define uma COR DE FUNDO
    DBGrid1.Canvas.Brush.Color := $00FFEFDF;
    DBGrid1.Canvas.FillRect(Rect); //Pinta a celula
    //Pinta o texto padrão
    DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
   end;

  ChkDBGridDrawColumnCell(Sender as TDBGrid, Rect,
    DataCol, Column, State);
end;

procedure TfOperPesquisa1.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
     ChkDBGridKeyPress(Sender as TDBGrid, Key);
end;

procedure TfOperPesquisa1.DBGrid1TitleClick(Column: TColumn);
begin
     cPalm.IndexFieldNames := Column.FieldName;
end;

procedure TfOperPesquisa1.marcarTodosClick(Sender: TObject);
begin
  if (cPalm.Active) then
  begin
      cPalm.First;
      cPalm.DisableControls;
      while not cPalm.Eof do
      begin
        if cPalm.State = dsBrowse then
           cPalm.Edit;
        cPalmMARCOU.AsString := 'S';
        cPalm.Post;
        cPalm.Next;
      end;
      cPalm.First;
      cPalm.EnableControls;
  end;
end;

procedure TfOperPesquisa1.desmarcarClick(Sender: TObject);
begin
  if (cPalm.Active) then
  begin
      cPalm.First;
      cPalm.DisableControls;
      while not cPalm.Eof do
      begin
        if cPalm.State = dsBrowse then
           cPalm.Edit;
        cPalmMARCOU.AsString := '';
        cPalm.Post;
        cPalm.Next;
      end;
      cPalm.First;
      cPalm.EnableControls;
  end;
end;

procedure TfOperPesquisa1.BitBtn2Click(Sender: TObject);
begin
  dmTransp.vRelatorio := '';
  if not cPalm.Active then
  begin
   MessageDlg('Pôr favor efetue a pesquisa antes, para depois imprimir..', mtWarning, [mbOK], 0);
   exit;
  end;
  dmTransp.vRelatorio := vCondicao;
  VCLReport1.FileName := str_relatorio + 'relPalm.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.DataInfo.Items[0].SQL:= vCondicao;
  VCLReport1.Execute;
end;

procedure TfOperPesquisa1.DBGrid1DblClick(Sender: TObject);
begin
  fOperacaoAltera := TfOperacaoAltera.Create(Application);
  try
    dmTransp.vCodPalm := cPalmCOD_PALM.AsInteger;
    fOperacaoAltera.Label11.Visible := False;
    fOperacaoAltera.Label12.Visible := False;
    fOperacaoAltera.DBEdit4.Visible := False;
    fOperacaoAltera.DBEdit5.Visible := False;        
    fOperacaoAltera.ShowModal;
  finally
    fOperacaoAltera.Free;
  end;
end;

end.
