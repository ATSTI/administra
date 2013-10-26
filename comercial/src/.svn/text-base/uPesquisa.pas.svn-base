unit uPesquisa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvExButtons, JvBitBtn, JvExStdCtrls, JvEdit,
  JvMemo, JvHtControls, DB;

type
  TfPesquisa = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    cbCampo: TJvHTComboBox;
    cbCondicao: TJvHTComboBox;
    memoSql: TJvMemo;
    edValor: TJvEdit;
    Label3: TLabel;
    JvBitBtn1: TJvBitBtn;
    JvBitBtn2: TJvBitBtn;
    JvBitBtn3: TJvBitBtn;
    DsP: TDataSource;
    JvBitBtn4: TJvBitBtn;
    Label4: TLabel;
    procedure FormShow(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure JvBitBtn2Click(Sender: TObject);
    procedure JvBitBtn3Click(Sender: TObject);
    procedure JvBitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure montaBusca(tipo: String);
    { Private declarations }
  public
    busca : String;
    { Public declarations }
  end;

var
  fPesquisa: TfPesquisa;

implementation

{$R *.dfm}

procedure TfPesquisa.FormShow(Sender: TObject);
var i: Integer;
  tipoC: string;
begin
  // Popular Campos
  cbCampo.Items.Clear;
  For i := 0 to dsP.DataSet.FieldCount - 1 do
  begin
    if (dsP.DataSet.Fields[i].DataType = ftString) then
       tipoC := 'S'; // String
    if (dsP.DataSet.Fields[i].DataType = ftInteger) then
       tipoC := 'I'; // Integer
    if (dsP.DataSet.Fields[i].DataType = ftDateTime) then
       tipoC := 'D'; // Data
    if (dsP.DataSet.Fields[i].DataType = ftFloat) then
       tipoC := 'F'; // Float
     
    cbCampo.Items.Add(tipoC + '-' + dsP.DataSet.Fields[i].DisplayLabel );
  end;
end;

procedure TfPesquisa.JvBitBtn1Click(Sender: TObject);
var verTipo: String;
begin
  memoSql.Lines.Add(cbCampo.Text + ' ' + cbCondicao.Text + ' ' + edValor.Text);
  verTipo := copy(cbCampo.Text,0,1);
  montaBusca(verTipo);
end;

procedure TfPesquisa.JvBitBtn2Click(Sender: TObject);
begin
  memoSql.Lines.Clear;
  busca := '';
end;

procedure TfPesquisa.JvBitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfPesquisa.JvBitBtn4Click(Sender: TObject);
begin
  close;
end;

procedure TfPesquisa.montaBusca(tipo: String);
var b, strValor, campo: String;
  valorV: Double;
begin
  {0 = =
   1 = Contém
   2 = >
   3 = >=
   4 = <
   5 = <=
   6 = Lista (valor1, vlor2, valor3)
   7 = Fora da Lista (valor1, valor2, valor3)
   8 = Inícia com
   9 = Termina Com
  10 = Não Contém}

  campo := copy(cbCampo.Text, 3, length(cbCampo.Text)-2);

  strValor := UpperCase(edValor.Text);
  if (tipo = 'S') then  // String
  begin
    case cbCondicao.ItemIndex of
      0: b := ' UDF_COLLATEBR(' + campo + ') = ' + QuotedStr(strValor);
      1: b := ' UDF_COLLATEBR(' + campo + ') LIKE ' + QuotedStr('%' + strValor + '%');
      8: b := ' UDF_COLLATEBR(' + campo + ') LIKE ' + QuotedStr(strValor + '%');
      9: b := ' UDF_COLLATEBR(' + campo + ') LIKE ' + QuotedStr('%' + strValor);
     10: b := ' UDF_COLLATEBR(' + campo + ') NOT LIKE ' + QuotedStr('%' + strValor + '%');
      6: begin
           b := ' UDF_COLLATEBR(' + campo + ') IN(' + strValor + ')';
         end;
      7: begin
           b := ' UDF_COLLATEBR(' + campo + ') NOT IN(' + strValor + ')';
         end;
    else
      strValor := QuotedStr(strValor);
    end;
  end;
  if (tipo = 'D') then  // Data
    strValor := QuotedStr(formatdatetime('mm/dd/yy', StrToDate(strValor)));
  if (tipo = 'F') then  // Float
  begin
    valorV := StrToFloat(strValor);
    DecimalSeparator := '.';
    Try
      strValor := FloatToStr(ValorV);
    Finally
      DecimalSeparator := ',';
    end;
  end;
  case cbCondicao.ItemIndex of
    0: if (tipo <> 'S') then
       b := ' ' + campo + ' = ' + strValor;
    2: b := ' ' + campo + ' > ' + strValor;
    3: b := ' ' + campo + ' >= ' + strValor;
    4: b := ' ' + campo + ' < ' + strValor;
    5: b := ' ' + campo + ' <= ' + strValor;
  end;
  if (memoSql.Lines.Count > 1) then
    busca := busca + ' AND ';
  busca := busca + b;
end;

procedure TfPesquisa.FormCreate(Sender: TObject);
begin
  busca := '';
end;

end.
