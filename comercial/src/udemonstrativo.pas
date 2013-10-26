unit udemonstrativo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons ,DCPmd5,XMLDoc, Mask, DBCtrls, DB, JvToolEdit,
  JvExMask, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, JvBaseEdits,
  JvComponentBase, JvFormAutoSize, rpcompobase, rpvclreport,rplabelitem;

type
  Tfdemonstrativo = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    dsFaturamento: TDataSource;
    BitBtn3: TBitBtn;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    data_pagamento: TJvDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    data_emissao: TJvDateEdit;
    Label3: TLabel;
    data_envio: TJvDateEdit;
    Label4: TLabel;
    JvCalcEdit1: TJvCalcEdit;
    JvCalcEdit2: TJvCalcEdit;
    Label5: TLabel;
    Label6: TLabel;
    JvCalcEdit3: TJvCalcEdit;
    Label7: TLabel;
    JvCalcEdit4: TJvCalcEdit;
    Label8: TLabel;
    JvCalcEdit5: TJvCalcEdit;
    Label9: TLabel;
    JvCalcEdit6: TJvCalcEdit;
    Label10: TLabel;
    JvCalcEdit7: TJvCalcEdit;
    Label11: TLabel;
    JvCalcEdit8: TJvCalcEdit;
    Label12: TLabel;
    Edit1: TEdit;
    Label13: TLabel;
    JvCalcEdit9: TJvCalcEdit;
    Label14: TLabel;
    JvCalcEdit10: TJvCalcEdit;
    Label15: TLabel;
    Label16: TLabel;
    VCLReport1: TVCLReport;
    JvCalcEdit11: TJvCalcEdit;
    Label17: TLabel;
    Edit2: TEdit;
    Label18: TLabel;
    Edit3: TEdit;
    Label19: TLabel;
    BitBtn4: TBitBtn;
    ans_prestador: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
    function IncluirPonto(ATexto: string): string;
  public
    { Public declarations }
  end;

var
  fdemonstrativo: Tfdemonstrativo;

implementation

uses UTissV2_01_03, UDmSaude, XMLIntf, UDm;

{$R *.dfm}

{--------------------------------------------------------------------}
// Hash usando algoritmo MD5 com o componente DcpCrypt - http://www.cityinthesky.co.uk/
Function MD5Hash(Buffer: String): String;
    Var MD5_Hash: TDCP_MD5;
       Hash: Array[0..15] of byte; //31
       Temp: String;
       f: Byte;
    begin
    For f := 0 to 15 do begin
       Hash[f] := 0;
    end;


    Buffer := Trim(Buffer);


    MD5_Hash := TDCP_MD5.Create(NIL);
    MD5_Hash.Init;
    MD5_Hash.UpdateStr(Buffer);
    MD5_Hash.Final(Hash);


    For f := 0 to 15 do begin
       Temp := Temp + IntToHex(Hash[f],2);
    end;


    Result := Copy(Temp,1,32);


    MD5_Hash.Burn;
    MD5_Hash.Free;
end;



{--------------------------------------------------------------------}
// Calcular o Hash da mensagem TISS

function HashmensagemTISS( xmlTISS: TXmlDocument ): String;
Var cAux, cPos, cConteudo: String;
   nPos: Integer;
   lPodePegar: Boolean;
begin
    cAux := xmlTISS.XML.Text;


    lPodePegar := False;
    cConteudo := '';


    For nPos := 0 to Length( cAux ) do begin


      cPos := Copy( cAux, nPos, 1 );


      if ( cPos = '<' ) then begin
         lPodePegar := False;
      end
      else if ( cPos = '>' ) then begin
         lPodePegar := True;
      end
      else if ( lPodePegar ) then begin
         cConteudo := cConteudo + cPos;
      end;
    end;


    Result := MD5Hash( cConteudo );
end;



{--------------------------------------------------------------------}
// Formatos padrão para Datas e Horas nos arquivos XML
function DataXML( dData: TDateTime ): String;
begin
if ( dData > 0 ) then begin
   Result := FormatDateTime( 'yyyy-mm-dd', dData );
end
else begin
   Result := '';
