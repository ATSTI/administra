unit uFiltroCorreio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB, FMTBcd, SqlExpr,
  Provider, DBClient, JvExStdCtrls, JvCombobox, JvDBSearchComboBox, JvEdit,
  JvDBSearchEdit, Mask, JvExMask, JvToolEdit, DBCtrls, JvExDBGrids,
  JvDBGrid, Menus, rpcompobase, rpvclreport,rplabelitem, ExtCtrls;

type
  TFiltroCorreio = class(TForm)
    cdsDep: TClientDataSet;
    dspDep: TDataSetProvider;
    sqlDep: TSQLDataSet;
    dsDep: TDataSource;
    cdsDoc: TClientDataSet;
    dspDoc: TDataSetProvider;
    sqlDoc: TSQLDataSet;
    dsDoc: TDataSource;
    JvDBGrid1: TJvDBGrid;
    PopupMenu1: TPopupMenu;
    Procurar1: TMenuItem;
    Sair1: TMenuItem;
    sqlDepCODDEP: TStringField;
    cdsDepCODDEP: TStringField;
    sqlDocCODDOC: TStringField;
    cdsDocCODDOC: TStringField;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    JvDBSearchEdit2: TJvDBSearchComboBox;
    JvDBSearchEdit1: TJvDBSearchEdit;
    BitBtn1: TBitBtn;
    DBComboBox1: TDBComboBox;
    BitBtn3: TBitBtn;
    DBComboBox2: TDBComboBox;
    BitBtn4: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    dsC: TDataSource;
    cdsC: TClientDataSet;
    cdsCCODOC: TIntegerField;
    cdsCCODFIR: TSmallintField;
    cdsCFOTO: TSmallintField;
    cdsCROLO: TSmallintField;
    cdsCNUMCAI: TFloatField;
    cdsCCODDEP: TStringField;
    cdsCCODSEC: TStringField;
    cdsCCODLOC: TSmallintField;
    cdsCATIVO: TStringField;
    cdsCCODDOC: TStringField;
    cdsCDTINID: TDateField;
    cdsCDTFIND: TDateField;
    cdsCDOCINI: TFloatField;
    cdsCDOCFIN: TFloatField;
    cdsCESTANTE: TSmallintField;
    cdsCPRATEL: TSmallintField;
    cdsCDESCARTE: TFloatField;
    cdsCDTRET: TDateField;
    cdsCNOMERET: TStringField;
    cdsCNDOCRET: TStringField;
    cdsCDTPREV: TDateField;
    cdsCOBSRET: TStringField;
    cdsCOBS: TMemoField;
    cdsCDTINC: TDateField;
    cdsCCOLUNA: TSmallintField;
    cdsCNCAICLI: TFloatField;
    cdsCOBS2: TStringField;
    cdsCTAMANHO: TStringField;
    cdsCA: TStringField;
    cdsCNUMDOC: TStringField;
    cdsCDATA: TStringField;
    cdsCQTDADE: TFloatField;
    cdsCCODIDIO: TSmallintField;
    cdsCDESCR: TStringField;
    cdsCFASE: TStringField;
    cdsCUSUARIO: TStringField;
    cdsCDTUSU: TDateField;
    cdsCHORAUSU: TStringField;
    cdsCREGCAI: TFloatField;
    cdsCJADESC: TStringField;
    dspC: TDataSetProvider;
    sqlC: TSQLDataSet;
    sqlCCODOC: TIntegerField;
    sqlCCODFIR: TSmallintField;
    sqlCFOTO: TSmallintField;
    sqlCROLO: TSmallintField;
    sqlCNUMCAI: TFloatField;
    sqlCCODDEP: TStringField;
    sqlCCODSEC: TStringField;
    sqlCCODLOC: TSmallintField;
    sqlCATIVO: TStringField;
    sqlCCODDOC: TStringField;
    sqlCDTINID: TDateField;
    sqlCDTFIND: TDateField;
    sqlCDOCINI: TFloatField;
    sqlCDOCFIN: TFloatField;
    sqlCESTANTE: TSmallintField;
    sqlCPRATEL: TSmallintField;
    sqlCDESCARTE: TFloatField;
    sqlCDTRET: TDateField;
    sqlCNOMERET: TStringField;
    sqlCNDOCRET: TStringField;
    sqlCDTPREV: TDateField;
    sqlCOBSRET: TStringField;
    sqlCOBS: TMemoField;
    sqlCDTINC: TDateField;
    sqlCCOLUNA: TSmallintField;
    sqlCNCAICLI: TFloatField;
    sqlCOBS2: TStringField;
    sqlCTAMANHO: TStringField;
    sqlCA: TStringField;
    sqlCNUMDOC: TStringField;
    sqlCDATA: TStringField;
    sqlCQTDADE: TFloatField;
    sqlCCODIDIO: TSmallintField;
    sqlCDESCR: TStringField;
    sqlCFASE: TStringField;
    sqlCUSUARIO: TStringField;
    sqlCDTUSU: TDateField;
    sqlCHORAUSU: TStringField;
    sqlCREGCAI: TFloatField;
    sqlCJADESC: TStringField;
    sCliente: TSQLDataSet;
    sClienteCODCLIENTE: TIntegerField;
    sClienteNOMECLIENTE: TStringField;
    pCliente: TDataSetProvider;
    cCliente: TClientDataSet;
    cClienteCODCLIENTE: TIntegerField;
    cClienteNOMECLIENTE: TStringField;
    dCliente: TDataSource;
    VCLReport1: TVCLReport;
    Panel3: TPanel;
    Label8: TLabel;
    Label7: TLabel;
    Panel1: TPanel;
    btnProcurar: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn11: TBitBtn;
    GroupBox1: TGroupBox;
    Label14: TLabel;
    BitBtn7: TBitBtn;
    meDta4: TJvDateEdit;
    meDta3: TJvDateEdit;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    meDta1: TJvDateEdit;
    meDta2: TJvDateEdit;
    BitBtn2: TBitBtn;
    chkAtivo: TCheckBox;
    sqlCNOMECLIENTE: TStringField;
    cdsCNOMECLIENTE: TStringField;
    procedure btnProcurarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure meDta4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
     ordenar : string ;
  end;

