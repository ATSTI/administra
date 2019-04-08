unit ufCompValor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, JvExMask,
  JvToolEdit, JvBaseEdits;

type
  TfCompValor = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    edtCompNome: TEdit;
    btnOk: TButton;
    btnFechar: TButton;
    btnEdita: TButton;
    valComp: TJvCalcEdit;
    procedure btnOkClick(Sender: TObject);
    procedure btnEditaClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    vallor : double;
    { Public declarations }
  end;

var
  fCompValor: TfCompValor;

implementation

{$R *.dfm}

uses uDMCTe, Frm_Demo_ACBrCTe;

procedure TfCompValor.btnEditaClick(Sender: TObject);
var strEdita :string;
begin
  if (edtCompNome.Text <> '') then
  begin

    FormatSettings.DecimalSeparator := ',';
    vallor := valComp.Value;
    FormatSettings.DecimalSeparator := '.';


    strEdita := 'UPDATE CTE_COMP SET COMP_NOME = ';
    strEdita := strEdita + QuotedStr(edtCompNome.Text);
    strEdita := strEdita + ', COMP_VALOR = ';
    strEdita := strEdita +  FloatToStr(vallor)  ; // +  Format('%8.2f', [valComp.Value]);
    strEdita := strEdita + ' WHERE COD_CTE_COMP = ';
    strEdita := strEdita + IntToStr(dm.qCOMPCOD_CTE_COMP.AsInteger);

    dm.con.AutoCommit := true;
    dm.con.StartTransaction;

    try
      dm.con.ExecuteDirect(strEdita);
      dm.con.Commit;
      MessageDlg('Componente Alterado com Sucesso.', mtInformation, [mbOK], 0);
      dm.qCOMP.Refresh;
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

procedure TfCompValor.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TfCompValor.btnOkClick(Sender: TObject);
var strInsere :string;
    val_gen   :integer;
begin

  if (edtCompNome.Text <> '') then
  begin
    if dm.cdsGen.Active then
      dm.cdsGen.Close;
    dm.cdsGen.CommandText := 'SELECT CAST(GEN_ID(GEN_CTE_QC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.cdsGen.Open;
    val_gen  := dm.cdsGen.Fields[0].AsInteger;
    dm.cdsGen.Close;
  end;

  close;

  if (edtCompNome.Text <> '') then
  begin
    FormatSettings.DecimalSeparator := ',';
    vallor := valComp.Value;
    FormatSettings.DecimalSeparator := '.';


    strInsere := 'INSERT INTO CTE_COMP (COD_CTE_COMP, COD_CTE ,COMP_NOME, COMP_VALOR  ' +
                 ') VALUES ( ';

    strInsere := strInsere +  IntToStr(val_gen ) ;
    strInsere := strInsere + ', ' + frmDemo_ACBrCTe.edtNumCte.Text;
    strInsere := strInsere + ', ' + QuotedStr(edtCompNome.Text);

    FormatSettings.DecimalSeparator := ',';
    vallor := valComp.Value;
    FormatSettings.DecimalSeparator := '.';
    strInsere := strInsere + ', '  + FloatToStr(vallor) ; //+ Format('%8.2f', [valComp.Value]);

    strInsere := strInsere + ')';

    dm.con.AutoCommit := true;
    dm.con.StartTransaction;

    try
      dm.con.ExecuteDirect(strInsere);
      dm.con.Commit;
      MessageDlg('Componente Gravada com Sucesso.', mtInformation, [mbOK], 0);
      dm.qCOMP.Refresh;
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

procedure TfCompValor.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    key:= #0;
    SelectNext((Sender as TwinControl),True,True);
  end
end;

end.