end;
end;

function DataHoraXML( dData: TDateTime ): String;
begin
if ( dData > 0 ) then begin
   Result := FormatDateTime( 'yyyy-mm-dd', dData )+'T'+FormatDateTime( 'hh:mm:ss', dData );
end
else begin
   Result := '';
end;
end;

function HoraXML( dData: TDateTime ): String;
begin
if ( dData > 0 ) then begin
   Result := FormatDateTime( 'hh:mm:ss', dData );
end
else begin
   Result := '';
end;
end;

procedure Tfdemonstrativo.BitBtn2Click(Sender: TObject);
Var msg: I213_MensagemTISS;
    xmlTISS: TXmlDocument;
//    demo: I213_Ct_demonstrativoPagamento;
//    sequ: T213_IdentificacaoTransacao;
//    cNrGuia: String;
//    dDataHora: TDateTime;
begin

//dDataHora := now;

xmlTISS := TXmlDocument.Create(nil);
xmlTISS.Active := False;
xmlTISS.FileName := '';

msg := GetmensagemTISS(xmlTISS);
//xmlTISS.Version := '1.0';
//xmlTISS.Encoding := 'iso-8859-1';


// Preencher o cabeçalho ---------------------------------

  msg.Cabecalho.IdentificacaoTransacao.TipoTransacao := 'DEMONSTRATIVO_PAGAMENTO';
  msg.Cabecalho.Origem.RegistroANS := '360783';
  msg.Cabecalho.IdentificacaoTransacao.SequencialTransacao := 1 ;
  msg.Cabecalho.IdentificacaoTransacao.DataRegistroTransacao := FormatDateTime('dd/mm/yyyy', date);
  msg.Cabecalho.IdentificacaoTransacao.HoraRegistroTransacao := FormatDateTime('hh:mm',NOW);

  msg.Cabecalho.Destino.CodigoPrestadorNaOperadora.CodigoPrestadorNaOperadora := '360481';

  msg.Cabecalho.VersaoPadrao := '2.01.03';
  msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Add;

  with msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0].CabecalhoDemonstrativo do
  begin
    NumeroDemonstrativo := '1';
    DataEmissao :=  data_emissao.Text; // FormatDateTime('dd/mm/yyyy', date);
  end;

  with msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0].IdentificacaoOperadora do
  begin
    RegistroANS := '360783';
    NomeOperadora := 'ASH ASSOCIAÇÃO SAUDE HOLAMBRA' ;
    CNPJ := '59007799000190';
  end;

  with msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0].DadosPrestador.Identificacao do
    CodigoPrestadorNaOperadora := '360481';
