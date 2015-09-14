unit uprincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, rpcompobase, rpvclreport, DB, Provider, DBClient,
  SqlExpr, StdCtrls, Grids, DBGrids, EDBFind, Buttons, DBXpress ,comobj,
  ACBrBase, ACBrETQ ,ACBrDevice, JvComponentBase, JvCSVBaseControls, IniFiles, uThread;

type
  TfPrincipal = class(TForm)
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lbl3: TLabel;
    cbMarca: TComboBox;
    cbFamilia: TComboBox;
    cbCategoria: TComboBox;
    BitBtn1: TBitBtn;
    SpeedButton1: TBitBtn;
    EvDBFind1: TEvDBFind;
    DBGrid1: TDBGrid;
    SpeedButton2: TBitBtn;
    DBGrid2: TDBGrid;
    Combo: TComboBox;
    EvDBFind2: TEvDBFind;
    BitBtn3: TBitBtn;
    edt1: TEdit;
    btn1Coluna: TBitBtn;
    btnSair: TBitBtn;
    btnExcluir: TBitBtn;
    SQLPro: TSQLDataSet;
    SQLProCODPRODUTO: TIntegerField;
    SQLProFAMILIA: TStringField;
    SQLProCATEGORIA: TStringField;
    SQLProMARCA: TStringField;
    SQLProUNIDADEMEDIDA: TStringField;
    SQLProDATAULTIMACOMPRA: TDateField;
    SQLProESTOQUEMAXIMO: TFloatField;
    SQLProESTOQUEATUAL: TFloatField;
    SQLProESTOQUEREPOSICAO: TFloatField;
    SQLProESTOQUEMINIMO: TFloatField;
    SQLProVALORUNITARIOATUAL: TFloatField;
    SQLProVALORUNITARIOANTERIOR: TFloatField;
    SQLProICMS: TFloatField;
    SQLProCODALMOXARIFADO: TIntegerField;
    SQLProIPI: TFloatField;
    SQLProCLASSIFIC_FISCAL: TStringField;
    SQLProCST: TStringField;
    SQLProBASE_ICMS: TFloatField;
    SQLProPRODUTO: TStringField;
    SQLProPRECOMEDIO: TBCDField;
    SQLProCOD_COMISSAO: TIntegerField;
    SQLProMARGEM_LUCRO: TFloatField;
    SQLProCOD_BARRA: TStringField;
    SQLProVALOR_PRAZO: TFloatField;
    SQLProTIPO: TStringField;
    SQLProCONTA_DESPESA: TStringField;
    SQLProCONTA_RECEITA: TStringField;
    SQLProCONTA_ESTOQUE: TStringField;
    SQLProRATEIO: TStringField;
    SQLProCODPRO: TStringField;
    SQLProQTDE_PCT: TFloatField;
    SQLProPESO_QTDE: TFloatField;
    SQLProDATACADASTRO: TSQLTimeStampField;
    SQLProMARGEM: TFloatField;
    SQLProPRO_COD: TStringField;
    SQLProDATAGRAV: TDateField;
    SQLProCODFORN: TStringField;
    SQLProFOTOPRODUTO: TStringField;
    SQLProLOTES: TStringField;
    SQLProUSA: TStringField;
    SQLProLOCALIZACAO: TStringField;
    SQLProTIPOPRECOVENDA: TStringField;
    SQLProVALORMINIMO: TFloatField;
    SQLProVALORCOMISSAO: TFloatField;
    SQLProGERADESCONTO: TStringField;
    SQLProIMPRIMIR: TStringField;
    SQLProORIGEM: TIntegerField;
    SQLProNCM: TStringField;
    SQLProIMPRESSORA_1: TStringField;
    SQLProIMPRESSORA_2: TStringField;
    SQLProIMPRESSORA_3: TStringField;
    SQLProQTD: TIntegerField;
    CDSPro: TClientDataSet;
    CDSProCODPRODUTO: TIntegerField;
    CDSProFAMILIA: TStringField;
    CDSProCATEGORIA: TStringField;
    CDSProMARCA: TStringField;
    CDSProUNIDADEMEDIDA: TStringField;
    CDSProDATAULTIMACOMPRA: TDateField;
    CDSProESTOQUEMAXIMO: TFloatField;
    CDSProESTOQUEATUAL: TFloatField;
    CDSProESTOQUEREPOSICAO: TFloatField;
    CDSProESTOQUEMINIMO: TFloatField;
    CDSProVALORUNITARIOATUAL: TFloatField;
    CDSProVALORUNITARIOANTERIOR: TFloatField;
    CDSProICMS: TFloatField;
    CDSProCODALMOXARIFADO: TIntegerField;
    CDSProIPI: TFloatField;
    CDSProCLASSIFIC_FISCAL: TStringField;
    CDSProCST: TStringField;
    CDSProBASE_ICMS: TFloatField;
    CDSProPRODUTO: TStringField;
    CDSProPRECOMEDIO: TBCDField;
    CDSProCOD_COMISSAO: TIntegerField;
    CDSProMARGEM_LUCRO: TFloatField;
    CDSProCOD_BARRA: TStringField;
    CDSProVALOR_PRAZO: TFloatField;
    CDSProTIPO: TStringField;
    CDSProCONTA_DESPESA: TStringField;
    CDSProCONTA_RECEITA: TStringField;
    CDSProCONTA_ESTOQUE: TStringField;
    CDSProRATEIO: TStringField;
    CDSProCODPRO: TStringField;
    CDSProQTDE_PCT: TFloatField;
    CDSProPESO_QTDE: TFloatField;
    CDSProDATACADASTRO: TSQLTimeStampField;
    CDSProMARGEM: TFloatField;
    CDSProPRO_COD: TStringField;
    CDSProDATAGRAV: TDateField;
    CDSProCODFORN: TStringField;
    CDSProFOTOPRODUTO: TStringField;
    CDSProLOTES: TStringField;
    CDSProUSA: TStringField;
    CDSProLOCALIZACAO: TStringField;
    CDSProTIPOPRECOVENDA: TStringField;
    CDSProVALORMINIMO: TFloatField;
    CDSProVALORCOMISSAO: TFloatField;
    CDSProGERADESCONTO: TStringField;
    CDSProIMPRIMIR: TStringField;
    CDSProORIGEM: TIntegerField;
    CDSProNCM: TStringField;
    CDSProIMPRESSORA_1: TStringField;
    CDSProIMPRESSORA_2: TStringField;
    CDSProIMPRESSORA_3: TStringField;
    CDSProQTD: TIntegerField;
    DSPPro: TDataSetProvider;
    DSPro: TDataSource;
    SQLD1: TSQLDataSet;
    CDS1: TClientDataSet;
    DSP1: TDataSetProvider;
    DS1: TDataSource;
    cds_proc: TClientDataSet;
    cds_procCODPRODUTO: TIntegerField;
    cds_procCOD_BARRA: TStringField;
    cds_procCODPRO: TStringField;
    cds_procPRODUTO: TStringField;
    cds_procFAMILIA: TStringField;
    cds_procQTDE_PCT: TFloatField;
    cds_procUNIDADEMEDIDA: TStringField;
    cds_procMARCA: TStringField;
    cds_procESTOQUEATUAL: TFloatField;
    cds_procCODALMOXARIFADO: TIntegerField;
    cds_procICMS: TFloatField;
    cds_procTIPO: TStringField;
    cds_procLOCALIZACAO: TStringField;
    cds_procLOTES: TStringField;
    cds_procCATEGORIA: TStringField;
    cds_procPESO_QTDE: TFloatField;
    cds_procIPI: TFloatField;
    cds_procORIGEM: TIntegerField;
    cds_procQTD: TIntegerField;
    dsp_proc: TDataSetProvider;
    sds_proc: TSQLDataSet;
    sds_procCODPRODUTO: TIntegerField;
    sds_procCOD_BARRA: TStringField;
    sds_procCODPRO: TStringField;
    sds_procPRODUTO: TStringField;
    sds_procFAMILIA: TStringField;
    sds_procQTDE_PCT: TFloatField;
    sds_procUNIDADEMEDIDA: TStringField;
    sds_procMARCA: TStringField;
    sds_procESTOQUEATUAL: TFloatField;
    sds_procCODALMOXARIFADO: TIntegerField;
    sds_procICMS: TFloatField;
    sds_procTIPO: TStringField;
    sds_procLOCALIZACAO: TStringField;
    sds_procLOTES: TStringField;
    sds_procCATEGORIA: TStringField;
    sds_procPESO_QTDE: TFloatField;
    sds_procIPI: TFloatField;
    sds_procORIGEM: TIntegerField;
    sds_procQTD: TIntegerField;
    Dtsrc: TDataSource;
    SQLq: TSQLDataSet;
    CDSq: TClientDataSet;
    DSPq: TDataSetProvider;
    DSq: TDataSource;
    VCLReport1: TVCLReport;
    sqlCon: TSQLConnection;
    cds_Marca: TClientDataSet;
    cds_MarcaDESCMARCAS: TStringField;
    dsp_Marca: TDataSetProvider;
    sds_Marca: TSQLDataSet;
    sds_MarcaDESCMARCAS: TStringField;
    cds_familia: TClientDataSet;
    cds_familiaDESCFAMILIA: TStringField;
    cds_familiaCOD_FAMILIA: TIntegerField;
    cds_familiaMARCA: TStringField;
    dsp_familia: TDataSetProvider;
    sds_familia: TSQLDataSet;
    sds_familiaDESCFAMILIA: TStringField;
    sds_familiaCOD_FAMILIA: TIntegerField;
    sds_familiaMARCA: TStringField;
    dsp_categoria: TDataSetProvider;
    cds_categoria: TClientDataSet;
    cds_categoriaDESCCATEGORIA: TStringField;
    cds_categoriaCOD_CATEGORIA: TIntegerField;
    cds_categoriaCOD_FAMILIA: TIntegerField;
    cds_categoriaCASE: TStringField;
    sds_categoria: TSQLDataSet;
    sds_categoriaDESCCATEGORIA: TStringField;
    sds_categoriaCOD_CATEGORIA: TIntegerField;
    sds_categoriaCOD_FAMILIA: TIntegerField;
    sds_categoriaCASE: TStringField;
    SQLD1CODPRODUTO: TIntegerField;
    SQLD1QTD: TIntegerField;
    SQLD1PRODUTO: TStringField;
    SQLD1CODPROD: TStringField;
    SQLD1LOCALIZACAO: TStringField;
    SQLD1ORIGEM: TIntegerField;
    CDS1CODPRODUTO: TIntegerField;
    CDS1QTD: TIntegerField;
    CDS1PRODUTO: TStringField;
    CDS1CODPROD: TStringField;
    CDS1LOCALIZACAO: TStringField;
    CDS1ORIGEM: TIntegerField;
    bEtqSimples: TButton;
    cbModelo: TComboBox;
    cbPorta: TComboBox;
    eAvanco1: TEdit;
    Label9: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    ACBrETQ: TACBrETQ;
    Label16: TLabel;
    cbDPI: TComboBox;
    BitBtn5: TBitBtn;
    Label10: TLabel;
    SQLqCODPRODUTO: TIntegerField;
    SQLqQTD: TIntegerField;
    SQLqPRODUTO: TStringField;
    SQLqCODPROD: TStringField;
    SQLqLOCALIZACAO: TStringField;
    SQLqORIGEM: TIntegerField;
    SQLqVALOR_PRAZO: TFloatField;
    SQLqCOD_BARRA: TStringField;
    CDSqCODPRODUTO: TIntegerField;
    CDSqQTD: TIntegerField;
    CDSqPRODUTO: TStringField;
    CDSqCODPROD: TStringField;
    CDSqLOCALIZACAO: TStringField;
    CDSqORIGEM: TIntegerField;
    CDSqVALOR_PRAZO: TFloatField;
    CDSqCOD_BARRA: TStringField;
    BitBtn4: TBitBtn;
    Button1: TButton;
    SQLqOBS: TStringField;
    CDSqOBS: TStringField;
    btnImprimeIza: TButton;
    Memo1: TMemo;
    Edit1: TEdit;
    edDiretorio: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btn1ColunaClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure cbMarcaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbFamiliaChange(Sender: TObject);
    procedure bEtqSimplesClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnImprimeIzaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    ArquivoCSV: TextFile;
    Config: TIniFile;
    dir: String;
    porta: String;
    arquivo1: String;
    diretorio: String;
    lendoDir : FThread;
    dbxconec: TStringList;
    str_relatorio : String;
    procedure AtivarACBrETQ ;
    procedure lerPlanilha(arquivo: String);
    procedure imprimePlanilha(cod, produto, preco, qtde: String);

  public
    { Public declarations }
       TD: TTransactionDesc;
  end;

