unit uNFPaulista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, FMTBcd, DB, Provider, DBClient, SqlExpr, Mask,
  gbCobranca, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, JvDBDatePickerEdit, XPMenu, ExtCtrls, MMJPanel, dxCore,
  dxButton, JvExButtons, JvBitBtn, rpcompobase, rpvclreport, ComCtrls,
  JvExComCtrls, JvProgressBar, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  ImgList, Menus;

type
  TfNFPaulista = class(TForm)
    sdsNF: TSQLDataSet;
    cdsNF: TClientDataSet;
    dspNF: TDataSetProvider;
    sdsItensNF: TSQLDataSet;
    dspItensNF: TDataSetProvider;
    cdsItensNF: TClientDataSet;
    cdsItensNFCODPRODUTO: TIntegerField;
    cdsItensNFQUANTIDADE: TFloatField;
    cdsItensNFPRECO: TFloatField;
    cdsItensNFDESCPRODUTO: TStringField;
    sdsItensNFCODPRODUTO: TIntegerField;
    sdsItensNFQUANTIDADE: TFloatField;
    sdsItensNFPRECO: TFloatField;
    sdsItensNFDESCPRODUTO: TStringField;
    sMenorData: TSQLDataSet;
    sMenorDataMENORDATA: TDateField;
    sMaiorData: TSQLDataSet;
    sMaiorDataMAIORDATA: TDateField;
    sEmpresa: TSQLDataSet;
    sEmpresaEMPRESA: TStringField;
    sEmpresaRAZAO: TStringField;
    sEmpresaCNPJ_CPF: TStringField;
    sEmpresaENDERECO: TStringField;
    sEmpresaLOGRADOURO: TStringField;
    sEmpresaBAIRRO: TStringField;
    sEmpresaCIDADE: TStringField;
    sEmpresaUF: TStringField;
    sEmpresaCEP: TStringField;
    sEmpresaDDD: TStringField;
    sEmpresaFONE: TStringField;
    sEmpresaFONE_1: TStringField;
    sEmpresaFONE_2: TStringField;
    sEmpresaFAX: TStringField;
    sEmpresaE_MAIL: TStringField;
    sEmpresaWEB: TStringField;
    sEmpresaLOGOTIPO: TGraphicField;
    sEmpresaCODIGO: TIntegerField;
    sEmpresaTIPO: TStringField;
    sEmpresaIE_RG: TStringField;
    sEmpresaSLOGAN: TStringField;
    sEmpresaOUTRAS_INFO: TStringField;
    sEmpresaCODIGO_CONTA: TIntegerField;
    sEmpresaDIVERSOS1: TStringField;
    sEmpresaDIVERSOS2: TStringField;
    sEmpresaDIVERSOS3: TStringField;
    sEmpresaANOLETIVO: TIntegerField;
    sEmpresaMEDIA_ESCOLA: TFloatField;
    sEmpresaPORTA: TIntegerField;
    sEmpresaSMTP: TStringField;
    sEmpresaSENHA: TStringField;
    gbCobranca1: TgbCobranca;
    sCFOP: TSQLDataSet;
    sCFOPCFCOD: TStringField;
    sCFOPCFNOME: TStringField;
    sCliente: TSQLDataSet;
    sdsItensNFCODPRO: TStringField;
    cdsItensNFCODPRO: TStringField;
    sdsItensNFUNIDADEMEDIDA: TStringField;
    cdsItensNFUNIDADEMEDIDA: TStringField;
    sdsItensNFCST: TStringField;
    cdsItensNFCST: TStringField;
    sdsItensNFICMS: TFloatField;
    cdsItensNFICMS: TFloatField;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    sClienteCODCLIENTE: TIntegerField;
    sClienteNOMECLIENTE: TStringField;
    sClienteCONTATO: TStringField;
    sClienteINSCESTADUAL: TStringField;
    sClienteRAZAOSOCIAL: TStringField;
    sClienteCNPJ: TStringField;
    sClienteLOGRADOURO: TStringField;
    sClienteBAIRRO: TStringField;
    sClienteCOMPLEMENTO: TStringField;
    sClienteCIDADE: TStringField;
    sClienteUF: TStringField;
    sClienteCEP: TStringField;
    sClienteNUMERO: TStringField;
    sdsNFFRETE: TStringField;
    sdsNFCNPJ_CPF: TStringField;
    sdsNFNOMETRANSP: TStringField;
    sdsNFINSCRICAOESTADUAL: TStringField;
    sdsNFEND_TRANSP: TStringField;
    sdsNFCIDADE_TRANSP: TStringField;
    sdsNFUF_TRANSP: TStringField;
    sdsNFPLACATRANSP: TStringField;
    sdsNFUF_VEICULO_TRANSP: TStringField;
    sdsNFQUANTIDADE: TFloatField;
    sdsNFESPECIE: TStringField;
    sdsNFMARCA: TStringField;
    sdsNFNUMERO: TStringField;
    sdsNFPESOLIQUIDO: TBCDField;
    sdsNFPESOBRUTO: TBCDField;
    sdsNFRAZAOSOCIAL: TStringField;
    sdsNFCNPJ: TStringField;
    cdsNFFRETE: TStringField;
    cdsNFCNPJ_CPF: TStringField;
    cdsNFNOMETRANSP: TStringField;
    cdsNFINSCRICAOESTADUAL: TStringField;
    cdsNFEND_TRANSP: TStringField;
    cdsNFCIDADE_TRANSP: TStringField;
    cdsNFUF_TRANSP: TStringField;
    cdsNFPLACATRANSP: TStringField;
    cdsNFUF_VEICULO_TRANSP: TStringField;
    cdsNFQUANTIDADE: TFloatField;
    cdsNFESPECIE: TStringField;
    cdsNFMARCA: TStringField;
    cdsNFNUMERO: TStringField;
    cdsNFPESOLIQUIDO: TBCDField;
    cdsNFPESOBRUTO: TBCDField;
    cdsNFRAZAOSOCIAL: TStringField;
    cdsNFCNPJ: TStringField;
    sdsNFCFOP: TStringField;
    sdsNFCODCLIENTE: TIntegerField;
    sdsNFNUMNF: TIntegerField;
    sdsNFCODVENDA: TIntegerField;
    sdsNFBASE_ICMS: TFloatField;
    sdsNFVALOR_ICMS: TFloatField;
    sdsNFBASE_ICMS_SUBST: TFloatField;
    sdsNFVALOR_ICMS_SUBST: TFloatField;
    sdsNFVALOR_PRODUTO: TFloatField;
    sdsNFVALOR_FRETE: TFloatField;
    sdsNFVALOR_SEGURO: TFloatField;
    sdsNFOUTRAS_DESP: TFloatField;
    sdsNFVALOR_IPI: TFloatField;
    sdsNFVALOR_TOTAL_NOTA: TFloatField;
    cdsNFCFOP: TStringField;
    cdsNFCODCLIENTE: TIntegerField;
    cdsNFNUMNF: TIntegerField;
    cdsNFCODVENDA: TIntegerField;
    cdsNFBASE_ICMS: TFloatField;
    cdsNFVALOR_ICMS: TFloatField;
    cdsNFBASE_ICMS_SUBST: TFloatField;
    cdsNFVALOR_ICMS_SUBST: TFloatField;
    cdsNFVALOR_PRODUTO: TFloatField;
    cdsNFVALOR_FRETE: TFloatField;
    cdsNFVALOR_SEGURO: TFloatField;
    cdsNFOUTRAS_DESP: TFloatField;
    cdsNFVALOR_IPI: TFloatField;
    cdsNFVALOR_TOTAL_NOTA: TFloatField;
    sdsNFDTAEMISSAO: TDateField;
    sdsNFDTASAIDA: TDateField;
    sdsNFCORPONF1: TStringField;
    sdsNFCORPONF2: TStringField;
    cdsNFDTAEMISSAO: TDateField;
    cdsNFDTASAIDA: TDateField;
    cdsNFCORPONF1: TStringField;
    cdsNFCORPONF2: TStringField;
    sdsNFHORASAIDA: TTimeField;
    cdsNFHORASAIDA: TTimeField;
    sdsNFNOTASERIE: TStringField;
    cdsNFNOTASERIE: TStringField;
    sds_param: TSQLDataSet;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField8: TStringField;
    sds_paramDADOS: TStringField;
    sds_paramD1: TStringField;
    sds_paramD2: TStringField;
    sds_paramD3: TStringField;
    sds_paramD4: TStringField;
    sds_paramD5: TStringField;
    sds_paramD6: TStringField;
    sds_paramD7: TStringField;
    sds_paramD8: TStringField;
    sds_paramD9: TStringField;
    sds_paramINSTRUCOES: TStringField;
    dsp_param: TDataSetProvider;
    cds_param: TClientDataSet;
    StringField9: TStringField;
    StringField10: TStringField;
    cds_paramDADOS: TStringField;
    cds_paramD1: TStringField;
    cds_paramD2: TStringField;
    cds_paramD3: TStringField;
    cds_paramD4: TStringField;
    cds_paramD5: TStringField;
    cds_paramD6: TStringField;
    cds_paramD7: TStringField;
    cds_paramD8: TStringField;
    cds_paramD9: TStringField;
    cds_paramINSTRUCOES: TStringField;
    cds_paramCONFIGURADO: TStringField;
    cds_ccusto: TClientDataSet;
    cds_ccustoCODIGO: TIntegerField;
    cds_ccustoCONTA: TStringField;
    cds_ccustoNOME: TStringField;
    d_2: TDataSetProvider;
    s_2: TSQLDataSet;
    s_2CODIGO: TIntegerField;
    s_2CONTA: TStringField;
    s_2NOME: TStringField;
    MMJPanel1: TMMJPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    JvDateEdit1: TJvDateEdit;
    JvDateEdit2: TJvDateEdit;
    XPMenu1: TXPMenu;
    ComboBox1: TComboBox;
    Label3: TLabel;
    dxButton1: TdxButton;
    cds_Movimento: TClientDataSet;
    cds_MovimentoCODMOVIMENTO: TIntegerField;
    cds_MovimentoDATAMOVIMENTO: TDateField;
    cds_MovimentoCODCLIENTE: TIntegerField;
    cds_MovimentoCODNATUREZA: TSmallintField;
    cds_MovimentoSTATUS: TSmallintField;
    cds_MovimentoCODUSUARIO: TSmallintField;
    cds_MovimentoNOMECLIENTE: TStringField;
    cds_MovimentoDESCNATUREZA: TStringField;
    cds_MovimentoALMOXARIFADO: TStringField;
    cds_MovimentoCODVENDEDOR: TSmallintField;
    cds_MovimentoCODALMOXARIFADO: TIntegerField;
    cds_MovimentoNOMEFORNECEDOR: TStringField;
    cds_MovimentoCODFORNECEDOR: TIntegerField;
    cds_MovimentoTIPOTITULO: TSmallintField;
    cds_MovimentoDATA_SISTEMA: TSQLTimeStampField;
    cds_MovimentoNOMEUSUARIO: TStringField;
    cds_MovimentoOBS: TStringField;
    cds_MovimentoPLACA: TStringField;
    cds_MovimentoMARCA_MODELO: TStringField;
    cds_MovimentoCOD_VEICULO: TIntegerField;
    cds_MovimentoBAIXAMOVIMENTO: TSmallintField;
    cds_MovimentoCONTROLE: TStringField;
    cds_MovimentoCNPJ: TStringField;
    dsp_Movimento: TDataSetProvider;
    sds_Movimento: TSQLDataSet;
    sds_MovimentoCODMOVIMENTO: TIntegerField;
    sds_MovimentoDATAMOVIMENTO: TDateField;
    sds_MovimentoCODCLIENTE: TIntegerField;
    sds_MovimentoCODNATUREZA: TSmallintField;
    sds_MovimentoSTATUS: TSmallintField;
    sds_MovimentoCODUSUARIO: TSmallintField;
    sds_MovimentoNOMECLIENTE: TStringField;
    sds_MovimentoDESCNATUREZA: TStringField;
    sds_MovimentoALMOXARIFADO: TStringField;
    sds_MovimentoCODVENDEDOR: TSmallintField;
    sds_MovimentoCODALMOXARIFADO: TIntegerField;
    sds_MovimentoNOMEFORNECEDOR: TStringField;
    sds_MovimentoCODFORNECEDOR: TIntegerField;
    sds_MovimentoTIPOTITULO: TSmallintField;
    sds_MovimentoDATA_SISTEMA: TSQLTimeStampField;
    sds_MovimentoNOMEUSUARIO: TStringField;
    sds_MovimentoOBS: TStringField;
    sds_MovimentoPLACA: TStringField;
    sds_MovimentoMARCA_MODELO: TStringField;
    sds_MovimentoCOD_VEICULO: TIntegerField;
    sds_MovimentoBAIXAMOVIMENTO: TSmallintField;
    sds_MovimentoCONTROLE: TStringField;
    sds_MovimentoCNPJ: TStringField;
    sdsItensNFVLR_BASE: TFloatField;
    cdsItensNFVLR_BASE: TFloatField;
    JvBitBtn1: TJvBitBtn;
    VCLReport1: TVCLReport;
    edSerie: TEdit;
    Label4: TLabel;
    JvProgressBar1: TJvProgressBar;
    BitBtn2: TBitBtn;
    DataSource1: TDataSource;
    sdsNFSELECIONOU: TStringField;
    cdsNFSELECIONOU: TStringField;
    ImageList1: TImageList;
    ImageList2: TImageList;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Label7: TLabel;
    MMJPanel2: TMMJPanel;
    JvDBGrid1: TJvDBGrid;
    Label8: TLabel;
    Edit3: TEdit;
    Edit2: TEdit;
    Label5: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure JvDBGrid1CellClick(Column: TColumn);
    procedure JvDBGrid1ColEnter(Sender: TObject);
    procedure JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNFPaulista: TfNFPaulista;
    conta_local: string;

