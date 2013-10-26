unit uFiltro_forn_plano;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, ExtCtrls, DBCtrls, DB, DBClient, Provider, SqlExpr,
  Grids, DBGrids, StdCtrls, Buttons, Menus, MMJPanel, XPMenu, EDBFind,
  JvExStdCtrls, JvCombobox, ComCtrls, JvExComCtrls, JvDBTreeView,
  JvComCtrls;

type
  TfFiltro_forn_plano = class(TForm)
    DtSrc: TDataSource;
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
    MMJPanel1: TMMJPanel;
    BitBtn2: TBitBtn;
    DBNavigator1: TDBNavigator;
    btnIncluir: TBitBtn;
    MMJPanel2: TMMJPanel;
    BitBtn1: TBitBtn;
    PopupMenu1: TPopupMenu;
    Incluir1: TMenuItem;
    OK1: TMenuItem;
    Procurar1: TMenuItem;
    XPMenu1: TXPMenu;
    BitBtn6: TBitBtn;
    sdsContaPai: TSQLDataSet;
    dspContaPai: TDataSetProvider;
    cdsContaPai: TClientDataSet;
    sdsContaPaiNOME: TStringField;
    sdsContaPaiCONTA: TStringField;
    cdsContaPaiNOME: TStringField;
    cdsContaPaiCONTA: TStringField;
    dsContaPai: TDataSource;
    sdsContaPaiCONTAPAI: TStringField;
    cdsContaPaiCONTAPAI: TStringField;
    sdsContaPlano: TSQLDataSet;
    dspContaPlano: TDataSetProvider;
    cdsContaPlano: TClientDataSet;
    cdsContaPlanoNOME: TStringField;
    cdsContaPlanoCONTA: TStringField;
    cdsContaPlanoUDF_LEN: TIntegerField;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    EvDBFind1: TEvDBFind;
    tvContaPai: TJvTreeView;
    EditProc: TEdit;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn11: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tvContaPaiClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
  private
    procedure abrePlano(tipo_conta: String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFiltro_forn_plano: TfFiltro_forn_plano;
  varconta_cod_r, varconta_cod, varconta_nome, varconta, com_rateio, desp, tipo_for: string;
  codigo_conta: integer;
  
implementation

uses UDm, uFornecedorCadastro, ufContasAssistente, sCtrlResize;

{$R *.dfm}

procedure TfFiltro_forn_plano.BitBtn1Click(Sender: TObject);
// Var str_sql2: string;
begin
{Não é usado, pois a tabela e aberta trazendo tudo }  
{  DM.c_1_planoc.Close;
  if DM.c_1_planoc.Active then
      DM.c_1_planoc.Close;
  str_sql2 := 'Select * from PLANO ';
  str_sql2 := str_sql2 + 'WHERE ';
  str_sql2 := str_sql2 + 'plnctaroot(conta) = ''' + desp + '''';
  str_sql2 := str_sql2 + ' and CONSOLIDA = ''S'' ';
  str_sql2 := str_sql2 + ' and NOME like ';
  str_sql2 := str_sql2 + '''%' + EditProc.Text + '%''';
  str_sql2 := str_sql2 + ' order by CONTA';
  DM.c_1_planoc.CommandText := str_sql2;
  DM.c_1_planoc.Open;}

end;

procedure TfFiltro_forn_plano.btnIncluirClick(Sender: TObject);
begin
 fContasAssistente:=TfContasAssistente.Create(Application);
 try
  fContasAssistente.ShowModal;
 finally
  fContasAssistente.Free;
  BitBtn6.Click;
 end;
end;

procedure TfFiltro_forn_plano.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TfFiltro_forn_plano.BitBtn6Click(Sender: TObject);
 Var str_sqlq: string;
begin
  if DM.c_1_planoc.Active then
    DM.c_1_planoc.Close;
  if (tipo_for = 'LANCACONTABIL') then
  begin
    str_sqlq := 'Select * from PLANO ';
    str_sqlq := str_sqlq + 'WHERE ';
    str_sqlq := str_sqlq + ' CONSOLIDA = ''S'' ';
    str_sqlq := str_sqlq + ' order by NOME';
  end
  else begin
    str_sqlq := 'Select * from PLANO ';
    str_sqlq := str_sqlq + 'WHERE ';
    str_sqlq := str_sqlq + 'plnctaroot(conta) = ''' + desp + '''';
    str_sqlq := str_sqlq + ' and CONSOLIDA = ''S'' ';
    str_sqlq := str_sqlq + ' order by NOME';
  end;
  DM.c_1_planoc.CommandText := str_sqlq;
  DM.c_1_planoc.Open;
end;

procedure TfFiltro_forn_plano.FormShow(Sender: TObject);
  var str_sql2: string;
  Node, Node1, Node2: TTreeNode;
begin
  desp := '';
{------Pesquisando na tab Parametro Centro de Receita Padrão ---------}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].Clear;
  dm.cds_parametro.Params[0].AsString := tipo_for;
  dm.cds_parametro.Open;
  desp := dm.cds_parametroDADOS.AsString;
  dm.cds_parametro.Close;

  if DM.c_1_planoc.Active then
    DM.c_1_planoc.Close;
  if (tipo_for = 'LANCACONTABIL') then
  begin
    str_sql2 := 'Select * from PLANO ';
    str_sql2 := str_sql2 + 'WHERE ';
    str_sql2 := str_sql2 + ' CONSOLIDA = ''S'' ';
    str_sql2 := str_sql2 + ' order by NOME';
  end
  else begin
    str_sql2 := 'Select * from PLANO ';
    str_sql2 := str_sql2 + 'WHERE ';
    str_sql2 := str_sql2 + 'plnctaroot(conta) = ''' + desp + '''';
    str_sql2 := str_sql2 + ' and CONSOLIDA = ''S'' ';
    str_sql2 := str_sql2 + ' order by NOME';
  end;
  DM.c_1_planoc.CommandText := str_sql2;
  DM.c_1_planoc.Open;

  tvContaPai.Items.Clear;
  // Para o TreeView
  if (sdsContaPlano.Active) then
    sdsContaPlano.close;

  if (tipo_for = 'LANCACONTABIL') then
  begin
    sdsContaPlano.CommandText := 'Select NOME, CONTA, udf_len(udf_strip(conta,' +
      QuotedStr('0123456789') + '))  from plano where ' +
      ' consolida <> ' + QuotedStr('S') +
      ' order by CONTA ';
  end
  else begin
    sdsContaPlano.CommandText := 'Select NOME, CONTA, udf_len(udf_strip(conta,' +
      QuotedStr('0123456789') + '))  from plano where ' +
      'plnctaroot(conta) = ''' + desp + '''' +
      ' and consolida <> ' + QuotedStr('S') +
      ' order by CONTA ';
  end;
  sdsContaPlano.Open;
  while not (sdsContaPlano.eof) do
  begin
    if (sdsContaPlano.Fields[2].asInteger = 1) then
      Node := tvContaPai.Items.Add(nil, sdsContaPlano.Fields[0].asString)
    else if (sdsContaPlano.Fields[2].asInteger = 2) then
    begin
      //Node := tvContaPai.Selected;
      Node1 := tvContaPai.Items.AddChild (Node, sdsContaPlano.Fields[0].asString);
    end
    else if (sdsContaPlano.Fields[2].asInteger = 3) then
    begin
      //Node := tvContaPai.Selected;
      Node2 := tvContaPai.Items.AddChild (Node1, sdsContaPlano.Fields[0].asString);
    end
    else if (sdsContaPlano.Fields[2].asInteger = 4) then
    begin
      //Node := tvContaPai.Selected;
      tvContaPai.Items.AddChild (Node2, sdsContaPlano.Fields[0].asString);
    end;
    sdsContaPlano.Next;
  end;

  varconta_cod_r := '';
  varconta_cod := '';
  varconta_nome := '';
  codigo_conta := 0;
  varconta := '';
  com_rateio := '';
  EvDBFind1.SetFocus;

end;

procedure TfFiltro_forn_plano.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  varconta_cod_r := IntToStr(DM.c_1_planocCODIGO.AsInteger);
  varconta_cod := DM.c_1_planocCODREDUZIDO.AsString;
  varconta_nome := DM.c_1_planocNOME.AsString;
  codigo_conta := DM.c_1_planocCODIGO.AsInteger;
  varconta := DM.c_1_planocCONTA.AsString;
  com_rateio := DM.c_1_planocRATEIO.AsString;
  if DM.c_1_planoc.Active then
   DM.c_1_planoc.Close;
end;

procedure TfFiltro_forn_plano.tvContaPaiClick(Sender: TObject);
var Nodex: TTreeNode;
  str_sql3:string;
begin
  nodex := tvContaPai.Selected;
  if (DM.c_1_planoc.Active) then
    DM.c_1_planoc.Close;
  str_sql3 := 'Select pl1.* from PLANO pl1 ';
  str_sql3 := str_sql3 + 'WHERE exists';
  str_sql3 := str_sql3 + ' (SELECT pl2.CONTA FROM PLANO pl2 ' ;
  str_sql3 := str_sql3 + ' where pl2.NOME = ' + QuotedStr(nodex.Text);
  str_sql3 := str_sql3 + ' and pl2.CONTA = pl1.CONTAPAI) and pl1.CONSOLIDA = ''S'' ';
  str_sql3 := str_sql3 + ' order by pl1.NOME';
  DM.c_1_planoc.CommandText := str_sql3;
  DM.c_1_planoc.Open;

end;

procedure TfFiltro_forn_plano.DBGrid1TitleClick(Column: TColumn);
begin
  dm.c_1_planoc.IndexFieldNames := Column.FieldName;
end;

procedure TfFiltro_forn_plano.FormCreate(Sender: TObject);
begin
  sCtrlResize.CtrlResize(TForm(fFiltro_forn_plano));
end;

procedure TfFiltro_forn_plano.BitBtn8Click(Sender: TObject);
begin
  abrePlano('1');
end;

procedure TfFiltro_forn_plano.BitBtn9Click(Sender: TObject);
begin
  abrePlano('2');
end;

procedure TfFiltro_forn_plano.BitBtn10Click(Sender: TObject);
begin
  abrePlano('3');
end;

procedure TfFiltro_forn_plano.BitBtn12Click(Sender: TObject);
begin
  abrePlano('4');
end;

procedure TfFiltro_forn_plano.BitBtn11Click(Sender: TObject);
begin
  abrePlano('6');
end;

procedure TfFiltro_forn_plano.abrePlano(tipo_conta: String);
var str_sql2: string;
  Node, Node1, Node2: TTreeNode;
begin
  if DM.c_1_planoc.Active then
    DM.c_1_planoc.Close;
  if (sdsContaPlano.Active) then
    sdsContaPlano.close;

  if (tipo_for = 'LANCACONTABIL') then
  begin
    str_sql2 := 'Select * from PLANO ';
    str_sql2 := str_sql2 + 'WHERE ';
    str_sql2 := str_sql2 + ' CONSOLIDA = ''S'' ';
    str_sql2 := str_sql2 + ' order by NOME';

    sdsContaPlano.CommandText := 'Select NOME, CONTA, udf_len(udf_strip(conta,' +
      QuotedStr('0123456789') + '))  from plano where ' +
      ' consolida <> ' + QuotedStr('S') +
      ' order by CONTA ';
  end
  else begin
    desp := tipo_conta;
    str_sql2 := 'Select * from PLANO ';
    str_sql2 := str_sql2 + 'WHERE ';
    str_sql2 := str_sql2 + 'plnctaroot(conta) = ''' + desp + '''';
    str_sql2 := str_sql2 + ' and CONSOLIDA = ''S'' ';
    str_sql2 := str_sql2 + ' order by NOME';

    sdsContaPlano.CommandText := 'Select NOME, CONTA, udf_len(udf_strip(conta,' +
    QuotedStr('0123456789') + '))  from plano where ' +
    'plnctaroot(conta) = ' + QuotedStr(desp) +
    ' and consolida <> ' + QuotedStr('S') +
    ' order by CONTA ';

  end;
  DM.c_1_planoc.CommandText := str_sql2;
  DM.c_1_planoc.Open;

  sdsContaPlano.Open;
  while not (sdsContaPlano.eof) do
  begin
    if (sdsContaPlano.Fields[2].asInteger = 1) then
      Node := tvContaPai.Items.Add(nil, sdsContaPlano.Fields[0].asString)
    else if (sdsContaPlano.Fields[2].asInteger = 2) then
    begin
      //Node := tvContaPai.Selected;
      Node1 := tvContaPai.Items.AddChild (Node, sdsContaPlano.Fields[0].asString);
    end
    else if (sdsContaPlano.Fields[2].asInteger = 3) then
    begin
      //Node := tvContaPai.Selected;
      Node2 := tvContaPai.Items.AddChild (Node1, sdsContaPlano.Fields[0].asString);
    end
    else if (sdsContaPlano.Fields[2].asInteger = 4) then
    begin
      //Node := tvContaPai.Selected;
      tvContaPai.Items.AddChild (Node2, sdsContaPlano.Fields[0].asString);
    end;
    sdsContaPlano.Next;
  end;

end;

end.
