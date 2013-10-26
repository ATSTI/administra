unit uImprimeDLL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Modulo;

type
  TF_ImprimeDLL = class(TForm)
    BitBtn1: TBitBtn;
    GroupBox5: TGroupBox;
    btnStatusPorta: TButton;
    Edit1: TEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    FontDialog1: TFontDialog;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnStatusPortaClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ImprimeDLL: TF_ImprimeDLL;
  iRetorno : integer;
  ThreadStatus : TThreadLeStatus;

function ConfiguraModeloImpressora(ModeloImpressora:integer):integer; stdcall; far; external 'Mp2032.dll';
function IniciaPorta(Porta:string):integer; stdcall; far; external 'Mp2032.dll';


implementation

{$R *.dfm}

procedure TF_ImprimeDLL.BitBtn1Click(Sender: TObject);
begin

  iRetorno := ConfiguraModeloImpressora( 7 );
  if (iRetorno = -2) then
    ShowMessage('Erro Configurando Impressora');

  //ConfiguraTaxaSerial( 115200 );

  iRetorno := IniciaPorta( pchar( 'USB' ) );
  if (iRetorno <= 0) then
    ShowMessage('Erro Abrindo Porta');



end;

procedure TF_ImprimeDLL.btnStatusPortaClick(Sender: TObject);
begin

  iRetorno := Le_Status();
  if (iRetorno = 0) then
     Edit1.Text := 'OFF-Line'
  else
     Edit1.Text := 'ON-Line';

end;

