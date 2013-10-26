unit ufplanocontas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  FMTBcd, Grids, DBGrids, Mask, DBCtrls, DBClient, Provider, SqlExpr,
  rpcompobase, rpvclreport, JvExControls, JvLabel;

type
  TfPlanoContas = class(TfPai)
    sds_desp: TSQLDataSet;
    dsp_desp: TDataSetProvider;
    cds_desp: TClientDataSet;
    cds_despCODIGO: TIntegerField;
    cds_despNOME: TStringField;
    cds_despCONTA: TStringField;
    sds_sub: TSQLDataSet;
    dsp_sub: TDataSetProvider;
    cds_sub: TClientDataSet;
    cds_subNOME: TStringField;
    cds_subCONTA: TStringField;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    ComboBox2: TComboBox;
    Label6: TLabel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    ComboBox3: TComboBox;
    Label7: TLabel;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    Label10: TLabel;
    DBEdit4: TDBEdit;
    Label11: TLabel;
    DBEdit5: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBGrid1: TDBGrid;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    btnImprimir: TBitBtn;
    rep: TVCLReport;
    dbcbbRATEIO: TDBComboBox;
    lbl1: TLabel;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure ComboBox2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
  private
    str_sql2: string;
    { Private declarations }
  public
    codConta, NomeConta, numConta:string;
    { Public declarations }
  end;

var
  fPlanoContas: TfPlanoContas;

implementation

uses UDm, uFiltro_forn_plano, uFamilia, uCategoria, sCtrlResize;

{$R *.dfm}

procedure TfPlanoContas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  codConta := DM.c_1_planocCODREDUZIDO.AsString;
  NomeConta := DM.c_1_planocNOME.AsString;
  numConta := DM.c_1_planocCONTA.AsString;
  varconta_cod := DM.c_1_planocCODREDUZIDO.AsString;
  varconta_nome := DM.c_1_planocNOME.AsString;
  codigo_conta := DM.c_1_planocCODIGO.AsInteger;
  varconta := DM.c_1_planocCONTA.AsString;
  com_rateio := DM.c_1_planocRATEIO.AsString;
  inherited;
  if DM.c_1_planoc.Active then
   DM.c_1_planoc.Close;
end;

procedure TfPlanoContas.FormCreate(Sender: TObject);
 Var str_sql: String;
begin
  //inherited;
  if DM.c_1_planoc.Active then
    DM.c_1_planoc.Close;
  str_sql := 'Select FIRST 500 * from PLANO ';
  str_sql := str_sql + 'WHERE CONSOLIDA <> ''S'' order by NOME';
  DM.c_1_planoc.CommandText := str_sql;
  DM.c_1_planoc.Open;
  While not DM.c_1_planoc.Eof do
  begin
    ComboBox1.Items.Add(DM.c_1_planocNOME.AsString);
    DM.c_1_planoc.Next;
  end;
  if DM.c_1_planoc.Active then
    DM.c_1_planoc.Close;
  str_sql := 'Select FIRST 500 * from PLANO WHERE CONSOLIDA <> ''S'' order by CONTA';
  DM.c_1_planoc.CommandText := str_sql;
  DM.c_1_planoc.Open;
  if cds_desp.Active then
    cds_desp.Close;
  cds_desp.Params[0].AsString := 'GRUPO CMV - %';
  cds_desp.Open;
  While not cds_desp.Eof do
  begin
    ComboBox2.Items.Add(cds_despNOME.AsString);
    cds_desp.Next;
  end;
  cds_desp.Close;

end;

procedure TfPlanoContas.btnIncluirClick(Sender: TObject);
var conta, pai, codreduz: string;
begin
  conta := DM.c_1_planocCONTA.AsString;
  pai := DM.c_1_planocCONTAPAI.AsString;
  codreduz := DM.c_1_planocCODREDUZIDO.AsString;
  DtSrc.DataSet.Refresh;
  inherited;
  DM.c_1_planocCONTA.AsString := conta;
  DM.c_1_planocCONTAPAI.AsString := pai;
  DM.c_1_planocCODREDUZIDO.AsString := codreduz;
  DBComboBox1.Text := 'S';
  DBComboBox2.Text := 'N';
  dbedit1.SetFocus;
end;