//    CNPJ := '46009718000140';

  with msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0].DadosPrestador do
    NomeContratado := 'HOSPITAL VERA CRUZ S/A';

  with msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0].DadosPrestador.EnderecoContratado do
  begin
    TipoLogradouro := '081'; // ObterTipoLog(QryMsg.fieldbyname('TIPOLOG1').asstring);
    Logradouro     := 'AV ANDRADE NEVES'; //QryMsg.fieldbyname('ENDERECO1').asstring;
    Numero         := '402'; //QryMsg.fieldbyname('NUMEROLOG1').asstring;
    Complemento    := 'BAIRRO BOTAFOGO' ;//QryMsg.fieldbyname('COMPLEMENTO1').asstring;
    CodigoIBGEMunicipio := '3509502'; //QryMsg.fieldbyname('IBGE1').asstring;
    Municipio      := 'CAMPINAS';//QryMsg.fieldbyname('CIDADE1').asstring;
    CodigoUF       := 'SP'; //QryMsg.fieldbyname('ESTADO1').asstring;
    Cep            := '13013900';//EliminaCaracteres(QryMsg.fieldbyname('CEP1').asstring);
  end;

  msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0].DadosPrestador.NumeroCNES := '2078376';


  with msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0].DadosPagamento do
  begin
   // DataPagamento := FormatDateTime('dd/mm/yyyy', date);
    DataPagamento := data_pagamento.Text; //FormatDateTime('dd/mm/yyyy', date);
    // Ver na tabela de Dominio.
    FormaPagamento := '1';
    Banco := 341;
    Agencia := '000-9';
    ContaCorrente := '54469-3';

  end;

  msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0].DadosResumo.DetalheResumo.Add;
  with msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0].DadosResumo.DetalheResumo.Items[0] do
  begin
    NumeroFatura := '1'; // 14
    NumeroLote := ComboBox1.Text; // 15
    DataEnvioLote := data_envio.Text; // 16
    NumeroProtocolo  := '1';  // 17
    ValorInformado   := IncluirPonto(FormatFloat('000000000.00',(JvCalcEdit1.AsInteger))); // 18
    ValorProcessado  := IncluirPonto(FormatFloat('000000000.00',(JvCalcEdit2.AsInteger))); // 19
    ValorLiberado    := IncluirPonto(FormatFloat('000000000.00',(JvCalcEdit3.AsInteger))); // 20
    ValorGlosa       := IncluirPonto(FormatFloat('000000000.00',(JvCalcEdit11.AsInteger))); // 21
  end;

  with msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0].DadosResumo do
  begin
    TotalGeralInformado  := IncluirPonto(FormatFloat('000000000.00',(JvCalcEdit4.AsInteger))); // 22
    TotalGeralProcessado := IncluirPonto(FormatFloat('000000000.00',(JvCalcEdit5.AsInteger))); // 23
    TotalGeralGlosa      := IncluirPonto(FormatFloat('000000000.00',(JvCalcEdit6.AsInteger))); // 24
    TotalGeralLiberado   := IncluirPonto(FormatFloat('000000000.00',(JvCalcEdit7.AsInteger))); // 25
  end;

  msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0].ValorTotal := IncluirPonto(FormatFloat('000000000.00',(JvCalcEdit8.AsInteger))); // 26
  msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0].DemaisDescontos.Add;


  with msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0].DemaisDescontos.ItemDesconto[0] do
  begin
    valorDesconto := IncluirPonto(FormatFloat('000000000.00',(JvCalcEdit9.AsInteger))); // 27
    if (Edit1.Text = '') then
      descricao := 'NENHUMA DESCRIÇÃO';
    if (Edit1.Text <> '') then
      descricao := Edit1.Text;
  end;

  with msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0] do
    ValorFinalLiberado := IncluirPonto(FormatFloat('000000000.00',(JvCalcEdit10.AsInteger))); // 28


msg.Epilogo.Hash := HashmensagemTISS( xmlTISS );

