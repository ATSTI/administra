unit uDadosImportacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, Provider, DBClient, StdCtrls, Buttons,
  Grids, DBGrids, DBXpress, ExtCtrls, MMJPanel;

type
  TfDadosImportacao = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cdsDI: TClientDataSet;
    dspDI: TDataSetProvider;
    dtsrcDI: TDataSource;
    dtsrcAdic: TDataSource;
    dspAdic: TDataSetProvider;
    cdsAdic: TClientDataSet;
    sdsAdic: TSQLDataSet;
    sdsDI: TSQLDataSet;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    sdsDIDI_CODDI: TIntegerField;
    sdsDIDI_NUMDI: TStringField;
    sdsDIDI_DATA: TDateField;
    sdsDIDI_LOCALDESEMB: TStringField;
    sdsDIDI_UFDESEMB: TStringField;
    sdsDIDI_DATADESEMB: TDateField;
    sdsDIDI_CODEXPORTADOR: TStringField;
    cdsDIDI_CODDI: TIntegerField;
    cdsDIDI_NUMDI: TStringField;
    cdsDIDI_DATA: TDateField;
    cdsDIDI_LOCALDESEMB: TStringField;
    cdsDIDI_UFDESEMB: TStringField;
    cdsDIDI_DATADESEMB: TDateField;
    cdsDIDI_CODEXPORTADOR: TStringField;
    sdsAdicADIC_CODDET: TIntegerField;
    sdsAdicADIC_CODDI: TIntegerField;
    sdsAdicADIC_NADICAO: TIntegerField;
    sdsAdicADIC_NSEQUEN: TIntegerField;
    sdsAdicADIC_CODFAB: TStringField;
    sdsAdicADIC_VDESC: TIntegerField;
    cdsAdicADIC_CODDET: TIntegerField;
    cdsAdicADIC_CODDI: TIntegerField;
    cdsAdicADIC_NADICAO: TIntegerField;
    cdsAdicADIC_NSEQUEN: TIntegerField;
    cdsAdicADIC_CODFAB: TStringField;
    cdsAdicADIC_VDESC: TIntegerField;
    sdsAdicDESCPRODUTO: TStringField;
    sdsAdicNOTAFISCAL: TIntegerField;
    cdsAdicDESCPRODUTO: TStringField;
    cdsAdicNOTAFISCAL: TIntegerField;
    MMJPanel1: TMMJPanel;
    btnSair: TBitBtn;
    MMJPanel2: TMMJPanel;
    Label3: TLabel;
    Label4: TLabel;
    sdsDINOTASERIE: TStringField;
    sdsDICODMOVIMENTO: TIntegerField;
    cdsDINOTASERIE: TStringField;
    cdsDICODMOVIMENTO: TIntegerField;
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    notaSerieDi : String;
    codMovimentoDi : Integer;
    codExportadorDi : Integer;
    { Public declarations }
  end;

var
  fDadosImportacao: TfDadosImportacao;

implementation

uses UDm, uDeclaracaoImportacao, uDIAdicao;

{$R *.dfm}

procedure TfDadosImportacao.BitBtn1Click(Sender: TObject);
begin
  fDeclaracaoImportacao := TfDeclaracaoImportacao.Create(Application);
  try
    fDeclaracaoImportacao.notaSerieDec    := notaSerieDi;
    fDeclaracaoImportacao.codMovimentoDec := codMovimentoDi;
    fDeclaracaoImportacao.codExportadorDec:= codExportadorDi;
    fDeclaracaoImportacao.ShowModal;
  finally
    fDeclaracaoImportacao.Free;
    if(cdsDI.Active) then
     cdsDI.Close;
    cdsDI.Open;
  end;
end;

procedure TfDadosImportacao.DBGrid1DblClick(Sender: TObject);
begin
  fDeclaracaoImportacao := TfDeclaracaoImportacao.Create(Application);
  try
    if (fDeclaracaoImportacao.cdsDI.Active) then
      fDeclaracaoImportacao.cdsDI.Close;
    fDeclaracaoImportacao.cdsDI.Params[0].AsInteger := cdsDIDI_CODDI.AsInteger;
    fDeclaracaoImportacao.cdsDI.Open;
    fDeclaracaoImportacao.ShowModal;
  finally
    fDeclaracaoImportacao.Free;
    if(cdsDI.Active) then
     cdsDI.Close;
    cdsDI.Open;
  end;
