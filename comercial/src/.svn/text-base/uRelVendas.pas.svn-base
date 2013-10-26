unit uRelVendas;            

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, StdCtrls, Buttons, Mask, ExtCtrls,
  MMJPanel, rpcompobase, rpvclreport, DBClient, Provider, JvExStdCtrls,
  JvCombobox, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, JvDBSearchComboBox;

type
  TfRelVenda = class(TForm)
    rep: TVCLReport;
    MMJPanel3: TMMJPanel;
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    Label3: TLabel;
    btnImprimir: TBitBtn;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    btnSair: TBitBtn;
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    GroupBox3: TGroupBox;
    BitBtn2: TBitBtn;
    ComboBox2: TComboBox;
    Label8: TLabel;
    ComboBox3: TComboBox;
    Label9: TLabel;
    Label11: TLabel;
    ComboBox5: TComboBox;
    GroupBox4: TGroupBox;
    BitBtn3: TBitBtn;
    JvComboBox1: TJvComboBox;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    rgProdutoGrupo: TRadioGroup;
    BitBtn8: TBitBtn;
    Label1: TLabel;
    Label4: TLabel;
    btnPorProduto: TBitBtn;
    GroupBox5: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    cbMes: TComboBox;
    data1: TJvDatePickerEdit;
    data2: TJvDatePickerEdit;
    GroupBox6: TGroupBox;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    GroupBox7: TGroupBox;
    btnClienteProcura: TBitBtn;
    Edit1: TEdit;
    Edit2: TJvDBSearchComboBox;
    CheckBox1: TCheckBox;
    Label7: TLabel;
    Edit4: TEdit;
    BitBtn11: TBitBtn;
    Edit3: TEdit;
    Label2: TLabel;
    rdbProduto: TCheckBox;
    rdbQutde: TCheckBox;
    CheckBox2: TCheckBox;
    GroupBox8: TGroupBox;
    BitBtn12: TBitBtn;
    ComboBox6: TComboBox;
    Label12: TLabel;
    ComboBox7: TComboBox;
    Label13: TLabel;
    Label14: TLabel;
    ComboBox8: TComboBox;
    BitBtn13: TBitBtn;
    ComboBox9: TComboBox;
    Label15: TLabel;
    scds_produto_proc: TSQLQuery;
    scds_produto_procCODPRODUTO: TIntegerField;
    scds_produto_procFAMILIA: TStringField;
    scds_produto_procCATEGORIA: TStringField;
    scds_produto_procMARCA: TStringField;
    scds_produto_procUNIDADEMEDIDA: TStringField;
    scds_produto_procDATAULTIMACOMPRA: TDateField;
    scds_produto_procESTOQUEMAXIMO: TFloatField;
    scds_produto_procESTOQUEATUAL: TFloatField;
    scds_produto_procESTOQUEREPOSICAO: TFloatField;
    scds_produto_procESTOQUEMINIMO: TFloatField;
    scds_produto_procVALORUNITARIOATUAL: TFloatField;
    scds_produto_procVALORUNITARIOANTERIOR: TFloatField;
    scds_produto_procICMS: TFloatField;
    scds_produto_procCODALMOXARIFADO: TIntegerField;
    scds_produto_procIPI: TFloatField;
    scds_produto_procCLASSIFIC_FISCAL: TStringField;
    scds_produto_procCST: TStringField;
    scds_produto_procBASE_ICMS: TFloatField;
    scds_produto_procPRODUTO: TStringField;
    scds_produto_procPRECOMEDIO: TBCDField;
    scds_produto_procCOD_COMISSAO: TIntegerField;
    scds_produto_procMARGEM_LUCRO: TFloatField;
    scds_produto_procCOD_BARRA: TStringField;
    scds_produto_procVALOR_PRAZO: TFloatField;
    scds_produto_procTIPO: TStringField;
    scds_produto_procCONTA_DESPESA: TStringField;
    scds_produto_procCONTA_RECEITA: TStringField;
    scds_produto_procCONTA_ESTOQUE: TStringField;
    scds_produto_procRATEIO: TStringField;
    scds_produto_procCODPRO: TStringField;
    scds_produto_procQTDE_PCT: TFloatField;
    scds_produto_procPESO_QTDE: TFloatField;
    scds_produto_procDATACADASTRO: TSQLTimeStampField;
    scds_produto_procMARGEM: TFloatField;
    scds_produto_procPRO_COD: TStringField;
    scds_produto_procDATAGRAV: TDateField;
    scds_produto_procCODFORN: TStringField;
    scds_produto_procFOTOPRODUTO: TStringField;
    scds_produto_procLOTES: TStringField;
    scds_produto_procUSA: TStringField;
    scds_produto_procLOCALIZACAO: TStringField;
    scds_produto_procTIPOPRECOVENDA: TStringField;
    scds_produto_procVALORMINIMO: TFloatField;
    scds_produto_procVALORCOMISSAO: TFloatField;
    scds_produto_procGERADESCONTO: TStringField;
    scds_produto_procIMPRIMIR: TStringField;
    scds_produto_procORIGEM: TIntegerField;
    scds_produto_procNCM: TStringField;
    scds_produto_procIMPRESSORA_1: TStringField;
    scds_produto_procIMPRESSORA_2: TStringField;
    scds_produto_procIMPRESSORA_3: TStringField;
    scds_produto_procTAM_LOTE: TIntegerField;
    Label10: TLabel;
    cbRazao: TJvComboBox;
    RadioGroup1: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure Data1KeyPress(Sender: TObject; var Key: Char);
    procedure btnSairClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure btnPorProdutoClick(Sender: TObject);
    procedure btnClienteProcuraClick(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure cbMesChange(Sender: TObject);
    procedure rdbProdutoClick(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    conta_local: string;
    { Public declarations }
  end;

var
  fRelVenda: TfRelVenda;
  varProd : Integer;
implementation

uses UDm, uProcurar, uUtils, ufprocura_prod;

{$R *.dfm}

procedure TfRelVenda.FormCreate(Sender: TObject);
begin
  if (cds.Active) then
    cds.close;
  cds.CommandText := 'SELECT DESCCATEGORIA, COD_CATEGORIA FROM CATEGORIAPRODUTO ORDER BY DESCCATEGORIA';
  cds.Open;
  while not cds.Eof do
  begin
    ComboBox1.Items.Add(cds.Fields[0].asString);
    ComboBox2.Items.Add(cds.Fields[0].asString);
    ComboBox7.Items.Add(cds.Fields[0].asString);
    cds.Next;
  end;
  cds.Close;
  if (cds.Active) then
    cds.close;
  cds.CommandText := 'SELECT DESCFAMILIA, COD_FAMILIA from FAMILIAPRODUTOS ORDER BY DESCFAMILIA';
  cds.Open;
  while not cds.Eof do
  begin
    ComboBox3.Items.Add(cds.Fields[0].asString);
    ComboBox6.Items.Add(cds.Fields[0].asString);
    cds.Next;
  end;
  cds.Close;


  //Vejo quais são as contas de Receitas para listar no lookupcombobox.
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTRORECEITA';
  dm.cds_parametro.Open;
  conta_local := dm.cds_parametroDADOS.AsString;
  dm.cds_parametro.Close;
  if dm.cds_ccusto.Active then
    dm.cds_ccusto.Close;
  dm.cds_ccusto.Params[0].AsString := conta_local;
  dm.cds_ccusto.Open;
  ComboBox9.Items.Add('TODOS');
  While not dm.cds_ccusto.Eof do
  begin
    ComboBox9.Items.Add(dm.cds_ccustoNOME.AsString);
    dm.cds_ccusto.Next;
  end;
  dm.cds_parametro.Close;
  With DM do
  begin
    if (not cds_Marca.Active) then
    cds_Marca.Open;
    ComboBox5.Items.Clear;
    ComboBox8.Items.Clear;
    while not cds_Marca.Eof do
    begin
      ComboBox5.Items.Add(cds_MarcaDESCMARCAS.AsString);
      ComboBox8.Items.Add(cds_MarcaDESCMARCAS.AsString);
      cds_Marca.Next;
    end;
    cds_Marca.Close;
  end;
  if (cds.Active) then
    cds.close;
  cds.CommandText := 'SELECT NOMECLIENTE FROM CLIENTES WHERE STATUS = 1 ORDER BY NOMECLIENTE';
  cds.Open;
  while not cds.Eof do
  begin
    jvComboBox1.Items.Add(cds.Fields[0].asString);
    cds.Next;
  end;
  cds.Close;

  if (cds.Active) then
    cds.close;
  cds.CommandText := 'SELECT DISTINCT RAZAOSOCIAL FROM CLIENTES ' +
    ' WHERE STATUS = 1 ORDER BY RAZAOSOCIAL';
  cds.Open;
  while not cds.Eof do
  begin
    cbRazao.Items.Add(cds.Fields[0].asString);
    cds.Next;
  end;
  cds.Close;
end;


procedure TfRelVenda.btnImprimirClick(Sender: TObject);
//var rel: TUtils;
begin
  //rel := TUtils.Create;
  try
    Rep.Filename := str_relatorio + 'vendas_prod.rep';
    Rep.Title := rep.Filename;
    Rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    //rel.relatorio('vendas_prod.rep');
    if ComboBox1.Text <> '' then
  //    relatorio
      Rep.Report.Params.ParamByName('PRO1').Value := ComboBox1.Text
    else
      Rep.Report.Params.ParamByName('PRO1').Value := 'TODOS OS SUBGRUPOS CADASTRADOS';
    Rep.Report.Params.ParamByName('DATA1').Value := StrToDate(Data1.Text);
    Rep.Report.Params.ParamByName('DATA2').Value := StrToDate(Data2.Text);
  except
    on EConvertError do
    begin
       ShowMessage ('Data Inválida! dd/mm/aa');
       Data1.SetFocus;
    end;
  end;
  Rep.Execute;
  //Free;
end;

procedure TfRelVenda.Data1KeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;

end;

procedure TfRelVenda.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfRelVenda.BitBtn1Click(Sender: TObject);
begin
  try
    Rep.Filename := str_relatorio + 'vendasporfamilia.rep';
    Rep.Title := rep.Filename;
    Rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    Rep.Report.Params.ParamByName('PDATA').Value := StrToDate(Data1.Text);
    Rep.Report.Params.ParamByName('PDATA1').Value := StrToDate(Data2.Text);
  except
    on EConvertError do
    begin
       ShowMessage ('Data Inválida! dd/mm/aa');
       Data1.SetFocus;
    end;
  end;
  Rep.Execute;

end;

procedure TfRelVenda.BitBtn2Click(Sender: TObject);
begin
  try
    if (CheckBox2.Checked = False) then
      Rep.Filename := str_relatorio + 'rel_resultadoproduto.rep'
    else
      Rep.Filename := str_relatorio + 'rel_resultadoprodutoqtde.rep';
      
    Rep.Title := rep.Filename;
    Rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    Rep.Report.Params.ParamByName('DTAINI').Value := StrToDate(Data1.Text);
    Rep.Report.Params.ParamByName('DTAFIM').Value := StrToDate(Data2.Text);
    {*** SUB_GRUPO **** }
    if (ComboBox2.Text <> '') then
      Rep.Report.Params.ParamByName('CATEGORIA').Value := ComboBox2.Text
    else
      Rep.Report.Params.ParamByName('CATEGORIA').Value := 'TODAS AS CATEGORIAS CADASTRO';
    {*** GRUPO **** }
    if (ComboBox3.Text <> '') then
      Rep.Report.Params.ParamByName('FAMILIA').Value := ComboBox3.Text
    else
      Rep.Report.Params.ParamByName('FAMILIA').Value := 'TODAS AS FAMILIAS DO CADASTRO';
    {*** CENTRO DE CUSTO **** }
    if (ComboBox9.Text <> '') then
    begin
      if dm.cds_ccusto.Active then
        dm.cds_ccusto.Close;
      dm.cds_ccusto.Params[0].AsString := conta_local;
      dm.cds_ccusto.Open;
      if (dm.cds_ccusto.Locate('NOME', ComboBox9.Text, [loCaseInsensitive])) then
        Rep.Report.Params.ParamByName('CCUSTO').Value := dm.cds_ccustoCODIGO.AsInteger
      else
        Rep.Report.Params.ParamByName('CCUSTO').Value := 999999;
    end
    else
      Rep.Report.Params.ParamByName('CCUSTO').Value := 999999;
    {*** MARCAS **** }
    if (ComboBox5.Text <> '') then
      Rep.Report.Params.ParamByName('MARCA').Value := ComboBox5.Text
    else
      Rep.Report.Params.ParamByName('MARCA').Value := 'TODAS AS MARCAS DO CADASTRO';

  except
    on EConvertError do
    begin
       ShowMessage ('Data Inválida! dd/mm/aa');
       Data1.SetFocus;
    end;
  end;
  Rep.Execute;

end;

procedure TfRelVenda.BitBtn3Click(Sender: TObject);
begin
  try
    Rep.Filename := str_relatorio + 'vendasClienteProduto.rep';
    Rep.Title := rep.Filename;
    Rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    Rep.Report.Params.ParamByName('DATA1').Value := StrToDate(Data1.Text);
    Rep.Report.Params.ParamByName('DATA2').Value := StrToDate(Data2.Text);
    {*** ClienteO **** }
    if (jvComboBox1.Text <> '') then
    begin
      if (cds.Active) then
        cds.close;
      cds.CommandText := 'SELECT CODCLIENTE FROM CLIENTES WHERE NOMECLIENTE = ' +
      QuotedStr(JvComboBox1.Text);
      cds.Open;
      if (cds.IsEmpty) then
      begin
        ShowMessage ('Não existe este Cliente no Cadastro.');
        exit;
      end;
      Rep.Report.Params.ParamByName('PRODUTO').Value := cds.Fields[0].AsInteger;
    end
    else
      Rep.Report.Params.ParamByName('PRODUTO').Value := 9999999;
  except
    on EConvertError do
    begin
      ShowMessage ('Data Inválida! dd/mm/aa');
      Data1.SetFocus;
    end;
  end;
  Rep.Execute;
end;

procedure TfRelVenda.BitBtn4Click(Sender: TObject);
begin
  try
    Rep.Filename := str_relatorio + 'vendasClientePedido.rep';
    Rep.Title := rep.Filename;
    Rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    Rep.Report.Params.ParamByName('DATA1').Value := StrToDate(Data1.Text);
    Rep.Report.Params.ParamByName('DATA2').Value := StrToDate(Data2.Text);
    {*** ClienteO **** }
    if (jvComboBox1.Text <> '') then
    begin
      if (cds.Active) then
        cds.close;
      cds.CommandText := 'SELECT CODCLIENTE FROM CLIENTES WHERE NOMECLIENTE = ' +
      QuotedStr(JvComboBox1.Text);
      cds.Open;
      if (cds.IsEmpty) then
      begin
        ShowMessage ('Não existe este Cliente no Cadastro.');
        exit;
      end;
      Rep.Report.Params.ParamByName('PRODUTO').Value := cds.Fields[0].AsInteger;
    end
    else
      Rep.Report.Params.ParamByName('PRODUTO').Value := 9999999;
    //PRODUTO     ---  CARLOS ---- comentei nao tem este parametro neste relatorio
    //if (Edit3.Text <> '') then
    //  Rep.Report.Params.ParamByName('PROD').Value := Edit3.Text
    //else
    //  Rep.Report.Params.ParamByName('PROD').Value := 9999999;

  except
    on EConvertError do
    begin
      ShowMessage ('Data Inválida! dd/mm/aa');
      Data1.SetFocus;
    end;
  end;
  Rep.Execute;
end;

procedure TfRelVenda.BitBtn5Click(Sender: TObject);
begin
  try
    if (RadioGroup1.ItemIndex = 1) then
    begin
      Rep.Filename := str_relatorio + 'vendasClienteRazao.rep';
      Rep.Title := rep.Filename;
      Rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
      Rep.Report.Params.ParamByName('DATA1').Value := StrToDate(Data1.Text);
      Rep.Report.Params.ParamByName('DATA2').Value := StrToDate(Data2.Text);
      if (cbRazao.Text <> '') then
        Rep.Report.Params.ParamByName('PRO1').Value := cbRazao.Text
      else
        Rep.Report.Params.ParamByName('PRO1').Value := 'TODAS AS RAZOES SOCIAIS';
    end
    else
    begin
      Rep.Filename := str_relatorio + 'vendasCliente.rep';
      Rep.Title := rep.Filename;
      Rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
      Rep.Report.Params.ParamByName('DATA1').Value := StrToDate(Data1.Text);
      Rep.Report.Params.ParamByName('DATA2').Value := StrToDate(Data2.Text);
      {*** ClienteO **** }
      if (jvComboBox1.Text <> '') then
      begin
        if (cds.Active) then
          cds.close;
        cds.CommandText := 'SELECT CODCLIENTE FROM CLIENTES WHERE NOMECLIENTE = ' +
        QuotedStr(JvComboBox1.Text);
        cds.Open;
        if (cds.IsEmpty) then
        begin
          ShowMessage ('Não existe este Cliente no Cadastro.');
          exit;
        end;
        Rep.Report.Params.ParamByName('PRO1').Value := cds.Fields[0].AsInteger;
      end
      else
        Rep.Report.Params.ParamByName('PRO1').Value := 9999999;
    end;
  except
    on EConvertError do
    begin
      ShowMessage ('Data Inválida! dd/mm/aa');
      Data1.SetFocus;
    end;
  end;
  Rep.Execute;
end;

procedure TfRelVenda.BitBtn7Click(Sender: TObject);
begin
  try
    Rep.Filename := str_relatorio + 'rel_vendaCompra.rep';
    Rep.Title := rep.Filename;
    Rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    Rep.Report.Params.ParamByName('DATA1').Value := Data1.Date;
    Rep.Report.Params.ParamByName('DATA2').Value := Data2.Date;
    if (ComboBox9.Text <> '') then
    begin
      if dm.cds_ccusto.Active then
        dm.cds_ccusto.Close;
      dm.cds_ccusto.Params[0].AsString := conta_local;
      dm.cds_ccusto.Open;
      if (dm.cds_ccusto.Locate('NOME', ComboBox9.Text, [loCaseInsensitive])) then
        Rep.Report.Params.ParamByName('CCUSTO').Value := dm.cds_ccustoCODIGO.AsInteger
      else
        Rep.Report.Params.ParamByName('CCUSTO').Value := 0;
    end;
  except
  end;
  Rep.Execute;
end;

procedure TfRelVenda.BitBtn6Click(Sender: TObject);
begin
  try
    Case rgProdutoGrupo.ItemIndex of
      0: Rep.Filename := str_relatorio + 'rel_vendaCusto.rep';
      1: Rep.Filename := str_relatorio + 'rel_vendaCustoGrupo.rep';
    end;
    Rep.Title := rep.Filename;
    Rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    Rep.Report.Params.ParamByName('DATA1').Value := Data1.date;
    Rep.Report.Params.ParamByName('DATA2').Value := Data2.date;
    if (ComboBox9.Text <> '') then
    begin
      if dm.cds_ccusto.Active then
        dm.cds_ccusto.Close;
      dm.cds_ccusto.Params[0].AsString := conta_local;
      dm.cds_ccusto.Open;
      if (dm.cds_ccusto.Locate('NOME', ComboBox9.Text, [loCaseInsensitive])) then
        Rep.Report.Params.ParamByName('CCUSTO').Value := dm.cds_ccustoCODIGO.AsInteger
      else
        Rep.Report.Params.ParamByName('CCUSTO').Value := 0;
    end
    else
        Rep.Report.Params.ParamByName('CCUSTO').Value := 0;
  except
    on EConvertError do
    begin
      ShowMessage ('Data Inválida! dd/mm/aa');
      Data1.SetFocus;
    end;
  end;
  Rep.Execute;
end;

procedure TfRelVenda.BitBtn8Click(Sender: TObject);
begin
  try
    Rep.Filename := str_relatorio + 'relFinanceiroRec.rep';
    Rep.Title := rep.Filename;
    Rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    Rep.Report.Params.ParamByName('DATA1').Value := Data1.date;
    Rep.Report.Params.ParamByName('DATA2').Value := Data2.date;
    {*** ClienteO **** }
    if (jvComboBox1.Text <> '') then
    begin
      if (cds.Active) then
        cds.close;
      cds.CommandText := 'SELECT CODCLIENTE FROM CLIENTES WHERE STATUS = 1 and NOMECLIENTE = ' +
      QuotedStr(JvComboBox1.Text);
      cds.Open;
      if (cds.IsEmpty) then
      begin
        ShowMessage ('Não existe este Cliente no Cadastro.');
        exit;
      end;
      Rep.Report.Params.ParamByName('PCLI').Value := cds.Fields[0].AsInteger;
    end
    else
      Rep.Report.Params.ParamByName('PCLI').Value := 0;
  except
    on EConvertError do
    begin
      ShowMessage ('Data Inválida! dd/mm/aa');
      Data1.SetFocus;
    end;
  end;
  Rep.Execute;
end;

procedure TfRelVenda.btnPorProdutoClick(Sender: TObject);
begin
  try
    if (rdbQutde.Checked = True) then
       Rep.Filename := str_relatorio + 'vendaProdutoqutde.rep'
    else
      Rep.Filename := str_relatorio + 'vendaProduto.rep';

    if (rdbProduto.Checked = True) then
      if (Edit3.Text <> '') then
        Rep.Filename := str_relatorio + 'vendaPorProduto.rep';

    Rep.Title := rep.Filename;
    Rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    Rep.Report.Params.ParamByName('DATA1').Value := Data1.date;
    Rep.Report.Params.ParamByName('DATA2').Value := Data2.date;
  except
    on EConvertError do
    begin
      ShowMessage ('Data Inválida! dd/mm/aa');
      Data1.SetFocus;
    end;
  end;
  {*** ClienteO **** }
  if (RadioGroup1.ItemIndex = 0) then
  begin
    if (jvComboBox1.Text <> '') then
    begin
      if (cds.Active) then
        cds.close;
      cds.CommandText := 'SELECT CODCLIENTE FROM CLIENTES WHERE STATUS = 1 and NOMECLIENTE = ' +
      QuotedStr(JvComboBox1.Text);
      cds.Open;
      if (cds.IsEmpty) then
      begin
        ShowMessage ('Não existe este Cliente no Cadastro.');
        exit;
      end;
      Rep.Report.Params.ParamByName('PRO1').Value := cds.Fields[0].AsInteger;
    end
    else
      Rep.Report.Params.ParamByName('PRO1').Value := 9999999;
  end;
  if (RadioGroup1.ItemIndex = 1) then
  begin
    Rep.Report.Params.ParamByName('PRO1').Value := 9999999;
    if (cbRazao.Text <> '') then
      Rep.Report.Params.ParamByName('PRazao').Value := cbRazao.Text
    else
      Rep.Report.Params.ParamByName('PRazao').Value :=
        'TODAS AS RAZOES SOCIAIS                                     ';
  end;
  if (rdbProduto.Checked = True) then
    if (Edit3.Text <> '') then
      Rep.Report.Params.ParamByName('PRO2').Value := Edit3.Text;

  Rep.Execute;
end;

procedure TfRelVenda.btnClienteProcuraClick(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,dm.scds_usuario_proc);
  fProcurar.usuarioproc := 'VENDEDOR';
  fProcurar.BtnProcurar.Click;
  fProcurar.EvDBFind1.DataField := 'NOMEUSUARIO';
  try
    if fProcurar.ShowModal=mrOk then
    begin
      Edit1.Text := IntToStr(dm.scds_usuario_ProcCODusuario.AsInteger);
      Edit2.Text := dm.scds_usuario_procNOMEUSUARIO.AsString;
    end;
  finally
    dm.scds_usuario_proc.Close;
    fProcurar.Free;
  end;
end;

procedure TfRelVenda.Edit1Exit(Sender: TObject);
begin
  if (Edit1.Text = '') then exit;

  if dm.scds_usuario_proc.Active then
    dm.scds_usuario_proc.Close;
  dm.scds_usuario_proc.Params[0].Clear;
  dm.scds_usuario_proc.Params[1].AsInteger := StrToInt(Edit1.Text);
  dm.scds_usuario_proc.Open;
  if dm.scds_usuario_proc.IsEmpty then begin
    MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
    [mbOk], 0);
    btnClienteProcura.Click;
    exit;
  end;
  Edit1.Text := IntToStr(dm.scds_usuario_procCODUSUARIO.AsInteger);
  Edit2.Text := dm.scds_usuario_procNOMEUSUARIO.AsString;
end;

procedure TfRelVenda.CheckBox1Click(Sender: TObject);
begin
  if (CheckBox1.Checked) then
  begin
    Edit1.Enabled := True;
    Edit2.Enabled := True;
    btnClienteProcura.Enabled := True;
    Edit1.Color := clWindow;
    Edit2.Color := clWindow;
  end
  else begin
    Edit1.Text := '';
    Edit2.Text := '';
    Edit1.Enabled := False;
    Edit2.Enabled := False;
    btnClienteProcura.Enabled := False;    
    Edit1.Color := cl3DLight;
    Edit2.Color := cl3DLight;
  end;
end;

procedure TfRelVenda.BitBtn10Click(Sender: TObject);
begin
  try
    Rep.Filename := str_relatorio + 'comissao.rep';
    Rep.Title := rep.Filename;
    Rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    Rep.Report.Params.ParamByName('DATA1').Value := Data1.Date;
    Rep.Report.Params.ParamByName('DATA2').Value := Data2.Date;
    if (Edit1.Text <> '') then
      Rep.Report.Params.ParamByName('PFUN').Value := StrToInt(Edit1.Text)
    else
      Rep.Report.Params.ParamByName('PFUN').Value := 0;
  except
  end;
  Rep.Execute;
end;

procedure TfRelVenda.BitBtn9Click(Sender: TObject);
begin
  try
    Rep.Filename := str_relatorio + 'comissao_sintetico.rep';
    Rep.Title := rep.Filename;
    Rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    Rep.Report.Params.ParamByName('DATA1').Value := Data1.Date;
    Rep.Report.Params.ParamByName('DATA2').Value := Data2.Date;
    if (Edit1.Text <> '') then
      Rep.Report.Params.ParamByName('PFUN').Value := StrToInt(Edit1.Text)
    else
      Rep.Report.Params.ParamByName('PFUN').Value := 0;
  except
  end;
  Rep.Execute;
end;

procedure TfRelVenda.cbMesChange(Sender: TObject);
var  periodo : TUtils;
begin
  periodo := TUtils.Create;
  periodo.criaIni(cbMes.text);
  periodo.criaFim(cbMes.text);
  data1.Text := periodo.PeriodoIni;
  data2.Text := periodo.PeriodoFim;
  periodo.Destroy;
end;

procedure TfRelVenda.rdbProdutoClick(Sender: TObject);
begin
  if (rdbProduto.Checked = True) then
  begin
    Edit3.Enabled := True;
    Edit3.Color := clWindow;
    BitBtn11.Enabled := True;
  end
  else
  begin
    Edit3.Enabled := False;
    Edit3.Color := clSilver;
    BitBtn11.Enabled := False;
  end;
end;

procedure TfRelVenda.Edit3Exit(Sender: TObject);
begin
   if (Edit3.Text = '') then exit;
   {if scds_produto_proc.Active then
      scds_produto_proc.Close;
   scds_produto_proc.Params[0].AsString := Edit3.Text;
   scds_produto_proc.Open;
   Edit4.Text:= scds_produto_procPRODUTO.asString;
   varProd := scds_produto_procCODPRODUTO.AsInteger;
   scds_produto_proc.Close;}
end;

procedure TfRelVenda.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    key:= #0;
    SelectNext((Sender as TwinControl),True,True);
    if (Edit3.Text = '') then exit;
    if scds_produto_proc.Active then
      scds_produto_proc.Close;
    scds_produto_proc.Params[0].AsString := Edit3.Text;
    scds_produto_proc.Open;
    Edit4.Text := scds_produto_procPRODUTO.asString;
    varProd := scds_produto_procCODPRODUTO.AsInteger;
    scds_produto_proc.Close;
//    BitBtn11.Click;
  end;
end;

procedure TfRelVenda.BitBtn11Click(Sender: TObject);
begin
  var_F := 'filtroEstoque';
  fProcura_prod.ShowModal;
  Edit3.Text := fProcura_prod.fecodProd;
  Edit4.Text := fProcura_prod.fenomeProduto;
  varProd := fProcura_prod.fecodProduto;
end;

procedure TfRelVenda.BitBtn12Click(Sender: TObject);
begin
  try
    Rep.Filename := str_relatorio + 'rel_filtroprod.rep';
    Rep.Title := rep.Filename;
    Rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;

    {**** DATA **** }
    Rep.Report.Params.ParamByName('DTAINI').Value := StrToDate(Data1.Text);
    Rep.Report.Params.ParamByName('DTAFIM').Value := StrToDate(Data2.Text);

    {**** SUB_GRUPO **** }
    if (ComboBox7.Text <> '') then
      Rep.Report.Params.ParamByName('CATEGORIA').Value := ComboBox7.Text
    else
      Rep.Report.Params.ParamByName('CATEGORIA').Value := 'TODAS AS CATEGORIAS CADASTRO';

    {**** GRUPO **** }
    if (ComboBox6.Text <> '') then
      Rep.Report.Params.ParamByName('FAMILIA').Value := ComboBox6.Text
    else
      Rep.Report.Params.ParamByName('FAMILIA').Value := 'TODAS AS FAMILIAS DO CADASTRO';

    {**** MARCAS **** }
    if (ComboBox8.Text <> '') then
      Rep.Report.Params.ParamByName('MARCA').Value := ComboBox8.Text
    else
      Rep.Report.Params.ParamByName('MARCA').Value := 'TODAS AS MARCAS DO CADASTRO';

    {**** CENTRO DE CUSTO **** }
    if (ComboBox9.Text <> '') then
    begin
      if dm.cds_ccusto.Active then
        dm.cds_ccusto.Close;
      dm.cds_ccusto.Params[0].AsString := conta_local;
      dm.cds_ccusto.Open;
      if (dm.cds_ccusto.Locate('NOME', ComboBox9.Text, [loCaseInsensitive])) then
        Rep.Report.Params.ParamByName('CCUSTO').Value := dm.cds_ccustoCODIGO.AsInteger
      else
        Rep.Report.Params.ParamByName('CCUSTO').Value := 999999;
    end
    else
      Rep.Report.Params.ParamByName('CCUSTO').Value := 999999;


  except
    on EConvertError do
    begin
       ShowMessage ('Data Inválida! dd/mm/aa');
       Data1.SetFocus;
    end;
  end;
  Rep.Execute;

end;

procedure TfRelVenda.BitBtn13Click(Sender: TObject);
begin
  try
    Case rgProdutoGrupo.ItemIndex of
      0: Rep.Filename := str_relatorio + 'rel_vendaCustoMP.rep';
      1: Rep.Filename := str_relatorio + 'rel_vendaCustoMPGrupo.rep';
    end;
    Rep.Title := rep.Filename;
    Rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    Rep.Report.Params.ParamByName('DATA1').Value := Data1.date;
    Rep.Report.Params.ParamByName('DATA2').Value := Data2.date;
    {**** CENTRO DE CUSTO **** }
    if (ComboBox9.Text <> '') then
    begin
      if dm.cds_ccusto.Active then
        dm.cds_ccusto.Close;
      dm.cds_ccusto.Params[0].AsString := conta_local;
      dm.cds_ccusto.Open;
      if (dm.cds_ccusto.Locate('NOME', ComboBox9.Text, [loCaseInsensitive])) then
        Rep.Report.Params.ParamByName('CCUSTO').Value := dm.cds_ccustoCODIGO.AsInteger
      else
        Rep.Report.Params.ParamByName('CCUSTO').Value := 0;
    end
    else
      Rep.Report.Params.ParamByName('CCUSTO').Value := 0;

  except
    on EConvertError do
    begin
      ShowMessage ('Data Inválida! dd/mm/aa');
      Data1.SetFocus;
    end;
  end;
  Rep.Execute;
end;

procedure TfRelVenda.RadioGroup1Click(Sender: TObject);
begin
  if (RadioGroup1.ItemIndex = 0) then
  begin
    JvComboBox1.Enabled := True;
    cbRazao.Enabled     := False;
    BitBtn8.Enabled     := True;
    BitBtn3.Enabled     := True;
    BitBtn4.Enabled     := True;
  end
  else begin
    JvComboBox1.Enabled := False;
    cbRazao.Enabled     := True;
    BitBtn8.Enabled     := False;
    BitBtn3.Enabled     := False;
    BitBtn4.Enabled     := False;
  end;
end;

end.

