unit uRelatorios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FileCtrl, JvDriveCtrls, Buttons, rpcompobase,
  rpvclreport;

type
  TfRelatorios = class(TForm)
    JvFileListBox1: TJvFileListBox;
    Label1: TLabel;
    btnSair: TBitBtn;
    btnImprimir: TBitBtn;
    rep: TVCLReport;
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelatorios: TfRelatorios;

implementation

uses UDm;

{$R *.dfm}

procedure TfRelatorios.FormShow(Sender: TObject);
begin
  JvFileListBox1.Directory := str_relatorio;
end;

procedure TfRelatorios.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfRelatorios.btnImprimirClick(Sender: TObject);
begin
  rep.Filename := JvFileListBox1.FileName;// + '.rep';
  rep.ShowParams;
  rep.Execute;  
end;

end.
