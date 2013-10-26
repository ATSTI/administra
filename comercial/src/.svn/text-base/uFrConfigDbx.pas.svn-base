unit uFrConfigDbx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, SqlExpr, SQLConst, Grids, ValEdit,
  ComCtrls, ExtCtrls;

type
  TFrConfigDbx = class(TForm)
    btTestar: TBitBtn;
    ValueListEditor1: TValueListEditor;
    btOk: TBitBtn;
    btCancelar: TBitBtn;
    Memo1: TMemo;
    Panel1: TPanel;
    Label1: TLabel;
    Image1: TImage;
    Label2: TLabel;
    OpenDialog1: TOpenDialog;
    btDatabase: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btTestarClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure btDatabaseClick(Sender: TObject);
  private
    FCon: TSQLConnection;
    procedure Salvar;
    procedure Conectar;
    procedure AtualizaMsg(Msg: string);
  public
    class procedure Abrir(ACon: TSQLConnection);
    constructor Create(
      ACon: TSQLConnection; Erro:string);
  end;

var
  FrConfigDbx: TFrConfigDbx;

implementation

{$R *.dfm}

uses Encrypt_decrypt, IniFiles;

const
  fn = '.\dbxconnections.ini';

{ TFrConfigDbx }

class procedure TFrConfigDbx.Abrir(ACon: TSQLConnection);
begin
  ACon.LoadParamsFromIniFile(fn);
  ACon.Params.Values[szPASSWORD] :=
    Decode(ACon.Params.Values[szPASSWORD]);
  try
    ACon.Open;
  except
    on E: Exception do
      FrConfigDbx := TFrConfigDbx.Create(
       ACon,E.Message);
  end;
end;

constructor TFrConfigDbx.Create(ACon: TSQLConnection;
  Erro: string);
begin
  inherited Create(Application);
  FCon := ACon;
  AtualizaMsg(Erro);
  ValueListEditor1.Strings.Assign(FCon.Params);
  ShowModal;
end;

procedure TFrConfigDbx.AtualizaMsg(Msg: string);
begin
  if Msg <> '' then
    Label1.Caption :=
      'Erro conectando ao banco de dados'
  else
    Label1.Caption := 'Conexão feita com sucesso!';
  Memo1.Lines.Text := Msg;
end;

procedure TFrConfigDbx.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if not FCon.Connected then
    Application.Terminate
  else
    Action := caFree;
end;

procedure TFrConfigDbx.Salvar;
var
  ini: TIniFile;
  i: Integer;
  psw: string;
  Param,valor: string;
begin
  { criptografa senha }
  FCon.Params.Values[DATABASENAME_KEY] := 'NovoCaminho\db.gdb';
  with ValueListEditor1.Strings do
  begin
    Values[szPASSWORD] := Encode(Values[szPASSWORD]);
    ini := TIniFile.Create(fn);
    try
      for i := 0 to Count - 1 do
        ini.WriteString(FCon.ConnectionName,
          Names[i],ValueFromIndex[i]);
    finally
      ini.Free;
    end;
  end;
end;


procedure TFrConfigDbx.btTestarClick(Sender: TObject);
begin
  Conectar;
end;

procedure TFrConfigDbx.Conectar;
begin
  FCon.Params.Assign(ValueListEditor1.Strings);
  try
    FCon.Open;
    AtualizaMsg('');
  except
    on E: Exception do
    begin
      AtualizaMsg(E.Message);
      Abort;
    end;
  end;
end;

procedure TFrConfigDbx.btOkClick(Sender: TObject);
begin
  Conectar;
  Salvar;
  Close;
end;

procedure TFrConfigDbx.btDatabaseClick(Sender: TObject);
begin
  with ValueListEditor1.Strings do
    if OpenDialog1.Execute then
      Values[DATABASENAME_KEY] := OpenDialog1.FileName;
end;

end.



