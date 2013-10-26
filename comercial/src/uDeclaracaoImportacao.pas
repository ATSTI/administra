unit uDeclaracaoImportacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, FMTBcd, Grids, DBGrids, StdCtrls, Mask, DBCtrls, SqlExpr,
  DB, DBClient, Provider, Menus, XPMenu, Buttons, ExtCtrls, MMJPanel, DBXpress,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid;

type
  TfDeclaracaoImportacao = class(TfPai)
    dspDI: TDataSetProvider;
    cdsDI: TClientDataSet;
    cdsDIDI_CODDI: TIntegerField;
    cdsDIDI_NUMDI: TStringField;
    cdsDIDI_DATA: TDateField;
    cdsDIDI_LOCALDESEMB: TStringField;
    cdsDIDI_UFDESEMB: TStringField;
    cdsDIDI_DATADESEMB: TDateField;
    cdsDIDI_CODEXPORTADOR: TStringField;
    cdsDINOMEFORNECEDOR: TStringField;
    sdsDI: TSQLDataSet;
    sdsDIDI_CODDI: TIntegerField;
    sdsDIDI_NUMDI: TStringField;
    sdsDIDI_DATA: TDateField;
    sdsDIDI_LOCALDESEMB: TStringField;
    sdsDIDI_UFDESEMB: TStringField;
    sdsDIDI_DATADESEMB: TDateField;
    sdsDIDI_CODEXPORTADOR: TStringField;
    sdsDINOMEFORNECEDOR: TStringField;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Button1: TButton;
    DBEdit7: TDBEdit;
    JvDBUltimGrid1: TJvDBUltimGrid;
    sdsDINOTASERIE: TStringField;
    sdsDICODMOVIMENTO: TIntegerField;
    cdsDINOTASERIE: TStringField;
    cdsDICODMOVIMENTO: TIntegerField;
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
  private
    { Private declarations }
  public
    notaSerieDec    : String;
    codMovimentoDec : Integer;
    codExportadorDec: Integer;
    { Public declarations }
  end;

var
  fDeclaracaoImportacao: TfDeclaracaoImportacao;

implementation

uses UDm, uProcurar;

{$R *.dfm}

procedure TfDeclaracaoImportacao.btnGravarClick(Sender: TObject);
var cm : string;
var TD: TTransactionDesc;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  if cdsDI.State in [dsInsert] then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_DI, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cdsDIDI_CODDI.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
    cm :=  'INSERT INTO DECLARACAOIMPORTACAO (' +
    ' DI_CODDI, DI_NUMDI, DI_DATA, DI_LOCALDESEMB, DI_UFDESEMB, DI_DATADESEMB, ' +
    ' DI_CODEXPORTADOR, NOTASERIE, CODMOVIMENTO) ' +
    'VALUES (' +
    IntToStr(cdsDIDI_CODDI.AsInteger) + ', ' +
    QuotedStr(cdsDIDI_NUMDI.AsString) + ', ' +
    QuotedStr(FormatDateTime('mm/dd/yyyy', cdsDIDI_DATA.AsDateTime)) + ', ' +
    QuotedStr(cdsDIDI_LOCALDESEMB.AsString) + ', ' +
    QuotedStr(cdsDIDI_UFDESEMB.AsString) + ', ' +
    QuotedStr(FormatDateTime('mm/dd/yyyy', cdsDIDI_DATADESEMB.AsDateTime)) + ', ' +
    IntToStr(cdsDIDI_CODEXPORTADOR.AsInteger) + ', ' +
    QuotedStr(notaSerieDec) + ', ' +
    IntToStr(codMovimentoDec) + ')';
  end
  else
  begin
    cm := 'UPDATE DECLARACAOIMPORTACAO SET ' +
    '          DI_NUMDI = ' + QuotedStr(cdsDIDI_NUMDI.AsString) +
    ',          DI_DATA = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', cdsDIDI_DATA.AsDateTime)) +
    ',   DI_LOCALDESEMB = ' + QuotedStr(cdsDIDI_LOCALDESEMB.AsString) +
    ',      DI_UFDESEMB = ' + QuotedStr(cdsDIDI_UFDESEMB.AsString) +
    ',    DI_DATADESEMB = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', cdsDIDI_DATADESEMB.AsDateTime)) +
    ', DI_CODEXPORTADOR = ' + IntToStr(cdsDIDI_CODEXPORTADOR.AsInteger) +
    ',        NOTASERIE = ' + QuotedStr(notaSerieDec) +
    ',     CODMOVIMENTO = ' + IntToStr(codMovimentoDec) +
    ' WHERE DI_CODDI =  ' + IntToStr(cdsDIDI_CODDI.AsInteger);
  end;
  dm.sqlsisAdimin.ExecuteDirect(cm);
  dm.sqlsisAdimin.Commit(TD);
  inherited;
