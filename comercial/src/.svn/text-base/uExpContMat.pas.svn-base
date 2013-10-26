unit uExpContMat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, JvExComCtrls, JvProgressBar, Mask, JvExMask,
  JvToolEdit, dxCore, dxButton, XPMenu, rpcompobase, rpvclreport,
  gbCobranca, FMTBcd, DB, DBClient, Provider, SqlExpr, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, ExtCtrls, MMJPanel, Buttons, ImgList, JvExButtons,
  JvBitBtn;

type
  TfExpContMat = class(TForm)
    SaveDialog1: TSaveDialog;
    gbCobranca1: TgbCobranca;
    OpenDialog1: TOpenDialog;
    VCLReport1: TVCLReport;
    XPMenu1: TXPMenu;
    cdsItensNF: TClientDataSet;
    cdsItensNFCODPRODUTO: TIntegerField;
    cdsItensNFQUANTIDADE: TFloatField;
    cdsItensNFPRECO: TFloatField;
    cdsItensNFDESCPRODUTO: TStringField;
    cdsItensNFCODPRO: TStringField;
    cdsItensNFUNIDADEMEDIDA: TStringField;
    cdsItensNFCST: TStringField;
    cdsItensNFICMS: TFloatField;
    cdsItensNFVLR_BASE: TFloatField;
    dspItensNF: TDataSetProvider;
    sdsItensNF: TSQLDataSet;
    sdsItensNFCODPRODUTO: TIntegerField;
    sdsItensNFQUANTIDADE: TFloatField;
    sdsItensNFPRECO: TFloatField;
    sdsItensNFDESCPRODUTO: TStringField;
    sdsItensNFCODPRO: TStringField;
    sdsItensNFUNIDADEMEDIDA: TStringField;
    sdsItensNFCST: TStringField;
    sdsItensNFICMS: TFloatField;
    sdsItensNFVLR_BASE: TFloatField;
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
    sCFOP: TSQLDataSet;
    sCFOPCFCOD: TStringField;
    sCFOPCFNOME: TStringField;
    sCliente: TSQLDataSet;
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
    s_2: TSQLDataSet;
    s_2CODIGO: TIntegerField;
    s_2CONTA: TStringField;
    s_2NOME: TStringField;
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
    dsp_Movimento: TDataSetProvider;
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
    dsp_param: TDataSetProvider;
    d_2: TDataSetProvider;
    cds_ccusto: TClientDataSet;
    cds_ccustoCODIGO: TIntegerField;
    cds_ccustoCONTA: TStringField;
    cds_ccustoNOME: TStringField;
    sdsNF: TSQLDataSet;
    dspNF: TDataSetProvider;
    cdsNF: TClientDataSet;
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
    sMenorData: TSQLDataSet;
    sMenorDataMENORDATA: TDateField;
    sMaiorData: TSQLDataSet;
    sMaiorDataMAIORDATA: TDateField;
    MMJPanel1: TMMJPanel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    JvDateEdit1: TJvDateEdit;
    JvDateEdit2: TJvDateEdit;
    dxButton1: TdxButton;
    Button1: TButton;
    JvProgressBar1: TJvProgressBar;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn2: TBitBtn;
    JvDBGrid1: TJvDBGrid;
    DataSource1: TDataSource;
    ImageList2: TImageList;
    ImageList1: TImageList;
    Edit3: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    edSerie: TEdit;
    sdsNFCFOP: TStringField;
    sdsNFDTAEMISSAO: TDateField;
    sdsNFDTASAIDA: TDateField;
    sdsNFCORPONF1: TStringField;
    sdsNFCORPONF2: TStringField;
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
    sdsNFFRETE: TStringField;
    sdsNFCNPJ_CPF: TStringField;
    sdsNFNOMETRANSP: TStringField;
    sdsNFINSCRICAOESTADUAL: TStringField;
    sdsNFEND_TRANSP: TStringField;
    sdsNFENTRADA: TFloatField;
    sdsNFN_PARCELA: TSmallintField;
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
    sdsNFHORASAIDA: TTimeField;
    sdsNFNOTASERIE: TStringField;
    sdsNFSELECIONOU: TStringField;
    sdsNFVALOR: TFloatField;
    cdsNFCFOP: TStringField;
    cdsNFDTAEMISSAO: TDateField;
    cdsNFDTASAIDA: TDateField;
    cdsNFCORPONF1: TStringField;
    cdsNFCORPONF2: TStringField;
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
    cdsNFFRETE: TStringField;
    cdsNFCNPJ_CPF: TStringField;
    cdsNFNOMETRANSP: TStringField;
    cdsNFINSCRICAOESTADUAL: TStringField;
    cdsNFEND_TRANSP: TStringField;
    cdsNFENTRADA: TFloatField;
    cdsNFN_PARCELA: TSmallintField;
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
    cdsNFHORASAIDA: TTimeField;
    cdsNFNOTASERIE: TStringField;
    cdsNFSELECIONOU: TStringField;
    cdsNFVALOR: TFloatField;
    sdsNFUF: TStringField;
    cdsNFUF: TStringField;
    btnSira: TButton;
    sClienteFONE: TStringField;
    sClienteFAX: TStringField;
    sClienteE_MAIL: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure JvDBGrid1ColEnter(Sender: TObject);
    procedure JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure JvDBGrid1CellClick(Column: TColumn);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSiraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fExpContMat: TfExpContMat;

