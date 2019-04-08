unit uSeguro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, JvExMask,
  JvToolEdit, JvBaseEdits;

type
  TfSeguro = class(TForm)
    Label1: TLabel;
    combSeguro: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtSeguNumApo: TEdit;
    edtSegNome: TEdit;
    edtSegNumAver: TEdit;
    btnOk: TButton;
    btnSegFechar: TButton;
    btnEditar: TButton;
    valSegValor: TJvCalcEdit;
    procedure btnOkClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnSegFecharClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    valorS : double;
  end;

var
  fSeguro: TfSeguro;

implementation

{$R *.dfm}

uses uDMCTe, Frm_Demo_ACBrCTe;

procedure TfSeguro.btnEditarClick(Sender: TObject);
var strEdita :string;
begin
  if (combSeguro.Text <> '') then
  begin
    FormatSettings.DecimalSeparator := ',';
    valorS := valSegValor.Value;
    FormatSettings.DecimalSeparator := '.';


    strEdita := 'UPDATE CTE_SEGURO  SET RESP = ';
    strEdita := strEdita + QuotedStr(Copy(combSeguro.Text,1,1));
    if(edtSegNome.Text <> '')then
    begin
      strEdita := strEdita + ', NOME_SEGURADORA = ';
      strEdita := strEdita +  QuotedStr(edtSegNome.Text);
    end;
    if(edtSeguNumApo.Text <> '')then
    begin
      strEdita := strEdita + ', NUMERO_APOLICE = ';
      strEdita := strEdita +  edtSeguNumApo.Text;
    end;
    if(valSegValor.Text <> '' )then
    begin
      strEdita := strEdita + ', VALOR = ';
      strEdita := strEdita +  FloatToStr(valorS)  ; // +  valSegValor.Text;
    end;
    if(edtSegNumAver.Text <> '')then
    begin
      strEdita := strEdita + ', NUMERO_AVERBACAO = ';
      strEdita := strEdita +  edtSegNumAver.Text;
    end;

    strEdita := strEdita + ' WHERE COD_CTE_SEGURO = ';
    strEdita := strEdita + IntToStr(dm.qSegCOD_CTE_SEGURO.AsInteger);

    dm.con.AutoCommit := true;
    dm.con.StartTransaction;

    try
      dm.con.ExecuteDirect(strEdita);
      dm.con.Commit;
      MessageDlg('Quantidade de Carga Alterada com Sucesso.', mtInformation, [mbOK], 0);
      dm.qSeg.Refresh;
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

procedure TfSeguro.btnOkClick(Sender: TObject);
var val_gen  : integer;
    strInsere :string;
begin

if (combSeguro.Text <> '') then
  begin
    if dm.cdsGen.Active then
      dm.cdsGen.Close;
    dm.cdsGen.CommandText := 'SELECT CAST(GEN_ID(GEN_CTE_QC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.cdsGen.Open;
    val_gen  := dm.cdsGen.Fields[0].AsInteger;
    dm.cdsGen.Close;
  end;
  close;

  if (combSeguro.Text <> '') then
  begin
    FormatSettings.DecimalSeparator := ',';
    valorS := valSegValor.Value;
    FormatSettings.DecimalSeparator := '.';

    strInsere := 'INSERT INTO CTE_SEGURO (COD_CTE_SEGURO, COD_CTE ,RESP,  ' +
                 ' NOME_SEGURADORA ,NUMERO_APOLICE,VALOR ,NUMERO_AVERBACAO ' +
                 ') VALUES ( ';

    strInsere := strInsere +  IntToStr(val_gen ) ;
    strInsere := strInsere + ', ' + frmDemo_ACBrCTe.edtNumCte.Text;
    strInsere := strInsere + ', ' + QuotedStr(Copy(combSeguro.Text,1,1));
    strInsere := strInsere + ', ' + QuotedStr(edtSegNome.Text);
    strInsere := strInsere + ', ' + QuotedStr(edtSeguNumApo.Text);
    strInsere := strInsere + ', ' + FloatToStr(valorS) ; //+  Format('%8.2f', [valSegValor.Value]);
    strInsere := strInsere + ', ' + QuotedStr(edtSegNumAver.Text);



    strInsere := strInsere + ')';

    dm.con.AutoCommit := true;
    dm.con.StartTransaction;

    try
      dm.con.ExecuteDirect(strInsere);
      dm.con.Commit;
      MessageDlg('Dados do Seguro Gravado com Sucesso.', mtInformation, [mbOK], 0);
      dm.qSeg.Refresh;
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

procedure TfSeguro.btnSegFecharClick(Sender: TObject);
begin
  close;
end;

procedure TfSeguro.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

end.
