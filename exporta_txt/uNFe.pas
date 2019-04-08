unit uNFe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, JvExMask,
  JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit;

type
  TfNFe = class(TForm)
    Label1: TLabel;
    edtNFeChave: TEdit;
    Label2: TLabel;
    edtNFePin: TEdit;
    dataNFePrev: TJvDatePickerEdit;
    Label165: TLabel;
    btnOk: TButton;
    btnFechar: TButton;
    btnEdita: TButton;
    procedure btnOkClick(Sender: TObject);
    procedure btnEditaClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNFe: TfNFe;

implementation

{$R *.dfm}

uses uDMCTe, Frm_Demo_ACBrCTe;

procedure TfNFe.btnEditaClick(Sender: TObject);
var strEdita :string;
begin
  if (edtNFeChave.Text <> '') then
  begin
    FormatSettings.DecimalSeparator := '.';
    strEdita := 'UPDATE CTE_NFE SET CHAVE = ';
    strEdita := strEdita + QuotedStr(edtNFeChave.Text);
    if(edtNFePin.Text <> '')then
    begin
      strEdita := strEdita + ', PIN = ';
      strEdita := strEdita +  QuotedStr(edtNFePin.Text);
    end;
    strEdita := strEdita + ', DPREV = ';
    strEdita := strEdita +  QuotedStr(FormatDateTime('mm/dd/yyyy',dataNFePrev.date));
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

procedure TfNFe.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TfNFe.btnOkClick(Sender: TObject);
var val_gen : integer;
    strInsere :string;
begin

if (edtNFeChave.Text <> '') then
  begin
    if dm.cdsGen.Active then
      dm.cdsGen.Close;
    dm.cdsGen.CommandText := 'SELECT CAST(GEN_ID(GEN_CTE_QC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.cdsGen.Open;
    val_gen  := dm.cdsGen.Fields[0].AsInteger;
    dm.cdsGen.Close;
  end;
  close;

  if (edtNFeChave.Text <> '') then
  begin
    if(edtNFePin.Text = '') then
    begin
      strInsere := 'INSERT INTO CTE_NFE (COD_CTE_NFE, CTE_NFE, CHAVE,DPREV  ' +
                   ') VALUES ( ';

      strInsere := strInsere +  IntToStr(val_gen ) ;
      strInsere := strInsere + ', ' + frmDemo_ACBrCTe.edtNumCte.Text;
      strInsere := strInsere + ', ' + QuotedStr(edtNFeChave.Text);
      if(dataNFePrev.Checked)then
        strInsere := strInsere + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy',dataNFePrev.Date))
      else strInsere := strInsere + ',null';
      strInsere := strInsere + ')';
    end;
    if(edtNFePin.Text <> '') then
    begin
    strInsere := 'INSERT INTO CTE_NFE (COD_CTE_NFE, CTE_NFE ,CHAVE,PIN,DPREV  ' +
                 ') VALUES ( ';

    strInsere := strInsere +  IntToStr(val_gen ) ;
    strInsere := strInsere + ', ' + frmDemo_ACBrCTe.edtNumCte.Text;
    strInsere := strInsere + ', ' + QuotedStr(edtNFeChave.Text);
    strInsere := strInsere + ', ' + QuotedStr(edtNFePin.Text);
    strInsere := strInsere + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy',dataNFePrev.Date));
    strInsere := strInsere + ')';
    end;



    dm.con.AutoCommit := true;
    dm.con.StartTransaction;

    try
      dm.con.ExecuteDirect(strInsere);
      dm.con.Commit;
      MessageDlg('Dados da NFe Gravado com Sucesso.', mtInformation, [mbOK], 0);
      dm.qNFe.Refresh;
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

procedure TfNFe.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    key:= #0;
    SelectNext((Sender as TwinControl),True,True);
  end
end;

end.
