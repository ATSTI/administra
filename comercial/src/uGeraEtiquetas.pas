unit uGeraEtiquetas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, DB, Provider, DBClient, SqlExpr, Buttons,
  Grids, DBGrids,comobj, EDBFind ,DBXpress, rpcompobase, rpvclreport;

type
  TfGeraEtiquetas = class(TForm)
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
    DSPPro: TDataSetProvider;
    DSPro: TDataSource;
    SQLD1: TSQLDataSet;
    SQLD1CODPRODUTO: TIntegerField;
    SQLD1ORIGEM: TIntegerField;
    SQLD1PRODUTO: TStringField;
    CDS1: TClientDataSet;
    CDS1CODPRODUTO: TIntegerField;
    CDS1ORIGEM: TIntegerField;
    CDS1PRODUTO: TStringField;
    DSP1: TDataSetProvider;
    DS1: TDataSource;
    cbMarca: TComboBox;
    Label6: TLabel;
    Label7: TLabel;
    cbFamilia: TComboBox;
    cbCategoria: TComboBox;
    Label8: TLabel;
    BitBtn1: TBitBtn;
    cds_proc: TClientDataSet;
    dsp_proc: TDataSetProvider;
    sds_proc: TSQLDataSet;
    Dtsrc: TDataSource;
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
    sds_procORIGEM: TIntegerField;
    cds_procORIGEM: TIntegerField;
    SpeedButton1: TBitBtn;
    EvDBFind1: TEvDBFind;
    Label1: TLabel;
    DBGrid2: TDBGrid;
    SpeedButton2: TBitBtn;
    BitBtn2: TBitBtn;
    DBGrid3: TDBGrid;
    Combo: TComboBox;
    SQLq: TSQLDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    CDSq: TClientDataSet;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    StringField2: TStringField;
    DSPq: TDataSetProvider;
    DSq: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EvDBFind2: TEvDBFind;
    Label5: TLabel;
    BitBtn3: TBitBtn;
    sds_procQTD: TIntegerField;
    cds_procQTD: TIntegerField;
    SQLProIMPRESSORA_1: TStringField;
    SQLProIMPRESSORA_2: TStringField;
    SQLProIMPRESSORA_3: TStringField;
    SQLProQTD: TIntegerField;
    CDSProIMPRESSORA_1: TStringField;
    CDSProIMPRESSORA_2: TStringField;
    CDSProIMPRESSORA_3: TStringField;
    CDSProQTD: TIntegerField;
    SQLqQTD: TIntegerField;
    SQLqCODPROD: TStringField;
    SQLqLOCALIZACAO: TStringField;
    CDSqQTD: TIntegerField;
    CDSqCODPROD: TStringField;
    CDSqLOCALIZACAO: TStringField;
    SQLD1QTD: TIntegerField;
    SQLD1CODPROD: TStringField;
    SQLD1LOCALIZACAO: TStringField;
    CDS1QTD: TIntegerField;
    CDS1CODPROD: TStringField;
    CDS1LOCALIZACAO: TStringField;
    edt1: TEdit;
    lbl3: TLabel;
    btn1Coluna: TBitBtn;
    VCLReport1: TVCLReport;
    btnSair: TBitBtn;
    btnExcluir: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbMarcaChange(Sender: TObject);
    procedure cbFamiliaChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btn1ColunaClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   TD: TTransactionDesc;
  end;

var
  fGeraEtiquetas: TfGeraEtiquetas;
  IMP ,varonde: STRING;
implementation

uses UDm;

{$R *.dfm}

procedure TfGeraEtiquetas.BitBtn2Click(Sender: TObject);
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
    try
      dm.sqlsisAdimin.StartTransaction(TD);
      //dm.sqlsisAdimin.ExecuteDirect('Update PRODUTOS set ORIGEM = NULL '+
      //'where ORIGEM <> 0 ');   // ORIGEM é usado para Tributacao
      dm.sqlsisAdimin.Commit(TD);
    except
      dm.sqlsisAdimin.Rollback(TD);
    end;
    cds_proc.Close ;
    cds_proc.Open;
