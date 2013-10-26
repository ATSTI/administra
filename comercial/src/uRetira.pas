unit uRetira;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, StdCtrls, Mask, DBCtrls, DBClient, Provider, SqlExpr,
  Buttons,DBxPress, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, ExtCtrls, JvDBControls, Menus, rpcompobase, rpvclreport;

type
  TfRetira = class(TForm)
    sdsCorreio: TSQLDataSet;
    sdsCorreioCODOC: TIntegerField;
    sdsCorreioCODFIR: TSmallintField;
    sdsCorreioFOTO: TSmallintField;
    sdsCorreioROLO: TSmallintField;
    sdsCorreioNUMCAI: TFloatField;
    sdsCorreioCODDEP: TStringField;
    sdsCorreioCODSEC: TStringField;
    sdsCorreioCODLOC: TSmallintField;
    sdsCorreioATIVO: TStringField;
    sdsCorreioCODDOC: TStringField;
    sdsCorreioDTINID: TDateField;
    sdsCorreioDTFIND: TDateField;
    sdsCorreioDOCINI: TFloatField;
    sdsCorreioDOCFIN: TFloatField;
    sdsCorreioESTANTE: TSmallintField;
    sdsCorreioPRATEL: TSmallintField;
    sdsCorreioDTRET: TDateField;
    sdsCorreioNOMERET: TStringField;
    sdsCorreioNDOCRET: TStringField;
    sdsCorreioDTPREV: TDateField;
    sdsCorreioOBSRET: TStringField;
    sdsCorreioOBS: TMemoField;
    sdsCorreioDTINC: TDateField;
    sdsCorreioCOLUNA: TSmallintField;
    sdsCorreioNCAICLI: TFloatField;
    sdsCorreioOBS2: TStringField;
    sdsCorreioTAMANHO: TStringField;
    sdsCorreioA: TStringField;
    sdsCorreioNUMDOC: TStringField;
    sdsCorreioDATA: TStringField;
    sdsCorreioQTDADE: TFloatField;
    sdsCorreioCODIDIO: TSmallintField;
    sdsCorreioDESCR: TStringField;
    sdsCorreioFASE: TStringField;
    sdsCorreioUSUARIO: TStringField;
    sdsCorreioDTUSU: TDateField;
    sdsCorreioHORAUSU: TStringField;
    sdsCorreioREGCAI: TFloatField;
    sdsCorreioJADESC: TStringField;
    sdsCorreioRAZAOSOCIAL: TStringField;
    dspCorreio: TDataSetProvider;
    cdsCorreio: TClientDataSet;
    cdsCorreioCODOC: TIntegerField;
    cdsCorreioCODFIR: TSmallintField;
    cdsCorreioFOTO: TSmallintField;
    cdsCorreioROLO: TSmallintField;
    cdsCorreioNUMCAI: TFloatField;
    cdsCorreioCODDEP: TStringField;
    cdsCorreioCODSEC: TStringField;
    cdsCorreioCODLOC: TSmallintField;
    cdsCorreioATIVO: TStringField;
    cdsCorreioCODDOC: TStringField;
    cdsCorreioDTINID: TDateField;
    cdsCorreioDTFIND: TDateField;
    cdsCorreioDOCINI: TFloatField;
    cdsCorreioDOCFIN: TFloatField;
    cdsCorreioESTANTE: TSmallintField;
    cdsCorreioPRATEL: TSmallintField;
    cdsCorreioDTRET: TDateField;
    cdsCorreioNOMERET: TStringField;
    cdsCorreioNDOCRET: TStringField;
    cdsCorreioDTPREV: TDateField;
    cdsCorreioOBSRET: TStringField;
    cdsCorreioOBS: TMemoField;
    cdsCorreioDTINC: TDateField;
    cdsCorreioCOLUNA: TSmallintField;
    cdsCorreioNCAICLI: TFloatField;
    cdsCorreioOBS2: TStringField;
    cdsCorreioTAMANHO: TStringField;
    cdsCorreioA: TStringField;
    cdsCorreioNUMDOC: TStringField;
    cdsCorreioDATA: TStringField;
    cdsCorreioQTDADE: TFloatField;
    cdsCorreioCODIDIO: TSmallintField;
    cdsCorreioDESCR: TStringField;
    cdsCorreioFASE: TStringField;
    cdsCorreioUSUARIO: TStringField;
    cdsCorreioDTUSU: TDateField;
    cdsCorreioHORAUSU: TStringField;
    cdsCorreioREGCAI: TFloatField;
    cdsCorreioJADESC: TStringField;
    cdsCorreioRAZAOSOCIAL: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    dsr: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    btnGravar: TBitBtn;
    btnSair: TBitBtn;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    sdsCorreioDESCARTE: TFloatField;
    cdsCorreioDESCARTE: TFloatField;
    cdsDet: TClientDataSet;
    dspDet: TDataSetProvider;
    dstDet: TDataSource;
    sqdDet: TSQLDataSet;
    DBEdit12: TDBEdit;
    DBMemo1: TDBMemo;
    btnIncluir: TBitBtn;
    btnCancelar: TBitBtn;
    sqdDetCODOC: TIntegerField;
    sqdDetCODDETALHE: TIntegerField;
    sqdDetCODFIR: TIntegerField;
    sqdDetNOMERET: TStringField;
    sqdDetNDOCRET: TStringField;
    sqdDetDTPREV: TDateField;
    sqdDetDTRET: TDateField;
    sqdDetOBSRET: TStringField;
    sqdDetOBS: TMemoField;
    sqdDetTIPO: TStringField;
    cdsDetCODOC: TIntegerField;
    cdsDetCODDETALHE: TIntegerField;
    cdsDetCODFIR: TIntegerField;
    cdsDetNOMERET: TStringField;
    cdsDetNDOCRET: TStringField;
    cdsDetDTPREV: TDateField;
    cdsDetDTRET: TDateField;
    cdsDetOBSRET: TStringField;
    cdsDetOBS: TMemoField;
    cdsDetTIPO: TStringField;
    Label13: TLabel;
    DBEdit4: TDBEdit;
    Label14: TLabel;
    DBEdit5: TJvDBDateEdit;
    DBEdit3: TJvDBDateEdit;
    PopupMenu1: TPopupMenu;
    Procurar1: TMenuItem;
    Incuir1: TMenuItem;
    Gravar1: TMenuItem;
    Excluir1: TMenuItem;
    Cancelar1: TMenuItem;
    Sair1: TMenuItem;
    BitBtn1: TBitBtn;
    VCLReport1: TVCLReport;
    Label15: TLabel;
    Edit1: TEdit;
    procedure btnGravarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRetira: TfRetira;

