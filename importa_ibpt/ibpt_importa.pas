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
  sql1 :string;
  TD : TTransactionDesc;

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
    cds.Open;
    sc.StartTransaction(TD);
    try
      while not Eoln(ArquivoCSV) do
      begin
        if Contador > 1 then // Primeira Linha do arquivo (Pedido);
        begin
          I := 0;
          NCM := montavalor;
          nda := montavalor;
          nda := montavalor;
          nda := montavalor;
          ALIQNAC := montavalor;
          ALIQIMP := montavalor;

          NCM := copy(ncm, 0, 7);
          Memo1.Lines.Add('NCM - ' + NCM + ' ALIQ. NAC. - ' + ALIQNAC + ' ALIQ. IMP. - ' + ALIQIMP);

          cds.Filtered := False;
          cds.Filter := 'NCM=' + NCM;
          cds.Filtered := True;
          if (cds.RecordCount = 1) then
          begin
            if (ALIQNAC <> '') then
            begin
              Sql1 := 'UPDATE NCM SET ALIQNAC = ' + ALIQNAC +
              ' ,ALIQIMP = ' + ALIQIMP +
              ' WHERE NCM = ' + QuotedStr(NCM);
              sc.ExecuteDirect(sql1);
              Sql1 := 'UPDATE IBPT SET ALIQNAC = ' + ALIQNAC +
              ' ,ALIQIMP = ' + ALIQIMP +
              ' WHERE NCM = ' + QuotedStr(NCM);
              sc.ExecuteDirect(sql1);
            end;
          end;
          if (cds.RecordCount = 0) then
          begin
            Sql1 := 'INSERT INTO IBPT (NCM, ALIQNAC ,ALIQIMP) VALUES( ' +
              QuotedStr(NCM) + ', ' + ALIQNAC + ', ' + ALIQIMP + ')';
            sc.ExecuteDirect(sql1);
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
      memo1.Lines.Add('Atualização executada com sucesso.');
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        sc.Rollback(TD); //on failure, undo the changes}
        exit;
      end;
    end;

  finally
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
