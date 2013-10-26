unit uXmlAns;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient,UTissV2_01_02, xmldom, XMLIntf, msxmldom, XMLDoc,
  StdCtrls, DCPcrypt2, DCPmd5, FMTBcd, Provider, SqlExpr, Grids, DBGrids,
  Buttons, Mask, DBLocal, DBLocalS, rpcompobase, rpvclreport, ExtCtrls,
  ComCtrls, TissConsulta, JvExStdCtrls, JvCombobox, JvDBSearchComboBox,
  JvExDBGrids, JvDBGrid, TissInternacao, Menus, TissSP_SADT, JvExMask,
  JvToolEdit, JvDBControls;

type
  TfXmlAns = class(TForm)
    XMLDocument1: TXMLDocument;
    cdsBuscaGuia: TClientDataSet;
    scdsBuscaGuia: TSQLDataSet;
    dspBuscaGuia: TDataSetProvider;
    scdsBuscaGuiaCODCLIENTE: TIntegerField;
    scdsBuscaGuiaNOMECLIENTE: TStringField;
    scdsBuscaGuiaRAZAOSOCIAL: TStringField;
    scdsBuscaGuiaCONTATO: TStringField;
    scdsBuscaGuiaTIPOFIRMA: TSmallintField;
    scdsBuscaGuiaCPF: TStringField;
    scdsBuscaGuiaCNPJ: TStringField;
    scdsBuscaGuiaINSCESTADUAL: TStringField;
    scdsBuscaGuiaRG: TStringField;
    scdsBuscaGuiaSEGMENTO: TSmallintField;
    scdsBuscaGuiaREGIAO: TSmallintField;
    scdsBuscaGuiaLIMITECREDITO: TFloatField;
    scdsBuscaGuiaDATACADASTRO: TDateField;
    scdsBuscaGuiaCODUSUARIO: TIntegerField;
    scdsBuscaGuiaSTATUS: TSmallintField;
    scdsBuscaGuiaHOMEPAGE: TStringField;
    scdsBuscaGuiaPRAZORECEBIMENTO: TSmallintField;
    scdsBuscaGuiaPRAZOENTREGA: TSmallintField;
    scdsBuscaGuiaCODBANCO: TSmallintField;
    scdsBuscaGuiaBASE_ICMS: TSmallintField;
    scdsBuscaGuiaDATANASC: TDateField;
    scdsBuscaGuiaCONTA_CLIENTE: TStringField;
    scdsBuscaGuiaOBS: TStringField;
    scdsBuscaGuiaTEM_IE: TStringField;
    scdsBuscaGuiaID_COB: TIntegerField;
    scdsBuscaGuiaDATARESC: TDateField;
    scdsBuscaGuiaNOMEMAE: TStringField;
    scdsBuscaGuiaSEXO: TStringField;
    scdsBuscaGuiaFORMA_CORRESPOND: TStringField;
    scdsBuscaGuiaGRUPO_CLIENTE: TStringField;
    scdsBuscaGuiaCODINCLUCANC: TIntegerField;
    scdsBuscaGuiaEXIST_COBERT: TStringField;
    scdsBuscaGuiaEXISTCOPART: TStringField;
    scdsBuscaGuiaDATAREINC: TDateField;
    scdsBuscaGuiaGERAAVISO: TStringField;
    scdsBuscaGuiaGERAENV: TStringField;
    scdsBuscaGuiaGERABOL: TStringField;
    scdsBuscaGuiaEMVIAGEM: TStringField;
    scdsBuscaGuiaDTAALTERA: TDateField;
    scdsBuscaGuiaSERIE: TStringField;
    scdsBuscaGuiaSITUACAO: TStringField;
    scdsBuscaGuiaTIPO: TStringField;
    cdsBuscaGuiaCODCLIENTE: TIntegerField;
    cdsBuscaGuiaNOMECLIENTE: TStringField;
    cdsBuscaGuiaRAZAOSOCIAL: TStringField;
    cdsBuscaGuiaCONTATO: TStringField;
    cdsBuscaGuiaTIPOFIRMA: TSmallintField;
    cdsBuscaGuiaCPF: TStringField;
    cdsBuscaGuiaCNPJ: TStringField;
    cdsBuscaGuiaINSCESTADUAL: TStringField;
    cdsBuscaGuiaRG: TStringField;
    cdsBuscaGuiaSEGMENTO: TSmallintField;
    cdsBuscaGuiaREGIAO: TSmallintField;
    cdsBuscaGuiaLIMITECREDITO: TFloatField;
    cdsBuscaGuiaDATACADASTRO: TDateField;
    cdsBuscaGuiaCODUSUARIO: TIntegerField;
    cdsBuscaGuiaSTATUS: TSmallintField;
    cdsBuscaGuiaHOMEPAGE: TStringField;
    cdsBuscaGuiaPRAZORECEBIMENTO: TSmallintField;
    cdsBuscaGuiaPRAZOENTREGA: TSmallintField;
    cdsBuscaGuiaCODBANCO: TSmallintField;
    cdsBuscaGuiaBASE_ICMS: TSmallintField;
    cdsBuscaGuiaDATANASC: TDateField;
    cdsBuscaGuiaCONTA_CLIENTE: TStringField;
    cdsBuscaGuiaOBS: TStringField;
    cdsBuscaGuiaTEM_IE: TStringField;
    cdsBuscaGuiaID_COB: TIntegerField;
    cdsBuscaGuiaDATARESC: TDateField;
    cdsBuscaGuiaNOMEMAE: TStringField;
    cdsBuscaGuiaSEXO: TStringField;
    cdsBuscaGuiaFORMA_CORRESPOND: TStringField;
    cdsBuscaGuiaGRUPO_CLIENTE: TStringField;
    cdsBuscaGuiaCODINCLUCANC: TIntegerField;
    cdsBuscaGuiaEXIST_COBERT: TStringField;
    cdsBuscaGuiaEXISTCOPART: TStringField;
    cdsBuscaGuiaDATAREINC: TDateField;
    cdsBuscaGuiaGERAAVISO: TStringField;
    cdsBuscaGuiaGERAENV: TStringField;
    cdsBuscaGuiaGERABOL: TStringField;
    cdsBuscaGuiaEMVIAGEM: TStringField;
    cdsBuscaGuiaDTAALTERA: TDateField;
    cdsBuscaGuiaSERIE: TStringField;
    cdsBuscaGuiaSITUACAO: TStringField;
    cdsBuscaGuiaTIPO: TStringField;
    dsBuscaGuia: TDataSource;
    scdsBuscaGuiaRA: TStringField;
    cdsBuscaGuiaRA: TStringField;
    BitBtn1: TBitBtn;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit3: TEdit;
    BitBtn2: TBitBtn;
    OpenDialog1: TOpenDialog;
    Edit4: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    BitBtn3: TBitBtn;
    procforn: TSQLClientDataSet;
    procfornNOMEFORNECEDOR: TStringField;
    BitBtn4: TBitBtn;
    Edit6: TEdit;
    Label7: TLabel;
    cdsBuscaForn: TClientDataSet;
    dspBuscaForn: TDataSetProvider;
    scdsBuscaForn: TSQLDataSet;
    procfornCODFORNECEDOR: TIntegerField;
    scdsRepr: TSQLDataSet;
    cdsRepr: TClientDataSet;
    dspRepr: TDataSetProvider;
    Label8: TLabel;
    combobox1: TComboBox;
    scdsBuscaFornCODFORNECEDOR: TIntegerField;
    scdsBuscaFornNOMEFORNECEDOR: TStringField;
    scdsBuscaFornCNPJ: TStringField;
    scdsBuscaFornCNES: TStringField;
    scdsBuscaFornLOGRADOURO: TStringField;
    scdsBuscaFornCOMPLEMENTO: TStringField;
    scdsBuscaFornCEP_CONTRATADO: TStringField;
    scdsBuscaFornNUMERO: TStringField;
    scdsBuscaFornSIGLA: TStringField;
    scdsBuscaFornCD_TIPO_LOGRADOURO: TStringField;
    scdsBuscaFornDADOSADICIONAIS: TStringField;
    scdsBuscaFornNM_MUNICIPIO: TStringField;
    scdsBuscaFornCD_IBGE: TStringField;
    scdsBuscaFornCD_UF: TStringField;
    scdsBuscaFornNOME_REPRFOR: TStringField;
    scdsBuscaFornFUNCAO: TStringField;
    scdsBuscaFornCOMPLEMENTO_1: TStringField;
    scdsBuscaFornUF: TStringField;
    scdsBuscaFornCEP: TStringField;
    cdsBuscaFornCODFORNECEDOR: TIntegerField;
    cdsBuscaFornNOMEFORNECEDOR: TStringField;
    cdsBuscaFornCNPJ: TStringField;
    cdsBuscaFornCNES: TStringField;
    cdsBuscaFornLOGRADOURO: TStringField;
    cdsBuscaFornCOMPLEMENTO: TStringField;
    cdsBuscaFornCEP_CONTRATADO: TStringField;
    cdsBuscaFornNUMERO: TStringField;
    cdsBuscaFornSIGLA: TStringField;
    cdsBuscaFornCD_TIPO_LOGRADOURO: TStringField;
    cdsBuscaFornDADOSADICIONAIS: TStringField;
    cdsBuscaFornNM_MUNICIPIO: TStringField;
    cdsBuscaFornCD_IBGE: TStringField;
    cdsBuscaFornCD_UF: TStringField;
    cdsBuscaFornNOME_REPRFOR: TStringField;
    cdsBuscaFornFUNCAO: TStringField;
    cdsBuscaFornCOMPLEMENTO_1: TStringField;
    cdsBuscaFornUF: TStringField;
    cdsBuscaFornCEP: TStringField;
    ComboBox2: TComboBox;
    Label6: TLabel;
    vcl_guiaconsulta: TVCLReport;
    Label9: TLabel;
    Edit5: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    BitBtn5: TBitBtn;
    Edit7: TEdit;
    procforn2: TSQLClientDataSet;
    cdsBuscaForn2: TClientDataSet;
    dspBuscaForn2: TDataSetProvider;
    scdsBuscaForn2: TSQLDataSet;
    procforn2CODFORNECEDOR: TIntegerField;
    procforn2NOMEFORNECEDOR: TStringField;
    Edit8: TEdit;
    procforn2CNPJ: TStringField;
    Label14: TLabel;
    Edit9: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    ComboBox3: TComboBox;
    cdsRepr1: TClientDataSet;
    dspRepr1: TDataSetProvider;
    scdsRepr1: TSQLDataSet;
    Label17: TLabel;
    scdsBuscaForn2CODFORNECEDOR: TIntegerField;
    scdsBuscaForn2NOMEFORNECEDOR: TStringField;
    scdsBuscaForn2CNPJ: TStringField;
    scdsBuscaForn2CNES: TStringField;
    scdsBuscaForn2LOGRADOURO: TStringField;
    scdsBuscaForn2COMPLEMENTO: TStringField;
    scdsBuscaForn2CEP_CONTRATADO: TStringField;
    scdsBuscaForn2NUMERO: TStringField;
    scdsBuscaForn2SIGLA: TStringField;
    scdsBuscaForn2CD_TIPO_LOGRADOURO: TStringField;
    scdsBuscaForn2DADOSADICIONAIS: TStringField;
    scdsBuscaForn2NM_MUNICIPIO: TStringField;
    scdsBuscaForn2CD_IBGE: TStringField;
    scdsBuscaForn2CD_UF: TStringField;
    scdsBuscaForn2NOME_REPRFOR: TStringField;
    scdsBuscaForn2FUNCAO: TStringField;
    scdsBuscaForn2COMPLEMENTO_1: TStringField;
    scdsBuscaForn2UF: TStringField;
    scdsBuscaForn2CEP: TStringField;
    cdsBuscaForn2CODFORNECEDOR: TIntegerField;
    cdsBuscaForn2NOMEFORNECEDOR: TStringField;
    cdsBuscaForn2CNPJ: TStringField;
    cdsBuscaForn2CNES: TStringField;
    cdsBuscaForn2LOGRADOURO: TStringField;
    cdsBuscaForn2COMPLEMENTO: TStringField;
    cdsBuscaForn2CEP_CONTRATADO: TStringField;
    cdsBuscaForn2NUMERO: TStringField;
    cdsBuscaForn2SIGLA: TStringField;
    cdsBuscaForn2CD_TIPO_LOGRADOURO: TStringField;
    cdsBuscaForn2DADOSADICIONAIS: TStringField;
    cdsBuscaForn2NM_MUNICIPIO: TStringField;
    cdsBuscaForn2CD_IBGE: TStringField;
    cdsBuscaForn2CD_UF: TStringField;
    cdsBuscaForn2NOME_REPRFOR: TStringField;
    cdsBuscaForn2FUNCAO: TStringField;
    cdsBuscaForn2COMPLEMENTO_1: TStringField;
    cdsBuscaForn2UF: TStringField;
    cdsBuscaForn2CEP: TStringField;
    scdsReprNOME_REPRFOR: TStringField;
    scdsReprFUNCAO: TStringField;
    scdsReprUF: TStringField;
    scdsReprNUMERO: TStringField;
    scdsReprCOMPLEMENTO: TStringField;
    scdsReprCD_CBO_SAUDE: TStringField;
    cdsReprNOME_REPRFOR: TStringField;
    cdsReprFUNCAO: TStringField;
    cdsReprUF: TStringField;
    cdsReprNUMERO: TStringField;
    cdsReprCOMPLEMENTO: TStringField;
    cdsReprCD_CBO_SAUDE: TStringField;
    scdsRepr1NOME_REPRFOR: TStringField;
    scdsRepr1FUNCAO: TStringField;
    scdsRepr1UF: TStringField;
    scdsRepr1NUMERO: TStringField;
    scdsRepr1COMPLEMENTO: TStringField;
    scdsRepr1CD_CBO_SAUDE: TStringField;
    cdsRepr1NOME_REPRFOR: TStringField;
    cdsRepr1FUNCAO: TStringField;
    cdsRepr1UF: TStringField;
    cdsRepr1NUMERO: TStringField;
    cdsRepr1COMPLEMENTO: TStringField;
    cdsRepr1CD_CBO_SAUDE: TStringField;
    BitBtn6: TBitBtn;
    sql_numGuia: TSQLDataSet;
    sql_numGuiaNU: TFMTBCDField;
    TissC: TTissConsulta;
    Edit1: TJvDBSearchComboBox;
    JvDBGrid1: TJvDBGrid;
    PopupMenu1: TPopupMenu;
    Procurar1: TMenuItem;
    Incuir1: TMenuItem;
    Gravar1: TMenuItem;
    Sair1: TMenuItem;
    MaskEdit1: TJvDateEdit;
    MaskEdit2: TJvDateEdit;
    MaskEdit3: TJvDateEdit;
    TissSP: TTissSP_SADT;
    TissInt: TTissInternacao;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }

   procedure consulta(nGuia : string);
   procedure internacao(nGuia : string);
   procedure servico(nGuia : string);

 end;

