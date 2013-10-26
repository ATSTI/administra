unit uMensagens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfMensagens = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMensagens: TfMensagens;

implementation

uses UDm;

{$R *.dfm}

procedure TfMensagens.Button1Click(Sender: TObject);
begin
    {------Mensagem para impressão ---------}
  if (Edit1.Text <> '') then
  begin
    if Dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'MENSAGEM';
    dm.cds_parametro.Open;
    if not dm.cds_parametro.IsEmpty then
    begin
      DM.Mensagem := dm.cds_parametroDADOS.AsString;
    end
    else
    begin
      dm.cds_parametro.Append;
      dm.cds_parametroDESCRICAO.AsString := 'Mensagem para impressão';
      dm.cds_parametroPARAMETRO.AsString := 'MENSAGEM';
      dm.cds_parametroDADOS.AsString := Edit1.Text;
      dm.cds_parametro.ApplyUpdates(0);
    end;
  end
  else
  begin
     MessageDlg('Entre com a Mensagem / Observação', mtWarning, [mbOK], 0);
     exit;
  end;
end;

procedure TfMensagens.Button2Click(Sender: TObject);
begin
  close;
end;

end.