var
  FiltroCorreio: TFiltroCorreio;

implementation

uses UDm, uCorreio;

{$R *.dfm}

procedure TFiltroCorreio.btnProcurarClick(Sender: TObject);
 Var SqlTexto ,SqlTex , DataStr  : String;
begin

  datastr:='  /  /    ';
  if(cdsC.Active) then
    cdsC.Close;
  begin
   // cdsC.CommandText:= 'select * from MOVDOC ';
    cdsC.CommandText:= 'select movdoc.codoc,  movdoc.codfir,   movdoc.foto, movdoc.rolo, movdoc.numcai,' +
    'movdoc.coddep, movdoc.codsec, movdoc.codloc,movdoc.ativo, movdoc.coddoc, movdoc.dtinid,'+
    'movdoc.dtfind, movdoc.docini, movdoc.docfin, movdoc.estante,  movdoc.pratel, movdoc.descarte,'+
    'movdoc.dtret, movdoc.nomeret, movdoc.ndocret, movdoc.dtprev, movdoc.obsret, trim(movdoc.obs) as obs,'+
    'movdoc.dtinc,movdoc.coluna,movdoc.ncaicli,movdoc.obs2,movdoc.tamanho, movdoc.a,movdoc.numdoc,'+
    'movdoc.data, movdoc.qtdade, movdoc.codidio,movdoc.descr,movdoc.fase,movdoc.usuario,'+
    'movdoc.dtusu,movdoc.horausu, movdoc.regcai,movdoc.jadesc, clientes.nomecliente'+
    ' from movdoc '+
    ' inner join clientes on (movdoc.codfir = clientes.codcliente)';


  // CODIGO DA EMPRESA
  if JvDBSearchEdit1.Text <> '' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where movdoc.CODFIR = '
    else
      sqlTexto := sqlTexto + ' and movdoc.CODFIR = ';
      sqlTexto := sqlTexto + '' + JvDBSearchEdit1.Text + '';
  end;
  // DATA FINAL ARQUIVO
  if (sqlTexto = '') then
  begin
    if ((medta1.Text <> '  /  /    ') and (medta2.Text <> '  /  /    ')) then
    begin
       sqlTexto := 'WHERE movdoc.DTFIND between ' + QuotedStr(FormatDateTime('mm/dd/yyyy', StrToDate(meDta1.Text)));
       sqlTexto:= sqlTexto + ' and ' + QuotedStr(FormatDateTime('mm/dd/yyyy', StrToDate(medta2.Text)));
    end;
  end
  else
  begin
    if ((medta1.Text <> '  /  /    ') and (medta2.Text <> '  /  /    ')) then
    begin
      sqlTexto := sqlTexto + ' and movdoc.DTFIND between ' + QuotedStr(FormatDateTime('mm/dd/yyyy', StrToDate(meDta1.Text)));
      sqlTexto := sqlTexto + ' and ' + QuotedStr(FormatDateTime('mm/dd/yyyy', StrToDate(medta2.Text)));
    end;
  end;

  // DATA INCLUSAO CX ARQUIVO
  if (sqlTexto = '') then
  begin
    if ((medta3.Text <> '  /  /    ') and (medta4.Text <> '  /  /    ')) then
    begin
       sqlTexto := 'WHERE movdoc.DTINC between ' + QuotedStr(FormatDateTime('mm/dd/yyyy', StrToDate(meDta3.Text)));
       sqlTexto:= sqlTexto + ' and ' + QuotedStr(FormatDateTime('mm/dd/yyyy', StrToDate(medta4.Text)));
    end;
  end
  else
  begin
    if ((medta3.Text <> '  /  /    ') and (medta4.Text <> '  /  /    ')) then
    begin
      sqlTexto := sqlTexto + ' and movdoc.DTINC between ' + QuotedStr(FormatDateTime('mm/dd/yyyy', StrToDate(meDta3.Text)));
      sqlTexto := sqlTexto + ' and ' + QuotedStr(FormatDateTime('mm/dd/yyyy', StrToDate(medta4.Text)));
    end;
  end;

  // DEPARTAMENTO
  if (DBComboBox1.Text <> '') then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where movdoc.CODDEP = '
    else
      sqlTexto := sqlTexto + ' and movdoc.CODDEP = ';
      sqlTexto := sqlTexto + QuotedStr(DBComboBox1.Text);
  end;
  // DOCUMENTO
  if (DBComboBox2.Text <> '') then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where movdoc.CODDOC = '
    else
      sqlTexto := sqlTexto + ' and movdoc.CODDOC = ';
      sqlTexto := sqlTexto + QuotedStr(DBComboBox2.Text);
  end;
  //OBS
  if Edit1.Text <> '' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where movdoc.OBS LIKE '
    else
      sqlTexto := sqlTexto + ' and movdoc.OBS LIKE';
      sqlTexto := sqlTexto +  QuotedStr('%' + Edit1.Text + '%');
  end;
  // N º DA CAIXA
  if (Edit2.Text <> '') then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where movdoc.NUMCAI = '
    else
      sqlTexto := sqlTexto + ' and movdoc.NUMCAI = ';
      sqlTexto := sqlTexto + QuotedStr(Edit2.Text);
  end;

  // ATIVO
  if (chkAtivo.Checked) then
  begin
    if sqlTexto = '' then
      sqlTexto := sqlTexto + ' where movdoc.ATIVO = '
    else
      sqlTexto := sqlTexto + ' and movdoc.ATIVO = ';
      sqlTexto := sqlTexto + QuotedStr('S');
  end;

  cdsC.CommandText := cdsC.CommandText + sqlTexto + ' order by clientes.codcliente ,movdoc.NUMCAI' ;

  cdsC.Open;

  Label7.Caption := IntToStr(cdsC.RecordCount);
  end ;
