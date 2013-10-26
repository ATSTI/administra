unit ufaturamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBXpress, FMTBcd, StdCtrls, Grids, DBGrids, ComCtrls, DB,
  Provider, DBClient, SqlExpr, Mask, Buttons, rpcompobase, rpvclreport,
  DBCtrls, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, JvBaseEdits;

type
  Tffaturamento = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label52: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    BitBtn1: TBitBtn;
    Edit8: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    btnAnterior: TBitBtn;
    btnProximo: TBitBtn;
    btnEditaGrava: TBitBtn;
    BitBtn2: TBitBtn;
    Edit42: TEdit;
    Edit43: TEdit;
    Edit44: TEdit;
    Edit45: TEdit;
    MaskEdit3: TMaskEdit;
    BitBtn3: TBitBtn;
    Edit28: TEdit;
    BitBtn4: TBitBtn;
    Edit58: TEdit;
    BitBtn5: TBitBtn;
    OpenDialog1: TOpenDialog;
    sdsxml: TSQLDataSet;
    cdsxml: TClientDataSet;
    dspxml: TDataSetProvider;
    DataSource1: TDataSource;
    genid: TSQLDataSet;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label42: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label44: TLabel;
    Label13: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Edit12: TEdit;
    Edit13: TEdit;
    MaskEdit2: TMaskEdit;
    Edit9: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit46: TEdit;
    Edit47: TEdit;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    Label28: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label16: TLabel;
    Label33: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label34: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label35: TLabel;
    Label38: TLabel;
    Label29: TLabel;
    Label21: TLabel;
    Label20: TLabel;
    Label19: TLabel;
    Label54: TLabel;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    MaskEdit1: TMaskEdit;
    Edit29: TEdit;
    Edit31: TEdit;
    Edit32: TEdit;
    Edit33: TEdit;
    Edit34: TEdit;
    Edit35: TEdit;
    Edit36: TEdit;
    Edit37: TEdit;
    Edit38: TEdit;
    MaskEdit6: TMaskEdit;
    TabSheet3: TTabSheet;
    Label41: TLabel;
    Label40: TLabel;
    Label39: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label53: TLabel;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit39: TEdit;
    Edit40: TEdit;
    Edit41: TEdit;
    Edit59: TEdit;
    TabSheet4: TTabSheet;
    Label26: TLabel;
    Label25: TLabel;
    Label24: TLabel;
    Label27: TLabel;
    Label30: TLabel;
    Label15: TLabel;
    Label43: TLabel;
    Label45: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Edit24: TEdit;
    Edit25: TEdit;
    Edit26: TEdit;
    Edit27: TEdit;
    Edit30: TEdit;
    MaskEdit4: TMaskEdit;
    MaskEdit5: TMaskEdit;
    Memo1: TMemo;
    Edit48: TEdit;
    Edit49: TEdit;
    Edit50: TEdit;
    Edit51: TEdit;
    Edit52: TEdit;
    Edit53: TEdit;
    Edit54: TEdit;
    Edit55: TEdit;
    Edit56: TEdit;
    Edit57: TEdit;
    Label62: TLabel;
    SQLDataSet1: TSQLDataSet;
    sdsxmlID_GUIAS: TIntegerField;
    sdsxmlREGISTRO_ANS: TStringField;
    sdsxmlNUMERO_GUIA: TStringField;
    sdsxmlDATA_EMISSAO: TDateField;
    sdsxmlNUMERO_CARTAO_BENEFICIARIO: TStringField;
    sdsxmlNOME_PLANO: TStringField;
    sdsxmlVALIDADE_CARTEIRA: TDateField;
    sdsxmlNOME_BENEFICIARIO: TStringField;
    sdsxmlNUMERO_CARTAO_NACIONAL: TStringField;
    sdsxmlCODIGO_OPERADORA: TStringField;
    sdsxmlNOME_CONTRATADO: TStringField;
    sdsxmlCODIGO_CNES: TStringField;
    sdsxmlLOGRADOURO: TStringField;
    sdsxmlNOME_LOGRADOURO: TStringField;
    sdsxmlNUMERO: TStringField;
    sdsxmlCOMPLEMENTO: TStringField;
    sdsxmlMUNICIPIO: TStringField;
    sdsxmlSIGLA: TStringField;
    sdsxmlCODIGO_MUNICIPIO: TStringField;
    sdsxmlCEP: TStringField;
    sdsxmlNOME_EXECUTANTE: TStringField;
    sdsxmlSIGLA_CONSELHO: TStringField;
    sdsxmlNUMERO_PROFISSIONAL: TStringField;
    sdsxmlSIGLA_UNIDADE: TStringField;
    sdsxmlCODIGO_ESPECIALIDADE: TStringField;
    sdsxmlCODIGO_DOENCA: TStringField;
    sdsxmlTEMPO_DOENCA: TStringField;
    sdsxmlACIDENTE_TRABALHO: TIntegerField;
    sdsxmlCODIGO_CID10_1: TStringField;
    sdsxmlCODIGO_CID10_2: TStringField;
    sdsxmlCODIGO_CID10_3: TStringField;
    sdsxmlCODIGO_CID10_4: TStringField;
    sdsxmlDATA_ATENDIMENTO: TDateField;
    sdsxmlCODIGO_PROCEDIMENTOS: TStringField;
    sdsxmlCODIGO_PROCEDIMENTOS_REALIZADO: TStringField;
    sdsxmlTIPO_CONSULTA: TStringField;
    sdsxmlTIPO_SAIDA: TIntegerField;
    sdsxmlOBSERVACAO: TStringField;
    sdsxmlCODIGO_PRESTADORA: TStringField;
    sdsxmlCARATER_SOLICITACAO: TStringField;
    sdsxmlNUMERO_CARTEIRA: TStringField;
    sdsxmlTIPO_GUIA: TStringField;
    sdsxmlDATA_AUT: TDateField;
    sdsxmlSENHA: TStringField;
    sdsxmlDATA_VAL_SENHA: TDateField;
    sdsxmlNAOPERADORA: TStringField;
    sdsxmlNOME_PRESTADOR: TStringField;
    sdsxmlNOME_EXECUTANTE1: TStringField;
    sdsxmlSIGLA_CONSELHO1: TStringField;
    sdsxmlNUMERO_PROFISSIONAL1: TStringField;
    sdsxmlSIGLA_UNIDADE1: TStringField;
    sdsxmlCODIGO_ESPECIALIDADE1: TStringField;
    sdsxmlCODIGO_CNES1: TStringField;
    sdsxmlLOGRADOURO1: TStringField;
    sdsxmlNOME_LOGRADOURO1: TStringField;
    sdsxmlNUMERO1: TStringField;
    sdsxmlCOMPLEMENTO1: TStringField;
    sdsxmlMUNICIPIO1: TStringField;
    sdsxmlSIGLA1: TStringField;
    sdsxmlCODIGO_MUNICIPIO1: TStringField;
    sdsxmlCEP1: TStringField;
    sdsxmlCODCLIENTE: TIntegerField;
    sdsxmlTIPO_FATURA: TIntegerField;
    sdsxmlNUMERO_GUIA_PRESTADOR: TStringField;
    sdsxmlTOTAL_GERAL_GUIA: TFloatField;
    cdsxmlID_GUIAS: TIntegerField;
    cdsxmlREGISTRO_ANS: TStringField;
    cdsxmlNUMERO_GUIA: TStringField;
    cdsxmlDATA_EMISSAO: TDateField;
    cdsxmlNUMERO_CARTAO_BENEFICIARIO: TStringField;
    cdsxmlNOME_PLANO: TStringField;
    cdsxmlVALIDADE_CARTEIRA: TDateField;
    cdsxmlNOME_BENEFICIARIO: TStringField;
    cdsxmlNUMERO_CARTAO_NACIONAL: TStringField;
    cdsxmlCODIGO_OPERADORA: TStringField;
    cdsxmlNOME_CONTRATADO: TStringField;
    cdsxmlCODIGO_CNES: TStringField;
    cdsxmlLOGRADOURO: TStringField;
    cdsxmlNOME_LOGRADOURO: TStringField;
    cdsxmlNUMERO: TStringField;
    cdsxmlCOMPLEMENTO: TStringField;
    cdsxmlMUNICIPIO: TStringField;
    cdsxmlSIGLA: TStringField;
    cdsxmlCODIGO_MUNICIPIO: TStringField;
    cdsxmlCEP: TStringField;
    cdsxmlNOME_EXECUTANTE: TStringField;
    cdsxmlSIGLA_CONSELHO: TStringField;
    cdsxmlNUMERO_PROFISSIONAL: TStringField;
    cdsxmlSIGLA_UNIDADE: TStringField;
    cdsxmlCODIGO_ESPECIALIDADE: TStringField;
    cdsxmlCODIGO_DOENCA: TStringField;
    cdsxmlTEMPO_DOENCA: TStringField;
    cdsxmlACIDENTE_TRABALHO: TIntegerField;
    cdsxmlCODIGO_CID10_1: TStringField;
    cdsxmlCODIGO_CID10_2: TStringField;
    cdsxmlCODIGO_CID10_3: TStringField;
    cdsxmlCODIGO_CID10_4: TStringField;
    cdsxmlDATA_ATENDIMENTO: TDateField;
    cdsxmlCODIGO_PROCEDIMENTOS: TStringField;
    cdsxmlCODIGO_PROCEDIMENTOS_REALIZADO: TStringField;
    cdsxmlTIPO_CONSULTA: TStringField;
    cdsxmlTIPO_SAIDA: TIntegerField;
    cdsxmlOBSERVACAO: TStringField;
    cdsxmlCODIGO_PRESTADORA: TStringField;
    cdsxmlCARATER_SOLICITACAO: TStringField;
    cdsxmlNUMERO_CARTEIRA: TStringField;
    cdsxmlTIPO_GUIA: TStringField;
    cdsxmlDATA_AUT: TDateField;
    cdsxmlSENHA: TStringField;
    cdsxmlDATA_VAL_SENHA: TDateField;
    cdsxmlNAOPERADORA: TStringField;
    cdsxmlNOME_PRESTADOR: TStringField;
    cdsxmlNOME_EXECUTANTE1: TStringField;
    cdsxmlSIGLA_CONSELHO1: TStringField;
    cdsxmlNUMERO_PROFISSIONAL1: TStringField;
    cdsxmlSIGLA_UNIDADE1: TStringField;
    cdsxmlCODIGO_ESPECIALIDADE1: TStringField;
    cdsxmlCODIGO_CNES1: TStringField;
    cdsxmlLOGRADOURO1: TStringField;
    cdsxmlNOME_LOGRADOURO1: TStringField;
    cdsxmlNUMERO1: TStringField;
    cdsxmlCOMPLEMENTO1: TStringField;
    cdsxmlMUNICIPIO1: TStringField;
    cdsxmlSIGLA1: TStringField;
    cdsxmlCODIGO_MUNICIPIO1: TStringField;
    cdsxmlCEP1: TStringField;
    cdsxmlCODCLIENTE: TIntegerField;
    cdsxmlTIPO_FATURA: TIntegerField;
    cdsxmlNUMERO_GUIA_PRESTADOR: TStringField;
    cdsxmlTOTAL_GERAL_GUIA: TFloatField;
    sdsxmlNUMEROLOTE: TIntegerField;
    cdsxmlNUMEROLOTE: TIntegerField;
    sqlLocate: TSQLDataSet;
    dspLocate: TDataSetProvider;
    cdsLocate: TClientDataSet;
    sqlLocateNUMEROLOTE: TIntegerField;
    cdsLocateNUMEROLOTE: TIntegerField;
    VCLReport1: TVCLReport;
    DBComboBox1: TDBComboBox;
    DATA_IMPORTA: TJvDatePickerEdit;
    sdsxmlDATA_IMPORTACAO: TDateField;
    cdsxmlDATA_IMPORTACAO: TDateField;
    Label63: TLabel;
    JvCalcEdit1: TJvCalcEdit;
    Label64: TLabel;
    JvCalcEdit2: TJvCalcEdit;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    i, j: integer;    
  end;

