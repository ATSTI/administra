unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, Grids, DBGrids,
  SQLTimSt, JvExComCtrls, JvDateTimePicker, JvDBDateTimePicker, Mask,
  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvDBDatePickerEdit, rpcompobase, rpvclreport;

type
  TfrmPrincipal = class(TForm)
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    ProgressBar1: TProgressBar;
    Bevel1: TBevel;
    Edit2: TEdit;
    BitBtn3: TBitBtn;
    OpenDialog1: TOpenDialog;
    Label1: TLabel;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    dataini: TJvDatePickerEdit;
    datafim: TJvDatePickerEdit;
    Label5: TLabel;
    Label6: TLabel;
    VCLReport1: TVCLReport;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    function PadL(ATexto: string; ATamanho: Integer): string;
    function PadR(ATexto: string; ATamanho: integer): string;
    function LimparString(ATExto, ACaracteres: string): string;
    function IncluirPonto(ATexto: string): string;
    { Private declarations }
  public
    HORA , TIPO : STRING;
    procedure colaborador;

    { Public declarations }
  end;

var
  frmPrincipal             : TfrmPrincipal;

implementation

uses
  dmodPrincipal, DB;

{$R *.dfm}

procedure TfrmPrincipal.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrincipal.BitBtn1Click(Sender: TObject);
begin
  case ComboBox1.ItemIndex of

    0: begin
         colaborador;
         ProgressBar1.Position := 0;
         ProgressBar1.Max := 0;
       end;

   end;

end;

function TfrmPrincipal.PadR(ATexto: string; ATamanho: integer): string;
var
  I                 : integer;
begin
  Result := ATexto;
  for I := 1 to (ATamanho - Length(Result)) do
    Result := ' ' + Result;
end;

function TfrmPrincipal.PadL(ATexto: string; ATamanho: Integer): string;
var
  I                 : integer;
begin
  Result := ATexto;
  for I := 1 to (ATamanho - Length(Result)) do
    Result := Result + ' ';
end;

function TfrmPrincipal.LimparString(ATExto, ACaracteres: string): string;
var
  strAux            : string;
  I                 : integer;
begin
  strAux := '';
  for I := 1 to Length(ATexto) do
    if Pos(Copy(ATexto, I, 1), ACaracteres) <= 0 then
      strAux := strAux + Copy(ATexto, I, 1);
  Result := strAux;
end;

function TfrmPrincipal.IncluirPonto(ATexto: string): string;
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

procedure TfrmPrincipal.ComboBox1Change(Sender: TObject);
begin
  HORA := FormatDateTime('hhmmss',NOW);
  case ComboBox1.ItemIndex of
    0: begin

         Edit3.Text := 'citrus'+ FormatDateTime('YYYYMMDD',Now) + HORA + '.txt';

       end;
   end;
end;

procedure TfrmPrincipal.colaborador;
var
  Txt               : TextFile;
