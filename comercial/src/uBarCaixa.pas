unit uBarCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvComponentBase, JvFormTransparent, StdCtrls, ExtCtrls, FMTBcd,
  DB, SqlExpr;

type
  TfBarCaixa = class(TForm)
    RadioGroup1: TRadioGroup;
    JvTransparentForm1: TJvTransparentForm;
    sCaixa: TSQLDataSet;
    sCaixaMAQUINA: TStringField;
    sCaixaSITUACAO: TStringField;
    sCaixaCODUSUARIO: TIntegerField;
    sCaixaNOMECAIXA: TStringField;
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBarCaixa: TfBarCaixa;

implementation

uses UDm;

{$R *.dfm}

procedure TfBarCaixa.RadioGroup1Click(Sender: TObject);
begin
   DM.RESULTADOCAIXA := 'TRUE';
   if (RadioGroup1.ItemIndex = 0) then
     DM.CAIXABAR := 'CAIXA';
   if (RadioGroup1.ItemIndex = 1) then
   begin
     if (sCaixa.Active) then
       sCaixa.Close;
     sCaixa.Params[0].AsString := 'A'; //Caixa Aberto
     sCaixa.Open;
     if (sCaixa.IsEmpty) then
     begin
       MessageDlg('Para abrir o Bar, é nescessario ter caixa aberto.', mtWarning, [mbOK], 0);
       DM.RESULTADOCAIXA := 'FALSO';
     end;
     DM.CAIXABAR := 'BAR';
   end;
   close;
end;

end.
