unit uAliquita;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfAliquota = class(TForm)
    ComboBox1: TComboBox;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAliquota: TfAliquota;

implementation

uses uTerminal_Delivery, Principal, UnitDeclaracoes;

{$R *.dfm}

procedure TfAliquota.BitBtn1Click(Sender: TObject);
var
 cValor, sAliquota : string;

begin
  inherited;
  cValor := ComboBox1.Text;
    If (ComboBox1.ItemIndex) = 0  Then Begin sAliquota := 'FF' End;   //st
    If (ComboBox1.ItemIndex) = 1  Then Begin sAliquota := 'II' End;  //is
    If (ComboBox1.ItemIndex) = 2  Then Begin sAliquota := 'NN' End;  //nã
    If (ComboBox1.ItemIndex) = 3  Then Begin sAliquota := '0100' End;
    If (ComboBox1.ItemIndex) = 4  Then Begin sAliquota := '0200' End;
    If (ComboBox1.ItemIndex) = 5  Then Begin sAliquota := '0300' End;
    If (ComboBox1.ItemIndex) = 6  Then Begin sAliquota := '0400' End;
    If (ComboBox1.ItemIndex) = 7  Then Begin sAliquota := '0500' End;
    If (ComboBox1.ItemIndex) = 8  Then Begin sAliquota := '0600' End;
    If (ComboBox1.ItemIndex) = 9  Then Begin sAliquota := '0700' End;
    If (ComboBox1.ItemIndex) = 10 Then Begin sAliquota := '0800' End;
    If (ComboBox1.ItemIndex) = 11 Then Begin sAliquota := '0900' End;
    If (ComboBox1.ItemIndex) = 12 Then Begin sAliquota := '1000' End;
    If (ComboBox1.ItemIndex) = 13 Then Begin sAliquota := '1100' End;
    If (ComboBox1.ItemIndex) = 14 Then Begin sAliquota := '1200' End;
    If (ComboBox1.ItemIndex) = 15 Then Begin sAliquota := '1300' End;
    If (ComboBox1.ItemIndex) = 16 Then Begin sAliquota := '1400' End;
    If (ComboBox1.ItemIndex) = 17 Then Begin sAliquota := '1500' End;
    If (ComboBox1.ItemIndex) = 18 Then Begin sAliquota := '1600' End;
    If (ComboBox1.ItemIndex) = 19 Then Begin sAliquota := '1700' End;
    If (ComboBox1.ItemIndex) = 20 Then Begin sAliquota := '1800' End;
    If (ComboBox1.ItemIndex) = 21 Then Begin sAliquota := '1900' End;
    If (ComboBox1.ItemIndex) = 22 Then Begin sAliquota := '2000' End;
    If (ComboBox1.ItemIndex) = 23 Then Begin sAliquota := '2100' End;
    If (ComboBox1.ItemIndex) = 24 Then Begin sAliquota := '2200' End;
    If (ComboBox1.ItemIndex) = 25 Then Begin sAliquota := '2300' End;
    If (ComboBox1.ItemIndex) = 26 Then Begin sAliquota := '2400' End;
    If (ComboBox1.ItemIndex) = 27 Then Begin sAliquota := '2500' End;

   iRetorno := Bematech_FI_ProgramaAliquota( pchar( sAliquota ), 0 );
   frmPrincipal.Analisa_iRetorno();
   frmPrincipal.Retorno_Impressora();

end;

procedure TfAliquota.BitBtn2Click(Sender: TObject);
begin
  close;
end;

end.