//  vrlImposto        : Real;
//  NumRegistros      : Integer;
//  diaIni : String;
//  i: Integer;
begin
  Screen.Cursor := crHourGlass;
  ProgressBar1.Position := 0;
  ProgressBar1.Max := 0;

  ForceDirectories(Edit2.Text);
  AssignFile(Txt,Edit2.Text + Edit3.Text);
  ReWrite(Txt);

  with dmPrincipal, sqlConexao, cdsNF do
  begin
    try
      if not Connected then
        Connected := True;
    except on E: Exception do
      begin
        MessageDlg('Não foi possível estabelecer conexão com o banco de dados.'
          + #13 +
          'Erro original:' + #13 + E.Message, mtError, [mbOk], 0);
        Halt;
      end;
    end;


    if (active) then
      Active := False;


      ///////////////// INICIO GERAR ARQUIVO DAS NOTAS DO PERIODO \\\\\\\\\\\\\\\\\\\


    CommandText := 'select nf.NOTASERIE ,cast(nf.ESPECIE as char (10)) as ESPECIE  , cast(nf.CFOP as char(6 )) as CFOP , nf.CNPJ_CPF , nf.VALOR_FRETE , nf.PESOLIQUIDO , nf.PESOBRUTO ,' +
      ' cast(nf.PLACATRANSP as char (15)) as PLACATRANSP , nf.DTAEMISSAO ,nf.UF , nf.NATUREZA , nf.NOTAFISCAL , nf.NUMNF ,' +
      ' nf.UF_TRANSP , nf.INSCRICAOESTADUAL , nf.UF_VEICULO_TRANSP ,nf.QUANTIDADE ,nf.MARCA , nf.DTASAIDA , nf.CODVENDA , ' +
      ' nf.CODTRANSP , nf.NUMERO ,nf.BASE_ICMS , nf.BASE_ICMS , nf.VALOR_ICMS , nf.BASE_ICMS_SUBST ,nf.VALOR_ICMS_SUBST ,' +
      ' nf.VALOR_PRODUTO , nf.VALOR_SEGURO ,nf.OUTRAS_DESP , nf.VALOR_IPI , nf.VALOR_TOTAL_NOTA , nf.CODCLIENTE , nf.FATURA ,' +
      ' nf.ICMS , nf.REDUZICMS , nf.NOMETRANSP , nf.END_TRANSP , nf.CIDADE_TRANSP , nf.FRETE,nf.VLRTOTALEXP  ' +
      ' , v.CODMOVIMENTO ' +
      ' FROM NOTAFISCAL NF, VENDA V ' +
      ' WHERE v.CODVENDA = NF.CODVENDA AND nf.DTAEMISSAO between ' +



      QuotedStr(FormatDateTime('mm/dd/yyyy',dataini.Date)) + ' and ' + QuotedStr(FormatDateTime('mm/dd/yyyy',datafim.Date)) ;


    Active := True;

    ProgressBar1.Max := cdsNF.RecordCount;


    while not cdsNF.EOF do

    begin

    if(dmPrincipal.cdsEmpresa.Active) then
      dmPrincipal.cdsEmpresa.Close;
    dmPrincipal.cdsEmpresa.Open;

    if(dmPrincipal.cdsMovNF.Active) then
      dmPrincipal.cdsMovNF.Close;
    dmPrincipal.cdsMovNF.Params[0].AsInteger := dmPrincipal.cdsNFCODMOVIMENTO.AsInteger;
    dmPrincipal.cdsMovNF.Open;

      /////////////////  INICIO 221   \\\\\\\\\\\\\\\\\\\\\

      Write(Txt, 'E221');                                // 01

      if (FieldByName('NATUREZA').AsInteger = 3) then
        Write(Txt, 'S' );                                // 02
      if (FieldByName('NATUREZA').AsInteger = 4) then
        Write(Txt, 'E');                                 // 03

      Write(Txt,PADr(IntToStr(dmPrincipal.cdsNF.FieldByName('NOTAFISCAL').AsInteger),10)) ; // 04
      Write(Txt, PadL(LimparString(FieldByName('CNPJ_CPF').AsString,'.-/'),14)); // cliente Faturado
      Write(Txt, 'NFE  ');  // 05
      Write(Txt, '1  ');    // 06
      Write(Txt, '  ');     // 07
      Write(Txt, FieldByName('CFOP').AsString); // 08  - 6 casas

      if (FieldByName('VALOR_FRETE').AsString = '0' ) then
        Write(Txt, '00000000000000' );
      if (FieldByName('VALOR_FRETE').AsString <> '0') then
        Write(Txt, PadR(IncluirPonto(FormatFloat('00000000000.00', FieldByName('VALOR_FRETE').AsFloat)), 14)); // 09

      Write(Txt, '00000000000000');  // 10  -  14 zeros VALOR SEGURO
      Write(Txt, '00000000000000');  // 11  -  14 zeros DESPACHO

      Write(Txt, '1  ');   // 12  quantidade de itens na nota

      Write(Txt, FormatDateTime('YYYYMMDD',FieldByName('DTAEMISSAO').AsDateTime)); // ITEM 13

      Write(Txt, '00000000000000');  // ITEM 14  - PIS CONFINS  14 ZEROS

      {
      Write(Txt, FieldByName('PESOBRUTO').AsString); // peso bruto
      Write(Txt, FieldByName('PESOLIQUIDO').AsString); // peso liquido
      }

      Write(Txt, '0000000000000');  // ITEM 15 - PESO BRUTO    13 ZEROS
      Write(Txt, '0000000000000');  // ITEM 16 -  PESO LIQUIDO  13 ZEROS

      Write(Txt, '7'); // ITEM 17  VIA TRANSPORTE preecher com 7

      // TEM QUE SER DO TRANSPORTADOR
      Write(Txt, PadL(LimparString(FieldByName('CNPJ_CPF').AsString,'.-/'),14)); // ITEM 18

      Write(Txt, PadL(LimparString(FieldByName('PLACATRANSP').AsString,'./'),15));  // ITEM 23


      Write(Txt, PadL(' ',18));   // ITEM 20 - 18 espaços

      Write(Txt, PadR(IncluirPonto(FormatFloat('00000000000000.00', dmPrincipal.cdsMovNF.FieldByName('QTDE_NF').AsFloat)), 14)); // ITEM 21

      Write(Txt, FieldByName('ESPECIE').AsString); // ITEM 22
      Write(Txt, PadL(LimparString(FieldByName('INSCRICAOESTADUAL').AsString,'.-/'),18));  // ITEM 23 transportador
      Write(Txt, FieldByName('UF_TRANSP').AsString); // ITEM 24
      Write(Txt, FieldByName('UF_VEICULO_TRANSP').AsString);  // ITEM 25

      Write(Txt, PadL(' ',15));   // 15 espaços  ITEM 26
      Write(Txt, PadL(' ',2));    //  2 espaços  ITEM 27
      Write(Txt, PadL(' ',15));   // 15 espaços  ITEM 28
      Write(Txt, PadL(' ',2));    //  2 espaços  ITEM 29


      Write(Txt, '1'); // item 30 preencher com 1


      Write(Txt, PadL(LimparString(FieldByName('CNPJ_CPF').AsString,'.-/'),14)); // item 31 confirmar

      Write(Txt, 'SP');               // item 32 preencher com SP

      Write(Txt, PadL(LimparString(FieldByName('INSCRICAOESTADUAL').AsString,'.-/'),18));  // ITEM 33

      Write(Txt, '1'); // item 34 preencher com 1

      Write(Txt, PadL(LimparString(dmPrincipal.cdsEmpresa.FieldByName('CNPJ_CPF').AsString,'.-/'),14)); // item 35

      Write(Txt, 'UF');   // item 36 preencher com UF cliente faturado

      Write(Txt, PadL(LimparString(FieldByName('INSCRICAOESTADUAL').AsString,'.-/'),18));  // item 37 confirmar

      Write(Txt, '0');               // item 38 preencher com 0

      WriteLn(Txt);

      /////////////////    FIM 221    \\\\\\\\\\\\\\\\\\\\\

      /////////////////  INICIO 222   \\\\\\\\\\\\\\\\\\\\\

      Write(Txt, 'E222');  // ITEM 1

      if (FieldByName('NATUREZA').AsInteger = 3) then  // ITEM 2
        Write(Txt, 'S' );
      if (FieldByName('NATUREZA').AsInteger = 4) then
        Write(Txt, 'E');

      Write(Txt,PADr(IntToStr(dmPrincipal.cdsNF.FieldByName('NOTAFISCAL').AsInteger),10)) ; // ITEM 3
      Write(Txt, PadL(LimparString(FieldByName('CNPJ_CPF').AsString,'.-/'),14));            // ITEM 4
      Write(Txt, 'NFE  ');  // ITEM 05
      Write(Txt, '1  ');    // ITEM 06
      Write(Txt, '  ');     // ITEM 07
      Write(Txt, '001');    // ITEM 08
      Write(Txt, trim(FieldByName('CFOP').AsString));  // ITEM 9

      Write(Txt,PadR(dmPrincipal.cdsMovNF.FieldByName('CODPRO').AsString,14)) ; // ITEM 10


      Write(Txt,'00000000');   // 7 zeros     ITEM 11


      Write(Txt, PadR(IncluirPonto(FormatFloat('00000000000.00', dmPrincipal.cdsMovNF.FieldByName('QTDE_NF').AsFloat)), 14)); // ITEM 12


      Write(Txt, PadR(IncluirPonto(FormatFloat('00000000000.00', dmPrincipal.cdsMovNF.FieldByName('TOTALITENS').AsFloat)), 14)); // ITEM 13

      Write(Txt, '00000000000000');  //   14 zeros valor desconto                                                              // ITEM 14

      Write(Txt, PadR(IncluirPonto(FormatFloat('00000000000.00', FieldByName('BASE_ICMS').AsFloat)), 14)); // ITEM 15

      Write(Txt, PadR(IncluirPonto(FormatFloat('00000000000.00', FieldByName('BASE_ICMS_SUBST').AsFloat)), 14)); // ITEM 16

      Write(Txt, '00000000000000');  //   14 zeros       // ITEM 17

      Write(Txt, '00000000');  //   8 zeros  data saida entrada   // ITEM 18

      Write(Txt, PadR(IncluirPonto(FormatFloat('00000000000.00', dmPrincipal.cdsMovNF.FieldByName('VLR_BASE').AsFloat)), 14)); // ITEM 19

      Write(Txt, '0000000000');  //   10 zeros   // ITEM 20

      Write(Txt, '00000000000000');  //   14 zeros  // ITEM  21

      Write(Txt, PadR(IncluirPonto(FormatFloat('00000000000.00', FieldByName('VALOR_ICMS').AsFloat)), 14)); // ITEM 22

      Write(Txt, '00000000000000');  //   14 zeros  ITEM 23
      Write(Txt, '00000000000000');  //   14 zeros  ITEM 24
      Write(Txt, '0000000000');  //       10 zeros  ITEM 25

      Write(Txt, PadR(IncluirPonto(FormatFloat('00000000000.00', FieldByName('VALOR_ICMS_SUBST').AsFloat)), 14)); // ITEM 26

      Write(Txt, 'S');   // Informar S             ITEM 27
      Write(Txt, '00000000000000');  //   14 zeros ITEM 28
      Write(Txt, '00000000000000');  //   14 zeros ITEM 29
      Write(Txt, '00000000000000');  //   14 zeros ITEM 30
      Write(Txt, '00000000000000');  //   14 zeros ITEM 31
      Write(Txt, '00000000000000');  //   14 zeros ITEM 32
      Write(Txt, 'N');   // Informar N             ITEM 23
      Write(Txt, 'N');   // Informar N             ITEM 34
      Write(Txt, 'N');   // Informar N             ITEM 35


      WriteLn(Txt);

      ////////////////    FIM 222    \\\\\\\\\\\

      ProgressBar1.Position := ProgressBar1.Position + 1;


      cdsNF.Next;



    end;

      ///////////////// FIM GERAR ARQUIVO DAS NOTAS DO PERIODO \\\\\\\\\\\\\\\\\\\


  end;

  CloseFile(Txt);
  MessageDlg('Arquivo de Exportação ' + ComboBox1.Text + ' gerado com sucesso!' + #13 +
    'Gerado o arquivo [' + Edit2.Text + Edit3.Text + '].', mtInformation, [mbOk], 0);
  Screen.Cursor := crDefault;

end;



procedure TfrmPrincipal.BitBtn3Click(Sender: TObject);
begin
  if (OpenDialog1.Execute) then
    edit2.Text := ExtractFilePath(OpenDialog1.FileName);
end;




end.

