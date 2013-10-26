unit uNotaFiscalEscola;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCore, dxButton, StdCtrls, Mask, Buttons, JvExMask, JvToolEdit,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, DBXpress;

type
  TfNotaFiscalEscola = class(TForm)
    Label8: TLabel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    data1: TJvDatePickerEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNotaFiscalEscola: TfNotaFiscalEscola;

implementation

uses ucrEscolas, UDm, ufcr;

{$R *.dfm}

procedure TfNotaFiscalEscola.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfNotaFiscalEscola.BitBtn1Click(Sender: TObject);
var
  testo_update : string;
  TD: TTransactionDesc;
begin
  if (not fcrEscolas.scdsCr_proc.Active) then
  begin
   MessageDlg('Pôr favor efetue a pesquisa antes, para depois imprimir..', mtWarning, [mbOK], 0);
   exit;
  end;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);

  // marco as Duplicatas a serem impressas
  fcrEscolas.scdsCr_proc.DisableControls;
  fcrEscolas.scdsCr_proc.First;
  While not fcrEscolas.scdsCr_proc.Eof do
  begin
    if (fcrEscolas.scdsCr_procDUP_REC_NF.AsString = 'S') then
    begin
      testo_update := '';
      testo_update := 'update RECEBIMENTO set DP = 1 ' ;
      testo_update := testo_update + 'where CODRECEBIMENTO = ';
      testo_update := testo_update + IntToStr(fcrEscolas.scdsCr_procCODRECEBIMENTO.AsInteger);
      dm.sqlsisAdimin.ExecuteDirect(testo_update);
    end;
    fcrEscolas.scdsCr_proc.Next;
  end;
  dm.sqlsisAdimin.Commit(TD);
  //======================================================
  fcrEscolas.scdsCr_proc.First;
  fcrEscolas.scdsCr_proc.EnableControls;

  fcrEscolas.VCLReport1.Filename := str_relatorio + 'NfCrEscola.rep';
  fcrEscolas.VCLReport1.Report.Params.ParamByName('EMISSAO').Value := data1.Date;
  fcrEscolas.VCLReport1.Execute
end;

procedure TfNotaFiscalEscola.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   dm.sqlsisAdimin.ExecuteDirect('update RECEBIMENTO set DP = null WHERE DP = 1');
end;

end.
