unit Utils;

interface

uses
   Db, DbTables, MidasLib, Windows, Forms, Dialogs, Messages, SysUtils,
   SqlExpr, classes, DBXpress, Graphics, extctrls, Variants;

type
    {**Tratamento de V�deo}
    TVideo = class(TObject)
    Public
      FVideo: String;
      procedure TamanhoVideo;
    end;

implementation

uses UDm;

{ TVideo }

procedure TVideo.TamanhoVideo;
begin

end;

end.
 