var
  fPrincipal: TfPrincipal;

implementation

{$R *.dfm}

procedure TfPrincipal.BitBtn1Click(Sender: TObject);
var varSql, varCondicao ,sql : string;
begin

 cds_proc.CommandText := '';
 varCondicao := '';
 // Produtos
 varSql := 'select distinct CODPRODUTO, COD_BARRA, CODPRO, ' +
   ' PRODUTO,FAMILIA , ' +
   'QTDE_PCT, UNIDADEMEDIDA, ' +
   ' MARCA, ' +
   'ESTOQUEATUAL, CODALMOXARIFADO, ICMS, TIPO, LOCALIZACAO, LOTES,    ' +
   ' CATEGORIA, PESO_QTDE, ' +
   ' IPI , ORIGEM ,QTD , VALOR_PRAZO ' +
   'from PRODUTOS ';

  if (cbMarca.Text <> '') then
  begin
    if Sql='' then
      Sql := Sql + ' WHERE MARCA = '
    else
      Sql := Sql + ' and MARCA = ';
    Sql := Sql + QuotedStr(cbMarca.Text);
  end;

  if (cbCategoria.Text <> '') then
  begin
    if Sql='' then
      Sql := Sql  + ' WHERE CATEGORIA = '
    else
      Sql := Sql  + ' AND CATEGORIA = ';
      Sql := Sql  + QuotedStr(cbCategoria.Text) ;
  end;

 if (cbFamilia.Text <> '') then
  begin
    if Sql='' then
      Sql := Sql + ' WHERE FAMILIA = '
    else
      Sql := Sql + ' and FAMILIA = ';
    Sql := Sql + QuotedStr(cbFamilia.Text);
  end;




 varCondicao := varSql + varCondicao + Sql + ' order by PRODUTO ';


 if cds_proc.Active then
   cds_proc.Close;
 cds_proc.CommandText := varCondicao;



 cds_proc.Open;