end;

procedure TfGeraEtiquetas.FormShow(Sender: TObject);
begin
 // if(CDS1.Active)then
 // CDS1.Close;
 // CDS1.Open;
  if (not dm.cds_Marca.Active) then
    dm.cds_Marca.Open;
  dm.cds_Marca.First;
  while not dm.cds_Marca.Eof do
  begin
     cbMarca.Items.Add(dm.cds_MarcaDESCMARCAS.AsString);
     dm.cds_Marca.Next;
  end;
  dm.cds_Marca.Close;

  if (not dm.cds_familia.Active) then
    dm.cds_familia.Open;
  dm.cds_familia.First;
  while not dm.cds_familia.Eof do
  begin
     cbFamilia.Items.Add(dm.cds_familiaDESCFAMILIA.AsString);
     dm.cds_familia.Next;
  end;
  dm.cds_familia.Close;

  if dm.cds_categoria.Active then
    dm.cds_categoria.Close;
  dm.cds_categoria.Params[0].Clear;
  dm.cds_categoria.Params[2].Clear;
  dm.cds_categoria.Params[1].AsString := 'todos';
  dm.cds_categoria.Open;
  dm.cds_categoria.First;
  while not dm.cds_categoria.Eof do
  begin
     cbCategoria.Items.Add(dm.cds_categoriaDESCCATEGORIA.AsString);
     dm.cds_categoria.Next;
  end;
  dm.cds_categoria.Close;


end;

procedure TfGeraEtiquetas.cbMarcaChange(Sender: TObject);
var sqlFam:string;
begin
  if DM.cds_familia.Active then
    DM.cds_familia.Close;
  sqlFam := dm.sds_familia.CommandText;
  if (cbMarca.Text <> '') then
  begin
    dm.cds_Familia.CommandText := 'select * from FAMILIAPRODUTOS ' +
      'where MARCA = ' + QuotedStr(cbMarca.Text);
  end
  else
    dm.cds_Familia.CommandText := 'select * from FAMILIAPRODUTOS';
  DM.cds_familia.Open;
  DM.cds_familia.First;
  cbFamilia.Clear;
  while not DM.cds_familia.Eof do
  begin
     cbFamilia.Items.Add(DM.cds_familiaDESCFAMILIA.AsString);
     DM.cds_familia.Next;
  end;
  DM.cds_familia.CommandText := sqlFam;

end;

procedure TfGeraEtiquetas.cbFamiliaChange(Sender: TObject);
BEGIN
 if (cbFamilia.Text <> '') then
 begin
    if not DM.cds_familia.Active then
        DM.cds_familia.Open;
       DM.cds_familia.Locate('DESCFAMILIA', CbFamilia.Text,[loCaseInsensitive]);
    if DM.cds_categoria.Active then
      DM.cds_categoria.Close;
    DM.cds_categoria.Params[0].Clear;
    DM.cds_categoria.Params[1].Clear;
    DM.cds_categoria.Params[2].AsInteger := DM.cds_familiaCOD_FAMILIA.AsInteger;
    DM.cds_categoria.Open;
    dm.cds_categoria.First;
    cbCategoria.Items.Clear;
    while not dm.cds_categoria.Eof do
    begin
       cbCategoria.Items.Add(dm.cds_categoriaDESCCATEGORIA.AsString);
       dm.cds_categoria.Next;
    end;
    dm.cds_categoria.Close;
    dm.cds_familia.Close;
 end
 else
 begin
    if dm.cds_categoria.Active then
      dm.cds_categoria.Close;
    dm.cds_categoria.Params[0].Clear;
    dm.cds_categoria.Params[2].Clear;
    dm.cds_categoria.Params[1].AsString := 'todos';
    dm.cds_categoria.Open;
    dm.cds_categoria.First;
    cbCategoria.Items.Clear;
    while not dm.cds_categoria.Eof do
    begin
       cbCategoria.Items.Add(dm.cds_categoriaDESCCATEGORIA.AsString);
       dm.cds_categoria.Next;
    end;
    dm.cds_categoria.Close;
 end;

