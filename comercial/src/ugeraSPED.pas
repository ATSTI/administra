unit uGeraSPED;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit, ComCtrls;

type
  TfGeraSPED = class(TForm)
    btnGerar: TButton;
    Periodo: TGroupBox;
    Label1: TLabel;
    edtDestino: TEdit;
    edtCFOP: TEdit;
    edtPIS: TEdit;
    edtCofins: TEdit;
    Label2: TLabel;
    btnDestino: TButton;
    SaveDialog1: TSaveDialog;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtMunicipio: TEdit;
    Label6: TLabel;
    edtEmpresa: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    edtLocal: TEdit;
    btnLocal: TButton;
    OpenDialog1: TOpenDialog;
    edtData2: TJvDateEdit;
    edtData1: TJvDateEdit;
    procedure btnGerarClick(Sender: TObject);
    procedure btnDestinoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnLocalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fGeraSPED: TfGeraSPED;

implementation

uses UDm, Principal, UnitDeclaracoes;

{$R *.dfm}

procedure TfGeraSPED.btnGerarClick(Sender: TObject);
var cArquivoMFD, cArquivoTXT, cDataInicial, cDataFinal, cPerfil, cCFOP, cCODOBSFiscal,
cAliqPIS, cAliqCOFINS, cEmpresa, cCodMunicipio : String;
begin
  cArquivoMFD   := edtLocal.Text;
  cArquivoTXT   := edtDestino.Text;
  cDataInicial  := edtData1.Text;
  cDataFinal    := edtData2.Text;
  cPerfil       := 'A';
  cCFOP         := edtCFOP.Text;
  cCODOBSFiscal := ' ';
  cAliqPIS      := edtPIS.Text;
  cAliqCOFINS   := edtCofins.Text;
  cEmpresa      := edtEmpresa.Text;
  cCodMunicipio := edtMunicipio.Text;

  iRetorno := Bematech_FI_GeraRegistrosSpedCompleto( pchar( cArquivoMFD ), pchar( cArquivoTXT ), pchar( cDataInicial ), pchar( cDataFinal ), pchar( cPerfil ), pchar( cCFOP ), pchar( cCODOBSFiscal ), pchar( cAliqPIS ), pchar( cAliqCOFINS ) , pchar( cEmpresa ), pchar( cCodMunicipio ) );
  case iRetorno of
    0: MessageDlg('Erro de comunicação.', mtError, [mbOK], 0);
    1: MessageDlg('Arquivo Gerado com sucesso.', mtInformation, [mbOK], 0);
    3: MessageDlg('Não foi possível criar arquivo TXT', mtError, [mbOK], 0);
    4: MessageDlg('Data informada inválida', mtError, [mbOK], 0);
    -1: MessageDlg('Erro de execução da função', mtError, [mbOK], 0);
    -2: MessageDlg('Parâmetro inválido na função', mtError, [mbOK], 0);
    -4: MessageDlg('O arquivo de inicialização BemaFI32.ini não foi encontrado no diretório de sistema do Windows', mtError, [mbOK], 0);
    -5: MessageDlg('Erro ao abrir a porta de comunicação', mtError, [mbOK], 0);
    -27: MessageDlg('Status da impressora diferente de 6,0,0 (ACK, ST1 e ST2)', mtError, [mbOK], 0);
  end;
end;

procedure TfGeraSPED.btnDestinoClick(Sender: TObject);
begin
  SaveDialog1.Execute;
  edtDestino.Text := SaveDialog1.FileName;
end;

procedure TfGeraSPED.FormCreate(Sender: TObject);
begin
  edtEmpresa.Text := dm.cds_empresaRAZAO.AsString;
  edtMunicipio.Text := dm.cds_empresaCD_IBGE.AsString;
end;

procedure TfGeraSPED.btnLocalClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a MFD';
  OpenDialog1.DefaultExt := '*.MFD';
  OpenDialog1.Filter := 'Arquivos Cupom (*.MFD)|*.MFD|Todos os Arquivos (*.*)|*.*';
   if OpenDialog1.Execute then
  begin
    edtLocal.Text := OpenDialog1.FileName;
  end;
end;

end.
