unit uQuantCarga;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,Data.DB,
  Vcl.Mask, JvExMask, JvToolEdit, JvBaseEdits;

type
  TfQuantCarga = class(TForm)
    combQC: TComboBox;
    edtQCTm: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnOk: TButton;
    btnFechar: TButton;
    btnEdita: TButton;
    valQCQ: TJvCalcEdit;
    procedure btnFecharClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnEditaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    valorQ : double;
  end;

var
  fQuantCarga: TfQuantCarga;

implementation

{$R *.dfm}

uses Frm_Demo_ACBrCTe, uDMCTe;

procedure TfQuantCarga.btnOkClick(Sender: TObject);
var strInsere :string;
    val_gen   :integer;
begin
    //frmDemo_ACBrCTe.dsQC.DataSet.State in [dsInsert]

  if (combQC.Text <> '') then
  begin
    if dm.cdsGen.Active then
      dm.cdsGen.Close;
    dm.cdsGen.CommandText := 'SELECT CAST(GEN_ID(GEN_CTE_QC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.cdsGen.Open;
    val_gen  := dm.cdsGen.Fields[0].AsInteger;
    dm.cdsGen.Close;
  end;
  close;

  if (combQC.Text <> '') then
  begin

    strInsere := 'INSERT INTO CTE_QC (COD_CTE_QC, COD_CTE ,UNID, MEDIDA, QUANT  ' +
                 ') VALUES ( ';

    FormatSettings.DecimalSeparator := ',';
    valorQ := valQCQ.Value;
    FormatSettings.DecimalSeparator := '.';


    strInsere := strInsere +  IntToStr(val_gen ) ;
    strInsere := strInsere + ', ' + frmDemo_ACBrCTe.edtNumCte.Text;
    strInsere := strInsere + ', ' + QuotedStr(Copy(combQC.Text,1,2));   // Copy(combQC.Text , Pos('-', combQC.Text) + 1, Length(combQC.Text)); //copy(QuotedStr(combQC.Items[i],2,pos));
    strInsere := strInsere + ', ' + QuotedStr(edtQCTm.Text);
    strInsere := strInsere + ', ' +  FloatToStr(valorQ)  ; //+ Format('%8.2f', [valQCQ.Value]);
    strInsere := strInsere + ')';

    dm.con.AutoCommit := true;
    dm.con.StartTransaction;

    try
      dm.con.ExecuteDirect(strInsere);
      dm.con.Commit;
      MessageDlg('Quantidade de Carga Gravada com sucesso.', mtInformation, [mbOK], 0);
      dm.qQC.Refresh;
      FormatSettings.DecimalSeparator := ',';
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

procedure TfQuantCarga.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfQuantCarga.btnEditaClick(Sender: TObject);
var strEdita :string;
begin
  if (combQC.Text <> '') then
  begin
    FormatSettings.DecimalSeparator := ',';
    valorQ := valQCQ.Value;
    FormatSettings.DecimalSeparator := '.';

    strEdita := 'UPDATE CTE_QC SET UNID = ';
    strEdita := strEdita + QuotedStr(Copy(combQC.Text,1,2));
    strEdita := strEdita + ', MEDIDA = ';
    strEdita := strEdita +  QuotedStr(edtQCTm.Text);
    strEdita := strEdita + ', QUANT = ';
    strEdita := strEdita + FloatToStr(valorQ) ; //+  Format('%8.2f', [valQCQ.Value]);
    strEdita := strEdita + ' WHERE COD_CTE_QC = ';
    strEdita := strEdita + IntToStr(dm.cdsQCCOD_CTE_QC.AsInteger);

    dm.con.AutoCommit := true;
    dm.con.StartTransaction;

    try
      dm.con.ExecuteDirect(strEdita);
      dm.con.Commit;
      MessageDlg('Quantidade de Carga Alterada com Sucesso.', mtInformation, [mbOK], 0);
      dm.qQC.Refresh;
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

procedure TfQuantCarga.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

end.
