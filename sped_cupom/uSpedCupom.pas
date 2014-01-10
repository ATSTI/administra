unit uSpedCupom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, IniFiles;

type
  TfSpedCupom = class(TForm)
    edSped: TEdit;
    edSpedCupom: TEdit;
    edArquivoNovo: TEdit;
    BitBtn1: TBitBtn;
    Memo1: TMemo;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    OpenDialog1: TOpenDialog;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    unDescricao: TIniFile;
    produtoSped: TIniFile;
    logArquivo: String;
    function produtoCupom(ProdutoCupom: String): String;
    function produtoCupomCorrige(ProdutoCupom: String): String;
    function preencheDescUN(Unidade: String): String;
    function copiaRegC(RegC: String): String;
    procedure contarRegistros();
    procedure exibe(Linha: String);
    procedure ProdutoAcertarC470(Prod: String; ProdCorrigido: String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSpedCupom: TfSpedCupom;

implementation

{$R *.dfm}

procedure TfSpedCupom.BitBtn1Click(Sender: TObject);
var arq: TextFile;
  arqSped: TStringList;
  arqB: TStringList;
  arqCupom: TStringList;
  i, n, j, x: integer;
  linha, L2, L3, buscab: String;
  busca, marcacao: String;
  contador, contaProd, contaRegC, contaRegC2: Integer;
begin
  AssignFile(arq, ExtractFilePath(Application.ExeName) + 'sped_cupom.txt');
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
    contaRegC := 0;
    contaRegC2 := 0;
    for i := 0 to arqSped.Count - 1 do // F-1
    begin
      linha := arqSped[i];

      // 0190 - UNIDADE MEDIDA - ve se tem todas UN do cupom no arquivo principal
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
            L2 := arqCupom[n];
            if (copy(L2, 1, 6) = '|0190|') then
            begin
              j := 0;
              busca := UpperCase(copy(L2, 7, 2)); // Unidade no arquivo Cupom
              // verificando se existe UN no arquivo principal
              for j := 0 to arqB.Count - 1 do
              begin
                marcacao := 'N';
                L3 := arqB[j];
                if (copy(L3, 1, 6) = '|0190|') then
                begin
                  if (busca = UpperCase(copy(L3, 7, 2))) then
                  begin
                    marcacao := 'S';
                  end;
                end;
              end;
              if (marcacao = 'N') then
              begin
                busca := preencheDescUN(L2);
                Write ( arq, busca);
                exibe(busca);
                writeln(arq, '');
              end;
            end;
          end;
        end; // IF-2
      end; // IF-1

      // 0200 - PRODUTO - ve se tem todas PRODUTOS do cupom no arquivo principal
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
            L2 := arqCupom[n];
            if (copy(L2, 1, 6) = '|0200|') then
            begin
              j := 0;
              marcacao := 'N';
              busca := produtoCupom(L2);
              // verificando se existe Produto no arquivo principal
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
                exibe(produtoCupomCorrige(L2));
                writeln(arq, '');
                marcacao := 'N';
              end;
            end;
          end;
        end; // IF-2
      end; // IF-3

      // Copie todas as linhas do C400 ate o ultimo C490
      busca := copy(linha, 2, 1);
      if (busca = 'C') then // 4
      begin
        if (contaRegC = 0) then
        begin
          contaRegC :=  i-1;
          // ve quantas linhas tem do C400 ate C490
          for j := 0 to arqB.Count - 1 do
          begin
            L3 := arqB[j];
            if (copy(L3, 2, 1)  = 'C') then
              contaRegC := contaRegC + 1;
          end;
        end;
        // ve se e ultima linha do 0190
        if (i = (contaRegC)) then
        begin
          for n := 0 to arqCupom.Count - 1 do
          begin
            L2 := arqCupom[n];
            if (copy(L2, 1, 6) = '|C990|') then
            begin
              buscab := '|C990|' + IntToStr(ContaRegC + ContaRegC2) + '|';
              Write ( arq, buscab);
              exibe(buscab);
              writeln(arq, '');
            end;
            if ((copy(L2, 2, 1) = 'C') and (copy(L2, 1, 6) <> '|C001|') and (copy(L2, 1, 6) <> '|C990|')) then
            begin
              contaRegC2 := contaRegC2 + 1;
              buscab := copiaRegC(L2);
              Write ( arq, buscab);
              exibe(buscab);
              writeln(arq, '');
            end;
          end;
        end;
      end; // IF-4

      if (copy(Linha, 1, 6) <> '|C990|') then
      begin
        Write ( arq, linha);
        exibe(linha);
        writeln(arq, '');
      end;  
    end; // F-1
  finally
    arqSped.Free;
    arqB.Free;
    arqCupom.Free;
  end;
  CloseFile ( arq );

  exibe('');
  exibe('');
  if (logArquivo = '') then
  begin
    logArquivo := 'Arquivo gerado com sucesso.';
  end;
  exibe(logArquivo);
  contarRegistros();
  MessageDlg('Arquivo  Sped finalizado..', mtInformation, [mbOK], 0);
end;

function TfSpedCupom.preencheDescUN(Unidade: String): String;
var unStr: String;
begin
  unStr := UpperCase(copy(Unidade, 7, 2));
  if (pos('|', unStr)>0) then
  begin
    unStr := UpperCase(copy(Unidade, 7, 1));
  end;
  if unDescricao.ValueExists('UN',unStr) then
  begin
    unStr := unDescricao.ReadString('UN', unStr, '');
    unStr := UpperCase(copy(Unidade, 0, 9)+ unStr + '|');
  end
  else begin
    MessageDlg('Unidade de Medida nao encontrada : ' + unStr, mtWarning, [mbOK], 0);
    if (logArquivo = '') then
    begin
      logArquivo := logArquivo + ' ERRO : ' + #13#10;
      logArquivo := logArquivo + ' Esta faltando descrição das unidades de medidas : ' + #13#10;
    end;
    logArquivo := logArquivo + ' Unidade - ' + unStr + ' - SEM DESCRIÇÃO' + #13#10;
  end;
  result := unStr;
end;

function TfSpedCupom.produtoCupom(ProdutoCupom: String): String;
var busca, strZeros, prodCupom: string;
  k: integer;
begin
  busca := UpperCase(copy(ProdutoCupom, 7, length(ProdutoCupom))); // Produto no arquivo Cupom
  k := pos('|', busca);
  busca := copy(busca, 1,k-1);
  prodCupom := busca;
  // complementa com Zeros
  k := 0;
  strZeros:= '';
  for k := 1 to 6-length(busca)  do
    strZeros:= strZeros + '0';
  busca := Trim(strZeros + busca);
  ProdutoAcertarC470(prodCupom, busca);
  Result := busca;
end;

function TfSpedCupom.produtoCupomCorrige(ProdutoCupom: String): String;
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

procedure TfSpedCupom.FormShow(Sender: TObject);
begin
  logArquivo := '';
  unDescricao := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'unidadeMedida.ini');
  produtoSped := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'ProdutoAcertar.ini');
  // limpo o arquivo ProdutoAcertar, para gravar os itens deste arquivo
  if (produtoSped.SectionExists('PRODUTO')) then
    produtoSped.EraseSection('PRODUTO');