implementation

uses DateUtils, UDm, ufcr, UDMNF;
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

procedure TfExpContMat.Button1Click(Sender: TObject);
var  Registro, NomArquivo, prazo, avista, parcelas, dattoday: string;
     arquivo: TextFile;
     dathor: TDateTime;
begin
   JvProgressBar1.Position := 0;
   JvProgressBar1.Max := 1000;

   // Abrir cdsNF com parametro data1 e data 2
  {  if (cdsNF.Active) then
     cdsNF.Close;
   cdsNF.Params[0].AsDate := StrToDate(JvDateEdit1.Text);
   cdsNF.Params[1].AsDate := StrToDate(JvDateEdit2.Text);
   cdsNF.Open;
   }//sMenorData.Open;
   //sMaiorData.Open;
   JvProgressBar1.Position := 1;
   //Seleciona Empresa de acordo com o CCusto selecionado
   if (sEmpresa.Active) then
     sEmpresa.Close;

   sEmpresa.Params[0].AsInteger := cds_ccustoCODIGO.AsInteger;
   sEmpresa.Open;

   //datamenor := FormatDateTime('ddmm', StrToDate(JvDateEdit1.Text));
   //datamaior := FormatDateTime('ddmm', StrToDate(JvDateEdit2.Text));

   dattoday := FormatDateTime('mm', Today);

   NomArquivo := (Edit1.Text);
   AssignFile(Arquivo, NomArquivo);
   Rewrite(Arquivo);

   while not cdsNF.Eof do
   begin
   if (cdsNFSELECIONOU.AsString = 'S') then
     begin
     JvProgressBar1.Position := JvProgressBar1.Position + 5;

     if (sCliente.Active) then
        sCliente.Close;
     sCliente.Params[0].AsInteger := cdsNFCODCLIENTE.AsInteger;
     sCliente.Open;

     if (cdsNFDTASAIDA.IsNull) then
       dathor := cdsNFDTAEMISSAO.AsDateTime
     else
       dathor := cdsNFDTASAIDA.AsDateTime;

     if(cdsNFENTRADA.AsFloat = cdsNFVALOR.AsFloat) then
     begin
     prazo := '';
     avista := FloatToStr(cdsNFVALOR.AsFloat);
     parcelas := '';
     end
     else
     begin
     prazo := FloatToStr(cdsNFVALOR.asFloat);
     avista := '';
     parcelas := IntToStr(cdsNFN_PARCELA.AsInteger);
     end;

     Registro := ('R1' + '|' +                                                 //	Tipo de Registro. Constante R1
                'S' +  '|' +                                                 // Indicador do tipo de Operação: E - Entrada; S - Saída
                FormatDateTime('ddmm',cdsNFDTAEMISSAO.asDateTime) +  '|' +   // Informe a data de emissão no formato DDMM
                FormatDateTime('ddmm',dathor) +  '|' +                       //Informe a data de entrada/saída no formato DDMM
                '|' +                                                        // Informe a ESPÉCIE da nota fiscal, de acordo com o item
                IntToStr(cdsNFNOTASERIE.AsInteger) +  '|' +                  // Informe a Série e Sub-série da Nota Fiscal
                IntToStr(cdsNFNUMNF.asInteger) +  '|' +                      //Informe o número da Nota Fiscal (se for lançamento em lote, informe o primeiro número)
                '|' +                                                        // Informe o número final do lote de Notas Fiscais
                cdsNFUF.AsString + '|' +                                     // Informe a unidade da federação do Emitente/Destinatário
                Formatar(cdsNFCFOP.AsString,4,False,'0') +  '|' +            // Informe o Código Fiscal de Operação da Nota Fiscal. Pode ser informado com ou sem ponto. Ex.: 5102 ou 5.102
                '|' +                                                        // Informe o Código Contábil utilizado para integração contábil
                '|' +                                                        // Nas Saídas, digite "1" para notas fora do estado e não contribuinte. Nas Entradas, digite 2 para Petróleo/Energia
                '|' +                                                        // Informe o código do Município paulista, conforme publicado pelo Estado de São Paulo
                Formatar(cdsNFCORPONF1.AsString,14,False,'0') + '|' +        // Opcional, uma frase para sair na observação do livro
                Removechar(FormatFloat('0.00' , cdsNFVALOR_TOTAL_NOTA.AsFloat)) + '|' +            // Informe o valor total da Nota Fiscal
                Removechar(FormatFloat('0.00' , cdsNFBASE_ICMS.AsFloat)) + '|' +     // 16 - Informe o valor referente à base de cálculo do ICMS
                Removechar(FormatFloat('0.00' , cdsNFVALOR_ICMS.AsFloat)) + '|' +    // Informe a alíquota do ICMS
                Removechar(FormatFloat('0.00' , cdsNFVALOR_ICMS.AsFloat)) + '|' +    // Informe o valor do imposto de ICMS
                sClienteBAIRRO.AsString + '|' +                              // Informe o valor das mercadorias isentas de ICMS
                sClienteCIDADE.AsString + '|' +                              // Informe o valor de outras de ICMS (ex.: suspensão)
                sClienteUF.AsString + '|' +                                  // Informe o tipo da Nota Fiscal. Pergunte ao operador da Contmatic
                '|' +                                                        // 22 - Informe o valor referente à base de cálculo do ICMS
                '|' +                                                        // Informe a alíquota do ICMS
                '|' +                                                        // Informe o valor do imposto de ICMS
                '|' +                                                        // Informe o valor das mercadorias isentas de ICMS
                '|' +                                                        // Informe o valor de outras de ICMS (ex.: suspensão)
                '|' +                                                        // Informe o tipo da Nota Fiscal. Pergunte ao operador da Contmatic
                '|' +                                                        // 28 - Informe o valor referente à base de cálculo do ICMS
                '|' +                                                        // nforme a alíquota do ICMS
                '|' +                                                        // Informe o valor do imposto de ICMS
                '|' +                                                        // Informe o valor das mercadorias isentas de ICMS
                '|' +                                                        // Informe o valor de outras de ICMS (ex.: suspensão)
                '|' +                                                        // Informe o tipo da Nota Fiscal. Pergunte ao operador da Contmatic
                '|' +                                                        // 34 - Informe o valor referente à base de cálculo do ICMS
                '|' +                                                        // Informe a alíquota do ICMS
                '|' +                                                        // Informe o valor do imposto de ICMS
                '|' +                                                        // Informe o valor das mercadorias isentas de ICMS
                '|' +                                                        // Informe o valor de outras de ICMS (ex.: suspensão)
                '|' +                                                        // Informe o tipo da Nota Fiscal. Pergunte ao operador da Contmatic
                '|' +                                                        // 40 - Informe o valor referente à base de cálculo do ICMS
                '|' +                                                        // Informe a alíquota do ICMS
                '|' +                                                        // Informe o valor do imposto de ICMS
                '|' +                                                        // Informe o valor das mercadorias isentas de ICMS
                '|' +                                                        // Informe o valor de outras de ICMS (ex.: suspensão)
                '|' +                                                        // 45 - Informe o tipo da Nota Fiscal. Pergunte ao operador da Contmatic
                '|' +                                                        // Informe o valor referente à base de cálculo do IPI
                Removechar(FormatFloat('0.00' , cdsNFVALOR_IPI.AsFloat)) +  '|' +                  // Informe o valor do imposto de IPI
                '|' +                                                        // Informe o valor das mercadorias isentas de IPI
                '|' +                                                        // Informe o valor de outras de IPI (ex.: suspensão)
                '|' +                                                        // Informe o valor do IPI não aproveitado (somente para indústrias)
                Removechar(FormatFloat('0.00' , cdsNFBASE_ICMS.AsFloat)) +  '|' +                  // Informe o valor da Base de Cálculo do ICMS ST 51
                '|' +                                                        // Informe o valor do ICMS retido na fonte
                '|' +                                                        // 53 - Informe o valor do PVV (se houver)
                '|' +                                                        // Informe o valor do desconto
                '|' +                                                        // Informe o valor do abatimento sobre a nota fiscal
                Removechar(avista) + '|' +                                               // Opcional (para integração contábil - não deve ser utilizado em conjunto com o campo vencimento) - Informe o valor a vista da compra ou venda
                Removechar(prazo) + '|' +                                                // Opcional (para integração contábil - não deve ser utilizado em conjunto com o campo vencimento) - Informe o valor a prazo da compra ou venda
                Removechar(parcelas) + '|' +                                             // Opcional (para integração contábil - não deve ser utilizado em conjunto com os campos a vista e a prazo) - Preencha da seguinte forma: Em branco - tudo à vista; 1 - tudo a prazo;2 - metade à vista, metade a prazo;3 - 1 parte à vista, duas partes a prazo;4 - 1 parte à vista, três partes a prazo;5 - 1 parte à vista, quatro partes a prazo;e assim sucessivamente.
                '|' +                                                        // Nas Compras/Vendas/Devoluções, informe o valor isento de Pis/Cofins
                Formatar(RemoveChar(sClienteCNPJ.AsString),14,False,'0') + '|' + // Informe o CNPJ/CPF do participante - antigos fornecedores/clientes (quando for CPF, informar sem zeros à esquerda) 60
                Removechar(sClienteINSCESTADUAL.AsString) + '|' +  // Informe a Inscrição Estadual do participante
                '|' +                                                        // Informe a Inscrição Municipal do participante
                sClienteRAZAOSOCIAL.AsString + '|' +                         // Informe a Razão Social do participante
                sClienteLOGRADOURO.AsString + '|' +                          // Informe o endereço do participante (somente logradouro)
                '|' +                                                        // Informe o número do endereço do participante
                sClienteCOMPLEMENTO.AsString + '|' +                         // Informe o complemento do endereço do participante
                sClienteBAIRRO.AsString + '|' +                              // Informe o Bairro do endereço do participante
                Removechar(sClienteCEP.AsString) + '|' +                                 // Informe o CEP do endereço do participante
                '|' +                                                        // Informe o código do Município do participante conforme tabela disponibilizada na DIPJ
                sClienteCIDADE.AsString + '|' +                              // Informe o nome do Município do participante   70
                sClienteUF.AsString + '|' +                                  // Informe a UF do participante
                '|' +                                                        // Informe o código do país do participante conforme tabela disponibilizada pelo Banco Central
                '|' +                                                        // Informe a Inscrição Suframa, se o participante estiver inscrito na Zona Franca de Manaus
                '|');                                                        // Conta contábil do participante, se for realizar integração contábil no método analítico
      writeln(Arquivo, Registro);

      if(cdsItensNF.Active) then
        cdsItensNF.Close;
      cdsItensNF.Params[0].AsInteger := cdsNFCODVENDA.AsInteger;
      cdsItensNF.Open;
      while not cdsItensNF.Eof do // Escrevo os itens
      begin
        JvProgressBar1.Position := JvProgressBar1.Position + 1;
        Registro := ('R2' + '|' +                                             // Tipo de Registro. Constante R2
        cdsItensNFCODPRO.AsString + '|' +                                     // Informe o código de mercadoria, interno da empresa (Opcional)
        '|' +                                                                 // Informe o código da mercadoria conforme tabela da NCM
        cdsItensNFDESCPRODUTO.AsString + '|' +                                // Informe a descrição da mercadoria
        '|' +                                                                 // Informe a Base de Cálculo do IPI da mercadoria
        '|' +                                                                 // Informe o valor do IPI da mercadoria
        '|' +                                                                 // Informe o valor Isento de IPI da mercadoria
        Removechar(FormatFloat('0.000' , cdsItensNFQUANTIDADE.AsFloat)) + '|' + // 8 - Informe a quantidade da mercadoria
        Removechar(FormatFloat('0.00' , cdsItensNFPRECO.AsFloat)) + '|' +      // Informe o valor unitário da mercadoria
        '|' +                                                                 // Informe o código utilizado para identificar a Natureza da Operação (ex.: CFOP) "Somente para quem utiliza a DNF"
        '|' +                                                                 // Informe a capacidade volumétrica em "mililitros" do recipiente, somente dos produtos que necessitam dessa informação (Verificar os Anexos I e II da DNF). "Somente para quem utiliza a DNF"
        '|' +                                                                 // Informe a alíquota de IPI com 3 casas decimais. "Somente para quem utiliza a DNF"
        '|' +                                                                 // Informe o código do produto de acordo com os anexos I e II da DNF (Deve estar de acordo com a NCM). "Somente para quem utiliza a DNF"
        '|' +                                                                 // Informe a unidade de medida como constou na nota fiscal emitida. "Somente para quem utiliza a DNF"
        '|');                                                                 // Informe o fator de conversão da unidade de medida utilizada na nota para a unidade padrão constante nos anexos I e II da DNF.  "Somente para quem utiliza a DNF"   Exemplo: Unidade de Medida na NF: Tonelada Quantidade: 5,687 Unidade Estatística (Padrão): kg Dados a serem usados para conversão: 1 tonelada = 1.000 kg Cálculo da Conversão (regra de três simples): 1/1.000 = 5,687/x Quantidade na Unidade estatística: 5.687,000 // Você deve informar nesse campo o fator de conversão que é o valor pelo qual deve ser multiplicada a quantidade para chegar à unidade estatística. No exemplo acima é 1000, mas se no exemplo acima mudássemos somente a unidade da NF para gramas, o fator seria 0,001.
      writeln(Arquivo, Registro);
      cdsItensNF.Next;
      end;
   end;
   cdsNF.Next;