procedure TF_ImprimeDLL.BitBtn2Click(Sender: TObject);
var Fonte : string;
var Texto : string;
   begin
        // acentos a serem impressos
        Texto := Texto + 'âäàáãÃÂÄÁÀ êëèéÊËÉÈ ïíìîÎÍÌÏ öóòôõÖÓÒÔÕ üúùûÜÙÚÛ' + chr(13) + chr(10) + chr(10);

        // italico
        Fonte := 'Itálico' + chr(10);
        if FormataTX(Fonte + Texto, 3, 1, 0, 0, 0) = 0 then
        begin
            MessageDlg('Problemas na impressão do texto formatado.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
            exit;
        end;

        // sublinhado
        Fonte := 'Sublinhado' + chr(10);
        if FormataTX(Fonte + Texto, 3, 0, 1, 0, 0) = 0 then
        begin
          MessageDlg('Problemas na impressão do texto formatado.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
          exit;
        end;

        // expandido
        Fonte := 'Expandido' + chr(10);
        if FormataTX(Fonte + Texto, 3, 0, 0, 1, 0) = 0 then
        begin
          MessageDlg('Problemas na impressão do texto formatado.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
          exit;
        end;

        // negrito
        Fonte := 'Negrito' + chr(10);
        if FormataTX(Fonte + Texto, 3, 0, 0, 0, 1) = 0 then
        begin
           MessageDlg('Problemas na impressão do texto formatado.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
           exit;
        end;

        // condensado
        Fonte := 'Condensado' + chr(10);
        if FormataTX(Fonte + Texto, 1, 0, 0, 0, 0) = 0 then
        begin
          MessageDlg('Problemas na impressão do texto formatado.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
          exit;
        end;

        // italico + sublinhado
        Fonte := 'Itálico + sublinhado' + chr(10);
        if FormataTX(Fonte + Texto, 3, 1, 1, 0, 0) = 0 then
        begin
          MessageDlg('Problemas na impressão do texto formatado.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
          exit;
        end;

        // italico + expandido
        Fonte := 'Itálico + expandido' + chr(10);
        if FormataTX(Fonte + Texto, 3, 1, 0, 1, 0) = 0 then
        begin
          MessageDlg('Problemas na impressão do texto formatado.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
          exit;
        end;

        // italico + negrito
        Fonte := 'Itálico + negrito' + chr(10);
        if FormataTX(Fonte + Texto, 3, 1, 0, 0, 1) = 0 then
        begin
          MessageDlg('Problemas na impressão do texto formatado.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
          exit;
        end;

        // italico + condensado
        Fonte := 'Itálico + condensado' + chr(10);
        if FormataTX(Fonte + Texto, 1, 1, 0, 0, 0) = 0 then
        begin
          MessageDlg('Problemas na impressão do texto formatado.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
          exit;
        end;

        // italico  +  sublinhado + expandido
        Fonte := 'Itálico  +  sublinhado +expandido' + chr(10);
        if FormataTX(Fonte + Texto, 3, 1, 1, 1, 0) = 0 then
        begin
          MessageDlg('Problemas na impressão do texto formatado.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
          exit;
        end;

        // italico + sublinhado + negrito
        Fonte := 'Itálico + sublinhado + negrito' + chr(10);
        if FormataTX(Fonte + Texto, 3, 1, 1, 0, 1) = 0 then
        begin
          MessageDlg('Problemas na impressão do texto formatado.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
          exit;
        end;

        // italico + sublinhado + condensado
        Fonte := 'Itálico + sublinhado + condensado' + chr(10);
        if FormataTX(Fonte + Texto, 1, 1, 1, 0, 0) = 0 then
        begin
          MessageDlg('Problemas na impressão do texto formatado.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
          exit;
        end;

        // italico + sublinhado + expandido + negrito
        Fonte := 'Itálico  +  sublinhado +expandido + negrito' + chr(10);
        if FormataTX(Fonte + Texto, 3, 1, 1, 1, 1) = 0 then
        begin
          MessageDlg('Problemas na impressão do texto formatado.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
          exit;
        end;

        // italico + sublinhado + expandido + condensado
        Fonte := 'Itálico + sublinhado + expandido+ condensado' + chr(10);
        if FormataTX(Fonte + Texto, 1, 1, 1, 1, 0) = 0 then
        begin
          MessageDlg('Problemas na impressão do texto formatado.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
          exit;
        end;

        // italico + sublinhado + expandido + negrito + condensado
        Fonte := 'Itálico + sublinhado + expandido+ negrito + condensado' + chr(10);
        if FormataTX(Fonte + Texto, 1, 1, 1, 1, 1) = 0 then
        begin
          MessageDlg('Problemas na impressão do texto formatado.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
          exit;
        end;

        // sublinhado + expandido
        Fonte := 'Sublinhado + expandido' + chr(10);
        if FormataTX(Fonte + Texto, 3, 0, 1, 1, 0) = 0 then
        begin
          MessageDlg('Problemas na impressão do texto formatado.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
          exit;
        end;

        // sublinhado + negrito
        Fonte := 'Sublinhado + negrito' + chr(10);
        if FormataTX(Fonte + Texto, 3, 0, 1, 0, 1) = 0 then
        begin
          MessageDlg('Problemas na impressão do texto formatado.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
          exit;
        end;

        // sublinhado + condensado
        Fonte := 'Sublinhado + condensado' + chr(10);
        if FormataTX(Fonte + Texto, 1, 0, 1, 0, 0) = 0 then
        begin
          MessageDlg('Problemas na impressão do texto formatado.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
          exit;
        end;

        // sublinhado + expandido + negrito
        Fonte := 'Sublinhado + expandido +negrito' + chr(10);
        if FormataTX(Fonte + Texto, 3, 0, 1, 1, 1) = 0 then
        begin
          MessageDlg('Problemas na impressão do texto formatado.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
          exit;
        end;

        // sublinhado + expandido  + condensado
        Fonte := 'Sublinhado + expandido  + condensado' + chr(10);
        if FormataTX(Fonte + Texto, 1, 0, 1, 1, 0) = 0 then
        begin
          MessageDlg('Problemas na impressão do texto formatado.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
          exit;
        end;

        // sublinhado + expandido + negrito + consensado
        Fonte := 'Sublinhado + expandido + negrito+ condensado' + chr(10);
        if FormataTX(Fonte + Texto, 1, 0, 1, 1, 1) = 0 then
        begin
          MessageDlg('Problemas na impressão do texto formatado.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
          exit;
        end;

        // Expandido + negrito
        Fonte := 'Expandido + negrito' + chr(10);
        if FormataTX(Fonte + Texto, 3, 0, 0, 1, 1) = 0 then
        begin
          MessageDlg('Problemas na impressão do texto formatado.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
          exit;
        end;

        // Expandido + condensado
        Fonte := 'Expandido + condensado' + chr(10);
        if FormataTX(Fonte + Texto, 1, 0, 0, 1, 0) = 0 then
        begin
          MessageDlg('Problemas na impressão do texto formatado.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
          exit;
        end;

        // Expandido + negrito + condensado
        Fonte := 'Expandido + negrito + condensado' + chr(10);
        if FormataTX(Fonte + Texto, 1, 0, 0, 1, 1) = 0 then
        begin
          MessageDlg('Problemas na impressão do texto formatado.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
          exit;
        end;

        // negrito + condensado
        Fonte := 'Negrito + condensado' + chr(10);
        if FormataTX(Fonte + Texto, 1, 0, 0, 0, 1) = 0 then
        begin
          MessageDlg('Problemas na impressão do texto formatado.' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
          exit;
        end;

end;

procedure TF_ImprimeDLL.BitBtn3Click(Sender: TObject);
var
  comando : integer;
begin
  comando := AcionaGuilhotina(1);  // modo total (full cut)
  if comando <> 1 then
      MessageDlg('Problemas no corte do papel..' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
end;

procedure TF_ImprimeDLL.BitBtn4Click(Sender: TObject);
var
  comando : integer;
begin
  comando := AcionaGuilhotina(0);  // modo total (Parcial cut)
  if comando <> 1 then
      MessageDlg('Problemas no corte do papel..' + #10 + 'Possíveis causas: Impressora desligada, off-line ou sem papel', mtError, [mbOk], 0 );
end;

end.