implementation

uses UDm, ufcr, UDMNF;

{$R *.dfm}

Function RemoveChar(Const Texto:String):String;
// Remove caracteres de uma string deixando apenas numeros
var
  I: integer;
  S: string;
begin
  S := '';
  for I := 1 To Length(Texto) Do
  begin
    if (Texto[I] in ['0'..'9']) then
    begin
     S := S + Copy(Texto, I, 1);
    end;
  end;
  result := S;
end;

procedure TfNFPaulista.BitBtn1Click(Sender: TObject);
var
  Registro, NomArquivo, datamaior, datamenor, CNPJ , frete , ccusto_uso: string;
  i, j : integer;
  arquivo: TextFile;
  dathor: TDateTime;
begin
   JvProgressBar1.Position := 0;
   JvProgressBar1.Max := 1000;
   {cds_ccusto.Locate('NOME',ComboBox1.Text, [loCaseInsensitive]);
    ccusto_uso := cds_ccustoCODIGO.AsString;
    if (ComboBox1.Text <> '') then
      if  (cds_MovimentoCONTROLE.AsString <> ComboBox1.Text) then
        cds_movimentoControle.AsString := ComboBox1.Text;}

   if (not cds_ccusto.Active) then
     cds_ccusto.Open;
   cds_ccusto.Locate('NOME', ComboBox1.Text,[loCaseInsensitive]);

   JvProgressBar1.Position := 10;
   i := 0;  // Quantidade de Linhas 20, 40, 50, 60
   j := 0;  // Quantidade de Linhas 30

   // Abrir cdsNF com parametro data1 e data 2 e Centro de Custo Selecionado
  { if (cdsNF.Active) then
     cdsNF.Close;
   cdsNF.Params[0].AsDate := StrToDate(JvDateEdit1.Text);
   cdsNF.Params[1].AsDate := StrToDate(JvDateEdit2.Text);
   cdsNF.Params[2].AsString := edSerie.Text;
   cdsNF.Open;}


   JvProgressBar1.Position := 10;
   //Seleciona Empresa de acordo com o CCusto selecionado
   if (sEmpresa.Active) then
     sEmpresa.Close;
   sEmpresa.Params[0].AsInteger := cds_ccustoCODIGO.AsInteger;
   sEmpresa.Open;

   NomArquivo := Edit1.Text;
   AssignFile(Arquivo, NomArquivo);
   Rewrite(Arquivo);
   Registro := '';
   { GERAR REGISTRO-HEADER DA REMESSA }
   CNPJ := RemoveChar(sEmpresaCNPJ_CPF.AsString);
   datamenor := formatdatetime('dd/mm/yyyy', StrToDate(Edit2.Text));
   datamaior := formatdatetime('dd/mm/yyyy', StrToDate(Edit3.Text));
   Registro := ('10' + '|' + //  	Preencher com o valor "10" para indicar o tipo de registro
                    '1,00'+ '|' + // Versão do leiaute do arquivo. Preencher com “1,00” nesta versão.
                    Formatar(CNPJ, 14,False,'0') +  '|' +//Informar o CNPJ do emitente com os zeros não significativos. Preencher apenas com números, sem separadores.
                    datamenor +  '|' +// Menor data de emissão das notas fiscais transmitidas.
                    datamaior); // Maior data de emissão das notas fiscais transmitidas.
   writeln(Arquivo, Registro);
   JvProgressBar1.Position := 10;
   cdsNF.First;
   while not cdsNF.Eof do
   begin
      if (cdsNFSELECIONOU.AsString = 'S') then
      begin
        JvProgressBar1.Position := JvProgressBar1.Position + 10;
        if (sCFOP.Active) then
          sCFOP.Close;
        sCFOP.Params[0].AsString := cdsNFCFOP.AsString;
        sCFOP.Open;
        if (sCliente.Active) then
          sCliente.Close;
        sCliente.Params[0].AsInteger := cdsNFCODCLIENTE.AsInteger;
        sCliente.Open;

        if (cdsNFDTASAIDA.IsNull) then
          dathor := cdsNFDTAEMISSAO.AsDateTime
        else
          dathor := cdsNFDTASAIDA.AsDateTime;

        Registro := ('20'+  '|' +                                                             // NF (nota fiscal com 3 itens de mercadorias e com informações adicionais de interesse do Fisco)
                     'I' +  '|' +                                                             // Informar conforme a função do registro: I – Inclusão do registro da NF R – Retificação do registro da NF C – Cancelamento da NF
                     '' +  '|' +                                                              // Informar a justificativa do cancelamento. Campo obrigatório se campo 7 (Função do Registro) for igual a “C”.
                     sCFOPCFNOME.AsString +  '|' +                                            // Informar a natureza da operação da qual decorreu a saída ou a entrada, tais como: venda, compra, transferência, devolução, importação, consignação, remessa (para fins de demonstração, de industrialização ou outra), conforme previsto na alínea 'i', inciso I, art. 19 do CONVÊNIO S/Nº, de 15 de dezembro de 1970.
                     '0' +  '|' +                                                             // Série da Nota Fiscal. Informar 0 (zero) para série única.
                     IntToStr(cdsNFNOTASERIE.AsInteger) +  '|' +                              // Número da Nota Fiscal.
                     FormatDateTime('dd/mm/yyyy HH:MM:SS',cdsNFDTAEMISSAO.AsDateTime) +  '|' +//Data de emissão da Nota Fiscal     	Formato “DD/MM/AAAA HH:MM:SS” ; Hora: 0 a 23
                     FormatDateTime('dd/mm/yyyy',dathor) +                                                                 // Data de Saída ou da Entrada da Mercadoria / Produto / Serviço
                     FormatDateTime(' HH:MM:SS',cdsNFHORASAIDA.AsDateTime) + '|' +            // Hora de Saída ou da Entrada da Mercadoria / Produto / Serviço
                     '1' + '|' +                                                              // Tipo da Nota Fiscal  	0-entrada / 1-saída
                     cdsNFCFOP.AsString +  '|' +                                              // Código Fiscal de Operações e Prestações
                     '' +  '|' +                                                              // IE do Substituto Tributário na UF de destino
                     '' +  '|' +                                                              // Inscrição Municipal do Emitente
                     Formatar(RemoveChar(sClienteCNPJ.AsString),14,False,'0') +  '|' +        // CNPJ ou CPF do destinatário
                     sClienteRAZAOSOCIAL.AsString + '|' +                                     // Formatar(sCFOPCFNOME.AsString, 60)
                     sClienteLOGRADOURO.AsString + '|' +                                      // Logradouro Cliente
                     sClienteNUMERO.AsString + '|' +                                          // Numero Endereço Cliente
                     sClienteCOMPLEMENTO.AsString + '|' +                                     // Complemento do Endereço Cliente
                     sClienteBAIRRO.AsString + '|' +                                          // Bairro Cliente
                     sClienteCIDADE.AsString + '|' +                                          // Cidade Cliente
                     sClienteUF.AsString + '|' +                                              // Estado Cliente
                     RemoveChar(sClienteCEP.AsString) + '|' +                                 // CEP Cliente
                     '' +  '|' +                                                              // País Cliente
                     '' +  '|' +                                                              // Telefone Cliente
                     formatar(RemoveChar(sClienteINSCESTADUAL.AsString), 14));                // IE Cliente

        writeln(Arquivo, Registro);
        if (cdsItensNF.Active) then
           cdsItensNF.Close;
        cdsItensNF.Params[0].AsInteger := cdsNFCODVENDA.AsInteger;
        cdsItensNF.Open;
        while not cdsItensNF.Eof do // Escrevo os itens
        begin
          JvProgressBar1.Position := JvProgressBar1.Position + 1;
          Registro := ('30' + '|' +                                                          // Preencher com o valor "30" para indicar o tipo de registro
          cdsItensNFCODPRO.AsString + '|' +                                                  // Codigo do Produto
          cdsItensNFDESCPRODUTO.AsString + '|' +                                             // Descrição do Produto
          '' +  '|' +                                                                        // Codigo NCM
          cdsItensNFUNIDADEMEDIDA.AsString + '|' +                                           // Unidade de Medida do Produto ex: PC, KG.
          FormatFloat('0.0000' , cdsItensNFQUANTIDADE.AsFloat) + '|' +                       // Quantidade do Produto
          FormatFloat('0.0000' , cdsItensNFVLR_BASE.AsFloat) + '|' +                         // Preço Comercial Produto Unitário
          FormatFloat('0.00' , (cdsItensNFQUANTIDADE.AsFloat * cdsItensNFVLR_BASE.AsFloat)) + '|' +  // Preço Produto Total
           Formatar(cdsItensNFCST.AsString, 3) + '|' +                                       // Código da Situação Tributária por Produto
          FormatFloat('0.00' , cdsItensNFICMS.AsFloat) + '|' +                               // Valor ICMS do Produto
          '0,00' +  '|' +                                                                    // Aliquota IPI Produto
          '0,00');                                                                           // Valor IPI Produto

          writeln(Arquivo, Registro);
          j := j + 1;
          cdsItensNF.Next;
        end;
        Registro := ('40' + '|' +                                                        // Preencher com o valor "40" para indicar o tipo de registro
        FormatFloat('0.00' , cdsNFBASE_ICMS.AsFloat) + '|' +                             // Base ICMS
        FormatFloat('0.00' , cdsNFVALOR_ICMS.AsFloat) + '|' +                            // Total do ICMS
        FormatFloat('0.00' , cdsNFBASE_ICMS_SUBST.AsFloat) + '|' +                       // Base ICMS Substituição
        FormatFloat('0.00' , cdsNFVALOR_ICMS_SUBST.AsFloat) + '|' +                      // ICMS Substituição
        FormatFloat('0.00' , cdsNFVALOR_PRODUTO.AsFloat) + '|' +                         // Valor Total dos Produtos sem impostos
        FormatFloat('0.00' , cdsNFVALOR_FRETE.AsFloat) + '|' +                           // Valor do Frete
        FormatFloat('0.00' , cdsNFVALOR_SEGURO.AsFloat) + '|' +                          // Valor do Seguro
        '0,00' +  '|' +                                                                  // Valor do Desconto
        FormatFloat('0.00' , cdsNFVALOR_IPI.AsFloat) + '|' +                             // Valor do IPI
        FormatFloat('0.00' , cdsNFOUTRAS_DESP.AsFloat) + '|' +                           // Valor de outras despesas
        FormatFloat('0.00' , cdsNFVALOR_TOTAL_NOTA.AsFloat) + '|' +                      // Valor Total da Nota
        '0,00' +  '|' +                                                                  // Valor Total dos Serviços sob não-incidência ou não tributados pelo ICMS
        '0,00' +  '|' +                                                                  // Alíquota do ISS
        '0,00');                                                                         // Valor Total do ISS
        writeln(Arquivo, Registro);

        //Insere valor no frete caso esteje vazio
        if(cdsNFFRETE.AsString = '2') then
        frete := '1';
        if(cdsNFFRETE.AsString = '1') then
        frete := '0';
        if(cdsNFFRETE.IsNull) then
        frete := '1';


        Registro := ('50' + '|' +                                                            // Transporte
        frete + '|' +                                                                        // Tipo Frete 0 Emitente 1 Destinatário
        RemoveChar(cdsNFCNPJ_CPF.AsString) + '|' +                                           // CPF CNPJ Tranpostadora
        cdsNFNOMETRANSP.AsString + '|' +                                                     // Nome Transportadora
        RemoveChar(cdsNFINSCRICAOESTADUAL.AsString) + '|' +                                  // I.E. Transportadora
        cdsNFEND_TRANSP.AsString + '|' +                                                     // Endereço Transportadora
        cdsNFCIDADE_TRANSP.AsString + '|' +                                                  // Cidade Transportadora
        cdsNFUF_TRANSP.AsString + '|' +                                                      // UF Transportadora
        cdsNFPLACATRANSP.AsString + '|' +                                                    // Placa Transportadora
        cdsNFUF_VEICULO_TRANSP.AsString + '|' +                                              // UF Veiculo Transportadora
        cdsNFQUANTIDADE.AsString + '|' +                                                     // Quantidade Transportada
        cdsNFESPECIE.AsString + '|' +                                                        // Espécie Transportada
        cdsNFMARCA.AsString + '|' +                                                          // Marca Transporte
        cdsNFNUMERO.AsString + '|' +                                                         // Numeração dos Volumes Transportados
        '' +  '|' +                                                                          // Peso Liquido do Transporte
        '');                                                                                 // Peso Bruto do Transporte

        writeln(Arquivo, Registro);

        Registro := ('60' +  '|' +                                                           // adicionais/Cobrança
        '' +  '|' +                                                                          // Preencher o campo com os dados da fatura
        '' +  '|' +                                                                          // Informações Adicionais de Interesse do Fisco
        Formatar(cdsNFCORPONF1.AsString + ' ' + cdsNFCORPONF2.AsString, 500));               // Informações Complementares de interesse do Contribuinte

        writeln(Arquivo, Registro);
        i := i + 1;
      end;
      cdsNF.Next;
   end;

   Registro := ('90' + '|' +                                                                 // Rodapé totalizador
   Formatar(inttostr(i), 5, False, '0') + '|' +                                                                                 // Quantidade de campos 20
   Formatar(inttostr(j), 5, False, '0') + '|' +                                                                                 // Quantidade de campos 30
   Formatar(inttostr(i), 5, False, '0') + '|' +                                                                                 // Quantidade de campos 40
   Formatar(inttostr(i), 5, False, '0') + '|' +                                                                                 // Quantidade de campos 50
   Formatar(inttostr(i), 5, False, '0'));                                                                                       // Quantidade de campos 60
   writeln(Arquivo, Registro);
   CloseFile(arquivo);

   JvProgressBar1.Position := JvProgressBar1.Position + (1000-JvProgressBar1.Position);

   MessageDlg('Arquivo gerado com sucesso.', mtInformation, [mbOK], 0);