var
  fXmlAns: TfXmlAns;
  C_Frm_XMLDataHora ,C_Frm_XMLData ,C_Frm_XMLHora , aMensagensTISS : string;
implementation

uses UDmSaude, uQguia, uProcurar, uprocurar_prest, UDm ,untTissComp;


{$R *.dfm}

{ TForm1 }



procedure TfXmlAns.BitBtn1Click(Sender: TObject);
begin
  if(ComboBox2.Text ='') then
    begin
    MessageDlg('Escolha Tipo de Guia', mtWarning, [mbOK], 0);
    ComboBox2.SetFocus;
    exit;
    end;
  if sql_numGuia.Active then
    sql_numGuia.Close;
  if ComboBox2.Text ='GUIA CONSULTA' then
  begin
    sql_numGuia.Params[0].AsString := 'Consulta';
    sql_numGuia.Open;
    consulta(IntToStr(sql_numGuiaNU.AsInteger));
  end;
  if ComboBox2.Text ='SOLICITAÇÃO INTERNAÇÃO' then
  begin
    sql_numGuia.Params[0].AsString := 'Internação';
    sql_numGuia.Open;
    internacao(IntToStr(sql_numGuiaNU.AsInteger));
  end;
  if ComboBox2.Text ='SOLICITAÇÃO DE SERVIÇOS' then
  begin
    sql_numGuia.Params[0].AsString := 'Serviço';
    sql_numGuia.Open;
    servico(IntToStr(sql_numGuiaNU.AsInteger));
  end;
end;

procedure TfXmlAns.BitBtn2Click(Sender: TObject);
begin
  OpenDialog1.Execute;
  Edit3.Text := ExtractFilePath(OpenDialog1.FileName);
end;




