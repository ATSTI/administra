unit uUtils;

interface

uses Windows, Forms, Dialogs, Messages, SysUtils, Classes,
    DBXpress, DB, SqlExpr, DBClient, Provider, StdCtrls, rpcompobase, rpvclreport,
    XmlRpcClient, XmlRpcTypes;

Type
  TUtils = class(TObject)
    rep: TVCLReport;
  private
    FPeriodoIni: String;
    FPeriodoFim: String;
    FBusca: String;
    memoLic: String;
    { Abre a tabela usada no pegaBusca e criaBusca }
    procedure AbreTabela(Sql: String);
    { Usada para Fazer Busca como se fosse DBLookup }
    function pegaBusca(Txt: String): string;
    { Usada para Fazer Busca como se fosse DBLookup }
    procedure criaBusca(const Value: String);
  public
    bPausa: Boolean;
    function pegaIni: String;
    function pegaFim: String;
    function pegaMes: String;
    procedure criaIni(const Value: String);
    procedure criaFim(const Value: String);
    procedure criaMes(const Value: String);
    {Retorna a Data de ínicio do mês Informado (Janeiro, Fevereiro...)}
    property PeriodoIni: string read pegaIni write criaIni;
    {Retorna a Data de Fim do mês Informado (Janeiro, Fevereiro...)}
    property PeriodoFim: string read pegaFim write criaFim;
    { Usada para Fazer Busca como se fosse DBLookup }
    function StatusRec:TStringList;
    function Forma:TStringList;
    function DeleteChar(const Ch: Char; const S: string): string;
    function StatusPag:TStringList;
    function pegaForma(forma: String) : String;
    function retornaForma(forma: String) : Integer;
    procedure CriaForm(FormClasse : TComponentClass; NomeForm : TForm);
    function buscaChave(generator: String) : String;
    procedure relatorio(rel: String);
    function verificapermissao : Boolean;
    function RemoveChar(Const Texto:String):String;
    procedure LicencaUso;
    procedure conexaoXmlRpc;
  end;


implementation

uses UDm, ufDlgLogin, uAtsAdmin, md5;

{ TUtils }

procedure TUtils.criaFim(const Value: String);
  var
   ano, mes, dia: word;
   data2 : TdateTime;
begin
  inherited;
    FPeriodoFim := value;
    Data2 := now;
    decodedate(Data2, ano, mes, dia);

    if (FPeriodoFim = 'Janeiro') then
      mes:=1;
    if FPeriodoFim = 'Fevereiro' then
      mes:=2;
    if FPeriodoFim = 'Março' then
      mes:=3;
    if FPeriodoFim = 'Abril' then
      mes:=4;
    if FPeriodoFim = 'Maio' then
      mes:=5;
    if FPeriodoFim = 'Junho' then
      mes:=6;
    if FPeriodoFim = 'Julho' then
      mes:=7;
    if FPeriodoFim = 'Agosto' then
      mes:=8;
    if FPeriodoFim = 'Setembro' then
      mes:=9;
    if FPeriodoFim = 'Outubro' then
      mes:=10;
    if FPeriodoFim = 'Novembro' then
      mes:=11;
    if FPeriodoFim = 'Dezembro' then
      mes:=12;

    dia:=31;
    if mes = 2 then
    if dia > 28 then
      dia:=28;

    if mes = 4 then
    if dia > 30 then
      dia:=30;

    if mes = 6 then
    if dia > 30 then
      dia:=30;

    if mes = 9 then
    if dia > 30 then
      dia:=30;

    if mes = 11 then
    if dia > 30 then
      dia:=30;

   Data2 := encodedate(ano, mes, dia);
   FPeriodoFim := DateTimeToStr(data2);
end;

procedure TUtils.criaIni(const Value: String);
  var
   ano, mes, dia: word;
   Data1 : TdateTime;
begin
  FPeriodoIni := Value;
  Data1 := now;
  decodedate(Data1, ano, mes, dia);
  dia:=1;
  if (FPeriodoIni = 'Janeiro') then
    mes:=1;
  if FPeriodoIni = 'Fevereiro' then
    mes:=2;
  if FPeriodoIni = 'Março' then
    mes:=3;
  if FPeriodoIni = 'Abril' then
    mes:=4;
  if FPeriodoIni = 'Maio' then
    mes:=5;
  if FPeriodoIni = 'Junho' then
    mes:=6;
  if FPeriodoIni = 'Julho' then
    mes:=7;
  if FPeriodoIni = 'Agosto' then
    mes:=8;
  if FPeriodoIni = 'Setembro' then
    mes:=9;
  if FPeriodoIni = 'Outubro' then
    mes:=10;
  if FPeriodoIni = 'Novembro' then
    mes:=11;
  if FPeriodoIni = 'Dezembro' then
    mes:=12;

  Data1 := encodedate(ano, mes, dia);
  FPeriodoIni := DateTimeToStr(data1);