end;

procedure TfDadosImportacao.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfDadosImportacao.BitBtn2Click(Sender: TObject);
var cm : string;
var TD: TTransactionDesc;
begin
  if  MessageDlg('Confirma a exclusão da DI ''' + cdsDIDI_NUMDI.AsString + '''?',
    mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
//  dtsrcDI.DataSet.Delete;
// (dtsrcDI.DataSet as TClientDataSet).ApplyUpdates(0);
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  cm := 'delete From DECLARACAOIMPORTACAO where DI_CODDI = ' + IntToStr(cdsDIDI_CODDI.AsInteger);
  dm.sqlsisAdimin.ExecuteDirect(cm);
  dm.sqlsisAdimin.Commit(TD);
  cdsDI.Close;
  cdsDI.Open;
end;

procedure TfDadosImportacao.BitBtn4Click(Sender: TObject);
var cm : string;
var TD: TTransactionDesc;
begin
  if  MessageDlg('Confirma a exclusão da Adição ''' + IntToStr(cdsAdicADIC_NADICAO.AsInteger) + ''' ?',
    mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
//  dtsrcAdic.DataSet.Delete;
//  (dtsrcAdic.DataSet as TClientDataSet).ApplyUpdates(0);
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  cm := 'delete From DIADICAO where ADIC_CODDET = ' + IntToStr(cdsAdicADIC_CODDET.AsInteger);
  dm.sqlsisAdimin.ExecuteDirect(cm);
  dm.sqlsisAdimin.Commit(TD);
  cdsAdic.Close;
  cdsAdic.Open;
end;

procedure TfDadosImportacao.FormShow(Sender: TObject);
begin
  if ((cdsDI.Active) and (cdsDI.IsEmpty)) then
  begin
    BitBtn1.Click;
  end
  else begin
    if (not cdsDi.Active) then
      cdsDI.Open;
  end;
end;

procedure TfDadosImportacao.DBGrid1CellClick(Column: TColumn);
begin
  if (cdsAdic.Active) then
    cdsAdic.Close;
  cdsAdic.Params[0].AsInteger := cdsDIDI_CODDI.AsInteger;
  cdsAdic.Open;
end;

procedure TfDadosImportacao.BitBtn3Click(Sender: TObject);
begin
  if(not cdsDIDI_CODDI.IsNull) then
  Begin
    fDIAdicao := TfDIAdicao.Create(Application);
    try
      fDIAdicao.codMovimentoDia := codMovimentoDi;
      fDIAdicao.ShowModal;
    finally
      fDIAdicao.Free;
      if(cdsAdic.Active) then
       cdsAdic.Close;
      cdsAdic.Params[0].AsInteger := cdsDIDI_CODDI.AsInteger;
      cdsAdic.Open;
    end;
  end
  else
    MessageDlg('Não há DI selecionada', mtWarning, [mbOK], 0);
end;

procedure TfDadosImportacao.DBGrid2DblClick(Sender: TObject);
begin
  fDIAdicao := TfDIAdicao.Create(Application);
  try
    fDIAdicao.cdsMov_Det.Params[0].AsInteger := codMovimentoDi;
    fDIAdicao.cdsMov_Det.Open;
    if (fDIAdicao.cdsMov_Det.IsEmpty) then
    begin
      fDIAdicao.Label2.Font.Color := clRed;
      fDIAdicao.Label2.Caption := 'ALTERAÇÃO NÃO PERMITIDA , NF JÁ ENVIADA.'
    end;
    if (fDIAdicao.cdsAdic.Active) then
      fDIAdicao.cdsAdic.Close;
    fDIAdicao.cdsAdic.Params[0].AsInteger := fDIAdicao.cdsMov_DetCODDETALHE.AsInteger;
    fDIAdicao.cdsAdic.Open;

    fDIAdicao.ShowModal;
    fDIAdicao.Label2.Font.Color := clWhite;
  finally
    fDIAdicao.Free;
    if(cdsAdic.Active) then
     cdsAdic.Close;
    cdsAdic.Open;
  end;
end;

end.