procedure TfXmlAns.BitBtn3Click(Sender: TObject);
begin
  case ComboBox2.ItemIndex of
    0 : vcl_guiaconsulta.Filename := str_relatorio + 'guia_consulta.rep';
    1 : vcl_guiaconsulta.Filename := str_relatorio + 'guia_internacao.rep';
    2 : vcl_guiaconsulta.Filename := str_relatorio + 'guia_servico.rep';
  end;
  vcl_guiaconsulta.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  vcl_guiaconsulta.Report.Params.ParamByName('NOME').AsString := cdsBuscaGuiaNOMECLIENTE.AsString;
  vcl_guiaconsulta.Report.Params.ParamByName('CODGUIA').AsString := Edit2.Text;
  vcl_guiaconsulta.Execute;
 // fQguia.QuickRep1.Preview;
end;


procedure TfXmlAns.BitBtn4Click(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,procforn);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOMEFORNECEDOR';
   if fProcurar.ShowModal=mrOk then
   begin
     Edit6.Text := procfornNOMEFORNECEDOR.AsString;
     if cdsBuscaForn.Active then
       cdsBuscaForn.Close;
     cdsBuscaForn.Params[0].AsInteger := procfornCODFORNECEDOR.AsInteger;
     cdsBuscaForn.Open;
     if cdsRepr.Active then
       cdsRepr.Close;
     cdsRepr.Params[0].Clear;
     cdsRepr.Params[0].AsInteger := procfornCODFORNECEDOR.AsInteger;
     cdsRepr.Open;
     ComboBox1.Items.Clear;
     WHILE NOT cdsRepr.Eof DO
     BEGIN
       ComboBox1.Items.Add(cdsReprNOME_REPRFOR.AsString);
       cdsRepr.Next;
     end;
   end;
   finally
    procforn.Close;
    fProcurar.Free;
   end;
end;

procedure TfXmlAns.FormShow(Sender: TObject);
begin
  MaskEdit1.Text := FormatDateTime('dd/mm/yyyy',(now));
  if(not cdsBuscaGuia.Active) then
    cdsBuscaGuia.Open;
  Edit4.Text := cdsBuscaGuiaRA.AsString + '_' + FormatDateTime('yyyymmddhh', now);
  ComboBox2.SetFocus;
end;

procedure TfXmlAns.consulta(nGuia : string);
begin
  if(cdsBuscaGuia.IsEmpty) then
  begin
    MessageDlg('Escolha um Associado', mtWarning, [mbOK], 0);
    Edit1.SetFocus;
    exit;
  end;
{
  if(Edit2.Text = '') then
  begin
    MessageDlg('Digite o Nº Guia', mtWarning, [mbOK], 0);
    Edit2.SetFocus;
    exit;
  end;
}

  if(not DMSaude.cdsGuias.Active) then
    DMSaude.cdsGuias.Open;
  DMSaude.cdsGuias.Append;

  DMSaude.cdsGuiasREGISTRO_ANS.AsString := '360783'; // Registro ANS - ASH
  DMSaude.cdsGuiasNUMERO_GUIA.AsString := nGuia;
  Edit2.Text := nGuia;
  DMSaude.cdsGuiasDATA_EMISSAO.AsDateTime := StrToDate(MaskEdit1.Text);
  DMSaude.cdsGuiasNOME_PLANO.AsString := 'ASH';   // Nome do Plano
  DMSaude.cdsGuiasTIPO_GUIA.AsString := 'Consulta';

  DMSaude.cdsGuiasCODCLIENTE.AsInteger := cdsBuscaGuiaCODCLIENTE.AsInteger;
  DMSaude.cdsGuiasNOME_BENEFICIARIO.AsString := cdsBuscaGuiaNOMECLIENTE.AsString;
  DMSaude.cdsGuiasNUMERO_CARTAO_BENEFICIARIO.AsString := cdsBuscaGuiaRA.AsString;

  DMSaude.cdsGuiasCODIGO_OPERADORA.AsString := cdsBuscaFornCNPJ.AsString;
  DMSaude.cdsGuiasNOME_CONTRATADO.AsString := Edit6.Text;
  DMSaude.cdsGuiasCODIGO_CNES.AsString := cdsBuscaFornCNES.AsString;
  DMSaude.cdsGuiasNOME_LOGRADOURO.AsString := cdsBuscaFornLOGRADOURO.AsString;

  DMSaude.cdsGuiasCODIGO_MUNICIPIO.AsString := cdsBuscaFornDADOSADICIONAIS.AsString;
  DMSaude.cdsGuiasLOGRADOURO.AsString := cdsBuscaFornCD_TIPO_LOGRADOURO.AsString;
  DMSaude.cdsGuiasCEP.AsString := cdsBuscaFornCEP_CONTRATADO.AsString;
  DmSaude.cdsGuiasMUNICIPIO.AsString := cdsBuscaFornNM_MUNICIPIO.AsString;
  
  DmSaude.cdsGuiasNUMERO.AsString := cdsBuscaFornNUMERO.AsString;
  DMSaude.cdsGuiasSIGLA.AsString := cdsBuscaFornSIGLA.AsString;
  Dmsaude.cdsGuiasCOMPLEMENTO.AsString := cdsBuscaFornCOMPLEMENTO.AsString;

  if (not cdsRepr.Active) then
     cdsRepr.Open;
  if(cdsRepr.Locate('NOME_REPRFOR',ComboBox1.Text,[loCaseInsensitive])) then
  begin
    DMSaude.cdsGuiasNOME_EXECUTANTE.AsString := cdsReprNOME_REPRFOR.AsString;
    DMSaude.cdsGuiasCODIGO_ESPECIALIDADE.AsString := cdsReprCD_CBO_SAUDE.AsString;
    DMSaude.cdsGuiasNUMERO_PROFISSIONAL.AsString := cdsReprNUMERO.AsString;
    DMSaude.cdsGuiasSIGLA_UNIDADE.AsString := cdsReprUF.AsString;
    DMSaude.cdsGuiasSIGLA_CONSELHO.AsString := cdsReprCOMPLEMENTO.AsString;
  end;


  if(dm.c_6_genid.Active) then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_GUIAS, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  DMSaude.cdsGuiasID_GUIAS.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
  dm.c_6_genid.Close;

  DMSaude.cdsGuias.ApplyUpdates(0);

  // Nome do Arquivo
  Edit4.Text := cdsBuscaGuiaRA.AsString + '_' + FormatDateTime('yyyymmddhh', now)  + '_' + Edit2.Text + '.xml';

  {Gerando a Guia XML }

  TissC.TissArquivo := 'C:\home\guiasenviadas\consulta\'+ Edit4.Text;
  TissC.TissEncoding := 'ISO-8859-1';
  TissC.TissMensagemTissXml := 'xmlns="http://www.w3.org/2001/XMLSchema" xmlns:ans="http://www.ans.gov.br/padroes/tiss/schemas"';
  TissC.TissVersaoXml := '1.0';


  //CABEÇALHO
  TissC.TissTipoTrans := 'ENVIO_LOTE_GUIAS';
  TissC.TissSequencialTrans := '0';
  TissC.TissDataRegistroTrans := DMSaude.cdsGuiasDATA_EMISSAO.AsDateTime;
  TissC.TissHoraRegistroTrans := Time;
  TissC.TissTipo := Juridico;
  TissC.TissCNPJCPF := DMSaude.cdsGuiasCODIGO_OPERADORA.AsString;//'02762719000195';
  TissC.TissRegANS := '360783';
  TissC.TissVersaoTISS := '2.01.02';
  TissC.TissNumLote := '1545';
  //FIM CABEÇALHO
  TissC.criaCabecalho;  //COMANDO PARA ADICIONAR O CABEÇALHO

  //ATENÇÃO A ORDEM TEM QUE SER DE ACORDO COM ESTE DEMO, PRIMEIRO
  //USA-SE O MÉTODO "CRIACABEÇALHO" DEPOIS ADICIONA-SE AS GUIAS
  //PASSANDO OS VALORES E USANDO O MÉTODO "ADICIONARGUIA" E POR
  //ÚLTIMO A PROCEDURE "CRIARRODAPE" SE NÃO FOR FEITO ASSIM VAI GERAR ERRO

  //Adicionando guias
  TissC.TissRegANS := '360783';
  TissC.TissNumGuia := Edit2.Text;
  TissC.TissNumCarteira := cdsBuscaGuiaRA.AsString;
  TissC.TissPaciente := cdsBuscaGuiaNOMECLIENTE.AsString;
  TissC.TissNomePlano := DMSaude.cdsGuiasNOME_PLANO.AsString; //'ASH'
  TissC.TissValidadeCart := DMSaude.cdsGuiasVALIDADE_CARTEIRA.AsDateTime;
  TissC.TissNumCNS := ' ';// Carteira nacional de Saude
  TissC.TissNomeContradado := DMSaude.cdsGuiasNOME_CONTRATADO.AsString ;
  TissC.TisstipoLogradouro := DMSaude.cdsGuiasLOGRADOURO.AsString;
  TissC.TissLogradouro := DMSaude.cdsGuiasNOME_LOGRADOURO.AsString;
  TissC.TissEndNum := DMSaude.cdsGuiasNUMERO.AsString;
  TissC.TissComplemento := DMSaude.cdsGuiasCOMPLEMENTO.AsString;
  if DMSaude.cdsGuiasCODIGO_MUNICIPIO.AsString <> '' then
   TissC.TisscodigoIBGE := StrToCurr(DMSaude.cdsGuiasCODIGO_MUNICIPIO.AsString);
  TissC.TissMunicipio := DMSaude.cdsGuiasMUNICIPIO.AsString;
  TissC.TissUF := DMSaude.cdsGuiasSIGLA.AsString;
  TissC.TissCEP := DMSaude.cdsGuiasCEP.AsString;
  if DMSaude.cdsGuiasCODIGO_CNES.AsString <> '' then
   TissC.TissCNES := StrToCurr(DMSaude.cdsGuiasCODIGO_CNES.AsString);
  TissC.TissMEDICO := DMSaude.cdsGuiasNOME_EXECUTANTE.AsString;
  TissC.TissSIGLACONSELHO := DMSaude.cdsGuiasSIGLA_CONSELHO.AsString;
  TissC.TissNUMEROCONSELHO := DMSaude.cdsGuiasNUMERO_PROFISSIONAL.AsString;
  TissC.TissUFCONSELHO := DMSaude.cdsGuiasSIGLA_UNIDADE.AsString;
  if DMSaude.cdsGuiasCODIGO_ESPECIALIDADE.AsString <> '' then
   TissC.TissCBOS := StrToCurr(DMSaude.cdsGuiasCODIGO_ESPECIALIDADE.AsString);

  //hipótese diagnóstica

  TissC.TissCIDNomeTab := ' ';   //'CID-10';
  TissC.TissCodigoTabela := 0;
  TissC.TissCodProc := ' ' ;     //'00010014';
  TissC.TissCIDCodDiag := ' ';
  TissC.TissCIDDescDiag := ' ';
  TissC.TissTipDoenca := ' ';    //'A'; //A,C
  TissC.TissEvolucaoValor := 0;
  TissC.TissUnidTemp := ' '; //'D';
  TissC.TissIndicAcid := ' ' ; //'2';

  TissC.TissdataAtendimento := DMSaude.cdsGuiasDATA_EMISSAO.AsDateTime;

  TissC.TissTipoConsulta := ' ' ;//'1';
  TissC.TissTipoSaidaa := ' ' ;  //'5';

  //Se quiser colocar observação
  TissC.TissObs := ' ';


  TissC.adicionarGuia; //COMANDO PARA ADICIONAR A GUIA ATUAL


  TissC.criaRodape;


 // GerarMensagemTISS_SolicitacaoProced(DMSaude.cdsGuias);

  BitBtn1.Enabled := False;

  MessageDlg('Guia Gerado Com Sucesso .', mtInformation, [mbOK], 0);