end;
   CloseFile(arquivo);
   JvProgressBar1.Position := JvProgressBar1.Position + (1000-JvProgressBar1.Position);

   MessageDlg('Arquivo gerado com sucesso.', mtInformation, [mbOK], 0)
end;


procedure TfExpContMat.dxButton1Click(Sender: TObject);
begin
    SaveDialog1.Execute;
    Edit1.Text := SaveDialog1.FileName;
end;

procedure TfExpContMat.BitBtn1Click(Sender: TObject);
begin
   // Abrir cdsNF com parametro data1 e data 2
    if (cdsNF.Active) then
     cdsNF.Close;
   cdsNF.Params[0].AsDate := StrToDate(JvDateEdit1.Text);
   cdsNF.Params[1].AsDate := StrToDate(JvDateEdit2.Text);
   cdsNF.Open;
   Button1.Enabled := True;
end;


procedure TfExpContMat.BitBtn2Click(Sender: TObject);
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

   Button1.Enabled := True;
end;

procedure TfExpContMat.JvDBGrid1ColEnter(Sender: TObject);
begin
   if JvDBGrid1.SelectedField = cdsNFSELECIONOU then
     JvDBGrid1.Options := JvDBGrid1.Options - [dgEditing]
   else
      JvDBGrid1.Options := JvDBGrid1.Options + [dgEditing];
