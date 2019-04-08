unit ibpt_importa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBXpress, DB, SqlExpr, FMTBcd, DBClient,
  Provider, JvExControls, JvWaitingProgress, JvSpecialProgress, ComCtrls;

type
  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    OpenDialog1: TOpenDialog;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn2: TBitBtn;
    sc: TSQLConnection;
    Memo1: TMemo;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    cds: TClientDataSet;
    cdsNCM: TStringField;
    ProgressBarX: TProgressBar;
    cdsALIQNAC: TFloatField;
    cdsALIQIMP: TFloatField;
    cdsCEST: TStringField;
    cdsESTADUAL: TFloatField;
    cdsMUNICIPAL: TFloatField;
    cdsIMP_FEDERAL: TFloatField;
    cdsIMP_FERERAL_IMP: TFloatField;
    cdsTIPO: TStringField;
    cdsEX: TIntegerField;
    cdsDESCRICAO: TStringField;
    cdsIMP_ESTADUAL: TFloatField;
    cdsIMP_MUNICIPAL: TFloatField;
    cdsVIGENCIAINICIO: TDateField;
    cdsVIGENCIAFIM: TDateField;
    cdsCHAVE: TStringField;
    cdsVERSAO: TStringField;
    cdsFONTE: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    //function MontaValor(): String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Math;

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
var
  ArquivoCSV: TextFile;
  Contador, I, x: Integer;
  Linha, NCM, ALIQNAC, ALIQIMP, nda: String;
  TIPO, EX, DESCRICAO: String;
  ESTADUAL, MUNICIPAL, VIGENCIAINICIO, VIGENCIAFIM, CHAVE, VERSAO: String;
  FONTE: String;
  sql1 :string;
  TD : TTransactionDesc;
  dta1 : tdate;
  dta2 : tdate;
  // Lê Linha e Monta os valores
  function MontaValor: String;
  var
    ValorMontado: String;
  begin
    ValorMontado := '';
    inc(I);
    While Linha[I] >= ' ' do
    begin
      If Linha[I] = ';' then // vc pode usar qualquer delimitador ... eu
        // estou usando o ";"
        break;
      ValorMontado := ValorMontado + Linha[I];
      inc(I);
    end;
    result := ValorMontado;
  end;
