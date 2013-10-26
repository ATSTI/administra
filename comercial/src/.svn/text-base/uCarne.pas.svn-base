unit uCarne;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, FMTBcd, SqlExpr, Provider, DB, DBClient, RLHTMLFilter,
  RLFilters, RLPDFFilter, RLBarcode, ACBrUtil;

type
  TfCarne = class(TForm)
    BoletoCarne: TRLReport;
    RLBand3: TRLBand;
    RLDraw30: TRLDraw;
    RLDraw31: TRLDraw;
    RLDraw32: TRLDraw;
    RLDraw51: TRLDraw;
    RLDraw52: TRLDraw;
    RLDraw53: TRLDraw;
    RLDraw54: TRLDraw;
    RLDraw55: TRLDraw;
    RLDraw56: TRLDraw;
    RLDraw57: TRLDraw;
    RLDraw58: TRLDraw;
    RLDraw59: TRLDraw;
    RLDraw60: TRLDraw;
    RLDraw61: TRLDraw;
    imgBancoCarne: TRLImage;
    RLDraw63: TRLDraw;
    RLLabel1: TRLLabel;
    RLLabel94: TRLLabel;
    RLDraw65: TRLDraw;
    RLLabel95: TRLLabel;
    RLLabel97: TRLLabel;
    RLLabel99: TRLLabel;
    RLLabel101: TRLLabel;
    RLLabel103: TRLLabel;
    RLLabel105: TRLLabel;
    RLLabel107: TRLLabel;
    RLLabel109: TRLLabel;
    RLLabel111: TRLLabel;
    RLLabel113: TRLLabel;
    RLLabel115: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel117: TRLLabel;
    RLLabel119: TRLLabel;
    RLLabel121: TRLLabel;
    RLLabel123: TRLLabel;
    RLLabel124: TRLLabel;
    RLLabel126: TRLLabel;
    RLLabel128: TRLLabel;
    RLLabel130: TRLLabel;
    RLLabel132: TRLLabel;
    RLLabel135: TRLLabel;
    RLLabel138: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBText18: TRLDBText;
    RLLabel16: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel36: TRLLabel;
    RLDraw66: TRLDraw;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLDraw67: TRLDraw;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLLabel44: TRLLabel;
    RLLabel45: TRLLabel;
    RLDraw68: TRLDraw;
    RLDraw69: TRLDraw;
    RLLabel46: TRLLabel;
    RLDraw70: TRLDraw;
    RLLabel47: TRLLabel;
    RLLabel48: TRLLabel;
    RLLabel49: TRLLabel;
    RLDraw71: TRLDraw;
    ImgLoja: TRLImage;
    txtTotPar: TRLLabel;
    mIntrucoes: TRLMemo;
    txtVencCanhoto: TRLLabel;
    txtCodCedenteCarne: TRLLabel;
    txtValorCarne: TRLLabel;
    txtNossoNumeroCarne: TRLLabel;
    txtCPF: TRLLabel;
    txtLocal: TRLLabel;
    txtNomeCedente: TRLLabel;
    txtDataDocto: TRLLabel;
    txtNumeroDocto: TRLLabel;
    txtEspecieDoc: TRLLabel;
    txtAceite: TRLLabel;
    txtDataProces: TRLLabel;
    txtCarteira: TRLLabel;
    txtNomeSacado: TRLLabel;
    txtEndSacado: TRLLabel;
    txtCidadeSacado: TRLLabel;
    txtVencCarne2: TRLLabel;
    txtNossoNumCan: TRLLabel;
    txtValorCar: TRLLabel;
    txtNomeSacadoCarne: TRLLabel;
    txtCodCedenteCarne2: TRLLabel;
    txtCPFCarne2: TRLLabel;
    txtParcela: TRLLabel;
    RLPDFFilter1: TRLPDFFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    ds_Cr: TDataSource;
    scdsCr_proc: TClientDataSet;
    scdsCr_procTITULO: TStringField;
    scdsCr_procEMISSAO: TDateField;
    scdsCr_procDATAVENCIMENTO: TDateField;
    scdsCr_procCAIXA: TSmallintField;
    scdsCr_procSTATUS: TStringField;
    scdsCr_procN_DOCUMENTO: TStringField;
    scdsCr_procVALORRECEBIDO: TFloatField;
    scdsCr_procVALOR_RESTO: TFloatField;
    scdsCr_procVALORTITULO: TFloatField;
    scdsCr_procNOMECLIENTE: TStringField;
    scdsCr_procVALORREC: TFloatField;
    scdsCr_procCODRECEBIMENTO: TIntegerField;
    scdsCr_procDP: TIntegerField;
    scdsCr_procVALOR_PRIM_VIA: TFloatField;
    scdsCr_procCODCLIENTE: TIntegerField;
    scdsCr_procTIT: TStringField;
    scdsCr_procSITUACAO: TStringField;
    scdsCr_procFORMARECEBIMENTO: TStringField;
    scdsCr_procDATARECEBIMENTO: TDateField;
    scdsCr_procTRecebido: TAggregateField;
    scdsCr_procTotal_resto: TAggregateField;
    scdsCr_procTotalTitulo: TAggregateField;
    DataSetProvider1: TDataSetProvider;
    SQLDataSet1: TSQLDataSet;
    SQLDataSet1TITULO: TStringField;
    SQLDataSet1DATAVENCIMENTO: TDateField;
    SQLDataSet1CAIXA: TSmallintField;
    SQLDataSet1STATUS: TStringField;
    SQLDataSet1N_DOCUMENTO: TStringField;
    SQLDataSet1VALORRECEBIDO: TFloatField;
    SQLDataSet1VALOR_RESTO: TFloatField;
    SQLDataSet1VALORTITULO: TFloatField;
    SQLDataSet1VALORREC: TFloatField;
    SQLDataSet1CODRECEBIMENTO: TIntegerField;
    SQLDataSet1NOMECLIENTE: TStringField;
    SQLDataSet1DP: TIntegerField;
    SQLDataSet1EMISSAO: TDateField;
    SQLDataSet1VALOR_PRIM_VIA: TFloatField;
    SQLDataSet1CODCLIENTE: TIntegerField;
    SQLDataSet1TIT: TStringField;
    SQLDataSet1SITUACAO: TStringField;
    SQLDataSet1FORMARECEBIMENTO: TStringField;
    SQLDataSet1DATARECEBIMENTO: TDateField;
    total_parc: TSQLDataSet;
    total_parcCOUNT: TIntegerField;
    SQLDataSet1CODVENDA: TIntegerField;
    scdsCr_procCODVENDA: TIntegerField;
    buscaCli: TSQLDataSet;
    buscaCliCODCLIENTE: TIntegerField;
    buscaCliNOMECLIENTE: TStringField;
    buscaCliBLOQUEIO: TStringField;
    buscaCliLOGRADOURO: TStringField;
    buscaCliTELEFONE: TStringField;
    buscaCliRAZAOSOCIAL: TStringField;
    buscaCliCONTATO: TStringField;
    buscaCliTIPOFIRMA: TSmallintField;
    buscaCliCPF: TStringField;
    buscaCliCNPJ: TStringField;
    buscaCliINSCESTADUAL: TStringField;
    buscaCliRG: TStringField;
    buscaCliSEGMENTO: TSmallintField;
    buscaCliREGIAO: TSmallintField;
    buscaCliLIMITECREDITO: TFloatField;
    buscaCliDATACADASTRO: TDateField;
    buscaCliCODUSUARIO: TIntegerField;
    buscaCliSTATUS: TSmallintField;
    buscaCliHOMEPAGE: TStringField;
    buscaCliPRAZORECEBIMENTO: TSmallintField;
    buscaCliPRAZOENTREGA: TSmallintField;
    buscaCliCODBANCO: TSmallintField;
    buscaCliBASE_ICMS: TSmallintField;
    buscaCliDATANASC: TDateField;
    buscaCliCONTA_CLIENTE: TStringField;
    buscaCliOBS: TStringField;
    buscaCliSEXO: TStringField;
    buscaCliFORMA_CORRESPOND: TStringField;
    buscaCliGRUPO_CLIENTE: TStringField;
    buscaCliCODINCLUCANC: TIntegerField;
    buscaCliEXIST_COBERT: TStringField;
    buscaCliEXISTCOPART: TStringField;
    buscaCliDATAREINC: TDateField;
    buscaCliGERAAVISO: TStringField;
    buscaCliGERAENV: TStringField;
    buscaCliGERABOL: TStringField;
    buscaCliDTAALTERA: TDateField;
    buscaCliSERIE: TStringField;
    buscaCliCURSO: TStringField;
    buscaCliMARCA: TStringField;
    buscaCliCOD_FAIXA: TIntegerField;
    buscaCliDESCONTO: TFloatField;
    buscaCliPARCELA: TIntegerField;
    buscaCliPARCELAGERADAS: TIntegerField;
    buscaCliNUMERO: TIntegerField;
    buscaCliTRANSPORTE: TStringField;
    buscaCliDIVERSO1: TStringField;
    buscaCliDIVERSO2: TStringField;
    buscaCliPERIODO: TStringField;
    buscaCliFOTO: TStringField;
    buscaCliCFOP: TStringField;
    buscaCliCOD_CLI: TStringField;
    buscaCliCODENDERECO: TIntegerField;
    buscaCliCODCLIENTE_1: TIntegerField;
    buscaCliBAIRRO: TStringField;
    buscaCliCOMPLEMENTO: TStringField;
    buscaCliCIDADE: TStringField;
    buscaCliUF: TStringField;
    buscaCliCEP: TStringField;
    buscaCliTELEFONE1: TStringField;
    buscaCliTELEFONE2: TStringField;
    buscaCliFAX: TStringField;
    buscaCliE_MAIL: TStringField;
    buscaCliRAMAL: TStringField;
    buscaCliTIPOEND: TSmallintField;
    buscaCliDADOSADICIONAIS: TStringField;
    buscaCliDDD: TStringField;
    buscaCliDDD1: TStringField;
    buscaCliDDD2: TStringField;
    buscaCliDDD3: TStringField;
    buscaCliNUMERO_1: TStringField;
    buscaCliCD_IBGE: TStringField;
    buscaCliPAIS: TStringField;
    s_parametro: TSQLDataSet;
    s_parametroDESCRICAO: TStringField;
    s_parametroPARAMETRO: TStringField;
    s_parametroCONFIGURADO: TStringField;
    s_parametroDADOS: TStringField;
    s_parametroD1: TStringField;
    s_parametroD2: TStringField;
    s_parametroD3: TStringField;
    s_parametroD4: TStringField;
    s_parametroD5: TStringField;
    s_parametroD6: TStringField;
    s_parametroD7: TStringField;
    s_parametroD8: TStringField;
    s_parametroD9: TStringField;
    s_parametroINSTRUCOES: TStringField;
    s_parametroVALOR: TFloatField;
    txtRazaoSocial: TRLLabel;
    txtLogradouro: TRLLabel;
    txtCidade: TRLLabel;
    txtCnpj: TRLLabel;
    txtEmail: TRLLabel;
    SQLDataSet1VIA: TStringField;
    scdsCr_procVIA: TStringField;
    buscaCliNUMER: TStringField;
    txtNomeCont: TRLLabel;
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCarne: TfCarne;