procedure TfPlanoContas.ComboBox2Click(Sender: TObject);
begin
  inherited;
  if cds_desp.Active then
    cds_desp.Close;
  cds_desp.Params[0].AsString := ComboBox2.Text;
  cds_desp.Open;
  if cds_sub.Active then
    cds_sub.Close;
  cds_sub.Params[0].AsString := cds_despCONTA.AsString;
  cds_sub.Open;
  ComboBox3.Items.Clear;
  While not cds_sub.Eof do
  begin
    ComboBox3.Items.Add(cds_subNOME.AsString);
    cds_sub.Next;
  end;
  cds_desp.Close;
  cds_sub.Close;
end;

procedure TfPlanoContas.BitBtn1Click(Sender: TObject);
 Var str_sql2: string;
begin
  inherited;
  if DM.c_1_planoc.Active then
    DM.c_1_planoc.Close;
  if Edit1.Text <> '' then
  begin
    str_sql2 := 'Select * from PLANO ';
    str_sql2 := str_sql2 + 'WHERE CONTA LIKE ';
    str_sql2 := str_sql2 + '''' + Edit1.Text + '%''';
    str_sql2 := str_sql2 + ' order by CONTA';
    DM.c_1_planoc.CommandText := str_sql2;
    DM.c_1_planoc.Open;
  end
  else
  begin
    str_sql2 := 'Select * from PLANO ';
    str_sql2 := str_sql2 + ' order by CONTA';
    DM.c_1_planoc.CommandText := str_sql2;
    DM.c_1_planoc.Open;
  end;
end;

procedure TfPlanoContas.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if DM.c_1_planoc.Active then
    DM.c_1_planoc.Close;
  if Edit2.Text <> '' then
  begin
    str_sql2 := 'Select * from PLANO ';
    str_sql2 := str_sql2 + 'WHERE CODREDUZIDO = ';
    str_sql2 := str_sql2 + '''' + Edit2.Text + '''';
    str_sql2 := str_sql2 + ' order by CONTA';
    DM.c_1_planoc.CommandText := str_sql2;
    DM.c_1_planoc.Open;
  end
  else
  begin
    str_sql2 := 'Select * from PLANO ';
    str_sql2 := str_sql2 + ' order by CONTA';
    DM.c_1_planoc.CommandText := str_sql2;
    DM.c_1_planoc.Open;
  end;
end;

procedure TfPlanoContas.BitBtn3Click(Sender: TObject);
 Var str_sql2: string;
begin
  inherited;
  if cds_desp.Active then
    cds_desp.Close;
  cds_desp.Params[0].AsString := ComboBox1.Text;
  cds_desp.Open;
  if DM.c_1_planoc.Active then
    DM.c_1_planoc.Close;
  if ComboBox1.Text <> '' then
  begin
    str_sql2 := 'Select * from PLANO ';
    str_sql2 := str_sql2 + 'WHERE CONTAPAI = ';
    str_sql2 := str_sql2 + '''' + cds_despCONTA.AsString + '''';
    str_sql2 := str_sql2 + ' order by CONTA';
    DM.c_1_planoc.CommandText := str_sql2;
    DM.c_1_planoc.Open;
  end
  else
  begin
    str_sql2 := 'Select * from PLANO ';
    str_sql2 := str_sql2 + ' order by CONTA';
    DM.c_1_planoc.CommandText := str_sql2;
    DM.c_1_planoc.Open;
  end;
end;

procedure TfPlanoContas.BitBtn4Click(Sender: TObject);
begin
  inherited;
  fFamilia:=TfFamilia.Create(Application);
  try
    origem_abriu := 'planocontas';
    fFamilia.ShowModal;
  finally
    fFamilia.Free;
    ComboBox2.SetFocus;
  end;
end;

procedure TfPlanoContas.BitBtn5Click(Sender: TObject);
 Var str_sql: String;
begin
  inherited;
  if cds_desp.Active then
    cds_desp.Close;
  cds_desp.Params[0].AsString := ComboBox2.Text;
  cds_desp.Open;
  if DM.c_1_planoc.Active then
    DM.c_1_planoc.Close;
  if ComboBox2.Text <> '' then
  begin
    str_sql := 'Select * from PLANO ';
    str_sql := str_sql + 'WHERE CONTAPAI = ';
    str_sql := str_sql + '''' + cds_despCONTA.AsString + '''';
    DM.c_1_planoc.CommandText := str_sql;
    DM.c_1_planoc.Open;
  end
  else
  begin
    str_sql := 'Select * from PLANO ';
    DM.c_1_planoc.CommandText := str_sql;
    DM.c_1_planoc.Open;
  end;
end;

procedure TfPlanoContas.BitBtn6Click(Sender: TObject);
begin
  inherited;
  fCategoria:=TfCategoria.Create(Application);
  try
    origem_a_cat := 'planocontas';
    fCategoria.ShowModal;
  finally
    fCategoria.Free;
    ComboBox3.SetFocus;
  end;