end;

procedure TfSpedCupom.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  unDescricao.Free;
  produtoSped.free;
end;

procedure TfSpedCupom.exibe(Linha: String);
begin
  Memo1.Lines.Add(linha);
end;

procedure TfSpedCupom.ProdutoAcertarC470(Prod: String; ProdCorrigido: String);
begin
  if (produtoSped.ValueExists('PRODUTO', Prod) = False) then
    produtoSped.WriteString('PRODUTO', Prod, ProdCorrigido);
end;

function TfSpedCupom.copiaRegC(RegC: String): String;
var strRegC, strRegNovo, regCIni, regCFim, prodRegC, prodRegCCorrigido: string;
  posRegC : Integer;
begin
  //copia Registros C
  strRegC := copy(RegC, 1, 6);
  strRegNovo := RegC;
  //acerta o Codigo Produto no Reg C
  // no C470 tem CFOP e o Codigo Produto
  // no C490 tem CFOP
  if ((strRegC = '|C470|') or (strRegC = '|C490|')) then
  begin
    if ((pos('|030|5929|', RegC))>0) then
    begin
      posRegC := pos('|030|5929|', RegC);
      regCIni := copy(regC, 1, posRegC-1);
      regCFim := copy(regC, posRegC + 10, length(regC));
      strRegNovo := regCIni + '|060|5405|' + regCFim;
    end;
    if ((pos('|040|5929|', RegC))>0) then
    begin
      posRegC := pos('|040|5929|', RegC);
      regCIni := copy(regC, 1, posRegC-1);
      regCFim := copy(regC, posRegC + 10, length(regC));
      strRegNovo := regCIni + '|040|5102|' + regCFim;
    end;
    if ((pos('|000|5929|', RegC))>0) then
    begin
      posRegC := pos('|000|5929|', RegC);
      regCIni := copy(regC, 1, posRegC-1);
      regCFim := copy(regC, posRegC + 10, length(regC));
      strRegNovo := regCIni + '|000|5102|' + regCFim;
    end;
    // Corrige codigo do Produto
    if (copy(strRegNovo, 1, 6) = '|C470|') then
    begin
      prodRegC := UpperCase(copy(strRegNovo, 7, length(strRegNovo)));
      posRegC := pos('|', prodRegC);
      prodRegC := copy(prodRegC, 1, (posRegC - 1)); // codigo Produto no arquivo Cupom
      if (produtoSped.ValueExists('PRODUTO', prodRegC)) then
      begin
        prodRegCCorrigido := produtoSped.ReadString('PRODUTO', prodRegC, '');
        strRegNovo := '|C470|' + prodRegCCorrigido + copy(strRegNovo, (6+posRegC), length(strRegNovo));
      end;
    end;

  end;

  result := strRegNovo;
