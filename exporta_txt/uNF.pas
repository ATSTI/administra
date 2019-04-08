unit uNF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, Vcl.Mask, JvExMask, JvToolEdit,
  JvBaseEdits;

type
  TfNF = class(TForm)
    valNFValor: TJvCalcEdit;
    Label164: TLabel;
    valNFICMSST: TJvCalcEdit;
    Label160: TLabel;
    dataNFPrev: TJvDatePickerEdit;
    Label156: TLabel;
    valNFValProd: TJvCalcEdit;
    Label163: TLabel;
    valNFBaseST: TJvCalcEdit;
    Label159: TLabel;
    edtNFNumP: TEdit;
    Label155: TLabel;
    Label158: TLabel;
    valNFICMS: TJvCalcEdit;
    Label162: TLabel;
    edtNFPin: TEdit;
    valNFPeso: TJvCalcEdit;
    Label161: TLabel;
    valNFBase: TJvCalcEdit;
    Label157: TLabel;
    edtNFRoma: TEdit;
    Label154: TLabel;
    comboNFModelo: TComboBox;
    Label153: TLabel;
    edtNFCFOP: TEdit;
    Label152: TLabel;
    dataNFEmi: TJvDatePickerEdit;
    Label151: TLabel;
    edtNFNum: TEdit;
    Label150: TLabel;
    Label149: TLabel;
    edtNFserie: TEdit;
    btnOk: TButton;
    btnFechar: TButton;
    btnEdita: TButton;
    procedure btnEditaClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNF: TfNF;

implementation

{$R *.dfm}

uses uDMCTe, Frm_Demo_ACBrCTe;

procedure TfNF.btnEditaClick(Sender: TObject);
var strEdita :string;
begin
  if (edtNFserie.Text <> '') then
  begin
    FormatSettings.DecimalSeparator := '.';
    strEdita := 'UPDATE CTE_NF SET NFSERIE = ';
    strEdita := strEdita + QuotedStr(edtNFserie.Text);
    strEdita := strEdita + ', NFNUM = ';
    strEdita := strEdita +  QuotedStr(edtNFNum.Text);
    strEdita := strEdita + ', NFEMI = ';
    strEdita := strEdita +  QuotedStr(FormatDateTime('mm/dd/yyyy',dataNFEmi.Date));
    strEdita := strEdita + ', NFCFOP = ';
    strEdita := strEdita +  QuotedStr(edtNFCFOP.Text);
    strEdita := strEdita + ', NFMODELO = ';
    strEdita := strEdita + QuotedStr(Copy(comboNFModelo.Text,1,2));
    strEdita := strEdita + ', NFROMA = ';
    strEdita := strEdita +  QuotedStr(edtNFRoma.Text);
    strEdita := strEdita + ', NFNUMP = ';
    strEdita := strEdita +  QuotedStr(edtNFNumP.Text);
    if(dataNFPrev.Checked) then
    begin
      strEdita := strEdita + ', NFPREV = ';
      strEdita := strEdita + QuotedStr(FormatDateTime('mm/dd/yyyy',dataNFPrev.Date));
    end;
    strEdita := strEdita + ', NFBASE = ';
    strEdita := strEdita +  Format('%8.2f', [valNFBase.Value]);
    strEdita := strEdita + ', NFICMS = ';
    strEdita := strEdita +  Format('%8.2f', [valNFICMS.Value]);
    strEdita := strEdita + ', NFBASEST = ';
    strEdita := strEdita +  Format('%8.2f', [valNFBaseST.Value]);
    strEdita := strEdita + ', NFICMSST = ';
    strEdita := strEdita +  Format('%8.2f', [valNFICMSST.Value]);
    strEdita := strEdita + ', LNFPESO = ';
    strEdita := strEdita +  Format('%8.2f', [valNFPeso.Value]);
    if(dm.cdsNFNFPIN.Value <> null )then
    begin
      strEdita := strEdita + ', NFPIN = ';
      strEdita := strEdita +  QuotedStr(edtNFPin.Text);
    end;
    strEdita := strEdita + ', NFVALPROD = ';
    strEdita := strEdita +  Format('%8.2f', [valNFValProd.Value]);
    strEdita := strEdita + ', NFVALOR = ';
    strEdita := strEdita +  Format('%8.2f', [valNFValor.Value]);

    strEdita := strEdita + ' WHERE COD_CTE_NF = ';
    strEdita := strEdita + IntToStr(dm.qNFCOD_CTE_NF.AsInteger);


    dm.con.AutoCommit := true;
    dm.con.StartTransaction;

     try
      dm.con.ExecuteDirect(strEdita);
      dm.con.Commit;
      MessageDlg('NF Alterada com Sucesso.', mtInformation, [mbOK], 0);
      dm.qNF.Refresh;
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

