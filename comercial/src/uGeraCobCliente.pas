unit uGeraCobCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, Mask, StdCtrls, Grids, DBGrids, DB, Provider, DBClient,
  SqlExpr, dxCore, dxButton, Buttons, TFlatGaugeUnit, DBCtrls;

type
  TAuxDBGrid = class(TDBGrid);
  TfGeraCobCliente = class(TForm)
    SQLDataSet1: TSQLDataSet;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    dsCliente: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Label8: TLabel;
    Label2: TLabel;
    FlatGauge1: TFlatGauge;
    Label4: TLabel;
    meDta3: TMaskEdit;
    meDta4: TMaskEdit;
    BitBtn7: TBitBtn;
    dxButton2: TdxButton;
    ComboBox1: TComboBox;
    CheckBox1: TCheckBox;
    cds_faixa: TClientDataSet;
    cds_faixaCODFAIXA: TIntegerField;
    cds_faixaDESCRICAO: TStringField;
    cds_faixaIDADE_MIN: TSmallintField;
    cds_faixaIDADE_MAX: TSmallintField;
    cds_faixaVALOR_PLANO: TFloatField;
    cds_faixaDESCONTO: TFloatField;
    cds_faixaUSO: TStringField;
    dsp_faixa: TDataSetProvider;
    sds_faixa: TSQLDataSet;
    sds_faixaCODFAIXA: TIntegerField;
    sds_faixaDESCRICAO: TStringField;
    sds_faixaIDADE_MIN: TSmallintField;
    sds_faixaIDADE_MAX: TSmallintField;
    sds_faixaVALOR_PLANO: TFloatField;
    sds_faixaDESCONTO: TFloatField;
    sds_faixaUSO: TStringField;
    Edit2: TEdit;
    Label5: TLabel;
    sds_cli_1: TSQLDataSet;
    dsp_cli_1: TDataSetProvider;
    cds_cli_1: TClientDataSet;
    cds_cli_1CODCLIENTE: TIntegerField;
    cds_cli_1NOMECLIENTE: TStringField;
    cds_cli_1RAZAOSOCIAL: TStringField;
    sds_cli_1CODCLIENTE: TIntegerField;
    sds_cli_1RAZAOSOCIAL: TStringField;
    sds_cli_1NOMECLIENTE: TStringField;
    btnProcurar: TBitBtn;
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
    dsp: TDataSetProvider;
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
    sds_cli_1PRAZORECEBIMENTO: TSmallintField;
    cds_cli_1PRAZORECEBIMENTO: TSmallintField;
    DBText2: TDBText;
    DBText1: TDBText;
    sds_cli_1DUP_REC_NF: TStringField;
    cds_cli_1DUP_REC_NF: TStringField;
    Edit3: TEdit;
    Label6: TLabel;
    procedure FormShow(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    procedure geraCobOutros;
    { Public declarations }
  end;

var
  fGeraCobCliente: TfGeraCobCliente;

implementation

uses UDm;

{$R *.dfm}

procedure TfGeraCobCliente.FormShow(Sender: TObject);
begin
  if not cds_faixa.Active then
    cds_faixa.Open;
  // populo a combobox
  cds_faixa.First;
  while not cds_faixa.Eof do
  begin
    ComboBox1.Items.Add(cds_faixaDESCRICAO.AsString);
    cds_faixa.Next;
  end;
end;

procedure TfGeraCobCliente.dxButton2Click(Sender: TObject);
begin
  if (meDta3.Text = '') then
  begin
   MessageDlg('Informe a data de Emissão.', mtWarning, [mbOK], 0);
   exit;
  end;
  if (meDta4.Text = '') then
  begin
   MessageDlg('Informe a data de Vencimento.', mtWarning, [mbOK], 0);
   exit;
  end;

  if ( not cds_cli_1.Active) then
  begin
   MessageDlg('Clique em procurar para listar os clientes.', mtWarning, [mbOK], 0);
   exit;
  end;



  if not cds_parametro.Active then
    cds_parametro.Open;
  cds_parametro.Locate('PARAMETRO', 'MODULO',[loPartialKey]);
  // usado para <> de Escolas
  if (cds_parametroD3.AsString = 'S') then
    geraCobOutros;
  cds_cli_1.Edit;
  cds_cli_1DUP_REC_NF.AsString := 'S';
  cds_cli_1.Post;

end;

procedure TfGeraCobCliente.geraCobOutros;
var dia, mes, ano : word;
    dataVcto: TDate;
    str_sql: string;
Var
  Save_Cursor:TCursor;
Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
    if (CheckBox1.Checked) then
    begin
     DecodeDate(StrToDateTime(meDta4.Text),ano, mes, dia);
    end;
    str_sql := '';

    FlatGauge1.Progress := 0;
    FlatGauge1.MaxValue := 2;
    dataVcto := StrToDateTime(meDta4.Text);
    if (CheckBox1.Checked) then
    begin
     try
       if (not cds_cli_1PRAZORECEBIMENTO.IsNull) then
         dataVcto := EncodeDate(ano, mes, cds_cli_1PRAZORECEBIMENTO.AsInteger);
     except
       dataVcto := StrToDateTime(meDta4.Text);
     end;
    end;
    Try
      str_sql := 'EXECUTE PROCEDURE spGeraCobCliente(';
      str_sql := str_sql + IntToStr(cds_cli_1CODCLIENTE.AsInteger) + ', ';
      str_sql := str_sql + '''' + FormatDateTime('mm/dd/yyyy', StrToDate(meDta3.Text)) + '''' + ', ';
      str_sql := str_sql + '''' + FormatDateTime('mm/dd/yyyy', StrToDate(meDta4.Text)) + '''';
      if (CheckBox1.Checked) then
       str_sql := str_sql + ', ' + QuotedStr('S')
      else
       str_sql := str_sql + ', ' + QuotedStr('N');
      // Número do Título Inicial
      str_sql := str_sql + ', ' + QuotedStr(Edit1.Text);
      // Número de Parcelas
      str_sql := str_sql + ', ' + Edit2.Text;
      if (edit3.Text <> '') then
        str_sql := str_sql + ', ' + Edit3.Text + ')'
      else
        str_sql := str_sql + ', 0)';
      dm.sqlsisAdimin.ExecuteDirect(str_sql);
    Except
      MessageDlg('Não foi possível gerar Título.', mtError, [mbOK], 0);
      Abort;
    end;
    FlatGauge1.Progress := FlatGauge1.Progress + 1;
    {cds_cli_1.Close;
    cds_cli_1.open;}
    FlatGauge1.Progress := FlatGauge1.Progress + 1;
    MessageDlg('Título Gerado com sucesso.', mtInformation, [mbOK], 0);
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

procedure TfGeraCobCliente.btnProcurarClick(Sender: TObject);
begin
  if (cds_cli_1.Active) then
    cds_cli_1.Close;
  cds_cli_1.Params[0].Clear;
  cds_cli_1.Params[1].Clear;
  cds_cli_1.Params[2].Clear;

  cds_cli_1.Params[0].AsDate := StrToDate(meDta3.Text);

  // FAIXA
  if (ComboBox1.Text = '') then
   cds_cli_1.Params[1].AsInteger := 9999999;
  if (ComboBox1.Text <> '') then
  begin
   cds_faixa.Locate('DESCRICAO', ComboBox1.Text,[loCaseInsensitive]);
   cds_cli_1.Params[1].AsInteger := cds_faixaCODFAIXA.AsInteger;
  end;
  cds_cli_1.Open;

end;

procedure TfGeraCobCliente.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (TAuxDBGrid(DBGrid1).DataLink.ActiveRecord + 1 = TAuxDBGrid(DBGrid1).Row) or (gdSelected in State) then
  begin
    DBGrid1.Canvas.Brush.Color := clSkyBlue;
    DBGrid1.Canvas.Font.Style := DBGrid1.Canvas.Font.Style + [fsBold];
    DBGrid1.Canvas.Font.Color := clRed;
  end;
  DBGrid1.Canvas.FillRect(Rect);
  DBGrid1.Canvas.TextOut(Rect.Left+2,Rect.Top,Column.Field.AsString);
  if (cds_cli_1DUP_REC_NF.AsString = 'S') then
  begin
    //DBGrid1.Canvas.Font.Color := clBlue;
    //DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
    DBGrid1.Canvas.Brush.Color := $00FFEFDF;
    DBGrid1.Canvas.FillRect(Rect); //Pinta a celula
    //Pinta o texto padro
    DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
  end;
end;

procedure TfGeraCobCliente.DBGrid1TitleClick(Column: TColumn);
begin
    cds_cli_1.IndexFieldNames := Column.FieldName;
end;

end.