end;

procedure TfPrincipal.btnExcluirClick(Sender: TObject);
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  try
    sqlCon.StartTransaction(TD);
    sqlCon.ExecuteDirect('Update PRODUTOS set QTD = NULL '+
    'where QTD <> 0 ');
    sqlCon.Commit(TD);
  except
    sqlCon.Rollback(TD);
  end;
  cds_proc.Close;
  cds_proc.Open;
end;

procedure TfPrincipal.SpeedButton2Click(Sender: TObject);
begin
  cds_proc.ApplyUpdates(0) ;
    if(CDS1.Active)then
  CDS1.Close;
  CDS1.Open;
    if(CDSq.Active)then
  CDSq.Close;
  CDSq.Open;
end;

procedure TfPrincipal.SpeedButton1Click(Sender: TObject);
var
MSWord: Variant;
finallinha:boolean;
i : Integer;
begin
  if(Combo.Text = '')then
  begin
    MessageDlg('Escolha um tipo de Etiqueta', mtWarning, [mbOK], 0);
    Combo.SetFocus;
    exit;
  end;

  {sera usada a uses COMOBJ}
  { Abre o Word }
  MSWord := CreateOleObject('Word.Application');
  {não visualizar Microsoft Word}
  MSWord.Visible:=false;

  { Abre documento em anexo junto ao  exe}
  MSWord.Documents.Open(ExtractFilePath(Application.ExeName)+ Combo.Text + '.doc' ); //'a5.doc');//'Doc1.doc') ;//'Etiqueta_Pimaco_6181.doc');
  finallinha:=false;{Essa variavel foi criada para controlar o avanço de para cada celula da coluna }
  CDS1.First;

  if finallinha=false then
  begin
    for i := 0 to (StrToInt(edt1.Text)-1) do
    begin
      MSWord.Selection.MoveRight(12);
    end;
    finallinha:=true;
  end;


  while not CDS1.Eof do
  begin
       { Escreve na  célula }
       MSWord.Selection.TypeText(Text :=#13+trim(CDS1CODPROD.AsString)+#13
       +trim (CDS1PRODUTO.AsString)+#13+trim (CDS1LOCALIZACAO.AsString)

       );
       MSWord.Selection.Font.Name := 'CodabarLarge';
    //   MSWord.Selection.TypeText(Text :=#13+trim (CDS1COD_BARRA.AsString));
       MSWord.Selection.Font.Name := 'Arial';
    //   MSWord.Selection.TypeText(Text :=#13+trim (CDS1COD_BARRA.AsString));
       if finallinha=false then
         begin
           { Pula 1 celula}
           MSWord.Selection.MoveRight(12);
           finallinha:=true;
         end
       else
         begin
           { vai para a proxima celula }
           MSWord.Selection.MoveRight(12);
           finallinha:=false;
         end;
       CDS1.Next;
  end;
  {visualizar Microsoft word }
  MSWord.Visible:=true;