xmlTISS.XML.SaveToFile('C:\home\demonstrativo\' + msg.Epilogo.Hash + 'DemonstrativoPagamento.xml');
//xmlTISS.Active := False;

//xmlTISS := nil; // A interface "msg" é o owner do TXmlDocument
//Result := ( xmlTISS = nil );

MessageDlg('Gerado Arquivo XML - Demosntrativo Pagamento - Resumo!',mtInformation,[MbOk],0);



end;

procedure Tfdemonstrativo.FormShow(Sender: TObject);
begin
  if DMSaude.cdslote.Active then
    DMSaude.cdslote.Close;
    DMSaude.cdslote.Params[0].AsInteger := 1 ;
  DMSaude.cdslote.Open;
  While not DMSaude.cdslote.Eof do
  begin
    ComboBox2.Items.Add(DMSaude.cdsloteNUMEROLOTE.AsString);
    DMSaude.cdslote.Next;
  end;
  if DMSaude.cdslote.Active then
    DMSaude.cdslote.Close;
    DMSaude.cdslote.Params[0].AsInteger := 2 ;
  DMSaude.cdslote.Open;
  While not DMSaude.cdslote.Eof do
  begin
    ComboBox1.Items.Add(DMSaude.cdsloteNUMEROLOTE.AsString);
    DMSaude.cdslote.Next;
  end;


end;

function Tfdemonstrativo.IncluirPonto(ATexto: string): string;
var
  i                 : integer;
begin
  Result := '';
  for I := 1 to Length(ATexto) do
    if ATexto[I] = ',' then
      Result := Result + '.'
    else
      Result := Result + ATexto[I];

end;

procedure Tfdemonstrativo.BitBtn1Click(Sender: TObject);
Var msg: I213_MensagemTISS;
    xmlTISS: TXmlDocument;
//    demo: I213_Ct_demonstrativoPagamento;
//    sequ: T213_IdentificacaoTransacao;
//    cNrGuia: String;
//    dDataHora: TDateTime;
begin

//dDataHora := now;

xmlTISS := TXmlDocument.Create(nil);
xmlTISS.Active := False;
xmlTISS.FileName := '';

msg := GetmensagemTISS(xmlTISS);
//xmlTISS.Version := '1.0';
//xmlTISS.Encoding := 'iso-8859-1';


// Preencher o cabeçalho ---------------------------------

  msg.Cabecalho.IdentificacaoTransacao.TipoTransacao := 'DEMONSTRATIVO_PAGAMENTO';
  msg.Cabecalho.Origem.RegistroANS := '360783';
  msg.Cabecalho.IdentificacaoTransacao.SequencialTransacao := 1 ;
  msg.Cabecalho.IdentificacaoTransacao.DataRegistroTransacao := FormatDateTime('dd/mm/yyyy', date);
  msg.Cabecalho.IdentificacaoTransacao.HoraRegistroTransacao := FormatDateTime('hh:mm',NOW);

  msg.Cabecalho.Destino.CodigoPrestadorNaOperadora.CodigoPrestadorNaOperadora := '360481';

  msg.Cabecalho.VersaoPadrao := '2.01.03';
  msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Add;

  with msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0].CabecalhoDemonstrativo do
  begin
    NumeroDemonstrativo := '1';
    DataEmissao :=  data_emissao.Text; // FormatDateTime('dd/mm/yyyy', date);
  end;

  with msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0].IdentificacaoOperadora do
  begin
    RegistroANS := '360783';
    NomeOperadora := 'ASH ASSOCIAÇÃO SAUDE HOLAMBRA' ;
    CNPJ := '59007799000190';
  end;

  with msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0].DadosPrestador.Identificacao do
    CodigoPrestadorNaOperadora := '360481';