var
  ffaturamento: Tffaturamento;

implementation

uses UTissV2_01_03, UDm, UDmSaude;

{$R *.dfm}

procedure Tffaturamento.BitBtn3Click(Sender: TObject);
begin
  if openDialog1.execute then
   Edit28.Text := OpenDialog1.FileName;
//   ListBox1.Items.Add(OpenDialog1.filename);
end;

procedure Tffaturamento.BitBtn1Click(Sender: TObject);
Var msg: I213_MensagemTISS;
    total: Double;
    k : integer;
begin
 total:= 0;
 msg := LoadmensagemTISS(Edit28.Text);

 Edit1.Text := msg.Cabecalho.IdentificacaoTransacao.TipoTransacao;
 Edit2.Text := msg.Cabecalho.IdentificacaoTransacao.DataRegistroTransacao;
 Edit3.Text := msg.Cabecalho.IdentificacaoTransacao.HoraRegistroTransacao;


 Edit4.Text := msg.Cabecalho.Origem.CodigoPrestadorNaOperadora.CodigoPrestadorNaOperadora;

 Edit5.Text := msg.Cabecalho.Destino.RegistroANS;

 Edit6.Text := msg.Cabecalho.VersaoPadrao;

 Edit7.Text := IntToStr(msg.PrestadorParaOperadora.LoteGuias.NumeroLote);

  j := msg.PrestadorParaOperadora.LoteGuias.Guias.GuiaFaturamento.GuiaSP_SADT.Count;