end;

procedure TfPrincipal.btn1ColunaClick(Sender: TObject);
begin
  if (DtSrc.State in [dsInsert, dsEdit]) then
  begin
    MessageDlg('Grave as alterações antes de imprimir.', mtWarning, [mbOK], 0);
    exit;
  end;
  VCLReport1.FileName := str_relatorio + 'etiqueta_gondola.rep';
  VCLReport1.Title := VCLReport1.FileName;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := sqlCon;
  //VCLReport1.Report.Params.ParamByName('CODMOV').Value := cds_MovimentoCODMOVIMENTO.AsInteger;
  VCLReport1.Execute;

end;

procedure TfPrincipal.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfPrincipal.cbMarcaChange(Sender: TObject);
var sqlFam:string;
begin
  if cds_familia.Active then
    cds_familia.Close;
  sqlFam := sds_familia.CommandText;
  if (cbMarca.Text <> '') then
  begin
    cds_Familia.CommandText := 'select * from FAMILIAPRODUTOS ' +
      'where MARCA = ' + QuotedStr(cbMarca.Text);
  end
  else
    cds_Familia.CommandText := 'select * from FAMILIAPRODUTOS';
  cds_familia.Open;
  cds_familia.First;
  cbFamilia.Clear;
  while not cds_familia.Eof do
  begin
     cbFamilia.Items.Add(cds_familiaDESCFAMILIA.AsString);
     cds_familia.Next;
  end;
  cds_familia.CommandText := sqlFam;
