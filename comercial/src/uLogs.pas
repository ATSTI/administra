unit uLogs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, Grids, DBGrids, Buttons, ComCtrls,
  ExtCtrls, MMJPanel, FMTBcd, SqlExpr, DBClient, Provider, Mask, ToolEdit,
  XPMenu, JvExDBGrids, JvDBGrid, JvDBUltimGrid;

type
  TfLogs = class(TForm)
    DataSource1: TDataSource;
    DBMemo1: TDBMemo;
    MMJPanel1: TMMJPanel;
    cbTabela: TComboBox;
    Label1: TLabel;
    cbUsuario: TComboBox;
    Label2: TLabel;
    cbMicro: TComboBox;
    Label5: TLabel;
    Panel1: TPanel;
    Label8: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    sdsTabela: TSQLDataSet;
    sdsTabelaTABELA: TStringField;
    sdsUsuario: TSQLDataSet;
    sdsUsuarioUSUARIO: TStringField;
    sdsMicro: TSQLDataSet;
    sdsMicroMICRO: TStringField;
    CheckBox1: TCheckBox;
    Data1: TDateEdit;
    Data2: TDateEdit;
    XPMenu1: TXPMenu;
    JvDBUltimGrid1: TJvDBUltimGrid;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLogs: TfLogs;

implementation

uses UDM;

{$R *.dfm}

procedure TfLogs.FormShow(Sender: TObject);
begin
  Data1.Text := DateToStr(Now);
  Data2.Text := DateToStr(Now);
    
end;

procedure TfLogs.BitBtn1Click(Sender: TObject);
var
 texto, texto1 :string;
begin
  texto := '';
  texto1 := '';
  if (dm.cdsLog.Active) then
    dm.cdsLog.Close;
  dm.cdsLog.CommandText := '';

  texto := 'select * from LOGS';

  try
    if (CheckBox1.Checked = true) then
    begin
      if texto1='' then
        texto1 := texto1 + ' where DATA between '
      else
        texto1 := texto1 + ' and DATA between ';
      texto1 := texto1 + '''' + formatdatetime('mm/dd/yy', StrToDate(Data1.Text)) + '''';
        texto1 := texto1 + ' and ';
        texto1 := texto1 + '''' + formatdatetime('mm/dd/yy', StrToDate(data2.Text)) + '''';
    end;
  except
  on EConvertError do
  begin
     ShowMessage ('Data Inválida! dd/mm/aa');
     data1.SetFocus;
  end;
  end;

  if cbTabela.Text<>'' then
  begin
      if texto1 = '' then
        texto1 := texto1 + ' Where TABELA = '
      else
        texto1 := texto1 + ' and TABELA = ';
      texto1 := texto1 + '''' + cbTabela.Text + '''';
  end;

  if cbUsuario.Text<>'' then
  begin
      if texto1 = '' then
        texto1 := texto1 + ' Where USUARIO = '
      else
        texto1 := texto1 + ' and USUARIO = ';
      texto1 := texto1 + '''' + cbUsuario.Text + '''';
  end;

  if cbMicro.Text<>'' then
  begin
      if texto1 = '' then
        texto1 := texto1 + ' Where MICRO = '
      else
        texto1 := texto1 + ' and MICRO = ';
      texto1 := texto1 + '''' + cbMicro.Text + '''';
  end;

  dm.cdsLog.CommandText := texto + texto1;
  dm.cdsLog.Open;


end;

procedure TfLogs.CheckBox1Click(Sender: TObject);
begin
  if (CheckBox1.Checked = true) then
  begin
    Data1.Enabled := true;
    Data2.Enabled := true;
  end
  else
  begin
    Data1.Enabled := false;
    Data2.Enabled := false;
  end;

end;

procedure TfLogs.FormCreate(Sender: TObject);
//var
//  ScreenHeight: LongInt;
//  ScreenWidth: LongInt;
begin
//  ScreenWidth := 800;
//  ScreenHeight := 600;
//  scaled := true;

  //if (screen.width <> ScreenWidth) then
  //begin
  //  height := longint(height) * longint(screen.height) DIV ScreenHeight;
  //  width := longint(width) * longint(screen.width) DIV ScreenWidth;
  //  scaleBy(screen.width, ScreenWidth);
  //end;

  cbTabela.Items.Clear;
  cbUsuario.Items.Clear;
  cbMicro.Items.Clear;
  if not sdsTabela.Active then
    sdsTabela.Open;
  sdsTabela.First;
  while not sdsTabela.Eof do
  begin
     cbTabela.Items.Add(sdsTabelaTABELA.Value);
     sdsTabela.Next;
  end;
  sdsTabela.Close;

  if not sdsUsuario.Active then
    sdsUsuario.Open;
  sdsUsuario.First;
  while not sdsUsuario.Eof do
  begin
     cbUsuario.Items.Add(sdsUsuarioUSUARIO.Value);
     sdsUsuario.Next;
  end;
  sdsUsuario.Close;

  if not sdsMicro.Active then
    sdsMicro.Open;
  sdsMicro.First;
  while not sdsMicro.Eof do
  begin
     cbMicro.Items.Add(sdsMicroMICRO.Value);
     sdsMicro.Next;
  end;
  sdsMicro.Close;

end;

procedure TfLogs.BitBtn2Click(Sender: TObject);
begin
   close;
end;

end.
