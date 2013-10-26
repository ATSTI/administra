unit uLabExameLocaliza;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, MMJPanel, Buttons, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, ComCtrls, JvExComCtrls, JvDateTimePicker,
  JvDBDateTimePicker, JvExStdCtrls, JvCombobox, JvDBSearchComboBox, DBCtrls,
  FMTBcd, DB, DBClient, Provider, SqlExpr, Mask, JvExMask, JvToolEdit,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, Menus;

type
  TfLabExameLocaliza = class(TForm)
    MMJPanel1: TMMJPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    cbCliente: TJvDBSearchComboBox;
    JvDBGrid1: TJvDBGrid;
    btnProcurar: TBitBtn;
    sdsClienteBusca: TSQLDataSet;
    dspBuscaCliente: TDataSetProvider;
    cdsClienteBusca: TClientDataSet;
    cdsClienteBuscaCODCLIENTE: TIntegerField;
    cdsClienteBuscaNOMECLIENTE: TStringField;
    cdsClienteBuscaRA: TStringField;
    dsClienteBusca: TDataSource;
    cbMedico: TJvDBSearchComboBox;
    sdsMedico: TSQLDataSet;
    dspMedico: TDataSetProvider;
    cdsMedico: TClientDataSet;
    cdsMedicoCOD_REPRFOR: TIntegerField;
    cdsMedicoNOME_REPRFOR: TStringField;
    cdsMedicoFUNCAO: TStringField;
    dsMedico: TDataSource;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    ds: TDataSource;
    cdsCODEXAME: TIntegerField;
    cdsDATASOLICITACAO: TDateField;
    cdsDATAENTREGAMATERIAL: TDateField;
    cdsDATAPREVISTAENTREGA: TDateField;
    cdsDATALAUDOEXAME: TDateField;
    cdsDATARETIRADA: TDateField;
    cdsCODCLIENTE: TIntegerField;
    cdsTIPOEXAME: TStringField;
    cdsMEDICOSOLICITANTE: TIntegerField;
    cdsCONVENIO: TStringField;
    cdsVALOR: TFloatField;
    cdsSITUACAO: TStringField;
    cdsMATERIALRECEBIDO: TStringField;
    cdsNOMECLIENTE: TStringField;
    btnSair: TBitBtn;
    dt1: TJvDatePickerEdit;
    dt2: TJvDatePickerEdit;
    cbExame: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    PopupMenu1: TPopupMenu;
    Procurar1: TMenuItem;
    Incuir1: TMenuItem;
    Gravar1: TMenuItem;
    Excluir1: TMenuItem;
    Cancelar1: TMenuItem;
    Sair1: TMenuItem;
    BitBtn5: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnProcurarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure dsDataChange(Sender: TObject; Field: TField);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    codExame : integer;
    { Public declarations }
  end;

var
  fLabExameLocaliza: TfLabExameLocaliza;

implementation

uses UDmSaude, uLabSolicitaExame;

{$R *.dfm}

procedure TfLabExameLocaliza.FormCreate(Sender: TObject);
begin
  dt1.Clear;
  dt2.Clear;

  if (cdsMedico.Active) then
    cdsMedico.close;
    cdsMedico.Open;

  if (cdsClienteBusca.Active) then
    cdsClienteBusca.close;
  cdsClienteBusca.CommandText := 'SELECT RA, CODCLIENTE, NOMECLIENTE ' +
    'FROM CLIENTES WHERE STATUS = 0 ORDER BY NOMECLIENTE ';
  cdsClienteBusca.Open;
  cbCliente.ItemIndex := -1;
  if (dmSaude.cdsCombo.Active) then
    dmSaude.cdsCombo.close;
  dmSaude.cdsCombo.Params[0].AsString := 'EXAMES';
  dmSaude.cdsCombo.Open;
  While not dmSaude.cdsCombo.Eof do
  begin
    cbExame.Items.Add(dmSaude.cdsComboDESCRICAO.AsString);
    dmSaude.cdsCombo.Next;
  end;

end;

procedure TfLabExameLocaliza.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfLabExameLocaliza.btnProcurarClick(Sender: TObject);
var sql, cTexto: string;
begin
  cTexto := 'select labe.CODEXAME, labe.DATASOLICITACAO, labe.DATAENTREGAMATERIAL ,'+
  ' labe.DATAPREVISTAENTREGA,labe.DATALAUDOEXAME, labe.DATARETIRADA, labe.CODCLIENTE,' +
  ' labe.TIPOEXAME,labe.MEDICOSOLICITANTE, labe.CONVENIO, labe.VALOR, labe.SITUACAO, ' +
  ' labe.MATERIALRECEBIDO, cli.NOMECLIENTE from LABEXAME labe ,' +
  ' CLIENTES cli where cli.CODCLIENTE = labe.CODCLIENTE ';
  if (cbCliente.Text <> '') then
  begin
    sql := ' and cli.NOMECLIENTE = ' + QuotedStr(cbCliente.Text);
  end;
  if (cbExame.Text <> '') then
  begin
    sql := sql + ' and labe.TIPOEXAME = ' + QuotedStr(cbExame.Text);
  end;
  if (cbMedico.Text <> '') then
  begin
    sql := sql + ' and labe.MEDICOSOLICITANTE = ' + IntToStr( cdsMedicoCOD_REPRFOR.AsInteger);
  end;
  if (dt1.Text <> '') then
  begin
    sql := sql + ' and labe.DATASOLICITACAO = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',dt1.Date));
  end;
  if (dt2.Text <> '') then
  begin
    sql := sql + ' and labe.DATARETIRADA = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',dt2.Date));
  end;
  if (cds.Active) then
    cds.Close;
  cds.CommandText := cTexto + sql + ' order by cli.NOMECLIENTE' ;

  cds.Open;
  sds.CommandText := cTexto + ' order by cli.NOMECLIENTE' ;
  sql := '';
  codExame := cdsCODEXAME.AsInteger;
end;

procedure TfLabExameLocaliza.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfLabExameLocaliza.dsDataChange(Sender: TObject; Field: TField);
begin
  codExame := cdsCODEXAME.asInteger;
end;

procedure TfLabExameLocaliza.BitBtn1Click(Sender: TObject);
begin
  dt2.Clear;
end;

procedure TfLabExameLocaliza.BitBtn2Click(Sender: TObject);
begin
  cbMedico.Text := '';
end;

procedure TfLabExameLocaliza.FormShow(Sender: TObject);
begin
  cbMedico.Text := '';
end;

procedure TfLabExameLocaliza.BitBtn3Click(Sender: TObject);
begin
  cbCliente.Text := '';
end;

procedure TfLabExameLocaliza.BitBtn4Click(Sender: TObject);
begin
  cbExame.Text := '';
end;

procedure TfLabExameLocaliza.BitBtn5Click(Sender: TObject);
begin
    dt1.Clear;
end;

end.
