unit uBancoPgto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExStdCtrls, JvEdit, StdCtrls, Mask, JvExMask, JvToolEdit,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, Buttons;

type
  TfBancoPgto = class(TForm)
    edConsolida: TJvDatePickerEdit;
    lbEmissao: TLabel;
    edBanco: TJvEdit;
    Label1: TLabel;
    Label2: TLabel;
    edAgencia: TJvEdit;
    Label3: TLabel;
    edConta: TJvEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBancoPgto: TfBancoPgto;

implementation

uses uCaixaReceber;

{$R *.dfm}

procedure TfBancoPgto.BitBtn2Click(Sender: TObject);
begin
  fCaixaReceber.dataconsolida := edConsolida.Text;
  fCaixaReceber.banco := edBanco.Text;
  fCaixaReceber.agencia := edAgencia.Text;
  fCaixaReceber.conta := edConta.Text;
  close;
end;

procedure TfBancoPgto.BitBtn1Click(Sender: TObject);
begin
  close;
end;

end.