end;

function TUtils.pegaFim: String;
begin
  Result := FPeriodoFim;
end;

function TUtils.pegaIni: String;
begin
  Result := FPeriodoIni;
end;

procedure TUtils.AbreTabela(Sql: String);
begin
  if (dm.cdsBusca.Active) then
    dm.cdsBusca.Close;
  dm.cdsBusca.CommandText := Sql;
  dm.cdsBusca.Open;
end;

function TUtils.pegaBusca(Txt: String): string;
var iA : integer;
begin
  if (not dm.cdsBusca.Active) then
    dm.cdsBusca.Open;
  with dm.cdsBusca do
  begin
    if (Txt <> '') then
    begin
      for iA := 0 to pred(dm.cdsBusca.FieldCount) do
      begin
        if (lstrcmp(PChar(Copy(Fields[iA].AsString, 1, Length(Txt))), PChar(Txt)) = 0) or
          (lStrCmpi(PChar(Copy(Fields[iA].AsString, 1, Length(Txt))), PChar(Txt)) = 0) then
        begin
          Result := Fields[iA].AsString;
          Break;
        end;
      end;
    end;
  end;
end;

procedure TUtils.criaBusca(const Value: String);
var iA, iB: Integer;
  editBusca: TEdit;
begin
  editBusca := TEdit.Create(nil);
  editBusca.Text := Value;
  if (not bPausa = True) then
  begin
    if (pegaBusca(editBusca.Text) <> '') then
    begin
      iB := Length(editBusca.Text);
      editBusca.Text := pegaBusca(editBusca.Text);
      editBusca.SelStart := iB;
      editBusca.SelLength := Length(pegaBusca(editBusca.Text)) - iB;
    end;
  end;
  bPausa := False;
  for iA := 0 to dm.cdsBusca.FieldCount - 1 do
    if (dm.cdsBusca.Fields[iA].AsString = editBusca.Text) then
    begin
      //dm.cdsBusca.FindKey := iA;
      Break;
    end
    else
      //dm.cdsBusca.FindKey := -1;
end;

function TUtils.StatusRec: TStringList;
var resultado: TStringList;
begin
  resultado := TStringList.Create;
  resultado.Add('1-A Vencer');
  resultado.Add('2-Vencido');
  resultado.Add('5-A Receber');
  resultado.Add('7-Recebido');
  resultado.Add('8-Crédito Duvidoso');
  resultado.Add('9-Em Cobrança');
  resultado.Add('10-Novo Título');
  resultado.Add('11-Todos');
  resultado.Add('3-Em Protesto');
  resultado.Add('14-Cancelado');
  resultado.Add('Descontado');  
  result := resultado;
end;

function TUtils.Forma: TStringList;
var forma: TStringList;
begin
  forma := TStringList.Create;
  // FormaRecebimento 1
  forma.Add('1-DINHEIRO');
  // FormaRecebimento 2
  forma.Add('2-CHEQUE');
  // FormaRecebimento 3
  forma.Add('3-CHEQUE-PRÉ');
  // FormaRecebimento 4
  forma.Add('4-BOLETO');
  forma.Add('5-DUPLICATA');
  forma.Add('6-CARTÃO CRÉDITO');
  forma.Add('7-CARTÃO DÉBITO');
  forma.Add('8-DEPÓSITO');
  forma.Add('9-DÉBITO AUTOMÁTICO');
  forma.Add('10-HOME BANKING');
  forma.Add('11-DOC');
  forma.Add('12-CARTÓRIO');
  forma.Add('13-TRANSFERÊNCIA');
  forma.Add('14-CRÉDITO EM CONTA');
  forma.Add('15-CHEQUE DE TERCEIROS');
  forma.Add('16-VALE');
  forma.Add('17-OUTROS');
  forma.Add('18-VISA CRÉDITO');
  forma.Add('19-VISA DÉBITO');
  forma.Add('20-MASTER CRÉDITO');
  forma.Add('21-MASTER DÉBITO');
  forma.Add('22-DINERS');

  result := forma;
end;

function TUtils.DeleteChar(const Ch: Char; const S: string): string;
var
  Posicao: integer;
begin
  Result := S;
  Posicao := Pos(Ch, Result);
  while Posicao > 0 do
  begin
    Delete(Result, Posicao, 1);
    Posicao := Pos(Ch, Result);
  end;
