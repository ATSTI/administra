unit uDocOutros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfDocOutros = class(TForm)
    Label1: TLabel;
    edtNFeChave: TEdit;
    btnOk: TButton;
    btnFechar: TButton;
    btnEdita: TButton;
    procedure btnOkClick(Sender: TObject);
    procedure btnEditaClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDocOutros: TfDocOutros;

implementation

{$R *.dfm}

uses uDMCTe, Frm_Demo_ACBrCTe;

procedure TfDocOutros.btnEditaClick(Sender: TObject);
var strEdita :string;
begin

  if (dm.cdsCTENPROT.AsString <> '') then
  begin
    MessageDlg('CTe Ja Enviada.', mtInformation, [mbOK], 0);
    exit;
  end;

  if (edtNFeChave.Text <> '') then
  begin
    FormatSettings.DecimalSeparator := '.';
    strEdita := 'UPDATE CTE_NF SET NF_NUM = ';
    strEdita := strEdita + QuotedStr(edtNFeChave.Text);
    strEdita := strEdita + ' WHERE COD_CTE_NFE = ';
    strEdita := strEdita + IntToStr(dm.cdsNFeCOD_CTE_NFE.AsInteger);

    dm.con.AutoCommit := true;
    dm.con.StartTransaction;

    try
      dm.con.Commit;
      MessageDlg('NFe Alterada com Sucesso.', mtInformation, [mbOK], 0);
      dm.con.ExecuteDirect(strEdita);
      dm.qNFe.Refresh;
      FormatSettings.DecimalSeparator := ',';
      close;
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.con.Rollback;
        exit;
      end;
    end;
  end


end;

procedure TfDocOutros.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfDocOutros.btnOkClick(Sender: TObject);
var
    strInsere :string;
begin

  if (dm.cdsCTENPROT.AsString <> '') then
  begin
    MessageDlg('CTe Ja Enviada.', mtInformation, [mbOK], 0);
    exit;
  end;

  close;

  if (edtNFeChave.Text <> '') then
  begin
    FormatSettings.DecimalSeparator := '.';
    strInsere := 'INSERT INTO CTE_NF (COD_CTE, NFSERIE, NFNUM' +
                   ') VALUES ( ';

    strInsere := strInsere +  IntToStr(frmDemo_ACBrCTe.val_genCte) ;
    strInsere := strInsere + ', ' + QuotedStr('DOC');
    strInsere := strInsere + ', ' + QuotedStr(edtNFeChave.Text);
    strInsere := strInsere + ')';
  end;

  dm.con.AutoCommit := true;
  dm.con.StartTransaction;

  try
    dm.con.ExecuteDirect(strInsere);
    dm.con.Commit;
    MessageDlg('Dados Outros Docs. Gravado com Sucesso.', mtInformation, [mbOK], 0);
    dm.qNF.Refresh;
    FormatSettings.DecimalSeparator := ',';
  except
    on E : Exception do
    begin
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      dm.con.Rollback;
      exit;
    end;
  end;

end;

end.