end;

procedure TfGeraEtiquetas.BitBtn1Click(Sender: TObject);
var varSql, varCondicao ,sql : string;
i : integer;
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
   ' IPI , ORIGEM ,QTD ' +
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



procedure TfGeraEtiquetas.SpeedButton1Click(Sender: TObject);
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
       MSWord.Selection.TypeText(Text :=#13+trim(CDS1CODPROD.AsString)+#13+trim (CDS1PRODUTO.AsString)+#13+trim (CDS1LOCALIZACAO.AsString));
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

procedure TfGeraEtiquetas.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

  ShowScrollBar(DBGrid3.Handle,SB_VERT,False);
end;

procedure TfGeraEtiquetas.SpeedButton2Click(Sender: TObject);
begin
  cds_proc.ApplyUpdates(0) ;
    if(CDS1.Active)then
  CDS1.Close;
  CDS1.Open;
    if(CDSq.Active)then
  CDSq.Close;
  CDSq.Open;

end;

procedure TfGeraEtiquetas.BitBtn3Click(Sender: TObject);
begin
{MSWord:= CreateOleObject ('Word.Basic');
MSWord.AppShow;//mostra o word 
MSWord.FileNew;//inicia um novo documento 
MSWord.insert('Contrato de Locação'); //Escreve algo 
MSWord.insert(#13+'Contrato de Locação');//Pula uma linha e escreve 
MSWord.FontSize(24);//muda o tamanho da fonte 
MSWord.italic;//coloca italico 
MSWord.bold;//coloca negrito 
MSWord.underline;//sublina 
MSWord.insert(#13+'Contrato de Locação');//pula a linha e escreve novamente 
MSWord.FontSize(12);//muda o tamanho da fonte 
MSWord.Font('Arial');//muda a fonte usada 
MSWord.underline(false);//retira o sublinhado 
MSWord.italic(false);//retira o italico 
MSWord.bold(false);//retira o bold 
MSWord.insert(#13 +'teste'); 
MSWord.insert(#13+#9 +'teste');//nova linha e um TAB 
//MSWord.insert(#13+Table1Razao_Social.Value);//insere algo de uma tabela
MSWord.LineUp(2, 1); //seleciona uma parte do texto 
MSWord.TextToTable(ConvertFrom := 2, NumColumns := 1);// monta uma tabela com o texto selecionado 
Word.FileSaveAs('c:\temp\test.txt', 3); //Salva o arquivo 
}
end;

procedure TfGeraEtiquetas.btn1ColunaClick(Sender: TObject);
begin
  if (DtSrc.State in [dsInsert, dsEdit]) then
  begin
    MessageDlg('Grave as alterações antes de imprimir.', mtWarning, [mbOK], 0);
    exit;
  end;
  VCLReport1.FileName := str_relatorio + 'etiqueta_gondola.rep';
  VCLReport1.Title := VCLReport1.FileName;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  //VCLReport1.Report.Params.ParamByName('CODMOV').Value := cds_MovimentoCODMOVIMENTO.AsInteger;
  VCLReport1.Execute;
end;

procedure TfGeraEtiquetas.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfGeraEtiquetas.btnExcluirClick(Sender: TObject);
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  try
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect('Update PRODUTOS set QTD = NULL '+
    'where QTD <> 0 ');
    dm.sqlsisAdimin.Commit(TD);
  except
    dm.sqlsisAdimin.Rollback(TD);
  end;
  cds_proc.Close;
  cds_proc.Open;
end;

end.