//    CNPJ := '46009718000140';

  with msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0].DadosPrestador do
    NomeContratado := 'HOSPITAL VERA CRUZ S/A';

  with msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0].DadosPrestador.EnderecoContratado do
  begin
    TipoLogradouro := '081'; // ObterTipoLog(QryMsg.fieldbyname('TIPOLOG1').asstring);
    Logradouro     := 'AV ANDRADE NEVES'; //QryMsg.fieldbyname('ENDERECO1').asstring;
    Numero         := '402'; //QryMsg.fieldbyname('NUMEROLOG1').asstring;
    Complemento    := 'BAIRRO BOTAFOGO' ;//QryMsg.fieldbyname('COMPLEMENTO1').asstring;
    CodigoIBGEMunicipio := '3509502'; //QryMsg.fieldbyname('IBGE1').asstring;
    Municipio      := 'CAMPINAS';//QryMsg.fieldbyname('CIDADE1').asstring;
    CodigoUF       := 'SP'; //QryMsg.fieldbyname('ESTADO1').asstring;
    Cep            := '13013900';//EliminaCaracteres(QryMsg.fieldbyname('CEP1').asstring);
  end;

  msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0].DadosPrestador.NumeroCNES := '2078376';


  with msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0].DadosPagamento do
  begin
   // DataPagamento := FormatDateTime('dd/mm/yyyy', date);
    DataPagamento := data_pagamento.Text; //FormatDateTime('dd/mm/yyyy', date);
    // Ver na tabela de Dominio.
    FormaPagamento := '1';
    Banco := 341;
    Agencia := '000-9';
    ContaCorrente := '54469-3';

  end;

  msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0].DadosResumo.DetalheResumo.Add;
  with msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0].DadosResumo.DetalheResumo.Items[0] do
  begin
    NumeroFatura := '1'; // 14
    NumeroLote := ComboBox2.Text; // 15
    DataEnvioLote := data_envio.Text; // 16
    NumeroProtocolo  := '1';  // 17
    ValorInformado   := IncluirPonto(FormatFloat('000000000.00',(JvCalcEdit1.AsInteger))); // 18
    ValorProcessado  := IncluirPonto(FormatFloat('000000000.00',(JvCalcEdit2.AsInteger))); // 19
    ValorLiberado    := IncluirPonto(FormatFloat('000000000.00',(JvCalcEdit3.AsInteger))); // 20
    ValorGlosa       := IncluirPonto(FormatFloat('000000000.00',(JvCalcEdit3.AsInteger))); // 21
  end;

  with msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0].DadosResumo do
  begin
    TotalGeralInformado  := IncluirPonto(FormatFloat('000000000.00',(JvCalcEdit4.AsInteger))); // 22
    TotalGeralProcessado := IncluirPonto(FormatFloat('000000000.00',(JvCalcEdit5.AsInteger))); // 23
    TotalGeralGlosa      := IncluirPonto(FormatFloat('000000000.00',(JvCalcEdit6.AsInteger))); // 24
    TotalGeralLiberado   := IncluirPonto(FormatFloat('000000000.00',(JvCalcEdit7.AsInteger))); // 25
  end;

  msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0].ValorTotal := IncluirPonto(FormatFloat('000000000.00',(JvCalcEdit8.AsInteger))); // 26
  msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0].DemaisDescontos.Add;


  with msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0].DemaisDescontos.ItemDesconto[0] do
  begin
    valorDesconto := IncluirPonto(FormatFloat('000000000.00',(JvCalcEdit9.AsInteger))); // 27
    if (Edit1.Text = '') then
      descricao := 'NENHUMA DESCRIÇÃO';
    if (Edit1.Text <> '') then
      descricao := Edit1.Text;
  end;

  with msg.OperadoraParaPrestador.DemonstrativosRetorno.DemonstrativoPagamento.Items[0] do
    ValorFinalLiberado := IncluirPonto(FormatFloat('000000000.00',(JvCalcEdit10.AsInteger))); // 28


msg.Epilogo.Hash := HashmensagemTISS( xmlTISS );

