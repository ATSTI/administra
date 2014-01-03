unit uSpedCupom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    edSped: TEdit;
    edSpedCupom: TEdit;
    edArquivoNovo: TEdit;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    function produtoCupom(ProdutoCupom: String): String;
    function produtoCupomCorrige(ProdutoCupom: String): String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
var arq: TextFile;
  arqSped: TStringList;
  arqB: TStringList;
  arqCupom: TStringList;
  i, n, j, x: integer;
  linha, L2, L3, buscab: String;
  busca, marcacao: String;
  contador, contaProd: Integer;
begin
  AssignFile(arq, edArquivoNovo.Text);
  Rewrite(arq);
  marcacao := '';
  arqSped := TStringList.Create;
  arqB := TStringList.Create;
  arqCupom := TStringList.Create;
  try
    arqSped.LoadFromFile(edSped.Text);
    arqB.LoadFromFile(edSped.Text);
    arqCupom.LoadFromFile(edSpedCupom.Text);
    contador := 0;
    contaProd := 0;    
    for i := 0 to arqSped.Count - 1 do // F-1
    begin
      linha := arqSped[i];

      // UNIDADE MEDIDA - ve se tem todas UN do cupom no arquivo principal
      busca := copy(linha, 1, 6);
      if (busca = '|0190|') then // 1
      begin
        if (contador = 0) then
        begin
          contador :=  i-1;
          // ve quantas linhas tem do 0190
          for j := 0 to arqB.Count - 1 do
          begin
            l3 := arqB[j];
            if (copy(l3, 1, 6) = '|0190|') then
              contador := contador + 1;
          end;
        end;
        // ve se e ultima linha do 0190
        if (i = (contador)) then // 2 - ultima linha entao busca pelas un do cupom
        begin
          for n := 0 to arqCupom.Count - 1 do
          begin
            l2 := arqCupom[n];
            if (copy(l2, 1, 6) = '|0190|') then
            begin
              j := 0;
              busca := UpperCase(copy(l2, 7, 2)); // Unidade no arquivo Cupom
              // verificando se existe UN no arquivo principal
              for j := 0 to arqB.Count - 1 do
              begin
                marcacao := 'N';
                l3 := arqB[j];
                if (copy(l3, 1, 6) = '|0190|') then
                  if (busca = UpperCase(copy(l3, 7, 2))) then
                    marcacao := 'S';
              end;
              if (marcacao = 'N') then
              begin
                Write ( arq, l2);
                writeln(arq, '');
              end;
            end;
          end;
        end; // IF-2
      end; // IF-1

      // PRODUTO - ve se tem todas PRODUTOS do cupom no arquivo principal
      busca := copy(linha, 1, 6);

      if (busca = '|0200|') then // 3
      begin
        if (contaProd = 0) then
        begin
          contaProd :=  i-1;
          // ve quantas linhas tem do 0200
          for j := 0 to arqB.Count - 1 do
          begin
            l3 := arqB[j];
            if (copy(l3, 1, 6) = '|0200|') then
              contaProd := contaProd + 1;
          end;
        end;

        // ve se e ultima linha do 0200
        if (i = (contaProd)) then // 2 - ultima linha entao busca pelo Produto do cupom
        begin
          for n := 0 to arqCupom.Count - 1 do
          begin
            l2 := arqCupom[n];
            if (copy(L2, 1, 6) = '|0200|') then
            begin
              j := 0;
              marcacao := 'N';
              busca := produtoCupom(L2);
              // verificando se existe UN no arquivo principal
              for j := 0 to arqB.Count - 1 do
              begin
                if (marcacao = 'N') then
                begin
                  L3 := arqB[j];
                  if (copy(L3, 1, 6) = '|0200|') then
                  begin
                    buscab := UpperCase(copy(L3, 7, 6));
                    if (busca = buscab) then
                    begin
                      marcacao := 'S';
                    end;
                  end;
                end;
              end;
              if (marcacao = 'N') then
              begin
                Write ( arq, produtoCupomCorrige(L2));
                writeln(arq, '');
                marcacao := 'N';
              end;
            end;
          end;
        end; // IF-2
      end; // IF-3
      Write ( arq, linha);
      writeln(arq, '');
    end; // F-1
  finally
    arqSped.Free;
    arqB.Free;
    arqCupom.Free;
  end;
  CloseFile ( arq );
  MessageDlg('Feito.', mtInformation, [mbOK], 0);
end;

function TForm1.produtoCupom(ProdutoCupom: String): String;
var busca, strZeros: string;
  k: integer;
begin
  busca := UpperCase(copy(ProdutoCupom, 7, length(ProdutoCupom))); // Produto no arquivo Cupom
  k := pos('|', busca);
  busca := copy(busca, 1,k-1);
  // complementa com Zeros
  k := 0;
  strZeros:= '';
  for k := 1 to 6-length(busca)  do
    strZeros:= strZeros + '0';
  busca := Trim(strZeros + busca);
  Result := busca;
end;

function TForm1.produtoCupomCorrige(ProdutoCupom: String): String;
var busca, strZeros, strInicio, strFim: string;
  k: integer;
begin
  strInicio := UpperCase(copy(ProdutoCupom, 1, 6)); // Produto no arquivo Cupom
  busca := UpperCase(copy(ProdutoCupom, 7, length(ProdutoCupom))); // Produto no arquivo Cupom
  k := pos('|', busca);
  strFim := copy(busca, k, length(busca));
  busca := copy(busca, 1,k-1);
  // complementa com Zeros
  k := 0;
  strZeros:= '';
  for k := 1 to 6-length(busca)  do
    strZeros:= strZeros + '0';
  busca := Trim(strInicio + strZeros + busca + strFim);
  Result := busca;
end;

end.