procedure TfNF.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TfNF.btnOkClick(Sender: TObject);
var val_gen : integer;
    strInsere :string;
begin

  if (edtNFserie.Text <> '') then
  begin
    if dm.cdsGen.Active then
      dm.cdsGen.Close;
    dm.cdsGen.CommandText := 'SELECT CAST(GEN_ID(GEN_CTE_QC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.cdsGen.Open;
    val_gen  := dm.cdsGen.Fields[0].AsInteger;
    dm.cdsGen.Close;
  end;
  close;

  if (edtNFserie.Text <> '') then
  begin
    FormatSettings.DecimalSeparator := '.';
    strInsere := 'INSERT INTO CTE_NF (COD_CTE_NF, COD_CTE, NFSERIE,NFNUM, NFEMI,NFCFOP, NFMODELO, NFROMA, NFNUMP ' +
                   ', NFPREV, NFBASE, NFICMS, NFBASEST, NFICMSST, LNFPESO, NFPIN, NFVALPROD, NFVALOR ' +
                   ') VALUES ( ';

    strInsere := strInsere +  IntToStr(val_gen ) ;
    strInsere := strInsere + ', ' + frmDemo_ACBrCTe.edtNumCte.Text;
    strInsere := strInsere + ', ' + QuotedStr(edtNFserie.Text);
    strInsere := strInsere + ', ' + QuotedStr(edtNFNum.Text);
    strInsere := strInsere + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy',dataNFEmi.Date));
    strInsere := strInsere + ', ' + QuotedStr(edtNFCFOP.Text);

    strInsere := strInsere + ', ' + QuotedStr(Copy(comboNFModelo.Text,1,2));
    strInsere := strInsere + ', ' + QuotedStr(edtNFRoma.Text);
    strInsere := strInsere + ', ' + QuotedStr(edtNFNumP.Text);
    if(dataNFPrev.Checked)then
      strInsere := strInsere + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy',dataNFPrev.Date))
    else strInsere := strInsere + ',null';

    strInsere := strInsere + ', ' + Format('%8.2f', [valNFBase.Value]);
    strInsere := strInsere + ', ' + Format('%8.2f', [valNFICMS.Value]);
    strInsere := strInsere + ', ' + Format('%8.2f', [valNFBaseST.Value]);
    strInsere := strInsere + ', ' + Format('%8.2f', [valNFICMSST.Value]);

    strInsere := strInsere + ', ' + Format('%8.2f', [valNFPeso.Value]);
    if(edtNFPin.Text <> '')then
      strInsere := strInsere + ', ' + QuotedStr(edtNFPin.Text)
    else strInsere := strInsere + ',null';
    strInsere := strInsere + ', ' + Format('%8.2f', [valNFValProd.Value]);
    strInsere := strInsere + ', ' + Format('%8.2f', [valNFValor.Value]);


    strInsere := strInsere + ')';
  end;


  dm.con.AutoCommit := true;
  dm.con.StartTransaction;

  try
    dm.con.ExecuteDirect(strInsere);
    dm.con.Commit;
    MessageDlg('Dados da NF Gravado com Sucesso.', mtInformation, [mbOK], 0);
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

procedure TfNF.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    key:= #0;
    SelectNext((Sender as TwinControl),True,True);
  end;
end;

end.