end;

procedure TfNFPaulista.BitBtn2Click(Sender: TObject);
begin
  //  SaveDialog1.Execute;
  //  Edit1.Text := SaveDialog1.FileName;
   if (cdsNF.Active) then
     cdsNF.Close;
   cdsNF.Params[0].AsDate := StrToDate(JvDateEdit1.Text);
   cdsNF.Params[1].AsDate := StrToDate(JvDateEdit2.Text);
   cdsNF.Params[2].Clear;
   cdsNF.Params[3].Clear;   
   if (edSerie.Text <> '') then
     cdsNF.Params[2].AsString := edSerie.Text
   else
     cdsNF.Params[3].AsString := 'todasasseriesdenotaf';
   cdsNF.Open;


  if (sMenorData.Active) then
     sMenorData.Close;
   sMenorData.Params[0].AsDate := StrToDate(JvDateEdit1.Text);
   sMenorData.Params[1].AsDate := StrToDate(JvDateEdit2.Text);
   sMenorData.Params[2].Clear;
   sMenorData.Params[3].Clear;
   if (edSerie.Text <> '') then
     sMenorData.Params[2].AsString := edSerie.Text
   else
     sMenorData.Params[3].AsString := 'todasasseriesdenotaf';
   sMenorData.Open;

   if (sMaiorData.Active) then
     sMaiorData.Close;
   sMaiorData.Params[0].AsDate := StrToDate(JvDateEdit1.Text);
   sMaiorData.Params[1].AsDate := StrToDate(JvDateEdit2.Text);
   sMaiorData.Params[2].Clear;
   sMaiorData.Params[3].Clear;
   if (edSerie.Text <> '') then
     sMaiorData.Params[2].AsString := edSerie.Text
   else
     sMaiorData.Params[3].AsString := 'todasasseriesdenotaf';
   sMaiorData.Open;

   Edit2.Text := DateToStr(sMenorDataMENORDATA.Value);
   Edit3.Text := DateToStr(sMaiorDataMAIORDATA.Value);

   BitBtn1.Enabled := True;
   JvBitBtn1.Enabled := True;
    