end;
function TUtils.StatusPag: TStringList;
var resultado: TStringList;
begin
  resultado := TStringList.Create;
  resultado.Add('1-A Vencer');
  resultado.Add('2-Vencido');
  resultado.Add('5-A Pagar');
  resultado.Add('7-Pago');
  resultado.Add('8-Suspenso');
  resultado.Add('11-Todos');
  resultado.Add('14-Cancelado');
  result := resultado;
end;

function TUtils.pegaForma(forma: string): String;
begin
  if (forma = '1-DINHEIRO') then
     result := '1';

  if (forma = '2-CHEQUE') then
     result := '2';

  if (forma = '3-CHEQUE-PRÉ') then
    result := '3';

  if (forma = '4-BOLETO') then
     result := '4';

  if (forma = '5-DUPLICATA') then
     result := '5';

  if (forma = '6-CARTÃO CRÉDITO') then
     result := '6';

  if (forma = '7-CARTÃO DÉBITO') then
     result := '7';

  if (forma = '8-DEPÓSITO') then
     result := '8';

  if (forma = '9-DÉBITO AUTOMÁTICO') then
     result := '9';

  if (forma = '10-HOME BANKING') then
     result := 'A';

  if (forma = '11-DOC') then
     result := 'B';

  if (forma = '12-CARTÓRIO') then
     result := 'C';

  if (forma = '13-TRANSFERÊNCIA') then
     result := 'D';

  if (forma = '14-CRÉDITO EM CONTA') then
     result := 'E';

  if (forma = '15-CHEQUE DE TERCEIROS') then
     result := 'F';

  if (forma = '16-VALE') then
     result := 'G';

  if (forma = '17-OUTROS') then
     result := 'H';

  if (forma = '18-VISA CRÉDITO') then
    result := 'I';

  if (forma = '19-VISA DÉBITO') then
    result := 'J';

  if (forma = '20-MASTER CRÉDITO') then
    result := 'K';

  if (forma = '21-MASTER DÉBITO') then
    result := 'L';

  if (forma = '22-DINERS') then
    result := 'M';
end;

function TUtils.retornaForma(forma: String): Integer;
begin
  if (forma = '1') then
     result := 0;

  if (forma = '2') then
     result := 1;

  if (forma = '3') then
    result := 2;

  if (forma = '4') then
     result := 3;

  if (forma = '5') then
     result := 4;

  if (forma = '6') then
     result := 5;

  if (forma = '7') then
     result := 6;

  if (forma = '8') then
     result := 7;

  if (forma = '9') then
     result := 8;

  if (forma = 'A') then
     result := 9;

  if (forma = 'B') then
     result := 10;

  if (forma = 'C') then
     result := 11;

  if (forma = 'D') then
     result := 12;

  if (forma = 'E') then
     result := 13;

  if (forma = 'F') then
     result := 14;

  if (forma = 'G') then
     result := 15;

  if (forma = 'H') then
     result := 16;

  if (forma = 'I') then
     result := 17;

  if (forma = 'J') then
     result := 18;

  if (forma = 'K') then
     result := 19;

  if (forma = 'L') then
     result := 20;

  if (forma = 'M') then
     result := 21;

end;

procedure TUtils.CriaForm(FormClasse: TComponentClass; NomeForm: TForm);
begin
  Application.CreateForm(FormClasse, NomeForm);
  Try
    NomeForm.ShowModal;
  finally
    NomeForm.Free;
  end;
end;

