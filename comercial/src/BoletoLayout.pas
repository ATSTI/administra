unit BoletoLayout;

interface

uses              //RLReport,
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList
 {$IFDEF VER150}
   ,Variants
 {$ELSE}
  {$IFDEF VER140}
    ,Variants, RLSaveDialog, RLFilters, RLPDFFilter, jpeg, RxGIF,
  rpcompobase, rpvclreport
  {$ENDIF}
 {$ENDIF}
  ;
type
  TLayoutBoleto = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LayoutBoleto: TLayoutBoleto;

implementation

{$R *.dfm}

end.