////  j := msg.PrestadorParaOperadora.LoteGuias.Guias.GuiaFaturamento.GuiaConsulta.Count;
  if (i <= (j-1)) then
  begin
////    With (msg.PrestadorParaOperadora.LoteGuias.Guias.GuiaFaturamento.GuiaConsulta.Items[i]) do
    With (msg.PrestadorParaOperadora.LoteGuias.Guias.GuiaFaturamento.GuiaSP_SADT.Items[i]) do
    begin

      label52.Caption := DadosBeneficiario.NomeBeneficiario;


      Edit8.Text := IdentificacaoGuiaSADTSP.RegistroANS;
     /// MaskEdit3.Text := FormatDateTime('dd/mm/yyyy',StrToDateTime(IdentificacaoGuia.DataEmissaoGuia));
     // MaskEdit3.Text := FormatDateTime('dd/mm/yyyy',StrToDateTime(IdentificacaoGuiaSADTSP.DataEmissaoGuia));
     // MaskEdit3.Text := IdentificacaoGuiaSADTSP.DataEmissaoGuia;
      Edit58.Text := IdentificacaoGuiaSADTSP.DataEmissaoGuia;
      Edit10.Text := IdentificacaoGuiaSADTSP.NumeroGuiaPrestador;
      Edit11.Text := IdentificacaoGuiaSADTSP.NumeroGuiaOperadora;


      Edit12.Text := DadosBeneficiario.NumeroCarteira;
      MaskEdit2.Text := DadosBeneficiario.ValidadeCarteira;
      Edit9.Text := DadosBeneficiario.NomePlano;
      Edit13.Text := DadosBeneficiario.NomeBeneficiario;
      Edit14.Text := DadosBeneficiario.NumeroCNS;

      Edit15.Text := DadosAutorizacao.SenhaAutorizacao;
      Edit46.Text := DadosAutorizacao.DataAutorizacao;
      Edit47.Text := DadosAutorizacao.ValidadeSenha;



      Edit29.Text := DadosSolicitante.Contratado.NumeroCNES;
      Edit16.Text := DadosSolicitante.Contratado.NomeContratado;
      MaskEdit1.Text :=DadosSolicitante.Contratado.Identificacao.CNPJ;

      MaskEdit6.Text :=DadosSolicitante.Contratado.Identificacao.Cpf;

      Edit31.Text := DadosSolicitante.Contratado.EnderecoContratado.TipoLogradouro;
      Edit32.Text := DadosSolicitante.Contratado.EnderecoContratado.Logradouro;
      Edit33.Text := DadosSolicitante.Contratado.EnderecoContratado.Numero;
      Edit34.Text := DadosSolicitante.Contratado.EnderecoContratado.Complemento;
      Edit35.Text := DadosSolicitante.Contratado.EnderecoContratado.CodigoIBGEMunicipio;
      Edit36.Text := DadosSolicitante.Contratado.EnderecoContratado.Municipio;
      Edit37.Text := DadosSolicitante.Contratado.EnderecoContratado.CodigoUF;
 //3     Edit38.Text := IntToStr(DadosSolicitante.Contratado.EnderecoContratado.CEP);


      Edit17.Text := DadosSolicitante.Profissional.NomeProfissional;
      Edit18.Text := DadosSolicitante.Profissional.ConselhoProfissional.SiglaConselho;
      Edit19.Text := DadosSolicitante.Profissional.ConselhoProfissional.NumeroConselho;
      Edit20.Text := DadosSolicitante.Profissional.ConselhoProfissional.UfConselho;
      Edit21.Text := DadosSolicitante.Profissional.Cbos;

      //cid 1 e 2

      Edit22.Text := DiagnosticoAtendimento.CID.NomeTabela;
      Edit23.Text := DiagnosticoAtendimento.CID.CodigoDiagnostico;

      Edit39.Text := DiagnosticoAtendimento.TipoDoenca;
      Edit40.Text := DiagnosticoAtendimento.TempoReferidoEvolucaoDoenca.UnidadeTempo;

      Edit59.Text := DiagnosticoAtendimento.CID.DescricaoDiagnostico;


    { falta fazer 05/06/2007
      Edit42.Text := HipoteseDiagnostica.DiagnosticoSecundario.CID.NomeTabela;
      Edit43.Text := HipoteseDiagnostica.DiagnosticoSecundario.CID.CodigoDiagnostico;
     }

      //cid 3 e 4
     {
      Edit44.Text := HipoteseDiagnostica.TempoReferidoEvolucaoDoenca.UnidadeTempo;
      Edit45.Text := HipoteseDiagnostica.TempoReferidoEvolucaoDoenca.UnidadeTempo;
      }
    {
      if (DiagnosticoGuia.IndicadorAcidente <> null) then
      try
          Edit41.Text := IntToStr(DiagnosticoGuia.IndicadorAcidente);
      except
      end;
     }

     // Edit49.Text := codigoDiagnostico ;

      Edit24.Text := DataHoraAtendimento;

      Edit25.Text := DiagnosticoAtendimento.CID.NomeTabela;

     // Edit26.Text := IntToStr(TipoAtendimento);

      Edit26.Text := TipoAtendimento;

      Edit48.Text := CaraterAtendimento;

