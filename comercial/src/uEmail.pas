unit uEmail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP;

type
  TfEmail = class(TForm)
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    GroupBox2: TGroupBox;
    Edit2: TEdit;
    GroupBox3: TGroupBox;
    Memo1: TMemo;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    IdSMTP1: TIdSMTP;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEmail: TfEmail;

implementation

{$R *.dfm}

procedure TfEmail.BitBtn1Click(Sender: TObject);
begin
  try
  begin
    with IdSMTP1 do
    begin
      Connect;
      {with IdMessage1 do
      begin
        Clear;
        From.Address := 'SeuEmail@xxxx.com.br'; // Email do remetente
        From.Name := 'SeuNome'; // Nome do remetente
        Subject := 'Novidades!'; // Assunto do email
        Recipients.Clear;
        Recipients.EMailAddresses := ('Fulano@xxxx.com.br'); // aqui voc� coloca o(s) destinat�rios(s)
        CCList.EMailAddresses := ('zzzz@xxxx.com.br'); // C�pia
        BccList.EMailAddresses := ('yyyyy@xxxx.com.br'); // C�pia Oculta
        Priority := mpHigh; // Trata a prioridade da mensagem - Op��es: mpHigh | mpNormal | mpLow
        // Assunto da mensagem
        Body.Clear;
        ContentType := 'text/html'; // Texto em HTML
        Body.Add('<strong> Testando envio de email pelo Delphi!</strong> <br>');
        Body.Add('<br>');
        Body.Add('<tr align="left" >');
        Body.Add('<th width=20%> <font face="Verdana" size=2 color=#003300> <strong> C�nthia M�lo </strong>');
      end;}
    end;
    try
    begin
      //IdSMTP1.Send(IdMessage1);  // Envia o email com os dados
      Application.MessageBox('E-mail enviado com Sucesso!', 'Aten��o' , MB_OK);
    end
    except
    end;
    IdSMTP1.Disconnect;
  end;
  except
  on Exception do
    Application.MessageBox('N�o foi poss�vel a conex�o com o Servidor de E-mail', 'Aten��o', MB_OK);
  end;
end;

end.