begin
  if (edit1.Text = '') then
  begin
    MessageDlg('Informe o arquivo a ser usado na importação.', mtWarning, [mbOK], 0);
    exit;
  end;
  // Carregando o arquivo ...
  Memo1.Lines.Clear;
  Memo1.Lines.LoadFromFile(edit1.Text);
  AssignFile(ArquivoCSV, edit1.Text);
  ProgressBarX.Max := Memo1.Lines.Count-1;
  Memo1.Lines.Clear;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  x := 300;
  try
    Reset(ArquivoCSV);
    Readln(ArquivoCSV, Linha);
    Contador := 1;

    sc.StartTransaction(TD);
    sc.ExecuteDirect('DELETE FROM IBPT');
    sc.Commit(TD);
    sc.StartTransaction(TD);
    try
      while not Eoln(ArquivoCSV) do
      begin
        if Contador > 1 then // Primeira Linha do arquivo (Pedido);
        begin
          I := 0;
          NCM := montavalor;
          EX      := montavalor;
          TIPO    := montavalor;
          DESCRICAO  := montavalor;
          ALIQNAC := montavalor;
          ALIQIMP := montavalor;
          ESTADUAL  := montavalor;
          MUNICIPAL  := montavalor;
          VIGENCIAINICIO  := montavalor;
          VIGENCIAFIM  := montavalor;
          CHAVE  := montavalor;
          VERSAO  := montavalor;
          FONTE  := montavalor;
          dta1 := StrToDate(VIGENCIAINICIO) ;
          dta2 := StrToDate(VIGENCIAFIM)  ;
          VIGENCIAINICIO := formatdatetime('mm/dd/yyyy', dta1);
          VIGENCIAFIM := formatdatetime('mm/dd/yyyy', dta2);
          if (EX = '') then
            EX := '0';

          NCM := copy(ncm, 0, 8);
          DESCRICAO := copy(descricao,0,99);
          Memo1.Lines.Add('NCM - ' + NCM + ' ALIQ. NAC. - ' + ALIQNAC + ' ALIQ. IMP. - ' + ALIQIMP);

          begin
            Sql1 := 'INSERT INTO IBPT (NCM, ALIQNAC ,ALIQIMP, TIPO, EX, DESCRICAO' +
              ', ESTADUAL, MUNICIPAL, VIGENCIAINICIO, VIGENCIAFIM, CHAVE, VERSAO, ' +
              ' FONTE) VALUES( ' +
              QuotedStr(NCM) + ', ' + ALIQNAC + ', ' + ALIQIMP + ', ' +
              QuotedStr(TIPO) + ', ' + EX + ', ' + QuotedStr(DESCRICAO) + ', ' +
              ESTADUAL + ', ' + MUNICIPAL + ', ' + QuotedStr(VIGENCIAINICIO) + ', ' +
              QuotedStr(VIGENCIAFIM) + ', ' + QuotedStr(CHAVE) + ', ' +
              QuotedStr(VERSAO) + ', ' + QuotedStr(FONTE) + ')';
            try
              sc.ExecuteDirect(sql1);
            except
              MessageDlg(sql1, mtWarning, [mbOK], 0);
            end;
          end;

        end;
        Readln(ArquivoCSV, Linha);
        Contador := Contador + 1;
        if (X < contador) then
        begin
          sc.Commit(TD);
          sc.StartTransaction(TD);
          x := x + 300;
        end;
        ProgressBarX.Position := contador;
      end;
      sc.Commit(TD);
      memo1.Lines.Add('########################################################');
      memo1.Lines.Add('########################################################');
      memo1.Lines.Add('TABELA IBPT atualizada com sucesso.');
      memo1.Lines.Add('########################################################');
      memo1.Lines.Add('########################################################');
      memo1.Lines.Add('Atualizando tabela NCM, aguarde ....');
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        sc.Rollback(TD); //on failure, undo the changes}
        exit;
      end;
    end;

    // atualizar a tabela NCM
    cds.Open;
    try
      DecimalSeparator := '.';
      ProgressBarX.Position := 0;
      ProgressBarX.Max := cds.RecordCount;
      while not cds.Eof do
      begin
        ProgressBarX.Position := cds.RecNo;
        if ((cdsALIQNAC.AsFloat <> cdsIMP_FEDERAL.AsFloat) or
          (cdsESTADUAL.AsFloat <> cdsIMP_ESTADUAL.AsFloat) or
          (cdsMUNICIPAL.AsFloat <> cdsIMP_MUNICIPAL.AsFloat)) then
        begin
          Sql1 := 'UPDATE NCM SET ' +
            'ALIQNAC = ' + FloatToStr(cdsIMP_FEDERAL.AsFloat) +
            ', ALIQIMP = ' + FloatToStr(cdsIMP_FERERAL_IMP.asFloat) +
            ', MUNICIPAL = ' + FloatToStr(cdsIMP_MUNICIPAL.AsFloat) +
            ', ESTADUAL = ' + FloatToStr(cdsIMP_ESTADUAL.AsFloat) +
            ' WHERE NCM = ' + QuotedStr(cdsNCM.AsString);
            sc.StartTransaction(TD);
            sc.ExecuteDirect(sql1);
            sc.Commit(TD);
        end;
        cds.Next;
      end;
      memo1.Lines.Add('Atualizado NCM : ' + NCM);
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        sc.Rollback(TD); //on failure, undo the changes}
        exit;
      end;
    end;
    memo1.Lines.Add('########################################################');
    memo1.Lines.Add('########################################################');
    memo1.Lines.Add('Atualização executada com sucesso.');
    memo1.Lines.Add('########################################################');
    memo1.Lines.Add('########################################################');
    MessageDlg('Concluído.', mtInformation, [mbOK], 0);
  finally
    DecimalSeparator := ',';
    CloseFile(ArquivoCSV);
  end;

end;


{
function TForm1.MontaValor: String;
var
  ValorMontado: String;
begin
  ValorMontado := '';
  inc(I);
  While Linha[I] >= ' ' do
  begin
    If Linha[I] = ';' then // vc pode usar qualquer delimitador ... eu
      // estou usando o ";"
      break;
    ValorMontado := ValorMontado + Linha[I];
    inc(I);
  end;
  result := ValorMontado;
end;
 }
procedure TForm1.FormCreate(Sender: TObject);
begin
  sc.Connected := False;
  sc.LoadParamsFromIniFile('dbxconnections.ini');
  sc.LibraryName := 'dbexpUIBfire15.dll';
  sc.VendorLib := 'FBCLIENT.DLL';
  sc.Connected := True;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
     edit1.Text := OpenDialog1.FileName;
end;

end.
