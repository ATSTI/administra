unit uEstoqueFecha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, Grids, DBGrids, JvExDBGrids,
  JvDBGrid;

type
  TForm2 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    JvDBGrid1: TJvDBGrid;
    cbb1: TComboBox;
    edtCaixa: TEdit;
    dta1: TJvDatePickerEdit;
    btn1: TBitBtn;
    ds1: TDataSource;
    procedure JvDBGrid1CellClick(Column: TColumn);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.JvDBGrid1CellClick(Column: TColumn);
begin
  dta1.Clear;
  ComboBox1.ItemIndex := -1;
  edtCaixa.Text := dm.cds_7_contasNOME.AsString;
  if (dm.sqlBusca.Active) then
    dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT DATAFECHAMENTO, SITUACAO FROM ESTOQUE_CONTROLE WHERE CODCAIXA = ' +
    IntToStr(dm.cds_7_contasCODIGO.AsInteger));
  dm.sqlBusca.Open;
  if (not dm.sqlBusca.IsEmpty) then
  begin
    dta1.Date := dm.sqlBusca.FieldByName('DATAFECHAMENTO').AsDateTime;
    if (dm.sqlBusca.FieldByName('SITUACAO').AsString = 'F') then
      CbB1.ItemIndex := 0;
    if (dm.sqlBusca.FieldByName('SITUACAO').AsString = 'A') then
      CbB1.ItemIndex := 1;
    if ((dm.sqlBusca.FieldByName('SITUACAO').AsString <> 'F') and (dm.sqlBusca.FieldByName('SITUACAO').AsString <> 'A')) then
      CbB1.ItemIndex := -1;
  end;

end;

procedure TForm2.btn1Click(Sender: TObject);
  var str: String;
    TD: TTransactionDesc;
begin
  if (ComboBox1.ItemIndex < 0) then
  begin
    MessageDlg('Não foi informado a situação do Local do Estoque.', mtError, [mbOK], 0);
    ComboBox1.SetFocus;
    exit;
  end;
  if (dm.sqlBusca.Active) then
    dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT  IDESTOQUECONTROLE, CODUSUARIO, DATAFECHAMENTO, SITUACAO ' +
    ' FROM ESTOQUE_CONTROLE WHERE IDESTOQUECONTROLE = ' +
    IntToStr(dm.cds_7_contasCODIGO.AsInteger));
  dm.sqlBusca.Open;
  if (dm.sqlBusca.IsEmpty) then
  begin
    str := 'INSERT INTO ESTOQUE_CONTROLE (IDESTOQUECONTROLE, CODUSUARIO, DATAFECHAMENTO, SITUACAO' +
      ' )  VALUES (' + IntToStr(dm.cds_7_contasCODIGO.AsInteger);
    str := str + ', ' + IntToStr(dm.cds_7_contasCODIGO.AsInteger);
    str := str + ', 1, '  + QuotedStr(FormatDateTime('mm/dd/yyyy', dta1.Date));
    if (cbb1.ItemIndex = 0) then
      str := str + ', ' + QuotedStr('F');
    if (cbb1.ItemIndex = 1) then
      str := str + ', ' + QuotedStr('A');
    str := str + ')';
  end
  else begin
    str := 'UPDATE ESTOQUE_CONTROLE SET DATAFECHAMENTO = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', dta1.Date));
    if (ComboBox1.ItemIndex = 0) then
      str := str + ', SITUACAO = ' + QuotedStr('F');
    if (ComboBox1.ItemIndex = 1) then
      str := str + ', SITUACAO = ' + QuotedStr('A');
    str := str + ' WHERE IDESTOQUECONTROLE = ' + IntToStr(dm.cds_7_contasCODIGO.AsInteger);
  end;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  Try
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(str);
    dm.sqlsisAdimin.Commit(TD);
    MessageDlg('Fechamento Estoque feito com sucesso.', mtInformation, [mbOK], 0);
  except
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro para Alterar Fechamento Estoque.', mtError, [mbOK], 0);
  end;

end;

end.