end;

procedure TfXmlAns.internacao(nGuia : string);
var datastr : string ;
//var  i,j,l: Integer;
begin
  if(cdsBuscaGuia.IsEmpty) then
  begin
    MessageDlg('Escolha um Associado', mtWarning, [mbOK], 0);
    Edit1.SetFocus;
    exit;
  end;
{
  if(Edit2.Text = '') then
  begin
    MessageDlg('Digite o Nº Guia', mtWarning, [mbOK], 0);
    Edit2.SetFocus;
    exit;
  end;
}
  if(not DMSaude.cdsGuias.Active) then
    DMSaude.cdsGuias.Open;
  DMSaude.cdsGuias.Append;
  //Registros : 1,2,6

  DMSaude.cdsGuiasREGISTRO_ANS.AsString := '360783'; // Registro ANS - ASH
  DMSaude.cdsGuiasNUMERO_GUIA.AsString := nGuia;
  Edit2.Text := nGuia;
  DMSaude.cdsGuiasDATA_EMISSAO.AsDateTime := StrToDate(MaskEdit1.Text);
  DMSaude.cdsGuiasNOME_PLANO.AsString := 'ASH';   // Nome do Plano
  DMSaude.cdsGuiasTIPO_GUIA.AsString := 'Internação';

  datastr:='  /  /  ';
  //------------------------------------------------------------------------------
  //Verifica se a data de emissão foi preenchido
  //------------------------------------------------------------------------------
  try
    if (MaskEdit2.Text<>datastr) then
      StrToDate(MaskEdit2.Text);
    if (MaskEdit3.Text<>datastr) then
      StrToDate(MaskEdit3.Text);
    if (MaskEdit2.Text<>datastr) then
    if (MaskEdit3.Text<>datastr) then
    begin
      DMSaude.cdsGuiasDATA_AUT.AsDateTime := StrToDate(MaskEdit2.Text);
      DMSaude.cdsGuiasDATA_VAL_SENHA.AsDateTime := StrToDate(MaskEdit3.Text);
    end;
  except
    on EConvertError do
    begin
    ShowMessage ('Data Inválida! dd/mm/aa');
    MaskEdit2.SetFocus;
    end;
  end;
  DMSaude.cdsGuiasSENHA.AsString := Edit5.Text;
  if(Edit5.Text ='') then
    begin
    MessageDlg('Digite uma Senha', mtWarning, [mbOK], 0);
    Edit5.SetFocus;
    exit;
    end;
{  if(Edit9.Text ='') then
    begin
    MessageDlg('Digite Caráter da Solicitação', mtWarning, [mbOK], 0);
    Edit9.SetFocus;
    exit;
    end;
}

  //Registros : 10,11
  DMSaude.cdsGuiasNOME_BENEFICIARIO.AsString := cdsBuscaGuiaNOMECLIENTE.AsString;
  DMSaude.cdsGuiasNUMERO_CARTAO_BENEFICIARIO.AsString := cdsBuscaGuiaRA.AsString;

  //Registros : 12,13,14
  DMSaude.cdsGuiasNAOPERADORA.AsString := Edit8.Text;// cdsBuscaForn2CNPJ.AsString;
  DMSaude.cdsGuiasNOME_PRESTADOR.AsString := Edit7.Text;
  DMSaude.cdsGuiasCODIGO_CNES.AsString := cdsBuscaFornCNES.AsString;

  //Registro : 22
  DMSaude.cdsGuiasCARATER_SOLICITACAO.AsString := Edit9.Text;

  //Registro : 20,21
  DMSaude.cdsGuiasCODIGO_OPERADORA.AsString := cdsBuscaFornCNPJ.AsString;
  DMSaude.cdsGuiasNOME_CONTRATADO.AsString := Edit6.Text;

