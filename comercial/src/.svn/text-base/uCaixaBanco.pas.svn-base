unit uCaixaBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvExDBGrids, JvDBGrid, DB, Mask, JvExMask,
  JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, StdCtrls,
  Buttons, dbxpress, FMTBcd, DBClient, Provider, SqlExpr;

type
  TfCaixaBanco = class(TForm)
    JvDBGrid1: TJvDBGrid;
    DataSource1: TDataSource;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    edCaixa: TEdit;
    Label3: TLabel;
    dta1: TJvDatePickerEdit;
    BitBtn1: TBitBtn;
    s_7: TSQLDataSet;
    s_7CODIGO: TIntegerField;
    s_7CONTA: TStringField;
    s_7NOME: TStringField;
    s_7RATEIO: TStringField;
    s_7CODREDUZIDO: TStringField;
    d_7: TDataSetProvider;
    cds_7_contas: TClientDataSet;
    cds_7_contasCODIGO: TIntegerField;
    cds_7_contasCONTA: TStringField;
    cds_7_contasNOME: TStringField;
    cds_7_contasRATEIO: TStringField;
    cds_7_contasCODREDUZIDO: TStringField;
    BitBtn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure JvDBGrid1CellClick(Column: TColumn);
    procedure BitBtn2Click(Sender: TObject);
  private
    caixaSelec, statusCaixa : String;
    dataFechado: TDateTime;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCaixaBanco: TfCaixaBanco;

implementation

uses UDm, uLogs;

{$R *.dfm}

procedure TfCaixaBanco.FormShow(Sender: TObject);
var strConta, contaCaixa: String;
begin
  contaCaixa := '';
   // Listo as Contas Caixa
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CAIXA_BANCO';
  dm.cds_parametro.Open;
  if not cds_7_contas.Active then
  begin
    contaCaixa := dm.cds_parametroDADOS.AsString;
  end;
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTROCUSTO';
  dm.cds_parametro.Open;

  strConta := 'select CODIGO, CONTA, NOME, RATEIO, CODREDUZIDO from PLANO ' +
    ' where ((plnCtaMain(CONTA) = ' + QuotedStr(contaCaixa) + ') ' +
    '    or (plnCtaRoot(CONTA) = ' + QuotedStr(dm.cds_parametroDADOS.AsString) + '))'  +
    '   and (CONSOLIDA = ' + QuotedStr('S') + ')';

  if cds_7_contas.Active then
    cds_7_contas.Close;
  cds_7_contas.CommandText := strConta;
  cds_7_contas.Open;

  dm.cds_parametro.Close;
end;

procedure TfCaixaBanco.BitBtn1Click(Sender: TObject);
  var str: String;
    TD: TTransactionDesc;
    logStVelho, logStNovo, acao: String;
begin
  if (ComboBox1.ItemIndex < 0) then
  begin
    MessageDlg('Não foi informado a situação do Caixa/Banco.', mtError, [mbOK], 0);
    ComboBox1.SetFocus;
    exit;
  end;
  if (dm.sqlBusca.Active) then
    dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT IDCAIXACONTROLE FROM CAIXA_CONTROLE WHERE CODCAIXA = ' +
    IntToStr(cds_7_contasCODIGO.AsInteger));
  dm.sqlBusca.Open;
  if (dm.sqlBusca.IsEmpty) then
  begin
    acao := 'INSERIDO';
    str := 'INSERT INTO CAIXA_CONTROLE (IDCAIXACONTROLE, CODCAIXA, CODUSUARIO, ' +
      ' DATAFECHAMENTO, SITUACAO)  VALUES (' + IntToStr(cds_7_contasCODIGO.AsInteger);
    str := str + ', ' + IntToStr(cds_7_contasCODIGO.AsInteger);
    str := str + ', 1, '  + QuotedStr(FormatDateTime('mm/dd/yyyy', dta1.Date));
    if (ComboBox1.ItemIndex = 0) then
      str := str + ', ' + QuotedStr('F');
    if (ComboBox1.ItemIndex = 1) then
      str := str + ', ' + QuotedStr('A');
    str := str + ')';
  end
  else begin
    acao := 'MODIFICADO';
    str := 'UPDATE CAIXA_CONTROLE SET DATAFECHAMENTO = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', dta1.Date));
    if (ComboBox1.ItemIndex = 0) then
      str := str + ', SITUACAO = ' + QuotedStr('F');
    if (ComboBox1.ItemIndex = 1) then
      str := str + ', SITUACAO = ' + QuotedStr('A');
    str := str + ' WHERE CODCAIXA = ' + IntToStr(cds_7_contasCODIGO.AsInteger);
  end;

  logStVelho :=  'V:' + copy(caixaSelec,0,20) + '-' + statusCaixa + '-DT:' +
    FormatDateTime('mm/dd/yyyy', dataFechado);

  logStNovo :=  'V:' + copy(edCaixa.Text,0,20) + '-';
  if (ComboBox1.ItemIndex = 0) then
    logStNovo := logStNovo + 'F';
  if (ComboBox1.ItemIndex = 1) then
    logStNovo := logStNovo + 'A';

  logStNovo := logStNovo + '-DT:' +  FormatDateTime('mm/dd/yyyy', dta1.Date);

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  Try
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(str);
    dm.gravaLog(Now, dm.varLogado, 'CAIXA_CONTROLE', MICRO, logStVelho, logStNovo, IntToStr(cds_7_contasCODIGO.AsInteger), acao);
    dm.sqlsisAdimin.Commit(TD);
    MessageDlg('Caixa/Banco modificado com sucesso.', mtInformation, [mbOK], 0);
  except
    on E : Exception do
    begin
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
    end;
  end;
end;

procedure TfCaixaBanco.JvDBGrid1CellClick(Column: TColumn);
begin
  dta1.Clear;
  ComboBox1.ItemIndex := -1;
  edCaixa.Text := cds_7_contasNOME.AsString;
  if (dm.sqlBusca.Active) then
    dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add('SELECT DATAFECHAMENTO, SITUACAO FROM CAIXA_CONTROLE WHERE CODCAIXA = ' +
    IntToStr(cds_7_contasCODIGO.AsInteger));
  dm.sqlBusca.Open;
  if (not dm.sqlBusca.IsEmpty) then
  begin
    dta1.Date := dm.sqlBusca.FieldByName('DATAFECHAMENTO').AsDateTime;
    if (dm.sqlBusca.FieldByName('SITUACAO').AsString = 'F') then
      ComboBox1.ItemIndex := 0;
    if (dm.sqlBusca.FieldByName('SITUACAO').AsString = 'A') then
      ComboBox1.ItemIndex := 1;
    if ((dm.sqlBusca.FieldByName('SITUACAO').AsString <> 'F') and (dm.sqlBusca.FieldByName('SITUACAO').AsString <> 'A')) then
      ComboBox1.ItemIndex := -1;
    caixaSelec  := cds_7_contasNOME.AsString;
    dataFechado := dm.sqlBusca.FieldByName('DATAFECHAMENTO').AsDateTime;
    statusCaixa := dm.sqlBusca.FieldByName('SITUACAO').AsString;
  end;
end;

procedure TfCaixaBanco.BitBtn2Click(Sender: TObject);
begin
  fLogs := TfLogs.Create(Application);
  try
    dm.abrirLog('CAIXA_CONTROLE', IntToStr(cds_7_contasCODIGO.AsInteger), 'CAIXA');
    fLogs.ShowModal;
  finally
    fLogs.Free;
  end;
end;

end.