xmlTISS.XML.SaveToFile('C:\home\demonstrativo\' + msg.Epilogo.Hash + 'DemonstrativoPagamento.xml');


//xmlTISS.XML.SaveToFile('DemonstrativoPagamento.xml');
//xmlTISS.Active := False;

//xmlTISS := nil; // A interface "msg" é o owner do TXmlDocument
//Result := ( xmlTISS = nil );

//MessageDlg('XML gerado!',mtInformation,[MbOk],0);

MessageDlg('Gerado Arquivo XML - Demosntrativo Pagamento Guia SADT!',mtInformation,[MbOk],0);

end;

procedure Tfdemonstrativo.BitBtn3Click(Sender: TObject);
var val1,val2,val3,val4,val5,val6,val7,val8,val9,val10,val11,val12 ,val13,val14 ,data1,data2,data3,lote1,lote2 :TRpLabel;
begin
  VCLReport1.Filename := str_relatorio + 'demonstrativo.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;

  val1:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel0'));
  val2:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel1'));
  val3:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel2'));
  val4:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel3'));
  val5:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel4'));
  val6:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel5'));
  val7:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel6'));
  val8:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel7'));
  val9:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel8'));
  val10:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel9'));
  val11:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel10'));
  val12:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel14'));
  val13:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel28'));
  val14:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel19'));

  data1:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel11'));
  data2:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel12'));
  data3:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel13'));

  lote1:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel26'));
  lote2:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel27'));

  if Assigned(val1) then
  begin
   val1.Text := IncluirPonto(FormatFloat('0.00',(JvCalcEdit1.AsInteger)));
  end;
  if Assigned(val2) then
  begin
   val2.Text := IncluirPonto(FormatFloat('0.00',(JvCalcEdit2.AsInteger)));
  end;
  if Assigned(val3) then
  begin
   val3.Text := IncluirPonto(FormatFloat('0.00',(JvCalcEdit3.AsInteger)));
  end;
  if Assigned(val4) then
  begin
   val4.Text := IncluirPonto(FormatFloat('0.00',(JvCalcEdit4.AsInteger)));
  end;
  if Assigned(val5) then
  begin
   val5.Text := IncluirPonto(FormatFloat('0.00',(JvCalcEdit5.AsInteger)));
  end;
  if Assigned(val6) then
  begin
   val6.Text := IncluirPonto(FormatFloat('0.00',(JvCalcEdit6.AsInteger)));
  end;
  if Assigned(val7) then
  begin
   val7.Text := IncluirPonto(FormatFloat('0.00',(JvCalcEdit7.AsInteger)));
  end;
  if Assigned(val8) then
  begin
   val8.Text := IncluirPonto(FormatFloat('0.00',(JvCalcEdit8.AsInteger)));
  end;
  if Assigned(val9) then
  begin
   val9.Text := IncluirPonto(FormatFloat('0.00',(JvCalcEdit9.AsInteger)));
  end;
  if Assigned(val10) then
  begin
   val10.Text := IncluirPonto(FormatFloat('0.00',(JvCalcEdit10.AsInteger)));
  end;
  if Assigned(val11) then
  begin
   val11.Text := Edit1.Text;
  end;
  if Assigned(val12) then
  begin
   val12.Text := IncluirPonto(FormatFloat('0.00',(JvCalcEdit11.AsInteger)));
  end;
  if Assigned(val13) then
  begin
   val13.Text := Edit2.Text;
  end;
  if Assigned(val14) then
  begin
   val14.Text := Edit3.Text;
  end;
  if Assigned(data1) then
  begin
   data1.Text := formatdatetime('dd/mm/yyyy', StrToDate(data_pagamento.Text));
  end;
  if Assigned(data2) then
  begin
   data2.Text := formatdatetime('dd/mm/yyyy', StrToDate(data_emissao.Text));
  end;
  if Assigned(data3) then
  begin
   data3.Text := formatdatetime('dd/mm/yyyy', StrToDate(data_envio.Text));
  end;

  if Assigned(lote1) then
  begin
   lote1.Text := ComboBox1.Text;
  end;
  if Assigned(lote2) then
  begin
   lote2.Text := ComboBox2.Text;
  end;


  VCLReport1.Execute;
end;

procedure Tfdemonstrativo.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure Tfdemonstrativo.BitBtn4Click(Sender: TObject);
Var msg: I213_MensagemTISS;
    xmlTISS: TXmlDocument;
//    demo: I213_Ct_demonstrativoPagamento;
//    sequ: T213_IdentificacaoTransacao;
//    cNrGuia: String;
//    dDataHora: TDateTime;
begin

//dDataHora := now;

xmlTISS := TXmlDocument.Create(nil);
xmlTISS.Active := False;
xmlTISS.FileName := '';

msg := GetmensagemTISS(xmlTISS);
//xmlTISS.Version := '1.0';
//xmlTISS.Encoding := 'iso-8859-1';


// Preencher o cabeçalho ---------------------------------

  msg.Cabecalho.IdentificacaoTransacao.TipoTransacao := 'PROTOCOLO_RECEBIMENTO';
  msg.Cabecalho.Origem.RegistroANS := '360783';
  msg.Cabecalho.IdentificacaoTransacao.SequencialTransacao := 1 ;
  msg.Cabecalho.IdentificacaoTransacao.DataRegistroTransacao := FormatDateTime('dd/mm/yyyy', date);
  msg.Cabecalho.IdentificacaoTransacao.HoraRegistroTransacao := FormatDateTime('hh:mm',NOW);

//////  msg.Cabecalho.Destino.CodigoPrestadorNaOperadora.CodigoPrestadorNaOperadora := '171171';
  msg.Cabecalho.Destino.CodigoPrestadorNaOperadora.CNPJ := '44595700000141';

//  msg.OperadoraParaPrestador.ProtocoloRecebimento.DadosPrestador.Identificacao.CodigoPrestadorNaOperadora := '171171';


//  msg.Cabecalho.Destino.CodigoPrestadorNaOperadora.CodigoPrestadorNaOperadora := '360481';
//  msg.Cabecalho.Destino.CodigoPrestadorNaOperadora.CodigoPrestadorNaOperadora := ans_prestador.Text;
//  msg.OperadoraParaPrestador.ProtocoloRecebimento.DadosPrestador.Identificacao.CNPJ := '171171';

  msg.Cabecalho.VersaoPadrao := '2.01.03';
  msg.OperadoraParaPrestador.ProtocoloRecebimento.DadosOperadora.RegistroANS := '360783';
  msg.OperadoraParaPrestador.ProtocoloRecebimento.DadosOperadora.NomeOperadora := 'ASH ASSOCIAÇÃO SAUDE HOLAMBRA' ;
  msg.OperadoraParaPrestador.ProtocoloRecebimento.DadosOperadora.CNPJ := '59007799000190';


//  msg.Cabecalho.Destino.CodigoPrestadorNaOperadora.CodigoPrestadorNaOperadora := '360481';

//  msg.OperadoraParaPrestador.ProtocoloRecebimento.DadosPrestador.Identificacao.CodigoPrestadorNaOperadora := '171171';


//  msg.OperadoraParaPrestador.ProtocoloRecebimento.DadosPrestador.Identificacao.CNPJ := '44595700000141';
  msg.OperadoraParaPrestador.ProtocoloRecebimento.DadosPrestador.Identificacao.CodigoPrestadorNaOperadora := '44595700000141';


//  msg.OperadoraParaPrestador.ProtocoloRecebimento.DadosPrestador.Identificacao.CodigoPrestadorNaOperadora := ans_prestador.Text;

//    CNPJ := '46009718000140';
  msg.OperadoraParaPrestador.ProtocoloRecebimento.DadosPrestador.NomeContratado:= 'Fundacao Centro Medico de Campinas';
  msg.OperadoraParaPrestador.ProtocoloRecebimento.DadosPrestador.EnderecoContratado.TipoLogradouro := '081';
  msg.OperadoraParaPrestador.ProtocoloRecebimento.DadosPrestador.EnderecoContratado.Logradouro := 'Dr.Edilberto Luiz Pereira da Silva';
  msg.OperadoraParaPrestador.ProtocoloRecebimento.DadosPrestador.EnderecoContratado.Numero := '150';
  msg.OperadoraParaPrestador.ProtocoloRecebimento.DadosPrestador.EnderecoContratado.Complemento:= 'C.Universitaria' ;
  msg.OperadoraParaPrestador.ProtocoloRecebimento.DadosPrestador.EnderecoContratado.CodigoIBGEMunicipio := '0350950';
  msg.OperadoraParaPrestador.ProtocoloRecebimento.DadosPrestador.EnderecoContratado.Municipio := 'CAMPINAS';
  msg.OperadoraParaPrestador.ProtocoloRecebimento.DadosPrestador.EnderecoContratado.CodigoUF := 'SP';
  msg.OperadoraParaPrestador.ProtocoloRecebimento.DadosPrestador.EnderecoContratado.Cep:= '13083190';
  msg.OperadoraParaPrestador.ProtocoloRecebimento.DadosPrestador.NumeroCNES := '2079666';


  msg.OperadoraParaPrestador.ProtocoloRecebimento.DataEnvioLote := FormatDateTime('dd/mm/yyyy',data_envio.Date); //data_envio.Text;//FormatDateTime('dd/mm/yyyy', date);
  msg.OperadoraParaPrestador.ProtocoloRecebimento.NumeroLote := ComboBox2.Text;
  msg.OperadoraParaPrestador.ProtocoloRecebimento.NumeroProtocoloRecebimento := '1';


msg.Epilogo.Hash := HashmensagemTISS( xmlTISS );

xmlTISS.XML.SaveToFile('C:\home\protocolo\' + msg.Epilogo.Hash + 'Protocolorecebimento.xml');
//xmlTISS.Active := False;

//xmlTISS := nil; // A interface "msg" é o owner do TXmlDocument
//Result := ( xmlTISS = nil );

MessageDlg('Gerado Arquivo XML - Protocolo Recebimento !',mtInformation,[MbOk],0);
end;

end.