{
  DMSaude.cdsGuiasNOME_LOGRADOURO.AsString := cdsBuscaFornLOGRADOURO.AsString;
  DMSaude.cdsGuiasCODIGO_MUNICIPIO.AsString := cdsBuscaFornDADOSADICIONAIS.AsString;
  DMSaude.cdsGuiasLOGRADOURO.AsString := cdsBuscaFornCD_TIPO_LOGRADOURO.AsString;
  DMSaude.cdsGuiasCEP.AsString := cdsBuscaFornCEP_CONTRATADO.AsString;
  DmSaude.cdsGuiasMUNICIPIO.AsString := cdsBuscaFornNM_MUNICIPIO.AsString;
  DmSaude.cdsGuiasNUMERO.AsString := cdsBuscaFornNUMERO.AsString;
  DMSaude.cdsGuiasSIGLA.AsString := cdsBuscaFornSIGLA.AsString;
  Dmsaude.cdsGuiasCOMPLEMENTO.AsString := cdsBuscaFornCOMPLEMENTO.AsString;
 }

  //Registros : 15,16,17,18,19

  if (not cdsRepr.Active) then
     cdsRepr.Open;
  if(cdsRepr.Locate('NOME_REPRFOR',ComboBox1.Text,[loCaseInsensitive])) then
  begin
    DMSaude.cdsGuiasNOME_EXECUTANTE.AsString := cdsReprNOME_REPRFOR.AsString;
    DMSaude.cdsGuiasCODIGO_ESPECIALIDADE.AsString := cdsReprCD_CBO_SAUDE.AsString;
    DMSaude.cdsGuiasNUMERO_PROFISSIONAL.AsString := cdsReprNUMERO.AsString;
    DMSaude.cdsGuiasSIGLA_UNIDADE.AsString := cdsReprUF.AsString;
    DMSaude.cdsGuiasSIGLA_CONSELHO.AsString := cdsReprCOMPLEMENTO.AsString;
  end;


  if(dm.c_6_genid.Active) then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_GUIAS, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  DMSaude.cdsGuiasID_GUIAS.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
  dm.c_6_genid.Close;

  DMSaude.cdsGuias.ApplyUpdates(0);

                         {Gerando a Guia XML }

  Edit4.Text := cdsBuscaGuiaRA.AsString + '_' + FormatDateTime('yyyymmddhh', now)  + '_' + Edit2.Text + '.xml';

                       ///////// xml \\\\\\\\\\\\

  TissInt.iniciaInternacao; //Método de inicialização
  TissInt.Tisscabecalho.TissArquivo := 'C:\home\guiasenviadas\internacao\'+ Edit4.Text;
 // TissInt.Tisscabecalho.TissArquivo := 'internacao.xml';
  TissInt.Tisscabecalho.TissEncoding := 'ISO-8859-1';
  TissInt.Tisscabecalho.TissMensagemTissXml := 'xmlns="http://www.w3.org/2001/XMLSchema" xmlns:ans="http://www.ans.gov.br/padroes/tiss/schemas"';
  TissInt.Tisscabecalho.TissVersaoXml := '1.0';

  //CABEÇALHO
  TissInt.Tisscabecalho.TissTipoTrans := 'ENVIO_LOTE_GUIAS';//ENVIO_LOTE_GUIAS
  TissInt.Tisscabecalho.TissSequencialTrans := '0';
  TissInt.Tisscabecalho.TissDataRegistroTrans := DMSaude.cdsGuiasDATA_EMISSAO.AsDateTime;
  TissInt.Tisscabecalho.TissHoraRegistroTrans := Time;
  TissInt.Tisscabecalho.TissCNPJCPF := DMSaude.cdsGuiasCODIGO_OPERADORA.AsString;
  TissInt.Tisscabecalho.TissRegANS := '360783';
  TissInt.Tisscabecalho.TissVersaoTISS := '2.01.02';
  TissInt.Tisscabecalho.TissNumLote := '1545';
  //FIM CABEÇALHO
  TissInt.criaCabecalho;  {COMANDO PARA ADICIONAR O CABEÇALHO}

      //identificação guia SADTSP

////      TissInt.TissNumGuiaPrest := '191';
////      TissInt.TissNumGuiaOper := '192';
////      TissInt.TissRegANS := '360783';

      //dados autorização
      TissInt.TissDataAut := DMSaude.cdsGuiasDATA_AUT.AsDateTime;
      TissInt.TissSenhaAut := DMSaude.cdsGuiasSENHA.AsString;
      TissInt.TissSenhaValid := DMSaude.cdsGuiasDATA_VAL_SENHA.AsDateTime;

      //Dados Beneficiario
      TissInt.TissBeneficiario.TissNumCarteira := cdsBuscaGuiaRA.AsString;
      TissInt.TissBeneficiario.TissBenific := cdsBuscaGuiaNOMECLIENTE.AsString;
      TissInt.TissBeneficiario.TissNomePlano := DMSaude.cdsGuiasNOME_PLANO.AsString;
      TissInt.TissBeneficiario.TissValidadeCart := DMSaude.cdsGuiasVALIDADE_CARTEIRA.AsDateTime;

////     TissInt.TissBeneficiario.TissNumCNS := '';

      //Dados Solicitante
      //TissInt.TissContratado.TissTipoGeral INFORME ESSA PROPRIEDADE NO OBJECT INSPECTOR por padrão fica o tipo para Juridico
      TissInt.TissContratado.TissCNPJCPF := '5500799000190';
      TissInt.TissContratado.TissNomeContradado := DMSaude.cdsGuiasNOME_CONTRATADO.AsString ;
      if DMSaude.cdsGuiasCODIGO_CNES.AsString <> '' then
       TissInt.TissContratado.TissCNES := StrToCurr(DMSaude.cdsGuiasCODIGO_CNES.AsString);
    {
      TissInt.TissContratado.TisstipoLogradouro := DMSaude.cdsGuiasLOGRADOURO.AsString;
      TissInt.TissContratado.TissLogradouro := DMSaude.cdsGuiasNOME_LOGRADOURO.AsString;
      TissInt.TissContratado.TissEndNum := DMSaude.cdsGuiasNUMERO.AsString;
      TissInt.TissContratado.TissComplemento := DMSaude.cdsGuiasCOMPLEMENTO.AsString;
      if DMSaude.cdsGuiasCODIGO_MUNICIPIO.AsString <> '' then
       TissInt.TissContratado.TisscodigoIBGE := StrToCurr(DMSaude.cdsGuiasCODIGO_MUNICIPIO.AsString);
      TissInt.TissContratado.TissMunicipio := DMSaude.cdsGuiasMUNICIPIO.AsString;
      TissInt.TissContratado.TissUF := DMSaude.cdsGuiasSIGLA.AsString;
      TissInt.TissContratado.TissCEP := DMSaude.cdsGuiasCEP.AsString;

     }
        //profissional
      TissInt.TissProfissional.TissProf := DMSaude.cdsGuiasNOME_EXECUTANTE.AsString;
      TissInt.TissProfissional.TissSIGLACONSELHO := DMSaude.cdsGuiasSIGLA_CONSELHO.AsString;
      TissInt.TissProfissional.TissNumConselho := DMSaude.cdsGuiasNUMERO_PROFISSIONAL.AsString;
      TissInt.TissProfissional.TissUFCONSELHO := DMSaude.cdsGuiasSIGLA_UNIDADE.AsString;
      TissInt.TissProfissional.TissfCBOS := StrToCurr(DMSaude.cdsGuiasCODIGO_ESPECIALIDADE.AsString);

      // Prestador Executante
      //TissInt.TissPrestadorExec.TissTipoGeral INFORME ESSA PROPRIEDADE NO OBJECT INSPECTOR por padrão fica o tipo para Juridico
      TissInt.TissPrestadorExec.TissCNPJCPF := '5500799000190';
      TissInt.TissPrestadorExec.TissNomeContradado :=  DMSaude.cdsGuiasNOME_CONTRATADO.AsString ;
      TissInt.TissPrestadorExec.TissCNES := 457;

      TissInt.TissPrestadorExec.TisstipoLogradouro := '008';
      TissInt.TissPrestadorExec.TissLogradouro := 'Av. dos Anjos';
      TissInt.TissPrestadorExec.TissEndNum := '457';
      TissInt.TissPrestadorExec.TissComplemento := 'Complemento';
      TissInt.TissPrestadorExec.TisscodigoIBGE := 014;
      TissInt.TissPrestadorExec.TissMunicipio := 'Itaperuna';
      TissInt.TissPrestadorExec.TissUF := 'RJ';
      TissInt.TissPrestadorExec.TissCEP := '28380000';


      //Carater da internação
      TissInt.TisscaraterAtend := DMSaude.cdsGuiasCARATER_SOLICITACAO.AsString ;

      TissInt.Tissacomodacao := '1';
      TissInt.TissDataHoraInt := Now;
      TissInt.TissDataHoraSaidaInt := Now;
      //Tipo e regime internação
      TissInt.TissTipoInternacao := 1;
      TissInt.TissRegInt := '1';


      //Diagnostico Saída internação
      TissInt.TissDiagSaidInt.TissIndicAcid := 0;
      TissInt.TissDiagSaidInt.TissMotSaidInt := '10';
      TissInt.TissDiagSaidInt.TissDiagPrinc.TissCIDNomeTab := 'CID-10';
      TissInt.TissDiagSaidInt.TissDiagPrinc.TissCIDCodDiag := '1';
      TissInt.TissDiagSaidInt.TissDiagPrinc.TissCIDDescDiag := 'TESTE';

      TissInt.TissDiagSaidInt.TissDiagSec.TissCIDNomeTab := 'CID-10';;
      TissInt.TissDiagSaidInt.TissDiagSec.TissCIDCodDiag := '1';
      TissInt.TissDiagSaidInt.TissDiagSec.TissCIDDescDiag := 'TESTE';


      //EM CASO DE ÓBITO

      TissInt.TissDiagSaidInt.TissObito.TissCID.TissCIDNomeTab := 'CID-10';
      TissInt.TissDiagSaidInt.TissObito.TissCID.TissCIDCodDiag  := '1';
      TissInt.TissDiagSaidInt.TissObito.TissCID.TissCIDDescDiag := 'TESTE';
      TissInt.TissDiagSaidInt.TissObito.TissnumeracaoDe := '8';
      //Tipo faturamento
      TissInt.TissTipoFat := 'T';


      TissInt.adicionarGuia;

      //Adicionando Procedimentos Realizados
    ////  for j:= 1 to 1 do
    ////    begin
          //Adiciona-se aqui todos os demais profissionais membros da equipe
          //se tiver, se não tiver por favor não adicione aqui vem um detalhe
          //e ser por acaso um procedimento tiver equipe e outro não, então
          //basta vc mudar a propridade TissInt.Tissconfig.TissProc.TissUsarEquipe para True
          //e se no proximo procedimento não tiver equipe mude para false e pronto
         // TissInt.Tissconfig.TissProc.TissUsarEquipe := True;
        /////  for l:= 1 to 1 do
           ///// begin
              //TissInt.TissProc.TissEquipe.TissTipoMemb INFORME ESSA PROPRIEDADE NO OBJECT INSPECTOR por padrão fica o tipo para Juridico
              TissInt.TissProc.TissEquipe.TissCodProf := '5500799000190';
              // o valor informado aqui depende do tipo (TissInt.TissProc.TissEquipe.TissTipoMemb)
              // informado se o tipo for jurídico informe o CNPJ se nãoinforme CPF
              TissInt.TissProc.TissEquipe.TissProfiss.TissProf := 'Médico a ';
              TissInt.TissProc.TissEquipe.TissProfiss.TissSiglaConselho := 'CRM';
              TissInt.TissProc.TissEquipe.TissProfiss.TissNumConselho := '02457';
              TissInt.TissProc.TissEquipe.TissProfiss.TissUFCONSELHO := 'RJ';
              TissInt.TissProc.TissEquipe.TissProfiss.TissfCBOS := 06158;


              TissInt.adicionaProf;
        ////    end;
          TissInt.TissProc.TissProcs.TissCodigo := '00010014';
          TissInt.TissProc.TissProcs.TissTipTabela := 1;
          TissInt.TissProc.TissProcs.TissDescricao := 'TESTE';
          TissInt.TissProc.TissData := Now;
          TissInt.TissProc.TissHsInicio := Now;
          TissInt.TissProc.TissHsFim := Now;
          TissInt.TissProc.TissQtde := 1;
          TissInt.TissProc.TissVdeAcesso := 'U';
          TissInt.TissProc.TissTecUtil := 'V';
          TissInt.TissProc.TissReducAcres := 0;
          TissInt.TissProc.TissValor := 0;
          TissInt.TissProc.TissValorTotal := 10;
          TissInt.adicionaProc;
      ////  end;
    
      TissInt.finalizaGuia;


    /////end;

 // TissInt.criaRodape;
  TissInt.GerarXml;

  BitBtn1.Enabled := False;

  MessageDlg('Guia Gerado Com Sucesso .', mtInformation, [mbOK], 0);