implementation

uses UDm, UDM_MOV, UDMNF;

{$R *.dfm}


procedure TfCarne.RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
Var
   NossoNum,LinhaDigitavel,CodBarras,CodCedente, MensagemPadrao, MensagemPadrao1, MensagemPadrao2: String;
   parcela, TotalParcelas :Integer;
begin
     MensagemPadrao := '';
     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'MENSAGEM';
     s_parametro.Open;
     if (not s_parametro.Eof) then
       MensagemPadrao := s_parametroDADOS.AsString;

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'MENSAGEM_1';
     s_parametro.Open;
     if (not s_parametro.Eof) then
       MensagemPadrao1 := s_parametroDADOS.AsString;

     if (s_parametro.Active) then
       s_parametro.Close;
     s_parametro.Params[0].AsString := 'MENSAGEM_2';
     s_parametro.Open;
     if (not s_parametro.Eof) then
       MensagemPadrao2 := s_parametroDADOS.AsString;
     s_parametro.Close;


     with scdsCr_proc do
     begin
        mIntrucoes.Lines.Clear;
        mIntrucoes.Lines.Add(MensagemPadrao);
        mIntrucoes.Lines.Add(MensagemPadrao1);
        mIntrucoes.Lines.Add(MensagemPadrao2);
        txtVencCanhoto.Caption          := FormatDateTime('dd/mm/yyyy',scdsCr_procDATAVENCIMENTO.AsDateTime);
        txtVencCarne2.Caption           := txtVencCanhoto.Caption;
        //txtCodCedenteCarne.Caption      := CodCedente;
        //txtCodCedenteCarne2.Caption     := txtCodCedenteCarne.Caption;
        txtValorCarne.Caption           := FormatFloat('###,###,##0.00',scdsCr_procVALOR_RESTO.Value);
        txtValorCar.Caption             := txtValorCarne.Caption;
        txtNossoNumeroCarne.Caption     := scdsCr_procTITULO.AsString;
        txtNossoNumCan.Caption          := scdsCr_procTITULO.AsString;
        txtNomeSacado.Caption           := scdsCr_procNOMECLIENTE.AsString;
        txtNomeSacadoCarne.Caption      := copy(txtNomeSacado.Caption, 1, 20);
        txtNomeCont.Caption             := copy(txtNomeSacado.Caption, 21, length(txtNomeSacado.Caption));

        txtLocal.Caption                := 'PAGAR SOMENTE NA EMPRESA';
        if (not dm.cds_empresa.Active) then
            dm.cds_empresa.Open;

        txtRazaoSocial.Caption          := dm.cds_empresaEMPRESA.AsString;
        txtLogradouro.Caption           := dm.cds_empresaENDERECO.AsString + ', ' + dm.cds_empresaNUMERO.AsString;

        txtCidade.Caption               := dm.cds_empresaCEP.AsString + ' ' + dm.cds_empresaCIDADE.AsString +
                                           ' ' + dm.cds_empresaUF.AsString;

        txtNomeCedente.Caption          := dm.cds_empresaRAZAO.AsString;
        txtCnpj.Caption                 := 'CNPJ .: ' + dm.cds_empresaCNPJ_CPF.AsString;
        txtEmail.Caption                := 'Email .: ' + dm.cds_empresaE_MAIL.AsString;

        txtDataDocto.Caption            := FormatDateTime('dd/mm/yyyy', scdsCr_procEMISSAO.AsDateTime);
        txtNumeroDocto.Caption          := scdsCr_procTITULO.AsString;
        txtEspecieDoc.Caption           := 'R$';
        txtAceite.Caption               := 'N';
        txtDataProces.Caption           := FormatDateTime('dd/mm/yyyy',Now);

        //txtUsoBanco2.Caption            := Titulo.UsoBanco;
        //txtCarteira.Caption             := Titulo.Carteira;
        //txtEspecie2.Caption             := 'R$';
        parcela                         := StrToInt(Trim(scdsCr_procVIA.AsString));
        txtParcela.Caption              := IntToStrZero(parcela,2)+' /';
        if (total_parc.Active) then
           total_parc.Close;
        total_parc.Params[0].AsInteger := scdsCr_procCODVENDA.AsInteger;
        total_parc.Open;
        TotalParcelas                   := StrToInt(total_parcCOUNT.AsString);
        txtTotPar.Caption               := IntToStrZero(TotalParcelas ,2);

       if (FileExists('logo.jpg')) then
       begin
         imgBancoCarne.Picture.LoadFromFile('logo.jpg');
         ImgLoja.Picture.LoadFromFile('logo.jpg');
       end;
        txtEndSacado.Caption            := buscaCliLOGRADOURO.AsString + ', ' +
                                           buscaCliNUMER.AsString + buscaCliCOMPLEMENTO.AsString;
        txtCidadeSacado.Caption         := buscaCliCEP.AsString + ' ' + buscaCliCIDADE.AsString +
                                           ' ' + buscaCliUF.AsString;
        txtCPF.Caption                  := buscaCliCNPJ.AsString;
        txtCPFCarne2.Caption            := txtCPF.Caption;
     end;
end;

end.
