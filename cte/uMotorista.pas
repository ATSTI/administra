unit uMotorista;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfMotorista = class(TForm)
    edtMotCpf: TEdit;
    edtMotNome: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnOK: TButton;
    Button2: TButton;
    btnEdita: TButton;
    procedure btnOKClick(Sender: TObject);
    procedure btnEditaClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMotorista: TfMotorista;

implementation

{$R *.dfm}

uses uDMCTe, Frm_Demo_ACBrCTe;

procedure TfMotorista.btnEditaClick(Sender: TObject);
var strEdita :string;
begin

  if (dm.cdsCTENPROT.AsString <> '') then
  begin
    MessageDlg('CTe Ja Enviada.', mtInformation, [mbOK], 0);
    exit;
  end;

  if (edtMotCpf.Text <> '') then
  begin
    FormatSettings.DecimalSeparator := '.';

    strEdita := 'UPDATE CTE_MOTORISTA  SET CPF = ';
    strEdita := strEdita +  QuotedStr(edtMotCpf.Text);
    strEdita := strEdita + ', NOME = ';
    strEdita := strEdita +  QuotedStr(edtMotNome.Text);

    strEdita := strEdita + ' WHERE COD_CTE_MOTORISTA = ';


    strEdita := strEdita + IntToStr(dm.cdsMotCOD_CTE_MOTORISTA.AsInteger);

    dm.con.AutoCommit := true;
    dm.con.StartTransaction;

    try
      dm.con.ExecuteDirect(strEdita);
      dm.con.Commit;
      MessageDlg('Motorista Alterado com Sucesso.', mtInformation, [mbOK], 0);
      dm.cdsMot.Refresh;
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

procedure TfMotorista.btnOKClick(Sender: TObject);
var  strInsere :string;
begin
  if (dm.cdsCTENPROT.AsString <> '') then
  begin
    MessageDlg('CTe Ja Enviada.', mtInformation, [mbOK], 0);
    exit;
  end;

  close;

  if (edtMotCpf.Text <> '') then
  begin

    strInsere := 'INSERT INTO CTE_MOTORISTA (COD_CTE ,CPF, NOME  ' +
                 ') VALUES ( ';

    strInsere := strInsere +  IntToStr(frmDemo_ACBrCTe.val_genCte ) ;
    //strInsere := strInsere + ', ' + frmDemo_ACBrCTe.edtNumCte.Text;
    strInsere := strInsere + ', ' + QuotedStr(edtMotCpf.Text);
    strInsere := strInsere + ', ' + QuotedStr(edtMotNome.Text);
    strInsere := strInsere + ')';

    dm.con.AutoCommit := true;
    dm.con.StartTransaction;

    try
      dm.con.ExecuteDirect(strInsere);
      dm.con.Commit;
      MessageDlg('Motorista Gravado com Sucesso.', mtInformation, [mbOK], 0);
      dm.cdsMot.Refresh;
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

procedure TfMotorista.Button2Click(Sender: TObject);
begin
  close;
end;

end.