end;

procedure TfPrincipal.FormShow(Sender: TObject);
begin

  sqlCon.Connected := False;
  sqlCon.LoadParamsFromIniFile('dbxconnections.ini');
  sqlCon.LibraryName := 'dbexpUIBfire15.dll';
  sqlCon.VendorLib := 'FBCLIENT.DLL';
  dbxconec := TStringList.Create;
  try
   dbxconec.LoadFromFile('dbxconnections.ini');
   str_relatorio := dbxconec[14];
   str_relatorio := copy(str_relatorio,16,length(str_relatorio));
  finally
   dbxconec.Free;
  end;




  if (not cds_Marca.Active) then
    cds_Marca.Open;
  cds_Marca.First;
  while not cds_Marca.Eof do
  begin
     cbMarca.Items.Add(cds_MarcaDESCMARCAS.AsString);
     cds_Marca.Next;
  end;
  cds_Marca.Close;

  if (not cds_familia.Active) then
    cds_familia.Open;
  cds_familia.First;
  while not cds_familia.Eof do
  begin
     cbFamilia.Items.Add(cds_familiaDESCFAMILIA.AsString);
     cds_familia.Next;
  end;
  cds_familia.Close;

  if cds_categoria.Active then
    cds_categoria.Close;
  cds_categoria.Params[0].Clear;
  cds_categoria.Params[2].Clear;
  cds_categoria.Params[1].AsString := 'todos';
  cds_categoria.Open;
  cds_categoria.First;
  while not cds_categoria.Eof do
  begin
     cbCategoria.Items.Add(cds_categoriaDESCCATEGORIA.AsString);
     cds_categoria.Next;
  end;
  cds_categoria.Close;