function TUtils.buscaChave(generator: String): String;
begin
  if (dm.c_6_genid.Active) then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(' +
    generator + ',1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  Result := IntToStr(dm.c_6_genidCODIGO.AsInteger);
end;

procedure TUtils.relatorio(rel: String);
begin
  if (FileExists(relPersonalizado)) then
    rep.Filename := relPersonalizado + rel
  else
    rep.Filename := str_relatorio + rel;
  rep.Title := rep.Filename;
  rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
end;

procedure TUtils.criaMes(const Value: String);
  var
   mes : String;
begin
  FPeriodoIni := Value;
  if (FPeriodoIni = 'Janeiro') then
    mes := '1';
  if FPeriodoIni = 'Fevereiro' then
    mes := '2';
  if FPeriodoIni = 'Março' then
    mes := '3';
  if FPeriodoIni = 'Abril' then
    mes := '4';
  if FPeriodoIni = 'Maio' then
    mes := '5';
  if FPeriodoIni = 'Junho' then
    mes := '6';
  if FPeriodoIni = 'Julho' then
    mes := '7';
  if FPeriodoIni = 'Agosto' then
    mes := '8';
  if FPeriodoIni = 'Setembro' then
    mes := '9';
  if FPeriodoIni = 'Outubro' then
    mes := '10';
  if FPeriodoIni = 'Novembro' then
    mes := '11';
  if FPeriodoIni = 'Dezembro' then
    mes := '12';
  FPeriodoIni := mes;
end;

function TUtils.pegaMes: String;
begin
  Result := FPeriodoIni;
end;

function TUtils.verificapermissao: Boolean;
begin
    fDlgLogin := TfDlgLogin.Create(Application);
    try
      fDlgLogin.ShowModal;
    finally
      fDlgLogin.free;
    end;
    if (usuautorizacao = 0) then
    begin
      ShowMessage('Usuario não tem permissão para efetuar essa operação');
      Result := False;
      exit;
    end;
    if Dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'CONTAADMINISTRADOR';
    dm.cds_parametro.Open;
    fAtsAdmin.UserControlComercial.VerificaLogin(nome_user,senha_user);
    if (dm.sPermissao.Active) then
      dm.sPermissao.Close;
    dm.sPermissao.Params[0].AsInteger := usuautorizacao;
    dm.sPermissao.Open;
    if (dm.sPermissaoUCPROFILE.AsInteger = StrToInt(dm.cds_parametroDADOS.AsString)) then
    begin
      dm.sPermissao.Close;
      fAtsAdmin.UserControlComercial.VerificaLogin(nome_user,senha_user);
      dm.cds_parametro.Close;
      Result := True;
    end
    else
    begin
      ShowMessage('Usuario não tem permissão para efetuar essa operação');
      dm.cds_parametro.Close;
      dm.sPermissao.Close;
      fAtsAdmin.UserControlComercial.VerificaLogin(nome_user,senha_user);
      Result := False;
    end;
end;


function TUtils.RemoveChar(const Texto: String): String;
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

procedure TUtils.LicencaUso;
var
  s, localizar, achei, valor: String;
  i1, i2: Integer;
begin
  achei := '0';
  i2 := -1;
  conexaoXmlRpc;
  s := memoLic;
  i1 := Pos(LowerCase(dm.empresa), LowerCase(s));
  if (i1 > 0) then
  begin
    achei := Copy(s, i1, 17);
    valor := MD5Print(MD5String(achei));
    dm.sqlsisAdimin.ExecuteDirect('UPDATE EMPRESA SET OUTRAS_INFO = ' +
      QuotedStr(valor) + ' WHERE CODIGO = 1');
  end
  else begin
    valor := MD5Print(MD5String(dm.empresa + '-00'));
    if (dm.mensagemInicial <> valor) then
    begin
      dm.sqlsisAdimin.ExecuteDirect('UPDATE EMPRESA SET OUTRAS_INFO = ' +
      QuotedStr(valor) + ' WHERE CODIGO = 1');
      dm.mensagemInicial := valor;
    end;
  end;
end;

procedure TUtils.conexaoXmlRpc;
var
  RpcCaller: TRpcCaller;
  RpcResult: IRpcResult;
  RpcFunction: IRpcFunction;
  RpcArray: IRpcArray;
  RpcStruct: IRpcStruct;
  I: Integer;
begin

  RpcCaller := TRpcCaller.Create;
  try
    RpcCaller.HostName := Trim('www.atsti.com.br');
    RpcCaller.HostPort := StrToInt(Trim('80'));
    RpcCaller.EndPoint := Trim('/xmlrpc.php');

    RpcFunction := TRpcFunction.Create;
    RpcFunction.ObjectMethod := 'wp.getPost';

    RpcFunction.AddItem(1503);  // Numero do Post

    RpcFunction.AddItem('ats');

    RpcFunction.AddItem('a2t00s7');

    RpcResult := RpcCaller.Execute(RpcFunction);

    if RpcResult.IsError then
    begin
      ShowMessageFmt('Error: (%d) %s', [RpcResult.ErrorCode,
          RpcResult.ErrorMsg]);
      Exit;
    end;

    //if (RpcResult.IsString) then
    //  memHelp.Text := RpcResult.AsString;

    if (RpcResult.IsStruct) then
    begin
      RpcStruct := RpcResult.AsStruct;
      memoLic := RpcStruct.Items[2].AsString;
    end;

    if RpcResult.IsArray then
    begin
      RpcArray := RpcResult.AsArray;
      //for I := 0 to RpcArray.Count - 1 do
      //  lbMethod.Items.Add(RpcArray[I].AsString);
    end;
  finally
    RpcCaller.Free;
  end;

end;

end.