//      Edit27.Text :=  TipoConsulta;

      Edit30.Text := TipoSaida;


      Edit50.Text := OutrasDespesas.TotalGeralOutrasDespesas;
      Edit51.Text := ValorTotal.ServicosExecutados;
      Edit52.Text := ValorTotal.Diarias;
      Edit53.Text := ValorTotal.Taxas;
      Edit54.Text := ValorTotal.Materiais;
      Edit55.Text := ValorTotal.Medicamentos;
      Edit56.Text := ValorTotal.Gases;
      Edit57.Text := ValorTotal.TotalGeral;

    end;
  end;
  if (i < (j-1)) then
    btnProximo.Enabled := True
  else
    btnProximo.Enabled := False;

  if (i > 0) then
    btnAnterior.Enabled := True
  else
    btnAnterior.Enabled := False;

  DecimalSeparator := '.';
  for k := 0 to j-1  do
  begin
    With (msg.PrestadorParaOperadora.LoteGuias.Guias.GuiaFaturamento.GuiaSP_SADT.Items[k]) do
    begin
      total := total + StrToFloat(ValorTotal.TotalGeral);
    end;
  end;

  JvCalcEdit1.Value :=  total;
  JvCalcEdit2.Value :=  j;  
  DecimalSeparator := ',';



  if (j = 0 ) then
    MessageDlg(' Esse Arquivo não é o uma " Guia de Faturamento " ', mtError, [mbOK], 0);

  exit;


