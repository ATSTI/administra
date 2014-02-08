unit udm;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, Dialogs, FMTBcd;

type
  Tdm = class(TDataModule)
    sc: TSQLConnection;
    sqlBusca: TSQLQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{$R *.dfm}

procedure Tdm.DataModuleCreate(Sender: TObject);
begin
  try
    sc.Connected := False;
    sc.LoadParamsFromIniFile('dbxconnections.ini');
    sc.LibraryName := 'dbexpUIBfire15.dll';
    sc.VendorLib := 'FBCLIENT.DLL';
    sc.Connected := True;
  Except
    ShowMessage('Banco de Dados invalido!');
  end;
end;

end.
