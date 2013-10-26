unit uDIAdicao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  FMTBcd, Mask, DBCtrls, SqlExpr, Provider, DBClient, Grids, DBGrids, DBXpress;

type
  TfDIAdicao = class(TfPai)
    cdsAdic: TClientDataSet;
    dspAdic: TDataSetProvider;
    sdsAdic: TSQLDataSet;
    cdsMov_Det: TClientDataSet;
    dspMov_Det: TDataSetProvider;
    dtsrcMov_Det: TDataSource;
    sdsMov_Det: TSQLDataSet;
    sdsMov_DetNOTAFISCAL: TIntegerField;
    sdsMov_DetCODPRO: TStringField;
    sdsMov_DetDESCPRODUTO: TStringField;
    sdsMov_DetVALTOTAL: TFloatField;
    sdsMov_DetCODFORNECEDOR: TIntegerField;
    sdsMov_DetRAZAOSOCIAL: TStringField;
    cdsMov_DetNOTAFISCAL: TIntegerField;
    cdsMov_DetCODPRO: TStringField;
    cdsMov_DetDESCPRODUTO: TStringField;
    cdsMov_DetVALTOTAL: TFloatField;
    cdsMov_DetCODFORNECEDOR: TIntegerField;
    cdsMov_DetRAZAOSOCIAL: TStringField;
    sdsMov_DetCODDETALHE: TIntegerField;
    cdsMov_DetCODDETALHE: TIntegerField;
    sdsAdicADIC_CODDET: TIntegerField;
    sdsAdicADIC_CODDI: TIntegerField;
    sdsAdicADIC_NADICAO: TIntegerField;
    sdsAdicADIC_NSEQUEN: TIntegerField;
    sdsAdicADIC_CODFAB: TStringField;
    sdsAdicADIC_VDESC: TIntegerField;
    sdsAdicDESCPRODUTO: TStringField;
    cdsAdicADIC_CODDET: TIntegerField;
    cdsAdicADIC_CODDI: TIntegerField;
    cdsAdicADIC_NADICAO: TIntegerField;
    cdsAdicADIC_NSEQUEN: TIntegerField;
    cdsAdicADIC_CODFAB: TStringField;
    cdsAdicADIC_VDESC: TIntegerField;
    cdsAdicDESCPRODUTO: TStringField;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    procedure btnIncluirClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    codMovimentoDia: integer;
    { Public declarations }
  end;

var
  fDIAdicao: TfDIAdicao;

implementation

uses UDm, uDadosImportacao, UDMNF;

{$R *.dfm}

procedure TfDIAdicao.btnIncluirClick(Sender: TObject);
begin
  inherited;
  cdsAdicADIC_CODDI.AsInteger  := fDadosImportacao.cdsDIDI_CODDI.AsInteger;
  cdsAdicADIC_CODDET.AsInteger := cdsMov_DetCODDETALHE.AsInteger;
  cdsMov_Det.Params[0].AsInteger := DMNF.cds_MovimentoCODMOVIMENTO.AsInteger;
  cdsMov_Det.Open;
  dbEdit1.SetFocus;
end;

procedure TfDIAdicao.DBGrid1CellClick(Column: TColumn);
var numl: integer;
begin
  inherited;
  numl := cdsMov_Det.RecNo;
  if (cdsAdic.Active) then
    cdsAdic.Close;
  cdsAdic.Params[0].AsInteger := cdsMov_DetCODDETALHE.AsInteger;
  cdsAdic.Open;
  cdsMov_Det.RecNo := numl;
  //if (cdsAdic.State in [dsBrowse, dsInactive]) then
  //  cdsAdic.Edit;
  //cdsAdicADIC_CODDET.AsInteger :=
end;

procedure TfDIAdicao.FormCreate(Sender: TObject);
begin
  //inherited;
end;

procedure TfDIAdicao.FormShow(Sender: TObject);
begin
  //  inherited;
  //cdsMov_Det.Open;
end;

procedure TfDIAdicao.btnGravarClick(Sender: TObject);
var strS: String;
    TD : TTransactionDesc;
    linha:integer;
begin
  inherited;
  linha := cdsMov_Det.RecNo;
  if (not cdsMov_Det.IsEmpty) then
  begin
    try
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      dm.sqlsisAdimin.StartTransaction(TD);
      strS := 'UPDATE DIADICAO SET ' +
      '  ADIC_NADICAO = ' + IntToStr(cdsAdicADIC_NADICAO.AsInteger) +
      ', ADIC_NSEQUEN = ' + IntToStr(cdsAdicADIC_NSEQUEN.AsInteger) +
      ', ADIC_CODFAB  = ' + QuotedStr(cdsAdicADIC_CODFAB.AsString) +
      ', ADIC_VDESC   = ' + IntToStr(cdsAdicADIC_VDESC.AsInteger) +
      ' WHERE ADIC_CODDET = ' + IntToStr(cdsMov_DetCODDETALHE.AsInteger) +
      '   AND ADIC_CODDI  = ' + IntToStr(cdsAdicADIC_CODDI.AsInteger);
      dm.sqlsisAdimin.ExecuteDirect(strS);
      dm.sqlsisAdimin.Commit(TD);
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
      end;
    end;
  end;
  if (cdsMov_Det.Active) then
    cdsMov_det.Close;
  cdsMov_Det.Params[0].AsInteger := DMNF.cds_MovimentoCODMOVIMENTO.AsInteger;
  cdsMov_Det.Open;
  cdsMov_Det.RecNo := linha; 
end;

procedure TfDIAdicao.btnExcluirClick(Sender: TObject);
var cm : string;
var TD: TTransactionDesc;
begin
//  inherited;
  if  MessageDlg('Confirma a exclusão da Adição ''' + IntToStr(cdsAdicADIC_NADICAO.AsInteger) + ''' ?',
    mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
//  dtsrcDI.DataSet.Delete;
// (dtsrcDI.DataSet as TClientDataSet).ApplyUpdates(0);
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  cm := 'delete From DIADICAO where ADIC_CODDET = ' + IntToStr(cdsAdicADIC_CODDET.AsInteger);
  dm.sqlsisAdimin.ExecuteDirect(cm);
  dm.sqlsisAdimin.Commit(TD);
  cdsMov_Det.Close;
  cdsMov_Det.Open;
end;

end.