end;


procedure TfXmlAns.servico(nGuia : string);
var datastr : string ;
var i,j,l: Integer;
begin
  if(cdsBuscaGuia.IsEmpty) then
  begin
    MessageDlg('Escolha um Associado', mtWarning, [mbOK], 0);
    Edit1.SetFocus;
    exit;
  end;
{
  if(Edit2.Text = '') then
  begin
    MessageDlg('Digite o Nº Guia', mtWarning, [mbOK], 0);
    Edit2.SetFocus;
    exit;
  end;
}
  if(not DMSaude.cdsGuias.Active) then
    DMSaude.cdsGuias.Open;
  DMSaude.cdsGuias.Append;

  DMSaude.cdsGuiasREGISTRO_ANS.AsString := '360783'; // Registro ANS - ASH
  DMSaude.cdsGuiasNUMERO_GUIA.AsString := nGuia;
  Edit2.Text := nGuia;
  DMSaude.cdsGuiasDATA_EMISSAO.AsDateTime := StrToDate(MaskEdit1.Text);
  DMSaude.cdsGuiasNOME_PLANO.AsString := 'ASH';   // Nome do Plano
  DMSaude.cdsGuiasTIPO_GUIA.AsString := 'Serviço';

  datastr:='  /  /  ';
  //------------------------------------------------------------------------------
  //Verifica se a data de emissão foi preenchido
  //------------------------------------------------------------------------------
  try
    if (MaskEdit2.Text<>datastr) then
      StrToDate(MaskEdit2.Text);
    if (MaskEdit3.Text<>datastr) then
      StrToDate(MaskEdit3.Text);
    if (MaskEdit2.Text<>datastr) then
    if (MaskEdit3.Text<>datastr) then
    begin
      DMSaude.cdsGuiasDATA_AUT.AsDateTime := StrToDate(MaskEdit2.Text);
      DMSaude.cdsGuiasDATA_VAL_SENHA.AsDateTime := StrToDate(MaskEdit3.Text);
    end;
  except
    on EConvertError do
    begin
    ShowMessage ('Data Inválida! dd/mm/aa');
    MaskEdit2.SetFocus;
    end;
  end;
  DMSaude.cdsGuiasSENHA.AsString := Edit5.Text;
  if(Edit5.Text ='') then
    begin
    MessageDlg('Digite uma Senha', mtWarning, [mbOK], 0);
    Edit5.SetFocus;
    exit;
    end;
    if(Edit9.Text ='') then
    begin
    MessageDlg('Digite Caráter da Solicitação', mtWarning, [mbOK], 0);
    Edit9.SetFocus;
    exit;
    end;
  DMSaude.cdsGuiasNAOPERADORA.AsString := Edit8.Text;// cdsBuscaForn2CNPJ.AsString;
  DMSaude.cdsGuiasNOME_PRESTADOR.AsString := Edit7.Text;
  DMSaude.cdsGuiasCARATER_SOLICITACAO.AsString := Edit9.Text;
  ///novos
  DMSaude.cdsGuiasCODIGO_CNES1.AsString := cdsBuscaForn2CNES.AsString;
  DMSaude.cdsGuiasNOME_LOGRADOURO1.AsString := cdsBuscaForn2LOGRADOURO.AsString;
  DMSaude.cdsGuiasCODIGO_MUNICIPIO1.AsString := cdsBuscaForn2DADOSADICIONAIS.AsString;
  DMSaude.cdsGuiasLOGRADOURO1.AsString := cdsBuscaForn2CD_TIPO_LOGRADOURO.AsString;
  DMSaude.cdsGuiasCEP1.AsString := cdsBuscaForn2CEP_CONTRATADO.AsString;
  DmSaude.cdsGuiasMUNICIPIO1.AsString := cdsBuscaForn2NM_MUNICIPIO.AsString;
  DmSaude.cdsGuiasNUMERO1.AsString := cdsBuscaForn2NUMERO.AsString;
  DMSaude.cdsGuiasSIGLA1.AsString := cdsBuscaForn2SIGLA.AsString;
  Dmsaude.cdsGuiasCOMPLEMENTO1.AsString := cdsBuscaForn2COMPLEMENTO.AsString;


  DMSaude.cdsGuiasNOME_BENEFICIARIO.AsString := cdsBuscaGuiaNOMECLIENTE.AsString;
  DMSaude.cdsGuiasNUMERO_CARTAO_BENEFICIARIO.AsString := cdsBuscaGuiaRA.AsString;

  DMSaude.cdsGuiasCODIGO_OPERADORA.AsString := cdsBuscaFornCNPJ.AsString;
  DMSaude.cdsGuiasNOME_CONTRATADO.AsString := Edit6.Text;
  DMSaude.cdsGuiasCODIGO_CNES.AsString := cdsBuscaFornCNES.AsString;
{
  DMSaude.cdsGuiasNOME_LOGRADOURO.AsString := cdsBuscaFornLOGRADOURO.AsString;
  DMSaude.cdsGuiasCODIGO_MUNICIPIO.AsString := cdsBuscaFornDADOSADICIONAIS.AsString;
  DMSaude.cdsGuiasLOGRADOURO.AsString := cdsBuscaFornCD_TIPO_LOGRADOURO.AsString;
  DMSaude.cdsGuiasCEP.AsString := cdsBuscaFornCEP_CONTRATADO.AsString;
  DmSaude.cdsGuiasMUNICIPIO.AsString := cdsBuscaFornNM_MUNICIPIO.AsString;
  DmSaude.cdsGuiasNUMERO.AsString := cdsBuscaFornNUMERO.AsString;
  DMSaude.cdsGuiasSIGLA.AsString := cdsBuscaFornSIGLA.AsString;
  Dmsaude.cdsGuiasCOMPLEMENTO.AsString := cdsBuscaFornCOMPLEMENTO.AsString;
 }
  if (not cdsRepr.Active) then
     cdsRepr.Open;
  if(cdsRepr.Locate('NOME_REPRFOR',ComboBox1.Text,[loCaseInsensitive])) then
  begin
    DMSaude.cdsGuiasNOME_EXECUTANTE.AsString := cdsReprNOME_REPRFOR.AsString;
    DMSaude.cdsGuiasCODIGO_ESPECIALIDADE.AsString := cdsReprCD_CBO_SAUDE.AsString;
    DMSaude.cdsGuiasNUMERO_PROFISSIONAL.AsString := cdsReprNUMERO.AsString;
    DMSaude.cdsGuiasSIGLA_UNIDADE.AsString := cdsReprUF.AsString;
    DMSaude.cdsGuiasSIGLA_CONSELHO.AsString := cdsReprCOMPLEMENTO.AsString;
  end;

  if (not cdsRepr1.Active) then
     cdsRepr1.Open;
  if(cdsRepr1.Locate('NOME_REPRFOR',ComboBox3.Text,[loCaseInsensitive])) then
  begin
    DMSaude.cdsGuiasNOME_EXECUTANTE1.AsString := cdsRepr1NOME_REPRFOR.AsString;
    DMSaude.cdsGuiasCODIGO_ESPECIALIDADE1.AsString := cdsRepr1CD_CBO_SAUDE.AsString;
    DMSaude.cdsGuiasNUMERO_PROFISSIONAL1.AsString := cdsRepr1NUMERO.AsString;
    DMSaude.cdsGuiasSIGLA_UNIDADE1.AsString := cdsRepr1UF.AsString;
    DMSaude.cdsGuiasSIGLA_CONSELHO1.AsString := cdsRepr1COMPLEMENTO.AsString;

  end;

  if(dm.c_6_genid.Active) then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_GUIAS, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  DMSaude.cdsGuiasID_GUIAS.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
  dm.c_6_genid.Close;

  DMSaude.cdsGuias.ApplyUpdates(0);

  {Gerando a Guia XML }

  Edit4.Text := cdsBuscaGuiaRA.AsString + '_' + FormatDateTime('yyyymmddhh', now)  + '_' + Edit2.Text + '.xml';


  {ATENÇÃO ESTE COMPONENTE ESTÁ EM FASE DE TESTE, QUALQUER DÚVIDA ENTRE
  EM CONTATO PELO EMAIL: fopprado@gmail.com ou pelo MSN: fopprado@hotmail.com
  FALAR COM FABIANO DE OLIVEIRA PRADO}

  TissSP.iniciaSPSADT; //Método de inicialização
  TissSP.Tisscabecalho.TissArquivo :='C:\home\guiasenviadas\servico\'+ Edit4.Text;
  TissSP.Tisscabecalho.TissEncoding := 'ISO-8859-1';
  TissSP.Tisscabecalho.TissMensagemTissXml := 'xmlns="http://www.w3.org/2001/XMLSchema" xmlns:ans="http://www.ans.gov.br/padroes/tiss/schemas"';
  TissSP.Tisscabecalho.TissVersaoXml := '1.0';

  //CABEÇALHO
  TissSP.Tisscabecalho.TissTipoTrans := 'ENVIO_LOTE_GUIAS';//ENVIO_LOTE_GUIAS
  TissSP.Tisscabecalho.TissSequencialTrans := '0';
  TissSP.Tisscabecalho.TissDataRegistroTrans := Date;
  TissSP.Tisscabecalho.TissHoraRegistroTrans := Time;
  TissSP.Tisscabecalho.TissCNPJCPF := '02762719000195';
  TissSP.Tisscabecalho.TissRegANS := '360783';
  TissSP.Tisscabecalho.TissVersaoTISS := '2.01.02';
  TissSP.Tisscabecalho.TissNumLote := '1545';
  //FIM CABEÇALHO
  TissSP.criaCabecalho;  {COMANDO PARA ADICIONAR O CABEÇALHO}

  {ATENÇÃO A ORDEM TEM QUE SER DE ACORDO COM ESTE DEMO, PRIMEIRO
  USA-SE O MÉTODO "CRIACABEÇALHO" DEPOIS ADICIONA-SE AS GUIAS
  PASSANDO OS VALORES E USANDO O MÉTODO "ADICIONARGUIA" E POR
  ÚLTIMO A PROCEDURE "CRIARRODAPE" SE NÃO FOR FEITO ASSIM VAI GERAR ERRO}

      //identificação guia SADTSP
      TissSP.TissNumGuiaPrest := '15' ; // ????
      TissSP.TissNumGuiaOper := Edit2.Text;
      TissSP.TissRegANS := '0';

      //dados autorização
      TissInt.TissDataAut := DMSaude.cdsGuiasDATA_AUT.AsDateTime;
      TissInt.TissSenhaAut := DMSaude.cdsGuiasSENHA.AsString;
      TissInt.TissSenhaValid := DMSaude.cdsGuiasDATA_VAL_SENHA.AsDateTime;


      //Dados Beneficiario
      TissInt.TissBeneficiario.TissNumCarteira := cdsBuscaGuiaRA.AsString;
      TissInt.TissBeneficiario.TissBenific := cdsBuscaGuiaNOMECLIENTE.AsString;
      TissInt.TissBeneficiario.TissNomePlano := DMSaude.cdsGuiasNOME_PLANO.AsString;
      TissInt.TissBeneficiario.TissValidadeCart := DMSaude.cdsGuiasVALIDADE_CARTEIRA.AsDateTime;

    //  TissSP.TissBeneficiario.TissNumCNS := '45787';

      //Dados Solicitante
      {TissSP.TissContratado.TissTipoGeral INFORME ESSA PROPRIEDADE NO
      OBJECT INSPECTOR por padrão fica o tipo para Juridico}

      TissInt.TissContratado.TissCNPJCPF := '5500799000190';
      TissInt.TissContratado.TissNomeContradado := DMSaude.cdsGuiasNOME_CONTRATADO.AsString ;
      if DMSaude.cdsGuiasCODIGO_CNES.AsString <> '' then
       TissInt.TissContratado.TissCNES := StrToCurr(DMSaude.cdsGuiasCODIGO_CNES.AsString);



      TissSP.TissContratado.TisstipoLogradouro := '008';
      TissSP.TissContratado.TissLogradouro := 'Av. dos Anjos';
      TissSP.TissContratado.TissEndNum := '457';
      TissSP.TissContratado.TissComplemento := 'Complemento';
      TissSP.TissContratado.TisscodigoIBGE := 014;
      TissSP.TissContratado.TissMunicipio := 'Itaperuna';
      TissSP.TissContratado.TissUF := 'RJ';
      TissSP.TissContratado.TissCEP := '28380000';


        //profissional
      TissSP.TissProfissional.TissProf := 'Médico';
      TissSP.TissProfissional.TissSIGLACONSELHO := 'CRM';
      TissSP.TissProfissional.TissNumConselho := '02457';
      TissSP.TissProfissional.TissUFCONSELHO := 'RJ';
      TissSP.TissProfissional.TissfCBOS := 06158;

      // Prestador Executante
      {TissSP.TissPrestadorExec.TissTipoGeral INFORME ESSA PROPRIEDADE NO
      OBJECT INSPECTOR por padrão fica o tipo para Juridico}
      TissSP.TissPrestadorExec.TissCNPJCPF := '02762719000195';
      TissSP.TissPrestadorExec.TissNomeContradado := 'Fabiano';
      TissSP.TissPrestadorExec.TisstipoLogradouro := '008';
      TissSP.TissPrestadorExec.TissLogradouro := 'Av. dos Anjos';
      TissSP.TissPrestadorExec.TissEndNum := '457';
      TissSP.TissPrestadorExec.TissComplemento := 'Complemento';
      TissSP.TissPrestadorExec.TisscodigoIBGE := 014;
      TissSP.TissPrestadorExec.TissMunicipio := 'Itaperuna';
      TissSP.TissPrestadorExec.TissUF := 'RJ';
      TissSP.TissPrestadorExec.TissCEP := '28380000';
      TissSP.TissPrestadorExec.TissCNES := 457;

      //indicação Clinica
      TissSP.TissindicClinica := 'Teste';
      TissSP.TisscaraterAtend := 'E';
      TissSP.TissDataAtend := Now;

      //diagnostico Guia
      TissSP.TissDiagnostico.TissCIDCodDiag := '1';
      TissSP.TissDiagnostico.TissCIDNomeTab := 'CID-10';
      TissSP.TissDiagnostico.TissCIDDescDiag := 'Teste';
      TissSP.TissDiagnostico.TissTipDoenc := 'A';
      TissSP.TissDiagnostico.TissUnTemp := 'D';
      TissSP.TissDiagnostico.TissValor := 0;
      TissSP.TissDiagnostico.TissIndicAcid := 0;

      //tipo saida
      TissSP.TissTipoSaida := '5';
      TissSP.TissTipoAtend := 1;

      TissSP.adicionarGuia;

      //Adicionando Procedimentos Realizados
      for j:= 1 to 2 do
        begin
          {Adiciona-se aqui todos os demais profissionais membros da equipe
          se tiver, se não tiver por favor não adicione aqui vem um detalhe
          e ser por acaso um procedimento tiver equipe e outro não, então
          basta vc mudar a propridade TissSP.Tissconfig.TissProc.TissUsarEquipe para True
          e se no proximo procedimento não tiver equipe mude para false e pronto}
          TissSP.Tissconfig.TissProc.TissUsarEquipe := True;
          for l:= 1 to 1 do
            begin
              {TissSP.TissProc.TissEquipe.TissTipoMemb INFORME ESSA PROPRIEDADE NO
          OBJECT INSPECTOR por padrão fica o tipo para Juridico}
              TissSP.TissProc.TissEquipe.TissCodProf := '02762719000195';{ o valor informado
              aqui depende do tipo (TissSP.TissProc.TissEquipe.TissTipoMemb)
               informado se o tipo for jurídico informe o CNPJ se não
              informe CPF}
              TissSP.TissProc.TissEquipe.TissProfiss.TissProf := 'Médico ' + IntToStr(l);
              TissSP.TissProc.TissEquipe.TissProfiss.TissSiglaConselho := 'CRM';
              TissSP.TissProc.TissEquipe.TissProfiss.TissNumConselho := '02457';
              TissSP.TissProc.TissEquipe.TissProfiss.TissUFCONSELHO := 'RJ';
              TissSP.TissProc.TissEquipe.TissProfiss.TissfCBOS := 06158;


              TissSP.adicionaProf;
            end;
          TissSP.TissProc.TissProcs.TissCodigo := '00010014';
          TissSP.TissProc.TissProcs.TissTipTabela := 1;
          TissSP.TissProc.TissProcs.TissDescricao := 'TESTE';
          TissSP.TissProc.TissData := Now;
          TissSP.TissProc.TissHsInicio := Now;
          TissSP.TissProc.TissHsFim := Now;
          TissSP.TissProc.TissQtde := 1;
          TissSP.TissProc.TissVdeAcesso := 'U';
          TissSP.TissProc.TissTecUtil := 'V';
          TissSP.TissProc.TissReducAcres := 0;
          TissSP.TissProc.TissValor := j;
          TissSP.TissProc.TissValorTotal := j;
          TissSP.adicionaProc;
        end;

      TissSP.finalizaGuia;



 // TissSP.criaRodape;
  TissSP.GerarXml;

  BitBtn1.Enabled := False;

  MessageDlg('Guia Gerado Com Sucesso .', mtInformation, [mbOK], 0);