end;

procedure TfSpedCupom.BitBtn2Click(Sender: TObject);
begin
  if (OpenDialog1.Execute) then
    edArquivoNovo.Text := OpenDialog1.FileName;
end;

procedure TfSpedCupom.BitBtn4Click(Sender: TObject);
begin
  if (OpenDialog1.Execute) then
    edSpedCupom.Text := OpenDialog1.FileName;
end;

procedure TfSpedCupom.BitBtn3Click(Sender: TObject);
begin
  if (OpenDialog1.Execute) then
    edSped.Text := OpenDialog1.FileName;
end;

Procedure TfSpedCupom.contarRegistros();
var  arqFinal, arqUN: TStringList;
 cont, i, k, listaIndex: Integer;
 L1, Lun, R0190, R0200, R0990, RC990, R9999, RC190,RC400, RC405, RC410, RC420, RC460, RC470, RC490, R9900, R9990, strUN, strUNa : String;
 arqA: TextFile;
begin
  AssignFile(arqA, edArquivoNovo.Text);
  Rewrite(arqA);
  cont := 0;

  arqFinal := TStringList.Create;
  arqUN := TStringList.Create;
  try
    arqFinal.LoadFromFile(ExtractFilePath(Application.ExeName) + 'sped_cupom.txt');
    //if (FileExists(ExtractFilePath(Application.ExeName) + 'un_cupom.txt')) then
    //begin
    //  DeleteFile(ExtractFilePath(Application.ExeName) + 'un_cupom.txt');
    //  CreateFile(ExtractFilePath(Application.ExeName) + PansiChar('un_cupom.txt'));
    //end;
    //arqUN.LoadFromFile(ExtractFilePath(Application.ExeName) + 'un_cupom.txt');

    // removendo UN repetidas
    strUn := '';
    strUna := '';
    for i := arqFinal.Count - 1  downto 0 do
    begin
      L1 := arqFinal[i];
      if (copy(L1, 1, 6) = '|0190|') then
      begin
        strUN := copy(L1, 7, 2);
        if (pos('|', StrUN)>0) then
        begin
          StrUN := UpperCase(copy(strUN, 7, 1));
        end;
        strUNa := L1;
        listaIndex := arqFinal.IndexOf(strUNa);

        if (listaIndex <> -1) AND (listaIndex <> i) then
        begin
          arqFinal.Delete(listaIndex);
        end;
      end;
    end;

    // Contar Registros 0
    for i := 0 to arqFinal.Count - 1 do
    begin
      L1 := arqFinal[i];
      if (copy(L1, 1, 2) = '|0') then
      begin
        cont := cont + 1;
      end;
      if (copy(L1, 1, 6) = '|0990|') then
      begin
        R0990 := '|0990|'  + IntToStr(cont) + '|';
      end;
    end;

    cont := 0;
    // Contar Registros 0190
    for i := 0 to arqFinal.Count - 1 do
    begin
      L1 := arqFinal[i];
      if (copy(L1, 1, 6) = '|0190|') then
      begin
        cont := cont + 1;
      end;
      if (copy(L1, 1, 6) = '|0190|') then
      begin
        R0190 := '|9900|0190|'  + IntToStr(cont) + '|';
      end;
    end;

    cont := 0;
    // Contar Registros 0200
    for i := 0 to arqFinal.Count - 1 do
    begin
      L1 := arqFinal[i];
      if (copy(L1, 1, 6) = '|0200|') then
      begin
        cont := cont + 1;
      end;
      if (copy(L1, 1, 6) = '|0200|') then
      begin
        R0200 := '|9900|0200|'  + IntToStr(cont) + '|';
      end;
    end;

    cont := 0;
    // Contar Registros C
    for i := 0 to arqFinal.Count - 1 do
    begin
      L1 := arqFinal[i];
      if ((copy(L1, 1, 2) = '|C')) then // and (copy(L1, 1, 6) <> '|C490|')) then
      begin
        cont := cont + 1;
      end;
      if (copy(L1, 1, 6) = '|C990|') then
      begin
        RC990 := '|C990|'  + IntToStr(cont) + '|';
      end;
    end;

    cont := 0;
    // Contar Registros C190
    for i := 0 to arqFinal.Count - 1 do
    begin
      L1 := arqFinal[i];
      if (copy(L1, 1, 6) = '|C190|') then
      begin
        cont := cont + 1;
      end;
      if (copy(L1, 1, 6) = '|C190|') then
      begin
        RC190 := '|9900|C190|'  + IntToStr(cont) + '|';
      end;
    end;

    cont := 0;
    // Contar Registros C400
    for i := 0 to arqFinal.Count - 1 do
    begin
      L1 := arqFinal[i];
      if (copy(L1, 1, 6) = '|C400|') then
      begin
        cont := cont + 1;
      end;
      if (copy(L1, 1, 6) = '|C400|') then
      begin
        RC400 := '|9900|C400|'  + IntToStr(cont) + '|';
      end;
    end;

    cont := 0;
    // Contar Registros C405
    for i := 0 to arqFinal.Count - 1 do
    begin
      L1 := arqFinal[i];
      if (copy(L1, 1, 6) = '|C405|') then
      begin
        cont := cont + 1;
      end;
      if (copy(L1, 1, 6) = '|C405|') then
      begin
        RC405 := '|9900|C405|'  + IntToStr(cont) + '|';
      end;
    end;

    cont := 0;
    // Contar Registros C410
    for i := 0 to arqFinal.Count - 1 do
    begin
      L1 := arqFinal[i];
      if (copy(L1, 1, 6) = '|C410|') then
      begin
        cont := cont + 1;
      end;
      if (copy(L1, 1, 6) = '|C410|') then
      begin
        RC410 := '|9900|C410|'  + IntToStr(cont) + '|';
      end;
    end;

    cont := 0;
    // Contar Registros C420
    for i := 0 to arqFinal.Count - 1 do
    begin
      L1 := arqFinal[i];
      if (copy(L1, 1, 6) = '|C420|') then
      begin
        cont := cont + 1;
      end;
      if (copy(L1, 1, 6) = '|C420|') then
      begin
        RC420 := '|9900|C420|'  + IntToStr(cont) + '|';
      end;
    end;

    cont := 0;
    // Contar Registros C460
    for i := 0 to arqFinal.Count - 1 do
    begin
      L1 := arqFinal[i];
      if (copy(L1, 1, 6) = '|C460|') then
      begin
        cont := cont + 1;
      end;
      if (copy(L1, 1, 6) = '|C460|') then
      begin
        RC460 := '|9900|C460|'  + IntToStr(cont) + '|';
      end;
    end;

    cont := 0;
    // Contar Registros C470
    for i := 0 to arqFinal.Count - 1 do
    begin
      L1 := arqFinal[i];
      if (copy(L1, 1, 6) = '|C470|') then
      begin
        cont := cont + 1;
      end;
      if (copy(L1, 1, 6) = '|C470|') then
      begin
        RC470 := '|9900|C470|'  + IntToStr(cont) + '|';
      end;
    end;

    cont := 0;
    // Contar Registros C490
    for i := 0 to arqFinal.Count - 1 do
    begin
      L1 := arqFinal[i];
      if (copy(L1, 1, 6) = '|C490|') then
      begin
        cont := cont + 1;
      end;
      if (copy(L1, 1, 6) = '|C490|') then
      begin
        RC490 := '|9900|C490|'  + IntToStr(cont) + '|';
      end;
    end;

    cont := 0;
    // Contar Registros 9900
    for i := 0 to arqFinal.Count - 1 do
    begin
      L1 := arqFinal[i];
      if (copy(L1, 1, 2) = '|9') then
      begin
        //if ((copy(L1, 1, 6) <> '|9990|') and (copy(L1, 1, 6) <> '|9999|')) then
        cont := cont + 1;
      end;
      if (copy(L1, 1, 11) = '|9900|9900|') then
      begin
        R9900 := '|9900|9900|'  + IntToStr(cont+8) + '|'; // 7 = C405 , C410 ... até C490
      end;
    end;

    cont := 0;
    // Contar Registros 9990
    for i := 0 to arqFinal.Count - 1 do
    begin
      L1 := arqFinal[i];
      if (copy(L1, 1, 2) = '|9') then
      begin
        //if ((copy(L1, 1, 6) <> '|9999|')) then
        cont := cont + 1;
      end;
      if (copy(L1, 1, 6) = '|9990|') then
      begin
        R9990 := '|9990|'  + IntToStr(cont+8) + '|'; // 7 = C405 , C410 ... até C490
      end;
    end;

    cont := 0;
    // Contar Registros 9999
    for i := 0 to arqFinal.Count - 1 do
    begin
      L1 := arqFinal[i];
      //if (copy(L1, 1, 6) <> '|C490|') then
      //begin
      //  cont := cont + 1;
      //end;
      cont := cont + 1;
      if (copy(L1, 1, 6) = '|9999|') then
      begin
        R9999 := '|9999|'  + IntToStr(cont+7) + '|';
      end;
    end;


    // Criando o arquivo Final
    for i := 0 to arqFinal.Count - 1 do
    begin
      L1 := arqFinal[i];

      if (copy(L1, 1, 6) = '|0990|') then
      begin
        L1 := R0990;
      end;

      if (copy(L1, 1, 6) = '|C990|') then
      begin
        L1 := RC990;
      end;

      if (copy(L1, 1, 11) = '|9900|0190|') then
      begin
        L1 := R0190;
      end;

      if (copy(L1, 1, 11) = '|9900|0200|') then
      begin
        L1 := R0200;
      end;

      if (copy(L1, 1, 11) = '|9900|C190|') then
      begin
        L1 := RC190;
        Write ( arqA, L1);
        writeln(arqA, '');
        exibe(L1);
        L1 := RC400;
        Write ( arqA, L1);
        writeln(arqA, '');
        exibe(L1);
        L1 := RC405;
        Write ( arqA, L1);
        writeln(arqA, '');
        exibe(L1);
        L1 := RC410;
        Write ( arqA, L1);
        writeln(arqA, '');
        exibe(L1);
        L1 := RC420;
        Write ( arqA, L1);
        writeln(arqA, '');
        exibe(L1);
        L1 := RC460;
        Write ( arqA, L1);
        writeln(arqA, '');
        exibe(L1);
        L1 := RC470;
        Write ( arqA, L1);
        writeln(arqA, '');
        exibe(L1);
        L1 := RC490;
      end;

      if (copy(L1, 1, 11) = '|9900|9900|') then
      begin
        L1 := R9900;
      end;

      if (copy(L1, 1, 6) = '|9990|') then
      begin
        L1 := R9990;
      end;

      if (copy(L1, 1, 6) = '|9999|') then
      begin
        L1 := R9999;
      end;

      if (copy(L1, 1, 6) = '|C490|') then // esta vindo uma String vazia neste registro
      begin
        L1 := copy(L1, 1, length(L1)-4);
        L1 := L1 + '|';
        Write ( arqA, L1);
        writeln(arqA, '');
        exibe(L1);
      end
      else begin
        // Nao imprime as UN repetidas
        if (copy(L1, 1, 6) = '|0190|') then
        begin
          //strUN := copy(L1, 7, 2);
          //if (pos('|', StrUN)>0) then
          //begin
          //  StrUN := UpperCase(copy(strUN, 7, 1));
          //end;
          strUNa := UpperCase(L1);
          listaIndex := arqFinal.IndexOf(strUNa);

          if (listaIndex <> -1) AND (listaIndex <> i) then
          begin
            // repetido entao nao imprime
            logArquivo := logArquivo + ' Unidade repetida - ' + strUna;
          end
          else begin
            Write ( arqA, L1);
            writeln(arqA, '');
            exibe(L1);
          end
        end
        else begin
          Write ( arqA, L1);
          writeln(arqA, '');
          exibe(L1);
        end;
      end;
    end;

    exibe(logArquivo);
    CloseFile ( arqA );
  finally
    arqFinal.Free;
  end;
end;

end.