end;

procedure TfExpContMat.JvDBGrid1DrawColumnCell(Sender: TObject;
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

procedure TfExpContMat.JvDBGrid1CellClick(Column: TColumn);
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

procedure TfExpContMat.BitBtn4Click(Sender: TObject);
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

procedure TfExpContMat.BitBtn3Click(Sender: TObject);
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

procedure TfExpContMat.FormShow(Sender: TObject);
var dia, mes, ano :word;
begin
  DecodeDate( now, ano, mes, dia);
  edit1.text := 'c:\Home\sisadmin\' + IntToStr(dia) + '-' + IntToStr(mes) + '-' + IntToStr(ano) + '.N' + IntToStr(mes);
end;

procedure TfExpContMat.btnSiraClick(Sender: TObject);
var  Registro, NomArquivo, prazo, avista, parcelas, dattoday: string;
     arquivo: TextFile;
     dathor: TDateTime;
begin
  JvProgressBar1.Position := 0;
  JvProgressBar1.Max := 1000;

  JvProgressBar1.Position := 1;
  //Seleciona Empresa de acordo com o CCusto selecionado
  if (sEmpresa.Active) then
    sEmpresa.Close;

  sEmpresa.Params[0].AsInteger := cds_ccustoCODIGO.AsInteger;
  sEmpresa.Open;

  dattoday := FormatDateTime('ddmmaaaa', Today);

  NomArquivo := (Edit1.Text);
  AssignFile(Arquivo, NomArquivo);
  Rewrite(Arquivo);

  while not cdsNF.Eof do
  begin
    if (cdsNFSELECIONOU.AsString = 'S') then
    begin
      JvProgressBar1.Position := JvProgressBar1.Position + 5;

      if (sCliente.Active) then
        sCliente.Close;
      sCliente.Params[0].AsInteger := cdsNFCODCLIENTE.AsInteger;
      sCliente.Open;

      if (cdsNFDTASAIDA.IsNull) then
        dathor := cdsNFDTAEMISSAO.AsDateTime
      else
        dathor := cdsNFDTASAIDA.AsDateTime;

      if(cdsNFENTRADA.AsFloat = cdsNFVALOR.AsFloat) then
      begin
        prazo := '';
        avista := FloatToStr(cdsNFVALOR.AsFloat);
        parcelas := '';
      end
      else begin
        prazo := FloatToStr(cdsNFVALOR.asFloat);
        avista := '';
        parcelas := IntToStr(cdsNFN_PARCELA.AsInteger);
      end;

      {Linha 1
        /u"Nota Fiscal";"Data de Emissão";"Agrônomo";"Código do Cliente";
        "Nome do Cliente";"Endereço do Cliente";"Bairro do Cliente";
        "Caixa Postal do Cliente";"CEP do Cliente";"Cidade do Cliente";
        "UF do Cliente";"CGC do Cliente";"IE do Cliente";"Contato do Cliente";
        "Telefone do Cliente";"Fax do Cliente";"E-mail do Cliente";
        "Home Page do Cliente";
      }
      Registro := ('"'  + IntToStr(cdsNFNOTASERIE.AsInteger) +  '";' +
               '"'  + FormatDateTime('ddmmyyyy',cdsNFDTAEMISSAO.asDateTime) +  '";' +
               '"";' +
               '"'  + IntToStr(cdsNFCODCLIENTE.AsInteger) + '";' +
               '"'  + sClienteRAZAOSOCIAL.AsString + '";' +
               '"'  + sClienteLOGRADOURO.AsString + '";' +
               '"'  + sClienteBAIRRO.AsString + '";' +
               '"";' +
               '"'  + Removechar(sClienteCEP.AsString) + '";' +
               '"'  + sClienteCIDADE.AsString + '";' +
               '"'  + sClienteUF.AsString + '";' +
               '"'  + Formatar(RemoveChar(sClienteCNPJ.AsString),14,False,'0') + '";' +
               '"'  + Removechar(sClienteINSCESTADUAL.AsString) + '";' +
               '"'  + sClienteCONTATO.AsString + '";' +
               '"'  + sClienteFONE.AsString + '";' +
               '"'  + sClienteFAX.AsString + '";' +
               '"'  + sClienteE_MAIL.AsString + '";' +
               '"";');

      writeln(Arquivo, Registro);

      {Linha 2
         /f"Código da Propriedade";"Nome da Propriedade";"Endereço da Propriedade";
         "Caixa Postal da Propriedade";"Cep da Propriedade";"Cidade da Propriedade";
         "UF da Propriedade";"CGC da Propriedade";"IE da Propriedade";"INCRA da Propriedade";
         "Área da Propriedade";"Contato da Propriedade";"Telefone da Propriedade";
         "Fax da Propriedade";"E-mail da Propriedade";
      }

      Registro := ('"";' +
               '"'  + sClienteNOMECLIENTE.AsString + '";' +
               '"'  + sClienteLOGRADOURO.AsString + '";' +
               '"";' +
               '"'  + Removechar(sClienteCEP.AsString) + '";' +
               '"'  + sClienteCIDADE.AsString + '";' +
               '"'  + sClienteUF.AsString + '";' +
               '"'  + Formatar(RemoveChar(sClienteCNPJ.AsString),14,False,'0') + '";' +
               '"'  + Removechar(sClienteINSCESTADUAL.AsString) + '";' +
               '"";' +
               '"";' +
               '"'  + sClienteCONTATO.AsString + '";' +
               '"'  + sClienteFONE.AsString + '";' +
               '"'  + sClienteFAX.AsString + '";' +
               '"'  + sClienteE_MAIL.AsString + '";');
      writeln(Arquivo, Registro);

      {Linha 3
         /p"Código do Produto";"Nome do Produto";"Código da Cultura";"Nome da Cultura";
         "Área de aplicação";"Qtde adquirida";"Unidade qtde adquirida";
      }
      if(cdsItensNF.Active) then
        cdsItensNF.Close;
      cdsItensNF.Params[0].AsInteger := cdsNFCODVENDA.AsInteger;
      cdsItensNF.Open;
      while not cdsItensNF.Eof do // Escrevo os itens
      begin
        JvProgressBar1.Position := JvProgressBar1.Position + 1;
        Registro := ('"'  + cdsItensNFCODPRO.AsString + '";' +
                    '"'  + cdsItensNFDESCPRODUTO.AsString + '";' +
                    '"";' +
                    '"";' +
                    '"'  + Removechar(FormatFloat('0.000' , cdsItensNFQUANTIDADE.AsFloat)) + '";' +
                    '"'  + cdsItensNFUNIDADEMEDIDA.AsString + '";');
        writeln(Arquivo, Registro);
        cdsItensNF.Next;
      end;
    end;
    cdsNF.Next;
  end;
  CloseFile(arquivo);
  JvProgressBar1.Position := JvProgressBar1.Position + (1000-JvProgressBar1.Position);

  MessageDlg('Arquivo gerado com sucesso.', mtInformation, [mbOK], 0)

end;

end.