end;

procedure TfXmlAns.ComboBox2Change(Sender: TObject);
var  i: integer;
const str = '1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ';
      max = 8;
begin
  if(ComboBox2.Text = 'GUIA CONSULTA') then
    begin
    MaskEdit2.Visible := false;
    Edit5.Visible := false;
    MaskEdit3.Visible := false;
    Label9.Visible := false;
    Label10.visible := false;
    Label11.Visible := false;
    Edit7.Visible := False;
    Edit8.Visible := False;
    Edit9.Visible := False;
    BitBtn5.Visible := False;
    Label13.Visible := False;
    Label14.Visible := False;
    Label15.Visible := False;
    Label16.Visible := False;
    ComboBox3.Visible := False;
    Label17.Visible := False;
    Label8.Caption := 'Nome Profissional Executante';
  end;
  if(ComboBox2.Text = 'SOLICITAÇÃO INTERNAÇÃO') then
   begin
    MaskEdit2.Visible := True;
    Edit5.Visible := True;
    MaskEdit3.Visible := True;
    Label9.Visible := True;
    Label10.visible := True;
    Label11.Visible := True;
    Edit7.Visible := True;
    Edit8.Visible := False;
    Edit9.Visible := True;
    BitBtn5.Visible := True;
    Label13.Visible := True;
    Label14.Visible := False;
    Label15.Visible := True;
    Label16.Visible := True;
    ComboBox3.Visible := False;
    Label17.Visible := False;
    Label8.Caption := 'Nome Profissional Solicitante';