end;

procedure TfPrincipal.cbFamiliaChange(Sender: TObject);
begin
 if (cbFamilia.Text <> '') then
 begin
    if not cds_familia.Active then
        cds_familia.Open;
       cds_familia.Locate('DESCFAMILIA', CbFamilia.Text,[loCaseInsensitive]);
    if cds_categoria.Active then
      cds_categoria.Close;
    cds_categoria.Params[0].Clear;
    cds_categoria.Params[1].Clear;
    cds_categoria.Params[2].AsInteger := cds_familiaCOD_FAMILIA.AsInteger;
    cds_categoria.Open;
    cds_categoria.First;
    cbCategoria.Items.Clear;
    while not cds_categoria.Eof do
    begin
       cbCategoria.Items.Add(cds_categoriaDESCCATEGORIA.AsString);
       cds_categoria.Next;
    end;
    cds_categoria.Close;
    cds_familia.Close;
 end
 else
 begin
    if cds_categoria.Active then
      cds_categoria.Close;
    cds_categoria.Params[0].Clear;
    cds_categoria.Params[2].Clear;
    cds_categoria.Params[1].AsString := 'todos';
    cds_categoria.Open;
    cds_categoria.First;
    cbCategoria.Items.Clear;
    while not cds_categoria.Eof do
    begin
       cbCategoria.Items.Add(cds_categoriaDESCCATEGORIA.AsString);
       cds_categoria.Next;
    end;
    cds_categoria.Close;
 end;
end;

procedure TfPrincipal.bEtqSimplesClick(Sender: TObject);
var descricao  : string ;
begin
  AtivarACBrETQ ;

  with ACBrETQ do
  begin
    while not (CDSq.Eof) do
    begin
      if Modelo = etqPPlb then
      begin
        descricao := CDSqPRODUTO.AsString ;
        ImprimirTexto(orNormal, 2, 2, 2, 5, 55, Copy(descricao,1,30));
        ImprimirTexto(orNormal, 2, 2, 2, 60, 55, Copy(descricao,31,60));
        ImprimirTexto(orNormal, 3, 3, 2, 110, 255, 'R$');
        ImprimirTexto(orNormal, 3, 4, 5, 85, 415, FormatFloat(',##0.00', CDSqVALOR_PRAZO.AsFloat));

      end ;
      Imprimir((CDSqQTD.AsInteger));
      Desativar;
      CDSq.Next;
    end;
  end;

end;

procedure TfPrincipal.AtivarACBrETQ;
begin
  with ACBrETQ do
  begin
     DPI           := TACBrETQDPI(cbDPI.ItemIndex);
     Modelo        := TACBrETQModelo(cbModelo.ItemIndex) ;
     Porta         := cbPorta.Text ;
   //  LimparMemoria := ckMemoria.Checked ;

     Ativar ;
  end ;
end;