end;

procedure TfNFPaulista.FormCreate(Sender: TObject);
begin

    if dm.cds_parametro.Active then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'CENTRORECEITA';
    dm.cds_parametro.Open;
    conta_local := dm.cds_parametroDADOS.AsString;
    dm.cds_parametro.Close;
    if cds_ccusto.Active then
      cds_ccusto.Close;
    cds_ccusto.Params[0].AsString := conta_local;
    cds_ccusto.Open;
    // populo a combobox
    cds_ccusto.First;
    while not cds_ccusto.Eof do
    begin
      ComboBox1.Items.Add(cds_ccustoNOME.AsString);
      cds_ccusto.Next;
    end;
 
end;

procedure TfNFPaulista.dxButton1Click(Sender: TObject);
begin
    SaveDialog1.Execute;
    Edit1.Text := SaveDialog1.FileName;
end;

procedure TfNFPaulista.JvBitBtn1Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'nf_paulista.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('DTA1').Value := formatdatetime('dd/mm/yyyy', JvDateEdit1.Date);
  VCLReport1.Report.Params.ParamByName('DTA2').Value := formatdatetime('dd/mm/yyyy', JvDateEdit2.Date);
  VCLReport1.Report.Params.ParamByName('PVENDACUSTO').Value := edSerie.Text;
  VCLReport1.Execute;
  VCLReport1.Report.DatabaseInfo.Items[0].DisConnect;