end;

procedure TFiltroCorreio.FormShow(Sender: TObject);
begin
  if(cCliente.Active) then
    cCliente.Close;
    cCliente.Open;
  if(cdsDep.Active) then
    cdsDep.Close;
  cdsDep.Open;

  While not (cdsDep.Eof) do
  begin
    DBComboBox1.Items.Add(cdsDepCODDEP.AsString);
    cdsDep.Next;
   end;

  if(cdsDoc.Active) then
    cdsDoc.Close;
  cdsDoc.Open;

  While not (cdsDoc.Eof) do
  begin
    DBComboBox2.Items.Add(cdsDocCODDOC.AsString);
    cdsDoc.Next;
  end;
  DBComboBox1.Text := '';
  DBComboBox2.Text := '';
  JvDBSearchEdit1.Text := '';
  JvDBSearchEdit2.Text := '';
end;

procedure TFiltroCorreio.BitBtn1Click(Sender: TObject);
begin
  JvDBSearchEdit1.Text := '';
  JvDBSearchEdit2.Text := '';
end;

procedure TFiltroCorreio.BitBtn2Click(Sender: TObject);
begin
  meDta1.Text:='';
  meDta2.Text:='';
end;

procedure TFiltroCorreio.BitBtn3Click(Sender: TObject);
begin
  DBComboBox1.Text := '';