procedure TfPrincipal.BitBtn5Click(Sender: TObject);
begin

  MessageDlg('Como Calibrar Impressora Zebra TLP 2844'+#13+#10+''+#13+#10+
  'Vamos ao passo a passo, o procedimento começa com a impressora desligada:'+#13+#10+''+#13+#10+
  '1. Pressione e segure o botão de alimentação (Feed - Botão verde localizado na parte de cima da impressora)'+#13+#10+''+#13+#10+
  '2. Agora você deve ligar a impressora;'+#13+#10+''+#13+#10+
  '3. Aguarde a luz do status piscar 3 vezes para soltar o botão.'+#13+#10+''+#13+#10+
  '4. A impressora irá avançar algumas etiquetas em branco  para medir e verificar o comprimento das mesmas. '+#13+#10+''+#13+#10+
  'Logo após o término da medição,será imprimesso um resumo do status e a impressora ficará  no modo de DUMP.'+#13+#10+''+#13+#10+
  '5. Para voltar ao modo de operação normal, aperte o botão de Feed mais uma vez. A impressora deverá imprimir “Out Of Dump” e avançar novamente uma etiqueta.'+#13+#10+''+#13+#10+
  'Pronto. Se tudo correu bem, a etiqueta já está calibrada e sua impressora Zebra TLP 2844 pronta para ser utilizada.', mtInformation, [mbOK], 0);

end;

procedure TfPrincipal.BitBtn4Click(Sender: TObject);
var descricao , barra : string ;
begin
  AtivarACBrETQ ;

  with ACBrETQ do
  begin
    while not (CDSq.Eof) do
    begin
      if Modelo = etqPPlb then
      begin

        descricao := CDSqPRODUTO.AsString ;
        barra := CDSqCOD_BARRA.AsString ;
        ImprimirTexto(orNormal, 1, 1, 1, 15, 55, Copy(descricao,1,30));
        ImprimirBarras(orNormal, 'E30', '2', '2', 95, 55, CDSqCOD_BARRA.AsString, 90, becSIM);

      end ;
      Imprimir((CDSqQTD.AsInteger));
      Desativar;
      CDSq.Next;
    end;
  end;
end;

procedure TfPrincipal.Button1Click(Sender: TObject);
var descricao, preco: string ;
begin
  AtivarACBrETQ ;

  with ACBrETQ do
  begin
    while not (CDSq.Eof) do
    begin
      if Modelo = etqPPlb then
      begin
        descricao := CDSqPRODUTO.AsString ;
        preco := FormatFloat('##0.00', CDSqVALOR_PRAZO.AsFloat/100);
        {
         Arquivo ACBrETQEpl2  Exemplo
         =========================
         39         - "3C"
         128       - "1A"  "1B"  "1C"
         EAN8    - "E80" "E82" "E85"
         EAN13  - "E30"  "E32" "E35"
         2 of 5 - "2"  "2C" "2D"

        ImprimirBarras(orNormal,'1A', '2', '2', 410, 570, '12345', 60, becSIM);
        ImprimirBarras(orNormal, 'E30', '2', '2', 410, 570, '7896003701685', 60, becSIM);
        }
          // primeira parte etiqueta
        ImprimirBarras(orNormal, 'E80', '2', '2', 2, 95, CDSqCOD_BARRA.AsString, 90, becSIM);
          // segunda parte etiqueta
        ImprimirTexto(orNormal, 2, 1, 1, 15, 365, preco);
        ImprimirTexto(orNormal, 1, 1, 1, 45, 365,Copy(descricao,1,21));
        ImprimirTexto(orNormal, 1, 1, 1, 75, 365,Copy(CDSqOBS.AsString,1,21));

      end ;
      Imprimir((CDSqQTD.AsInteger));
      Desativar;
      CDSq.Next;
    end;
  end;

end;

procedure TfPrincipal.lerPlanilha(arquivo: String);
var
  Arq: TextFile;
  Texto, linha, codigo: string;
  Txt: TStringList;