end;

procedure TfNFPaulista.JvDBGrid1CellClick(Column: TColumn);
begin
  if Column.Field = cdsNFSELECIONOU then
  begin
     cdsNF.Edit;
     if cdsNFSELECIONOU.AsString = 'S' then
       cdsNFSELECIONOU.AsString := ''
     else
       cdsNFSELECIONOU.AsString := 'S';
  end;
end;

procedure TfNFPaulista.JvDBGrid1ColEnter(Sender: TObject);
begin
   if JvDBGrid1.SelectedField = cdsNFSELECIONOU then
     JvDBGrid1.Options := JvDBGrid1.Options - [dgEditing]
   else
      JvDBGrid1.Options := JvDBGrid1.Options + [dgEditing];
end;

procedure TfNFPaulista.JvDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  // Selecionou ?
   if Column.Field = cdsNFSELECIONOU then
   begin
       JvDBGrid1.Canvas.FillRect(Rect);
       ImageList2.Draw(JvDBGrid1.Canvas,Rect.Left+10,Rect.top, 1);
       if cdsNFSELECIONOU.AsString = 'S' then
         ImageList2.Draw(JvDBGrid1.Canvas,Rect.Left+10,Rect.top, 2)
       else
         ImageList2.Draw(JvDBGrid1.Canvas,Rect.Left+10,Rect.top, 0);
   end;
end;

procedure TfNFPaulista.BitBtn3Click(Sender: TObject);
begin
  cdsNF.DisableControls;
  cdsNF.First;
  while not cdsNF.Eof do
  begin
     cdsNF.Edit;
     cdsNFSELECIONOU.AsString := 'S';
     cdsNF.Post;
     cdsNF.Next;
  end;
  cdsNF.First;
  cdsNF.EnableControls;
end;

procedure TfNFPaulista.BitBtn4Click(Sender: TObject);
begin
  cdsNF.DisableControls;
  cdsNF.First;
  while not cdsNF.Eof do
  begin
     cdsNF.Edit;
     cdsNFSELECIONOU.AsString := '';
     cdsNF.Post;
     cdsNF.Next;
  end;
  cdsNF.First;
  cdsNF.EnableControls;
end;

procedure TfNFPaulista.FormShow(Sender: TObject);
var dia, mes, ano :word;
begin

  ForceDirectories('c:\home\NFPaulista');

  DecodeDate( now, ano, mes, dia);
  edit1.text := 'c:\home\NFPaulista\' + IntToStr(dia) + '-' + IntToStr(mes) + '-' + IntToStr(ano) + '.txt';
end;

end.
