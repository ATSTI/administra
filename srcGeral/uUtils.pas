unit uUtils;

interface

uses Windows, Forms, Dialogs, Messages, SysUtils, Classes,
    DBXpress, DB, SqlExpr, DBClient, Provider, StdCtrls;

Type
  TUtils = class(TObject)
  private
    FPeriodoIni: String;
    FPeriodoFim: String;
    FBusca: String;
    varData : TDateTime;
    varDia : String;
    { Abre a tabela usada no pegaBusca e criaBusca }
    procedure AbreTabela(Sql: String);
    { Usada para Fazer Busca como se fosse DBLookup }
    function pegaBusca(Txt: String): string;
    { Usada para Fazer Busca como se fosse DBLookup }
    procedure criaBusca(const Value: String);
    procedure mostraDiaSemana;
  public
    bPausa: Boolean;
    function pegaIni: String;
    function pegaFim: String;
    procedure criaIni(const Value: String);
    procedure criaFim(const Value: String);
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
  end;


implementation

uses UDm;

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
  resultado.Add('5-Pendente');
  resultado.Add('7-Recebido');
  resultado.Add('8-Crédito Duvidoso');
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
  resultado.Add('5-Pendente');
  resultado.Add('7-Pago');
  resultado.Add('11-Todos Pendentes');
  resultado.Add('12-Vencidos');
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

procedure TUtils.mostraDiaSemana;
var i : integer;
begin
  I := DayOfWeek(varData);
  case I of
       1: varDia := 'Domingo';
       2: varDia := 'Segunda';
       3: varDia := 'Terça';
       4: varDia := 'Quarta';
       5: varDia := 'Quinta';
       6: varDia := 'Sexta';
       7: varDia := 'Sabado';
  end;

end;

end.