implementation

uses UDm, uCorreio;

{$R *.dfm}

procedure TfRetira.btnGravarClick(Sender: TObject);
var strSql : string;
    TD: TTransactionDesc;
    MOVDET : Integer;
begin

  if dstDet.DataSet.State in [dsInsert] then
  begin

  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_MOVDOCDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  MOVDET := dm.c_6_genid.Fields[0].AsInteger;

  dm.c_6_genid.Close;

  strSql := 'INSERT INTO MOVDOCDET (CODOC,CODDETALHE,CODFIR,NOMERET,NDOCRET,DTPREV,DTRET,OBSRET, OBS ,TIPO ) VALUES ( ' +
         IntToStr(cdsCorreioCODOC.AsInteger) + ',' ;
  strSql := strSql + IntToStr(MOVDET) + ',';

  strSql := strSql +  QuotedStr(DBEdit4.Text) + ',';

  strSql := strSql +  QuotedStr(DBEdit1.Text) + ',';

  strSql := strSql +  QuotedStr(DBEdit2.Text) + ',';


  if((DBEdit3.Text = '  /  /    ') or(DBEdit3.Text = '')) then
  begin
    strSql := strSql + ' null ,';
  end
  else begin
    strSql := strSql + QuotedStr(FormatDateTime('mm/dd/yy', StrToDate(DBEdit3.Text))) + ',';
  end;

  if((DBEdit5.Text = '  /  /    ') or(DBEdit5.Text = '')) then
  begin
    strSql := strSql + ' null ,';
  end
  else begin
    strSql := strSql + QuotedStr(FormatDateTime('mm/dd/yy', StrToDate(DBEdit5.Text))) + ',';
  end;
  strSql := strSql +  QuotedStr(DBEdit12.Text) + ',';

  strSql := strSql +  QuotedStr(DBMemo1.Text) + ',';

  if(Label14.Caption = 'DEVOLUÇÂO') then
  strSql := strSql + QuotedStr('D')
  else
  strSql := strSql + QuotedStr('R');
  strSql := strSql + ')' ;

  dm.sqlsisAdimin.StartTransaction(TD);
  dm.sqlsisAdimin.ExecuteDirect(strSql);
  Try
    dm.sqlsisAdimin.Commit(TD);
    MessageDlg('Gravado com Sucesso', mtConfirmation, [mbOK], 0);
    btnGravar.Visible := False;
    Edit1.Text := IntToStr(MOVDET);
    fCorreio.cdsDetR.Refresh;
    fCorreio.cdsDetD.Refresh;
  except
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro ao Gravar Alteração.', mtError,[mbOk], 0);
  end;

 end;

