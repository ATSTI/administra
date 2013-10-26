unit gbBoleto7;

interface

uses Classes, Controls, ExtCtrls, QuickRpt, Qrctrls, Graphics, jpeg;

type
  TBoleto = class(TQuickRep)
    bandDetalhe: TQRBand;
    lblReciboSacado: TQRLabel;
    txtNomeCedente: TQRLabel;
    txtSacadoNome: TQRLabel;
    txtSacadoRuaNumeroComplemento: TQRLabel;
    txtSacadoCEPBairroCidadeEstado: TQRLabel;
    txtValorDescontoAbatimento: TQRLabel;
    txtValorDocumento: TQRLabel;
    txtNossoNumero: TQRLabel;
    txtDataVencimento: TQRLabel;
    lblDataVencimento: TQRLabel;
    lblNossoNumero: TQRLabel;
    lblValorDocumento: TQRLabel;
    lblValorDescontoAbatimento: TQRLabel;
    lblSacado: TQRLabel;
    lblNomeCedente: TQRLabel;
    QRShape1: TQRShape;
    lblAutenticacaoMecanica: TQRLabel;
    QRImage35: TQRImage;
    txtNomeBanco3: TQRLabel;
    txtLinhaDigitavel3: TQRLabel;
    txtNomeCedente3: TQRLabel;
    txtDataDocumento3: TQRLabel;
    txtNumeroDocumento3: TQRLabel;
    txtEspecieDocumento3: TQRLabel;
    txtAceite3: TQRLabel;
    txtUsoBanco3: TQRLabel;
    txtCarteira3: TQRLabel;
    txtQuantidadeMoeda3: TQRLabel;
    txtEspecieMoeda3: TQRLabel;
    txtSacadoNome3: TQRLabel;
    txtSacadoRuaNumeroComplemento3: TQRLabel;
    txtSacadoCEPBairroCidadeEstado3: TQRLabel;
    txtSacadoCPFCGC3: TQRLabel;
    txtCodigoBaixa3: TQRLabel;
    txtLocalPagamento3: TQRLabel;
    txtValorCobrado3: TQRLabel;
    txtValorDocumento3: TQRLabel;
    txtNossoNumero3: TQRLabel;
    txtAgenciaCodigoCedente3: TQRLabel;
    txtDataVencimento3: TQRLabel;
    txtDataProcessamento3: TQRLabel;
    txtValorMoeda3: TQRLabel;
    lblLocalPagamento3: TQRLabel;
    lblDataDocumento3: TQRLabel;
    lblNumeroDocumento3: TQRLabel;
    lblDataVencimento3: TQRLabel;
    lblAgenciaCodigoCedente3: TQRLabel;
    lblNossoNumero3: TQRLabel;
    lblEspecieDocumento3: TQRLabel;
    lblAceite3: TQRLabel;
    lblDataProcessamento3: TQRLabel;
    lblUsoBanco3: TQRLabel;
    lblCarteira3: TQRLabel;
    lblEspecieMoeda3: TQRLabel;
    lblQuantidadeMoeda3: TQRLabel;
    lblValorMoeda3: TQRLabel;
    lblValorDocumento3: TQRLabel;
    lblInstrucoes3: TQRLabel;
    lblValorDescontoAbatimento3: TQRLabel;
    lblMoraMulta3: TQRLabel;
    lblValorCobrado3: TQRLabel;
    lblSacado3: TQRLabel;
    lblCodigoBaixa3: TQRLabel;
    lblSacadoCPFCGC3: TQRLabel;
    lblNomeCedente3: TQRLabel;
    QRImage36: TQRImage;
    QRImage37: TQRImage;
    QRImage38: TQRImage;
    QRImage39: TQRImage;
    QRImage40: TQRImage;
    QRImage41: TQRImage;
    QRImage43: TQRImage;
    QRImage44: TQRImage;
    QRImage45: TQRImage;
    QRImage46: TQRImage;
    QRImage47: TQRImage;
    QRImage48: TQRImage;
    QRImage49: TQRImage;
    QRImage50: TQRImage;
    QRImage51: TQRImage;
    txtCodigoBanco3: TQRLabel;
    lblAutenticacaoMecanica3: TQRLabel;
    imgCodigoBarras3: TQRImage;
    txtInstrucoes: TQRMemo;
    txtInstrucoes3: TQRMemo;
    txtEnderecoCedente: TQRLabel;
    txtCep: TQRLabel;
    txtCidade: TQRLabel;
    txtUf: TQRLabel;
    txtFone: TQRLabel;
    txtFax: TQRLabel;
    txtEmail: TQRLabel;
    txtWeb: TQRLabel;
    txtDDD: TQRLabel;
    txtDDDFax: TQRLabel;
    txtCNPJ: TQRLabel;
    QRImage5: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    txtSacadorAvalista: TQRLabel;
    QRLabel10: TQRLabel;
    QRImage1: TQRImage;
    QRLabel11: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRLabel6: TQRLabel;
    txtbairro: TQRLabel;
    txtmunicipio: TQRLabel;
    txtestado: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    txtavalista: TQRLabel;
  private

  public

  end;

var
  Boleto: TBoleto;

implementation

{$R *.DFM}

end.

