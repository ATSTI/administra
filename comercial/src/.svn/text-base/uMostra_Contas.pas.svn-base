unit uMostra_Contas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, Grids, DBGrids, DB, DBClient, Provider, SqlExpr;

type
  TfMostra_Contas = class(TForm)
    SQLDataSet1: TSQLDataSet;
    SQLDataSet1EMISSAO: TDateField;
    SQLDataSet1TITULO: TStringField;
    SQLDataSet1DATAVENCIMENTO: TDateField;
    SQLDataSet1VALORTITULO: TFloatField;
    SQLDataSet1VALOR_RESTO: TFloatField;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1EMISSAO: TDateField;
    ClientDataSet1TITULO: TStringField;
    ClientDataSet1DATAVENCIMENTO: TDateField;
    ClientDataSet1VALORTITULO: TFloatField;
    ClientDataSet1VALOR_RESTO: TFloatField;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    SQLDataSet1VIA: TStringField;
    ClientDataSet1VIA: TStringField;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMostra_Contas: TfMostra_Contas;

implementation

uses UDm, uComercial, ufDlgLogin;

{$R *.dfm}

procedure TfMostra_Contas.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
   Close;
end;

procedure TfMostra_Contas.FormCreate(Sender: TObject);
begin
  if (dm.usuario.Active) then
     dm.usuario.Close;
  dm.usuario.Params[0].AsString := usuario;
  dm.usuario.Open;
  if (not dm.usuario.IsEmpty) then
  begin
       DM.videoW := dm.UsuarioP1.AsString;
       DM.videoH := dm.UsuarioP2.AsString;
  end;
  if DM.videoW = '800' then
    Position := poDesigned;
  if (DM.videoW <> 'widescreen') then
  begin
   if  (DM.videoW <> '') then
   begin
     ScreenWidth := StrToInt(DM.videoW);
     ScreenHeight := StrToInt(DM.videoH);
     scaled := true;
     if (screen.width <> ScreenWidth) then
     begin
       height := longint(height) * longint(screen.height) DIV ScreenHeight;
       width := longint(width) * longint(screen.width) DIV ScreenWidth;
       scaleBy(screen.width, ScreenWidth);
     end;
   end;
  end;

end;

end.
