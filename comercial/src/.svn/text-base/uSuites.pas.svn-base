unit uSuites;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls, Buttons,
  ExtCtrls, MMJPanel, Grids, DBGrids, JvExDBGrids, JvDBGrid, DBXpress;

type
  TfSuites = class(TForm)
    JvDBGrid1: TJvDBGrid;
    MMJPanel1: TMMJPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    cbb1: TComboBox;
    pnl1: TPanel;
    btn1: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    chk1: TCheckBox;
    s_suites: TSQLDataSet;
    p_Suites: TDataSetProvider;
    c_Suites: TClientDataSet;
    ds1: TDataSource;
    s_suitesDESCRICAO: TStringField;
    s_suitesPARAMETRO: TStringField;
    s_suitesCONFIGURADO: TStringField;
    s_suitesDADOS: TStringField;
    s_suitesD1: TStringField;
    s_suitesD2: TStringField;
    s_suitesD3: TStringField;
    s_suitesD4: TStringField;
    s_suitesD5: TStringField;
    s_suitesD6: TStringField;
    s_suitesD7: TStringField;
    s_suitesD8: TStringField;
    s_suitesD9: TStringField;
    s_suitesINSTRUCOES: TStringField;
    s_suitesVALOR: TFloatField;
    c_SuitesDESCRICAO: TStringField;
    c_SuitesPARAMETRO: TStringField;
    c_SuitesCONFIGURADO: TStringField;
    c_SuitesDADOS: TStringField;
    c_SuitesD1: TStringField;
    c_SuitesD2: TStringField;
    c_SuitesD3: TStringField;
    c_SuitesD4: TStringField;
    c_SuitesD5: TStringField;
    c_SuitesD6: TStringField;
    c_SuitesD7: TStringField;
    c_SuitesD8: TStringField;
    c_SuitesD9: TStringField;
    c_SuitesINSTRUCOES: TStringField;
    c_SuitesVALOR: TFloatField;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    TD: TTransactionDesc;
    sql_texto : String;
    v_sqlConsulta : TSqlQuery;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSuites: TfSuites;

implementation

uses UDm;

{$R *.dfm}

procedure TfSuites.btn1Click(Sender: TObject);
begin
  if (edt1.Text = '') then
  begin
     ShowMessage('O código precisa ter valor');
     exit;
  end;
  
  try
    v_sqlConsulta := TSqlQuery.Create(nil);
    v_sqlConsulta.SQLConnection := dm.sqlsisAdimin;
    sql_texto := 'SELECT D1 FROM PARAMETRO WHERE D1 = ' + QuotedStr('SUITES') +
                 ' AND PARAMETRO = ' + QuotedStr(edt1.Text + '-SUITE');
    v_sqlConsulta.SQL.Add(sql_texto);
    v_sqlConsulta.Open;
    if (not v_sqlConsulta.IsEmpty) then
    begin
      ShowMessage('Suite já Cadastrada !');
      edt1.Text := '';
      edt1.SetFocus;
      Exit;
    end;
  finally
    v_sqlConsulta.Free;
  end;

  sql_texto := 'INSERT INTO PARAMETRO (DESCRICAO , PARAMETRO, D1, D2';
  sql_texto :=   sql_texto + ') VALUES (';
  sql_texto :=   sql_texto + QuotedStr('Cadastro de Suites') + ', ';
  sql_texto :=   sql_texto + QuotedStr(edt1.Text + '-SUITE') + ', ';
  sql_texto :=   sql_texto + QuotedStr('SUITES') + ', ';
  sql_texto :=   sql_texto + QuotedStr('N') + ')';
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  dm.sqlsisAdimin.ExecuteDirect(sql_texto);
  Try
     dm.sqlsisAdimin.Commit(TD);
  except
     dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
     MessageDlg('Erro no sistema, registro não foi gravado.', mtError,
         [mbOk], 0);
  end;
  if (c_Suites.Active) then
     c_Suites.Close;
  c_Suites.Open;
  edt1.Text := '';
  edt1.SetFocus;

end;

procedure TfSuites.btn2Click(Sender: TObject);
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);

  sql_texto := 'DELETE FROM PARAMETRO WHERE D1 = ' + QuotedStr('SUITES') +
               ' and PARAMETRO = ' + QuotedStr(c_SuitesPARAMETRO.AsString);

  dm.sqlsisAdimin.ExecuteDirect(sql_texto);
  Try
     dm.sqlsisAdimin.Commit(TD);
  except
     dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
     MessageDlg('Erro no sistema, o registro não foi Excluido.', mtError,
         [mbOk], 0);
  end;
  if (c_Suites.Active) then
     c_Suites.Close;
  c_Suites.Open;
  
end;

procedure TfSuites.chk1Click(Sender: TObject);
begin
  sql_texto := 'UPDATE PARAMETRO SET D2 = ';
  if (chk1.Checked = True) then
    sql_texto :=   sql_texto + QuotedStr('S') //Inativo
  else
    sql_texto :=  sql_texto + QuotedStr('N'); //Ativo
  sql_texto :=   sql_texto + ' WHERE D1 = ' + QuotedStr('SUITES') +
               ' and PARAMETRO = ' + QuotedStr(c_SuitesPARAMETRO.AsString);

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  dm.sqlsisAdimin.ExecuteDirect(sql_texto);
  Try
     dm.sqlsisAdimin.Commit(TD);
  except
     dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
     MessageDlg('Erro no sistema, a venda não foi gravada.', mtError,
         [mbOk], 0);
  end;

  if (c_Suites.Active) then
     c_Suites.Close;
  c_Suites.Open;
end;

procedure TfSuites.btn3Click(Sender: TObject);
begin
  if (edt1.Text = '') then
  begin
     ShowMessage('O código precisa ter valor');
     exit;
  end;

  sql_texto := 'UPDATE PARAMETRO SET PARAMETRO = ';
  sql_texto :=   sql_texto + QuotedStr(edt1.Text + '-SUITE');
  sql_texto :=   sql_texto + ' WHERE D1 = ' + QuotedStr('SUITES') +
               ' and PARAMETRO = ' + QuotedStr(c_SuitesPARAMETRO.AsString);

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  dm.sqlsisAdimin.ExecuteDirect(sql_texto);
  Try

     dm.sqlsisAdimin.Commit(TD);
  except
     dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
     MessageDlg('Erro no sistema, a venda não foi gravada.', mtError,
         [mbOk], 0);
  end;
  if (c_Suites.Active) then
     c_Suites.Close;
  c_Suites.Open;
end;

procedure TfSuites.FormShow(Sender: TObject);
begin
  if (not c_Suites.Active) then
    c_Suites.Open;
end;

procedure TfSuites.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (c_Suites.Active) then
     c_Suites.Close;
end;

end.