end;

procedure TFiltroCorreio.BitBtn4Click(Sender: TObject);
begin
  DBComboBox2.Text := '';
end;

procedure TFiltroCorreio.DBGrid1TitleClick(Column: TColumn);
begin
    cdsC.IndexFieldNames := Column.FieldName;
    ordenar := Column.FieldName;
end;

procedure TFiltroCorreio.BitBtn5Click(Sender: TObject);
 Var SqlT : String;
begin

  if(fCorreio.cdsCorreio.Active) then
    fCorreio.cdsCorreio.Close;
  fCorreio.cdsCorreio.Params[0].AsInteger := cdsCCODOC.AsInteger;

  if(fCorreio.cdsT.Active) then
    fCorreio.cdsT.Close;
  fCorreio.cdsT.Params[0].AsString := cdsCCODDOC.AsString;
  fCorreio.cdsT.Open;
  fCorreio.Edit1.Text := fCorreio.cdsTDESCR.AsString;

  if(fCorreio.cdsCa.Active) then
    fCorreio.cdsCa.Close;
  fCorreio.cdsCa.Params[0].AsString := cdsCCODDEP.AsString;
  fCorreio.cdsCa.Open;
  fCorreio.Edit2.Text := fCorreio.cdsCaDESCR.AsString;

  if(fCorreio.cdsS.Active) then
    fCorreio.cdsS.Close;
  fCorreio.cdsS.Params[0].AsString := cdsCCODSEC.AsString;
  fCorreio.cdsS.Open;
  fCorreio.Edit3.Text := fCorreio.cdsSDESCR.AsString;

  if(fCorreio.cdsDetR.Active) then
    fCorreio.cdsDetR.Close;
  fCorreio.cdsDetR.Params[0].AsInteger := cdsCCODFIR.AsInteger;
  fCorreio.cdsDetR.Params[1].AsInteger := cdsCNUMCAI.AsInteger;
  fCorreio.cdsDetR.Open;

  if(fCorreio.cdsDetD.Active) then
    fCorreio.cdsDetD.Close;
  fCorreio.cdsDetD.Params[0].AsInteger := cdsCCODFIR.AsInteger;
  fCorreio.cdsDetD.Open;

  fCorreio.Label37.Caption :=  JvDBSearchEdit1.Text;
  fCorreio.Label38.Caption :=  JvDBSearchEdit2.Text;

  if(fCorreio.DBEdit3.Text <> '')then
  fCorreio.Label36.Caption :=  'CX : ' + fCorreio.DBEdit3.Text;

  fCorreio.cdsCorreio.Open;
  if(JvDBSearchEdit1.Text <> '') then
  fCorreio.btnRetirada.Enabled := True;

  FiltroCorreio.Close;
end;

procedure TFiltroCorreio.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TFiltroCorreio.BitBtn6Click(Sender: TObject);
var nomecli :TRpLabel;
begin
  VCLReport1.FileName := str_relatorio + 'movdoc.rep';
  VCLReport1.Title := VCLReport1.Filename;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  //  VCLReport1.Report.Params.ParamByName('codfir').Value := StrToInt(JvDBSearchEdit1.Text);
  VCLReport1.Report.DataInfo.Items[0].SQL:= cdsC.CommandText;
 {
  nomecli  := TRpLabel(VCLReport1.Report.FindComponent('TRpLabel3'));

  // Tipo de data
  if((JvDBSearchEdit2.Text <> '')or(JvDBSearchEdit2.Text = '')) then
  begin
    nomecli.Text := JvDBSearchEdit2.Text;
  end;
 }
  VCLReport1.Execute;
end;

procedure TFiltroCorreio.BitBtn7Click(Sender: TObject);
begin
  meDta3.Text:='';
  meDta4.Text:='';
end;

procedure TFiltroCorreio.meDta4KeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   btnProcurar.Click;
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;

end;

procedure TFiltroCorreio.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   btnProcurar.Click;
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;

end;

end.