begin
  memo1.Lines.Clear;
  Txt := TStringList.Create; // cria a stringlist
  //Txt.StrictDelimiter := True; // indica que o delimitador é somente aquele definido abaixo
  Txt.Delimiter := ';'; // caractere delimitador de campos
  try
    Screen.Cursor := crHourGlass;
    //AssignFile(Arq,'C:\home\prod.csv');
    AssignFile(Arq,arquivo);
    try
      // carreguei ele posso exlcuir
      Reset(Arq);
      linha := 'linha1';
      if not EOF(Arq) then
      repeat
        ReadLn(Arq, Texto);
        Txt.DelimitedText := Texto; // desmembra o texto

        //Texto := Txt[1]; // Codigo
        //Texto := Txt[2]; // Descrição
        //Texto  := Txt[3]; // Preço
        //Texto  := Txt[4]; // Quantidade
        if (linha <> 'linha1') then
        begin
          codigo := txt[0];
          memo1.Lines.Add('Lendo: ' + codigo + ' - ' + txt[1] + ' - ' + txt[2] + ' - ' + txt[3] + '.');
          imprimePlanilha(codigo, txt[1], txt[2],txt[3]);
        end;
        linha := 'linha2';
      until EOF(Arq);
    except
    end;  
  finally
    Closefile(Arq); //fecha arquivo CSV
    Screen.Cursor := crDefault;
  end;
  FreeAndNil(Txt);
end;

procedure TfPrincipal.imprimePlanilha(cod, produto, preco, qtde: String);
  var numero_etiqueta, i: integer;
  pco: Double;
begin
  //num := ;
  DecimalSeparator := '.';
  try
    numero_etiqueta := Trunc(StrToFloat(qtde));
    pco := StrToFloat(preco);
  finally
    DecimalSeparator := ',';
  end;
  preco := FormatFloat('##0.00', pco);
  memo1.Lines.Add('Impri.: ' + cod + ' - ' + produto + ' - ' + preco + ' - ' + IntToStr(numero_etiqueta) + '.');
  ACBrETQ.Porta := Edit1.Text;
  AtivarACBrETQ ;
  with ACBrETQ do
  begin
    if Modelo = etqPPlb then
    begin
      //descricao := CDSqPRODUTO.AsString ;
      {
       Arquivo ACBrETQEpl2  Exemplo
       =========================
       39         - "3C"
       128       - "1A"  "1B"  "1C"
       EAN8    - "E80" "E82" "E85"
       EAN13  - "E30"  "E32" "E35"
       2 of 5 - "2"  "2C" "2D"
       ImprimirBarras(orNormal,'1A', '2', '2', 410, 570, '12345', 60, becSIM);
       ImprimirBarras(orNormal, 'E30', '2', '2', 410, 570, '7896003701685', 60, becSIM);
      }
      //for i := 1 to numero_etiqueta do
      //begin
        // primeira parte etiqueta
        ImprimirBarras(orNormal, 'E80', '2', '2', 2, 125, cod, 90, becSIM);
        // segunda parte etiqueta
        ImprimirTexto(orNormal, 2, 1, 1, 35, 365, preco);
        ImprimirTexto(orNormal, 1, 1, 1, 65, 365,Copy(produto,1,21));
        ImprimirTexto(orNormal, 1, 1, 1, 95, 365,Copy('',1,21));
      //end;
    end;
    Imprimir(numero_etiqueta);

    Desativar;
  end;

end;

procedure TfPrincipal.btnImprimeIzaClick(Sender: TObject);
var
  path    : String;
  //IsFound : Integer;
  //SR      : TSearchRec;
begin
   path := edDiretorio.Text+'etiqueta.csv';
   //IsFound := FindFirst(path, faArchive, SR);
   //FindFirst(path, faArchive, SR);
   label10.Caption := path;
   //while IsFound = 0  do
   //begin
     lerPlanilha(path);
     DeleteFile(path);
     //IsFound := 1;
   //end;

end;

procedure TfPrincipal.FormCreate(Sender: TObject);
begin
  try
    dir              := ExtractFilePath(Application.ExeName);
    config           := TIniFile.Create(dir + 'CONFIG.INI');
    cbPorta.Text     := config.ReadString('IMPRESSORA', 'porta', '');
    edDiretorio.Text := config.ReadString('DIRETORIO', 'pasta', '');
    porta            := cbPorta.Text;
    diretorio        := edDiretorio.Text;

    // Inicia a Thread
    {lendoDir := FThread.Create(true);
    lendoDir.FreeOnTerminate := False;
    lendoDir.Priority := tpNormal;
    lendoDir.Resume;}
  Finally
    FreeAndNil(config);
  end;
end;

end.


