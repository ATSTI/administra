unit uVendaLoteLancao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons;

type
  TfVendaLoteLancao = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    btnGravar: TBitBtn;
    btnSair: TBitBtn;
    procedure btnSairClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    grava, lote: string;
  end;

var
  fVendaLoteLancao: TfVendaLoteLancao;

implementation

{$R *.dfm}

procedure TfVendaLoteLancao.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TfVendaLoteLancao.btnGravarClick(Sender: TObject);
begin
  if MessageDlg('Deseja gravar essa alteraçao ?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
    grava := 'sim';
    lote := Edit1.Text;
  end;
end;

procedure TfVendaLoteLancao.FormCreate(Sender: TObject);
begin
  grava := 'nao';
end;

end.
