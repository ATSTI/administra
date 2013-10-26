unit BoletoLayout;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, ImgList ,DB
 {$IFDEF VER150}
   ,Variants
 {$ELSE}
  {$IFDEF VER140}
    ,Variants, RLSaveDialog, RLFilters, RLPDFFilter, jpeg, DB
  {$ENDIF}
 {$ENDIF}
  ;
type
  TLayoutBoleto = class(TForm)
    ImageList: TImageList;
    LayoutBoleto: TRLReport;
    RLBand1: TRLBand;
    txtNomeCedente1: TRLLabel;
    txtCodigoCedente1: TRLLabel;
    RLLabel6: TRLLabel;
    txtNomeSacado1: TRLLabel;
    txtDataVencimento1: TRLLabel;
    RLLabel12: TRLLabel;
    txtNossoNumero1: TRLLabel;
    txtNumeroDocumento1: TRLLabel;
    txtEspecie1: TRLLabel;
    RLLabel18: TRLLabel;
    txtValorDocumento1: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel37: TRLLabel;
    RLBand2: TRLBand;
    RLDraw29: TRLDraw;
    RLDraw39: TRLDraw;
    RLDraw38: TRLDraw;
    RLDraw37: TRLDraw;
    RLDraw34: TRLDraw;
    RLDraw28: TRLDraw;
    RLDraw27: TRLDraw;
    RLDraw26: TRLDraw;
    RLDraw25: TRLDraw;
    RLDraw24: TRLDraw;
    RLDraw21: TRLDraw;
    RLDraw23: TRLDraw;
    RLDraw22: TRLDraw;
    RLDraw20: TRLDraw;
    RLDraw19: TRLDraw;
    RLDraw18: TRLDraw;
    RLDraw17: TRLDraw;
    RLDraw16: TRLDraw;
    imgBanco2: TRLImage;
    txtNumeroBanco2: TRLLabel;
    RLLabel67: TRLLabel;
    RLLabel68: TRLLabel;
    txtLocalPagamento2: TRLLabel;
    RLLabel69: TRLLabel;
    txtNomeCedente2: TRLLabel;
    RLLabel70: TRLLabel;
    txtDataDocumento2: TRLLabel;
    RLLabel71: TRLLabel;
    txtNumeroDocumento2: TRLLabel;
    RLLabel72: TRLLabel;
    txtEspecieDoc2: TRLLabel;
    RLLabel73: TRLLabel;
    txtAceite2: TRLLabel;
    RLLabel74: TRLLabel;
    txtDataProcessamento2: TRLLabel;
    txtUsoBanco2: TRLLabel;
    RLLabel75: TRLLabel;
    txtCarteira2: TRLLabel;
    RLLabel76: TRLLabel;
    RLLabel77: TRLLabel;
    txtEspecie2: TRLLabel;
    RLLabel78: TRLLabel;
    txtQuantidade2: TRLLabel;
    RLLabel79: TRLLabel;
    txtValorMoeda2: TRLLabel;
    RLLabel80: TRLLabel;
    txtInstrucoes2: TRLMemo;
    RLLabel81: TRLLabel;
    txtDataVencimento2: TRLLabel;
    RLLabel82: TRLLabel;
    txtCodigoCedente2: TRLLabel;
    RLLabel83: TRLLabel;
    txtNossoNumero2: TRLLabel;
    RLLabel84: TRLLabel;
    txtValorDocumento2: TRLLabel;
    RLLabel85: TRLLabel;
    txtDesconto2: TRLLabel;
    RLLabel86: TRLLabel;
    txtMoraMulta2: TRLLabel;
    RLLabel87: TRLLabel;
    txtValorCobrado2: TRLLabel;
    RLLabel88: TRLLabel;
    txtNomeSacado2: TRLLabel;
    txtEnderecoSacado2: TRLLabel;
    txtCidadeSacado2: TRLLabel;
    RLLabel89: TRLLabel;
    txtCpfCnpjSacado2: TRLLabel;
    RLLabel90: TRLLabel;
    txtCodigoBaixa2: TRLLabel;
    RLMemo2: TRLMemo;
    RLLabel91: TRLLabel;
    RLLabel93: TRLLabel;
    RLLabel98: TRLLabel;
    RLLabel102: TRLLabel;
    txtSacadorAvalista2: TRLLabel;
    txtReferencia2: TRLLabel;
    RLBand3: TRLBand;
    RLDraw50: TRLDraw;
    RLDraw49: TRLDraw;
    RLDraw48: TRLDraw;
    RLDraw47: TRLDraw;
    RLDraw46: TRLDraw;
    RLDraw45: TRLDraw;
    RLDraw44: TRLDraw;
    RLDraw43: TRLDraw;
    RLDraw42: TRLDraw;
    RLDraw41: TRLDraw;
    RLDraw40: TRLDraw;
    RLDraw36: TRLDraw;
    RLDraw35: TRLDraw;
    RLDraw33: TRLDraw;
    imgBanco3: TRLImage;
    RLDraw81: TRLDraw;
    txtLinhaDigitavel: TRLLabel;
    RLDraw82: TRLDraw;
    txtNumeroBanco3: TRLLabel;
    RLLabel145: TRLLabel;
    txtLocalPagamento3: TRLLabel;
    txtDataVencimento3: TRLLabel;
    RLLabel146: TRLLabel;
    RLDraw83: TRLDraw;
    RLLabel147: TRLLabel;
    txtNomeCedente3: TRLLabel;
    RLLabel148: TRLLabel;
    txtCodigoCedente3: TRLLabel;
    RLLabel149: TRLLabel;
    txtDataDocumento3: TRLLabel;
    RLLabel150: TRLLabel;
    txtNumeroDocumento3: TRLLabel;
    RLLabel151: TRLLabel;
    txtEspecieDoc3: TRLLabel;
    RLLabel152: TRLLabel;
    txtAceite3: TRLLabel;
    RLLabel153: TRLLabel;
    txtDataProcessamento3: TRLLabel;
    RLLabel154: TRLLabel;
    txtNossoNumero3: TRLLabel;
    RLLabel155: TRLLabel;
    txtUsoBanco3: TRLLabel;
    RLLabel156: TRLLabel;
    txtCarteira3: TRLLabel;
    RLLabel157: TRLLabel;
    txtEspecie3: TRLLabel;
    RLLabel158: TRLLabel;
    txtQuantidade3: TRLLabel;
    RLLabel159: TRLLabel;
    txtValorMoeda3: TRLLabel;
    RLLabel160: TRLLabel;
    txtValorDocumento3: TRLLabel;
    RLLabel161: TRLLabel;
    txtInstrucoes3: TRLMemo;
    RLLabel162: TRLLabel;
    txtDesconto3: TRLLabel;
    RLLabel163: TRLLabel;
    txtMoraMulta3: TRLLabel;
    RLLabel164: TRLLabel;
    txtValorCobrado3: TRLLabel;
    RLLabel165: TRLLabel;
    txtNomeSacado3: TRLLabel;
    RLLabel166: TRLLabel;
    txtCpfCnpjSacado3: TRLLabel;
    txtEnderecoSacado3: TRLLabel;
    RLLabel167: TRLLabel;
    txtCidadeSacado3: TRLLabel;
    txtCodigoBaixa3: TRLLabel;
    RLLabel168: TRLLabel;
    imgCodigoBarra: TRLImage;
    RLLabel170: TRLLabel;
    RLLabel175: TRLLabel;
    txtSacadorAvalista3: TRLLabel;
    txtReferencia3: TRLLabel;
    RLDBText2: TRLDBText;
    RLImage1: TRLImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LayoutBoleto: TLayoutBoleto;

implementation



{$R *.dfm}

end.