{
    if dsr.DataSet.State in [dsEdit] then
    begin
      strSql := 'UPDATE MOVDOCDET SET NOMERET = ';
      strSql := strSql +  QuotedStr(DBEdit1.Text) + ',';
      strSql := strSql + 'NDOCRET = ';
      strSql := strSql + QuotedStr(DBEdit2.Text) + ',';

      if(DBEdit3.Text = '  /  /    ') then
      begin
        strSql := strSql + ' null ,';
      end
      else begin
        strSql := strSql + QuotedStr(FormatDateTime('mm/dd/yy', StrToDate(DBEdit3.Text))) + ',';
      end;

      if(DBEdit5.Text = '  /  /    ') then
      begin
        strSql := strSql + ' null ,';
       end
      else begin
        strSql := strSql + QuotedStr(FormatDateTime('mm/dd/yy', StrToDate(DBEdit5.Text))) + ',';
      end;

      strSql := strSql + 'OBSRET = ';
      strSql := strSql + QuotedStr(DBEdit4.Text) + ' ';

      strSql := strSql + ' where CODOC = ';
      strSql := strSql +  IntToStr(cdsCorreioCODOC.AsInteger);

      dm.sqlsisAdimin.StartTransaction(TD);
      dm.sqlsisAdimin.ExecuteDirect(strSql);
       Try
        dm.sqlsisAdimin.Commit(TD);
       except
        dm.sqlsisAdimin.Rollback(TD);
        MessageDlg('Erro ao Gravar Alteração.', mtError,
           [mbOk], 0);
       end;
    end;
 }
end;

procedure TfRetira.btnSairClick(Sender: TObject);
begin
 close;
end;

procedure TfRetira.BitBtn2Click(Sender: TObject);
begin
  DBEdit5.Clear;
  cdsCorreio.Edit;
end;

procedure TfRetira.BitBtn3Click(Sender: TObject);
begin
  DBEdit3.Clear;
  cdsCorreio.Edit;
end;

procedure TfRetira.btnIncluirClick(Sender: TObject);
begin
  if(cdsDet.Active) then
  cdsDet.Close;
  cdsDet.Open;
  cdsDet.Insert;
  btnIncluir.Visible := False;
  btnGravar.Visible := True;
  DBEdit1.SetFocus;
end;

procedure TfRetira.FormShow(Sender: TObject);
begin
  btnGravar.Visible := False;
end;

procedure TfRetira.btnCancelarClick(Sender: TObject);
begin
  cdsDet.Cancel;
  cdsDet.Close;
  btnIncluir.Visible := True;
  btnGravar.Visible := False;
end;

procedure TfRetira.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfRetira.BitBtn1Click(Sender: TObject);
begin
  VCLReport1.FileName := str_relatorio + 'retira.rep';
  VCLReport1.Title := VCLReport1.Filename;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('pcod').Value := StrToInt(Edit1.Text);
  VCLReport1.Execute;
end;

end.