end;

procedure Tffaturamento.btnAnteriorClick(Sender: TObject);
begin
  i :=  i - 1;
  if (i < 0) then
    i :=  0;
  BitBtn1.Click;
end;

procedure Tffaturamento.btnProximoClick(Sender: TObject);
begin
  i :=  i + 1;
  if (i > j) then
    i := j;
  BitBtn1.Click;
end;

procedure Tffaturamento.BitBtn5Click(Sender: TObject);
Var msg: I213_MensagemTISS;
    I : integer ;
begin
  if not (cdsxml.Active) then
    cdsxml.Open;

  if (cdsLocate.Active) then
    cdsLocate.Close;
  cdsLocate.Open;

  msg := LoadmensagemTISS(Edit28.Text);
  j := msg.PrestadorParaOperadora.LoteGuias.Guias.GuiaFaturamento.GuiaSP_SADT.Count;
  for I := 0 to j - 1 do
  begin

  if (genid.Active) then
    genid.Close;
  genid.CommandText := 'SELECT CAST(GEN_ID(' +
    'GEN_FATURAMENTO ,1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  genid.Open;

  cdsxml.Append;

  cdsxmlID_GUIAS.AsInteger := genid.Fields[0].AsInteger;


  Edit1.Text := msg.Cabecalho.IdentificacaoTransacao.TipoTransacao;
  Edit2.Text := msg.Cabecalho.IdentificacaoTransacao.DataRegistroTransacao;
  Edit3.Text := msg.Cabecalho.IdentificacaoTransacao.HoraRegistroTransacao;


  Edit4.Text := msg.Cabecalho.Origem.CodigoPrestadorNaOperadora.CodigoPrestadorNaOperadora;

  Edit5.Text := msg.Cabecalho.Destino.RegistroANS;

  Edit6.Text := msg.Cabecalho.VersaoPadrao;



  if(msg.PrestadorParaOperadora.LoteGuias.NumeroLote = cdsLocateNUMEROLOTE.AsInteger) then
    begin
      cdsxml.Cancel;
        MessageDlg('-         Arquivo Já Importado              -'+#13+#10+' *** Localize Outro Arquivo Para Importar ***', mtInformation, [mbOK], 0);
      exit;
    end;


    With (msg.PrestadorParaOperadora.LoteGuias.Guias.GuiaFaturamento.GuiaSP_SADT.Items[i]) do
    begin

      label52.Caption := DadosBeneficiario.NomeBeneficiario;

      cdsxmlTIPO_GUIA.AsInteger := 1 ; // 1 PARA FATURAMENTO  2 PARA RESUMO INTERNAÇÃO

      cdsxmlNUMEROLOTE.AsInteger := msg.PrestadorParaOperadora.LoteGuias.NumeroLote;

   //   cdsxmlNUMEROLOTE.AsInteger := men.NumeroLote;

      cdsxmlNOME_BENEFICIARIO.AsString := DadosBeneficiario.NomeBeneficiario;
      cdsxmlNUMERO_GUIA_PRESTADOR.AsString := IdentificacaoGuiaSADTSP.NumeroGuiaPrestador;

      cdsxmlDATA_IMPORTACAO.AsDateTime := StrToDate(DATA_IMPORTA.Text) ;

      cdsxmlDATA_EMISSAO.AsString := IdentificacaoGuiaSADTSP.DataEmissaoGuia;

      cdsxmlNOME_CONTRATADO.AsString := DadosSolicitante.Contratado.NomeContratado;

      DecimalSeparator := '.';

      cdsxmlTOTAL_GERAL_GUIA.AsString  := ValorTotal.TotalGeral;

      DecimalSeparator := ',';

      Edit8.Text := IdentificacaoGuiaSADTSP.RegistroANS;
     /// MaskEdit3.Text := FormatDateTime('dd/mm/yyyy',StrToDateTime(IdentificacaoGuia.DataEmissaoGuia));
     // MaskEdit3.Text := FormatDateTime('dd/mm/yyyy',StrToDateTime(IdentificacaoGuiaSADTSP.DataEmissaoGuia));
     // MaskEdit3.Text := IdentificacaoGuiaSADTSP.DataEmissaoGuia;
      Edit58.Text := IdentificacaoGuiaSADTSP.DataEmissaoGuia;
      Edit10.Text := IdentificacaoGuiaSADTSP.NumeroGuiaPrestador;
      Edit11.Text := IdentificacaoGuiaSADTSP.NumeroGuiaOperadora;


      Edit12.Text := DadosBeneficiario.NumeroCarteira;
      MaskEdit2.Text := DadosBeneficiario.ValidadeCarteira;
      Edit9.Text := DadosBeneficiario.NomePlano;
      Edit13.Text := DadosBeneficiario.NomeBeneficiario;
      Edit14.Text := DadosBeneficiario.NumeroCNS;

      Edit15.Text := DadosAutorizacao.SenhaAutorizacao;
      Edit46.Text := DadosAutorizacao.DataAutorizacao;
      Edit47.Text := DadosAutorizacao.ValidadeSenha;



      Edit29.Text := DadosSolicitante.Contratado.NumeroCNES;
      Edit16.Text := DadosSolicitante.Contratado.NomeContratado;
      MaskEdit1.Text :=DadosSolicitante.Contratado.Identificacao.CNPJ;

      MaskEdit6.Text :=DadosSolicitante.Contratado.Identificacao.Cpf;

      Edit31.Text := DadosSolicitante.Contratado.EnderecoContratado.TipoLogradouro;
      Edit32.Text := DadosSolicitante.Contratado.EnderecoContratado.Logradouro;
      Edit33.Text := DadosSolicitante.Contratado.EnderecoContratado.Numero;
      Edit34.Text := DadosSolicitante.Contratado.EnderecoContratado.Complemento;
      Edit35.Text := DadosSolicitante.Contratado.EnderecoContratado.CodigoIBGEMunicipio;
      Edit36.Text := DadosSolicitante.Contratado.EnderecoContratado.Municipio;
      Edit37.Text := DadosSolicitante.Contratado.EnderecoContratado.CodigoUF;
 //3     Edit38.Text := IntToStr(DadosSolicitante.Contratado.EnderecoContratado.CEP);


      Edit17.Text := DadosSolicitante.Profissional.NomeProfissional;
      Edit18.Text := DadosSolicitante.Profissional.ConselhoProfissional.SiglaConselho;
      Edit19.Text := DadosSolicitante.Profissional.ConselhoProfissional.NumeroConselho;
      Edit20.Text := DadosSolicitante.Profissional.ConselhoProfissional.UfConselho;
      Edit21.Text := DadosSolicitante.Profissional.Cbos;

      //cid 1 e 2

      Edit22.Text := DiagnosticoAtendimento.CID.NomeTabela;
      Edit23.Text := DiagnosticoAtendimento.CID.CodigoDiagnostico;

      Edit39.Text := DiagnosticoAtendimento.TipoDoenca;
      Edit40.Text := DiagnosticoAtendimento.TempoReferidoEvolucaoDoenca.UnidadeTempo;

      Edit59.Text := DiagnosticoAtendimento.CID.DescricaoDiagnostico;


    { falta fazer 05/06/2007
      Edit42.Text := HipoteseDiagnostica.DiagnosticoSecundario.CID.NomeTabela;
      Edit43.Text := HipoteseDiagnostica.DiagnosticoSecundario.CID.CodigoDiagnostico;
     }

      //cid 3 e 4
     {
      Edit44.Text := HipoteseDiagnostica.TempoReferidoEvolucaoDoenca.UnidadeTempo;
      Edit45.Text := HipoteseDiagnostica.TempoReferidoEvolucaoDoenca.UnidadeTempo;
      }
    {
      if (DiagnosticoGuia.IndicadorAcidente <> null) then
      try
          Edit41.Text := IntToStr(DiagnosticoGuia.IndicadorAcidente);
      except
      end;
     }

     // Edit49.Text := codigoDiagnostico ;

      Edit24.Text := DataHoraAtendimento;

      Edit25.Text := DiagnosticoAtendimento.CID.NomeTabela;

     // Edit26.Text := IntToStr(TipoAtendimento);

      Edit26.Text := TipoAtendimento;

      Edit48.Text := CaraterAtendimento;

//      Edit27.Text :=  TipoConsulta;

      Edit30.Text := TipoSaida;


      Edit50.Text := OutrasDespesas.TotalGeralOutrasDespesas;
      Edit51.Text := ValorTotal.ServicosExecutados;
      Edit52.Text := ValorTotal.Diarias;
      Edit53.Text := ValorTotal.Taxas;
      Edit54.Text := ValorTotal.Materiais;
      Edit55.Text := ValorTotal.Medicamentos;
      Edit56.Text := ValorTotal.Gases;
      Edit57.Text := ValorTotal.TotalGeral;

    end;
  cdsxml.Post;
  end;
  cdsxml.ApplyUpdates(0);
  MessageDlg('Arquivo Importado com Sucesso !', mtConfirmation, [mbOK], 0);

  // para carregar na combo o arquivo que acabou de ser importado
 {
  if DMSaude.cdslote.Active then
    DMSaude.cdslote.Close;
    DMSaude.cdslote.Params[0].AsInteger := 1 ;
  DMSaude.cdslote.Open;
  While not DMSaude.cdslote.Eof do
  begin
    DBComboBox1.Items.Add(DMSaude.cdsloteNUMEROLOTE.AsString);
    DMSaude.cdslote.Next;
  end;

  }
end;

procedure Tffaturamento.BitBtn2Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'faturamento.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('LOTE').Value := DBComboBox1.Text;
  VCLReport1.Execute;
end;

procedure Tffaturamento.FormShow(Sender: TObject);
begin
  if DMSaude.cdslote.Active then
    DMSaude.cdslote.Close;
    DMSaude.cdslote.Params[0].AsInteger := 1 ;
  DMSaude.cdslote.Open;
  While not DMSaude.cdslote.Eof do
  begin
    DBComboBox1.Items.Add(DMSaude.cdsloteNUMEROLOTE.AsString);
    DMSaude.cdslote.Next;
  end;
end;

end.
