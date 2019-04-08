unit udm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,IniFiles, ZAbstractConnection,
  ZConnection, Midas;
type
  Tdm = class(TDataModule)
    con: TZConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      email_tls: String;
      email_ssl: String;
  end;

var
  dm: Tdm;
  dbxconec: TStringList;
implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure Tdm.DataModuleCreate(Sender: TObject);
  var Ini: TIniFile;
      IniFile    : String;
begin
    Ini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'dbxconnections.ini');
  try
    con.Connected       := False;
    con.HostName        := Ini.ReadString('nfe', 'Hostname', '');
    con.Port            := Ini.ReadInteger('nfe', 'Port', 0);
    con.Protocol        := Ini.ReadString('nfe', 'Protocol', '');
    con.User            := Ini.ReadString('nfe', 'User', '');
    con.Password        := Ini.ReadString('nfe', 'Password', '');
    con.Database        := Ini.ReadString('nfe', 'Database', '');
    con.ClientCodepage  := Ini.ReadString('nfe', 'ClientCodepage', '');
    con.LibraryLocation := Ini.ReadString('nfe', 'LibraryLocation', '');

   except
         on E:Exception do
         MessageDlg('Erro ao conectar DM !'#13'Erro: ' + e.Message, mtError, [mbOK], 0);
   end;
   Ini.Free;

end;



end.