end;

procedure TfDeclaracaoImportacao.FormCreate(Sender: TObject);
begin
//  inherited;

end;

procedure TfDeclaracaoImportacao.Button1Click(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,dm.scds_forn_proc);
  dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
  dm.scds_forn_proc.Params.ParamByName('pSegmento').AsInteger := 0;  
  fProcurar.RadioGroup2.Visible := True;  
  fProcurar.BtnProcurar.Click;
  fProcurar.EvDBFind1.DataField := 'NOMEFORNECEDOR';
  fProcurar.btnIncluir.Visible := True;
  try
   fProcurar.ShowModal;
   if dtSrc.State=dsBrowse then
     cdsDI.Edit;
   cdsDIDI_CODEXPORTADOR.AsInteger := dm.scds_forn_procCODFORNECEDOR.AsInteger;
   cdsDINOMEFORNECEDOR.AsString := dm.scds_forn_procNOMEFORNECEDOR.AsString;
   finally
    dm.scds_forn_proc.Close;
    fProcurar.Free;
   end;

end;

procedure TfDeclaracaoImportacao.FormShow(Sender: TObject);
begin
//  inherited;
  cdsdi.Params[0].Clear;
  cdsDI.Open;
end;

procedure TfDeclaracaoImportacao.btnExcluirClick(Sender: TObject);
var cm : string;
var TD: TTransactionDesc;
begin
//  inherited;
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  cm := 'delete from DECLARACAOIMPORTACAO where DI_CODDI = ' + IntToStr(cdsDIDI_CODDI.AsInteger);
  dm.sqlsisAdimin.ExecuteDirect(cm);
  dm.sqlsisAdimin.Commit(TD);
end;

procedure TfDeclaracaoImportacao.btnIncluirClick(Sender: TObject);
begin
  inherited;
  cdsDIDI_CODEXPORTADOR.AsInteger := codExportadorDec;
  if dm.scds_forn_proc.Active then
  dm.scds_forn_proc.Close;
  dm.scds_forn_proc.Params[0].Clear;
  dm.scds_forn_proc.Params[1].Clear;
  dm.scds_forn_proc.Params[2].AsInteger := codExportadorDec;
  dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
  dm.scds_forn_proc.Params.ParamByName('pSegmento').AsInteger := 1;
  dm.scds_forn_proc.Open;
  cdsDINOMEFORNECEDOR.AsString := dm.scds_forn_procNOMEFORNECEDOR.AsString;
end;

procedure TfDeclaracaoImportacao.DBEdit6Exit(Sender: TObject);
begin
  inherited;
  if dm.scds_forn_proc.Active then
  dm.scds_forn_proc.Close;
  dm.scds_forn_proc.Params[0].Clear;
  dm.scds_forn_proc.Params[1].Clear;
  dm.scds_forn_proc.Params[2].AsInteger:=StrToInt(DBEdit6.Text);
  dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
  dm.scds_forn_proc.Params.ParamByName('pSegmento').AsInteger := 1;
  dm.scds_forn_proc.Open;
  if dm.scds_forn_proc.IsEmpty then begin
    MessageDlg('Código não cadastrado.', mtWarning,
    [mbOk], 0);
    exit;
  end;
  cdsDINOMEFORNECEDOR.AsString := dm.scds_forn_procNOMEFORNECEDOR.AsString;
end;

end.
