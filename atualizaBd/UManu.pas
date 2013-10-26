unit UManu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBXpress, FMTBcd, DB, DBClient, Provider, SqlExpr,
  Grids, DBGrids;

type
  TFManu = class(TForm)
    LInformacao: TLabel;
    SQLFiles: TSQLDataSet;
    DSPFiles: TDataSetProvider;
    CDSFiles: TClientDataSet;
    DSCDSFiles: TDataSource;
    CDSFilesCODATUALIZA: TIntegerField;
    CDSFilesSCRIPT: TStringField;
    CDSFilesDATASCRIPT: TDateField;
    CDSFilesPARAQSERVE: TStringField;
    CDSFilesVERSAO: TStringField;
    CDSFilesINSERIDO: TStringField;
    CDSFilesDATA_MODIFICADO: TSQLTimeStampField;
    DBGrid1: TDBGrid;
    procedure FormShow(Sender: TObject);
  private
    procedure insereScriptBD;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FManu: TFManu;

implementation

uses uUtils, Atualiza;

{$R *.dfm}

procedure TFManu.FormShow(Sender: TObject);
var
  vDirectory : String;
begin
  LInformacao.Caption := 'Atualizando arquivos do sistema';
  vDirectory := ExtractFileDir(Application.ExeName)+'\Script\';

  CDSFiles.Open;

  insereScriptBD;

  CDSFiles.First; // Primeiro arquivo da lista;
  While not(CDSFiles.EOF) do
  begin
    Application.ProcessMessages; // Atualização da tela do sistema
    if (CDSFilesDATA_MODIFICADO.IsNull) then
    begin
      CDSFiles.Edit;
      CDSFilesDATA_MODIFICADO.AsDateTime := FileDateToDateTime(FileAge(vDirectory+CDSFilesSCRIPT.AsString));
      cdsFiles.Post;
      CDSFiles.ApplyUpdates(0);
    end;
    if FormatDateTime('dd/mm/yyyy hh:mm:ss',FileDateToDateTime(FileAge(vDirectory+CDSFilesSCRIPT.AsString))) <>
         FormatDateTime('dd/mm/yyyy hh:mm:ss',CDSFilesDATA_MODIFICADO.AsDateTime) then
    begin
      CDSFiles.Edit;
      CDSFilesDATA_MODIFICADO.AsDateTime := FileDateToDateTime(FileAge(vDirectory+CDSFilesSCRIPT.AsString));
      CDSFilesINSERIDO.AsString := 'N';
      CDSFiles.Post;
      CDSFiles.ApplyUpdates(0);
    end;
    CDSFiles.Next;
  end;
  CDSFiles.Close;
  Form1.sc.Close;
  LInformacao.Caption := 'Sistema atualizado';
end;

procedure TFManu.insereScriptBD;
var util : TUtils;
  Ret: Integer;
  Diretorio : String;
  F: TSearchRec;
begin
  util := TUTils.Create;
  Diretorio := ExtractFileDir(Application.ExeName)+'\Script\';
  Ret := FindFirst(Diretorio+'\*.sql', faAnyFile, F);
  try
    while Ret = 0 do
    begin
      cdsFiles.Filtered := False;
      //if (not CDSFiles.Locate('SCRIPT', F.Name, [loCaseInsensitive])) then
      cdsFiles.Filter := 'SCRIPT = ' + QuotedStr(F.Name);
      cdsFiles.Filtered := True;
      if (cdsFiles.RecordCount >= 0) then
      begin
        cdsFiles.Filtered := False;
        cdsFiles.Filter := 'SCRIPT = ' + QuotedStr(F.Name) + ' AND DATA_MODIFICADO = ' +
          QuotedStr(DateTimeToStr(FileDateToDateTime(FileAge(Diretorio + F.Name))));
        cdsFiles.Filtered := True;
        if (cdsFiles.RecordCount = 0) then
        begin
          cdsFiles.Filtered := False;
          cdsFiles.Filter := 'SCRIPT = ' + QuotedStr(F.Name) + ' AND DATA_MODIFICADO <> ' +
            QuotedStr(DateTimeToStr(FileDateToDateTime(FileAge(Diretorio + F.Name))));
          cdsFiles.Filtered := True;
          if (cdsFiles.RecordCount > 0) then
          begin
            CDSFiles.Edit; // Altero
            CDSFilesDATA_MODIFICADO.AsDateTime := FileDateToDateTime(FileAge(Diretorio + F.Name));
            CDSFilesINSERIDO.AsString := 'N';
          end
          else begin
            CDSFiles.Append; // Inserir um novo registro
            cdsFilesCODATUALIZA.AsInteger := StrToInt(util.buscaChave('GEN_ATUALIZA'));
            CDSFilesSCRIPT.AsString     := F.Name;
            CDSFilesDATASCRIPT.AsDateTime := FileDateToDateTime(FileAge(Diretorio + F.Name));
            CDSFilesDATA_MODIFICADO.AsDateTime := FileDateToDateTime(FileAge(Diretorio + F.Name));
            if (CDSFilesDATA_MODIFICADO.AsDateTime < StrToDateTime('01/06/08')) then
              CDSFilesINSERIDO.AsString := 'S'
            else
              CDSFilesINSERIDO.AsString := 'N';
          end;
          CDSFiles.Post;
          CDSFiles.ApplyUpdates(0);
        end;
        {else begin
          CDSFiles.Append; // Inserir um novo registro
          cdsFilesCODATUALIZA.AsInteger := StrToInt(util.buscaChave('GEN_ATUALIZA'));
          CDSFilesSCRIPT.AsString     := F.Name;
          CDSFilesDATASCRIPT.AsDateTime := FileDateToDateTime(FileAge(Diretorio + F.Name));
          CDSFilesDATA_MODIFICADO.AsDateTime := FileDateToDateTime(FileAge(Diretorio + F.Name));
          if (CDSFilesDATA_MODIFICADO.AsDateTime < StrToDateTime('01/06/08')) then
            CDSFilesINSERIDO.AsString := 'S'
          else
            CDSFilesINSERIDO.AsString := 'N';
          CDSFiles.Post;
          CDSFiles.ApplyUpdates(0);
        end;}
      end;
      Ret := FindNext(F);
    end;
  finally
    util.Destroy;
    FindClose(F);
  end;
end;

end.