//    Edit1.Clear;
    begin
      Edit5.Text := '';
      for i := 1 to max do
      Edit5.Text := Edit5.Text + str[random(length(str))+1];
    end;
   end;
  if(ComboBox2.Text = 'SOLICITAÇÃO DE SERVIÇOS') then
   begin
    MaskEdit2.Visible := true;
    Edit5.Visible := true;
    MaskEdit3.Visible := true;
    Label9.Visible := true;
    Label10.visible := true;
    Label11.Visible := true;
    Edit7.Visible := true;
    Edit8.Visible := False;
    Edit9.Visible := true;
    BitBtn5.Visible := true;
    Label13.Visible := true;
    Label14.Visible := False;
    Label15.Visible := true;
    Label16.Visible := true;
    ComboBox3.Visible := true;
    Label17.Visible := True;
    begin
      Edit5.Text := '';
      for i := 1 to max do
      Edit5.Text := Edit5.Text + str[random(length(str))+1];
    end;
   end;

end;

procedure TfXmlAns.BitBtn5Click(Sender: TObject);
begin
{  fProcurar_prest:= TfProcurar_prest.Create(self,procforn2);
  try
   fProcurar_prest.BtnProcurar.Click;
   fProcurar_prest.EvDBFind1.DataField := 'NOMEFORNECEDOR';
   if fProcurar_prest.ShowModal=mrOk then
   begin
     Edit7.Text := procforn2NOMEFORNECEDOR.AsString;
     Edit8.Text := procforn2CNPJ.AsString;
     if cdsBuscaForn2.Active then
       cdsBuscaForn2.Close;
     cdsBuscaForn2.Params[0].AsInteger := procforn2CODFORNECEDOR.AsInteger;
     cdsBuscaForn2.Open;
   end;
   finally
    procforn2.Close;
    fProcurar_prest.Free;
   end;
  }
  dm.cdsProc.CommandText := 'select CODFORNECEDOR,NOMEFORNECEDOR, CNPJ from FORNECEDOR where NOMEFORNECEDOR LIKE :NOME';
  dm.cdsProc.FetchParams;
  fProcurar_prest:= TfProcurar_prest.Create(self, dm.cdsProc);
  try
   fProcurar_prest.BtnProcurar.Click;
   fProcurar_prest.EvDBFind1.DataField := 'NOMEFORNECEDOR';
   if fProcurar_prest.ShowModal=mrOk then
   begin
     Edit7.Text := dm.cdsProc.FieldByName('NOMEFORNECEDOR').AsString;
     Edit8.Text := dm.cdsProc.FieldByName('CNPJ').AsString;
     if cdsBuscaForn2.Active then
       cdsBuscaForn2.Close;
     cdsBuscaForn2.Params[0].AsInteger := dm.cdsProc.FieldByName('CODFORNECEDOR').AsInteger;
     cdsBuscaForn2.Open;
     if cdsRepr1.Active then
       cdsRepr1.Close;
     cdsRepr1.Params[0].AsInteger := dm.cdsProc.FieldByName('CODFORNECEDOR').AsInteger;
     cdsRepr1.Open;
     ComboBox3.Items.Clear;
     WHILE NOT cdsRepr1.Eof DO
     BEGIN
       ComboBox3.Items.Add(cdsRepr1NOME_REPRFOR.AsString);
       cdsRepr1.Next;
     end;
   end;
   finally
    dm.cdsProc.Close;
    fProcurar_prest.Free;
   end;
end;
procedure TfXmlAns.BitBtn6Click(Sender: TObject);
begin
  CdsBuscaGuia.Close;
  Close;
end;

procedure TfXmlAns.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    begin
    Key := #0;
    Perform(Wm_NextDlgCtl,0,0);
    end;
end;

end.