end;

procedure TfPlanoContas.BitBtn7Click(Sender: TObject);
 Var str_sql1: string;
begin
  inherited;
  if cds_desp.Active then
    cds_desp.Close;
  cds_desp.Params[0].AsString := ComboBox3.Text;
  cds_desp.Open;
  if DM.c_1_planoc.Active then
    DM.c_1_planoc.Close;
  if ComboBox3.Text <> '' then
  begin
    str_sql1 := 'Select * from PLANO ';
    str_sql1 := str_sql1 + 'WHERE CONTAPAI = ';
    str_sql1 := str_sql1 + '''' + cds_despCONTA.AsString + '''';
    DM.c_1_planoc.CommandText := str_sql1;
    DM.c_1_planoc.Open;
  end
  else
  begin
    str_sql1 := 'Select * from PLANO ';
    DM.c_1_planoc.CommandText := str_sql1;
    DM.c_1_planoc.Open;
  end;
end;

procedure TfPlanoContas.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;
end;

procedure TfPlanoContas.btnGravarClick(Sender: TObject);
begin
  if DM.c_1_planocCONTAPAI.AsString = '' then
    DM.c_1_planocCONTAPAI.Clear;
  dm.c_1_planocCONSOLIDA.AsString := DBComboBox1.Text;
  dm.c_1_planocRATEIO.AsString := DBComboBox2.Text;   
  inherited;
end;

procedure TfPlanoContas.btnImprimirClick(Sender: TObject);
begin
  inherited;
  rep.FileName := str_relatorio + 'plano.rep';
  rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  rep.Execute;
end;

procedure TfPlanoContas.FormShow(Sender: TObject);
begin
  //inherited;
    sCtrlResize.CtrlResize(TForm(fPlanoContas));
end;

procedure TfPlanoContas.BitBtn8Click(Sender: TObject);
begin
  if DM.c_1_planoc.Active then
    DM.c_1_planoc.Close;
  str_sql2 := 'Select * from PLANO ';
  str_sql2 := str_sql2 + 'WHERE CONTA LIKE ';
  str_sql2 := str_sql2 + QuotedStr('1%');
  str_sql2 := str_sql2 + ' order by CONTA';
  DM.c_1_planoc.CommandText := str_sql2;
  DM.c_1_planoc.Open;
end;

procedure TfPlanoContas.BitBtn11Click(Sender: TObject);
begin
  if DM.c_1_planoc.Active then
    DM.c_1_planoc.Close;
  str_sql2 := 'Select * from PLANO ';
  str_sql2 := str_sql2 + 'WHERE CONTA LIKE ';
  str_sql2 := str_sql2 + QuotedStr('6%');
  str_sql2 := str_sql2 + ' order by CONTA';
  DM.c_1_planoc.CommandText := str_sql2;
  DM.c_1_planoc.Open;
end;

procedure TfPlanoContas.BitBtn9Click(Sender: TObject);
begin
  if DM.c_1_planoc.Active then
    DM.c_1_planoc.Close;
  str_sql2 := 'Select * from PLANO ';
  str_sql2 := str_sql2 + 'WHERE CONTA LIKE ';
  str_sql2 := str_sql2 + QuotedStr('2%');
  str_sql2 := str_sql2 + ' order by CONTA';
  DM.c_1_planoc.CommandText := str_sql2;
  DM.c_1_planoc.Open;

end;

procedure TfPlanoContas.BitBtn10Click(Sender: TObject);
begin
  if DM.c_1_planoc.Active then
    DM.c_1_planoc.Close;
  str_sql2 := 'Select * from PLANO ';
  str_sql2 := str_sql2 + 'WHERE CONTA LIKE ';
  str_sql2 := str_sql2 + QuotedStr('3%');
  str_sql2 := str_sql2 + ' order by CONTA';
  DM.c_1_planoc.CommandText := str_sql2;
  DM.c_1_planoc.Open;
end;

procedure TfPlanoContas.BitBtn12Click(Sender: TObject);
begin
  if DM.c_1_planoc.Active then
    DM.c_1_planoc.Close;
  str_sql2 := 'Select * from PLANO ';
  str_sql2 := str_sql2 + 'WHERE CONTA LIKE ';
  str_sql2 := str_sql2 + QuotedStr('4%');
  str_sql2 := str_sql2 + ' order by CONTA';
  DM.c_1_planoc.CommandText := str_sql2;
  DM.c_1_planoc.Open;
end;

end.
