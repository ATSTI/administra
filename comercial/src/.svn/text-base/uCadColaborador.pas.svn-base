unit uCadColaborador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  ExtCtrls, MMJPanel, FMTBcd, DB, DBClient, Provider, SqlExpr, DBXpress;

type
  TfCadColaborador = class(TForm)
    MMJPanel1: TMMJPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    rg1: TRadioGroup;
    cbb1: TComboBox;
    JvDBGrid1: TJvDBGrid;
    pnl1: TPanel;
    btn1: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    s_Colab: TSQLDataSet;
    p_Coab: TDataSetProvider;
    c_Colab: TClientDataSet;
    ds_mesas: TDataSource;
    s_ColabCODFORNECEDOR: TIntegerField;
    s_ColabNOMEFORNECEDOR: TStringField;
    s_ColabRAZAOSOCIAL: TStringField;
    s_ColabCONTATO: TStringField;
    s_ColabTIPOFIRMA: TSmallintField;
    s_ColabCPF: TStringField;
    s_ColabCNPJ: TStringField;
    s_ColabINSCESTADUAL: TStringField;
    s_ColabRG: TStringField;
    s_ColabSEGMENTO: TSmallintField;
    s_ColabREGIAO: TSmallintField;
    s_ColabLIMITECREDITO: TFloatField;
    s_ColabDATACADASTRO: TDateField;
    s_ColabCODUSUARIO: TIntegerField;
    s_ColabSTATUS: TSmallintField;
    s_ColabHOMEPAGE: TStringField;
    s_ColabPRAZOPAGAMENTO: TSmallintField;
    s_ColabPRAZOENTREGA: TSmallintField;
    s_ColabCONTA_FORNECEDOR: TStringField;
    s_ColabCODTRANSP: TIntegerField;
    s_ColabCODFOR: TStringField;
    s_ColabCAMPOADICIONAL: TStringField;
    s_ColabCAMPOADICIONAL1: TStringField;
    c_ColabCODFORNECEDOR: TIntegerField;
    c_ColabNOMEFORNECEDOR: TStringField;
    c_ColabRAZAOSOCIAL: TStringField;
    c_ColabCONTATO: TStringField;
    c_ColabTIPOFIRMA: TSmallintField;
    c_ColabCPF: TStringField;
    c_ColabCNPJ: TStringField;
    c_ColabINSCESTADUAL: TStringField;
    c_ColabRG: TStringField;
    c_ColabSEGMENTO: TSmallintField;
    c_ColabREGIAO: TSmallintField;
    c_ColabLIMITECREDITO: TFloatField;
    c_ColabDATACADASTRO: TDateField;
    c_ColabCODUSUARIO: TIntegerField;
    c_ColabSTATUS: TSmallintField;
    c_ColabHOMEPAGE: TStringField;
    c_ColabPRAZOPAGAMENTO: TSmallintField;
    c_ColabPRAZOENTREGA: TSmallintField;
    c_ColabCONTA_FORNECEDOR: TStringField;
    c_ColabCODTRANSP: TIntegerField;
    c_ColabCODFOR: TStringField;
    c_ColabCAMPOADICIONAL: TStringField;
    c_ColabCAMPOADICIONAL1: TStringField;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure rg1Click(Sender: TObject);
  private
    TD: TTransactionDesc;
    var_idFor : Integer;
    sql_texto : string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCadColaborador: TfCadColaborador;

implementation

uses UDm;

{$R *.dfm}

procedure TfCadColaborador.btn1Click(Sender: TObject);
begin
  if (edt1.Text = '') then
  begin
     ShowMessage('Informe o Nome do Colaborador !');
     exit;
  end;
  var_idFor := 0;

  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_FOR, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  var_idFor := dm.c_6_genidCODIGO.AsInteger;
  dm.c_6_genid.Close;

  sql_texto := 'INSERT INTO FORNECEDOR (CODFORNECEDOR , CODFOR, NOMEFORNECEDOR, ' +
               'RAZAOSOCIAL, TIPOFIRMA, SEGMENTO, REGIAO, DATACADASTRO, ' +
               'CODUSUARIO, STATUS, CAMPOADICIONAL ';
  sql_texto :=   sql_texto + ') VALUES (';
  sql_texto :=   sql_texto + IntToStr(var_idFor) + ', ';
  sql_texto :=   sql_texto + QuotedStr(IntToStr(var_idFor)) + ', ';
  sql_texto :=   sql_texto + QuotedStr(edt1.Text) + ', ';
  sql_texto :=   sql_texto + QuotedStr(edt1.Text) + ', ';
  sql_texto :=   sql_texto + '1' + ', ';
  sql_texto :=   sql_texto + '3' + ', '; // Seguimento 3 = Fornecedores de mão de Obra
  sql_texto :=   sql_texto + '0' + ', '; // Região 0 = Fornecedor 1 = COMANDA  2 = Colaboradores USADO P/ NTClub
  sql_texto :=   sql_texto + QuotedStr(FormatDateTime('MM/DD/YYYY',Now)) + ', ';
  sql_texto :=   sql_texto + '1' + ', ';
  sql_texto :=   sql_texto + '1' + ', ';
  sql_texto :=   sql_texto + QuotedStr(cbb1.Text) + ')';

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
  if (c_Colab.Active) then
     c_Colab.Close;
  c_Colab.Open;
  edt1.Text := '';
  edt1.SetFocus;
end;

procedure TfCadColaborador.btn2Click(Sender: TObject);
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);

  sql_texto := 'DELETE FROM CLIENTES WHERE CODCLIENTE = ';
  sql_texto :=   sql_texto + IntToStr(c_ColabCODFORNECEDOR.AsInteger);

  dm.sqlsisAdimin.ExecuteDirect(sql_texto);
  Try

     dm.sqlsisAdimin.Commit(TD);
  except
     dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
     MessageDlg('Erro no sistema, o registro não foi Excluido.', mtError,
         [mbOk], 0);
  end;
  if (c_Colab.Active) then
     c_Colab.Close;
  c_Colab.Open;
end;

procedure TfCadColaborador.btn3Click(Sender: TObject);
begin
  if (edt1.Text = '') then
  begin
     ShowMessage('O código precisa ter valor');
     exit;
  end;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);

  sql_texto := 'UPDATE FORNECEDOR SET NOMEFORNECEDOR = ';
  sql_texto :=   sql_texto + QuotedStr(edt1.Text) + ', ';
  sql_texto :=   sql_texto + 'CAMPOADICIONAL = ';
  sql_texto :=   sql_texto + QuotedStr(cbb1.Text) + ', ';
  sql_texto :=   sql_texto + 'RAZAOSOCIAL = ';
  sql_texto :=   sql_texto + QuotedStr(edt1.Text);
  sql_texto :=   sql_texto + ' WHERE CODFORNECEDOR = ';
  sql_texto :=   sql_texto + IntToStr(c_ColabCODFORNECEDOR.AsInteger);

  dm.sqlsisAdimin.ExecuteDirect(sql_texto);
  Try

     dm.sqlsisAdimin.Commit(TD);
  except
     dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
     MessageDlg('Erro no sistema, a venda não foi gravada.', mtError,
         [mbOk], 0);
  end;
  if (c_Colab.Active) then
     c_Colab.Close;
  c_Colab.Open;
end;

procedure TfCadColaborador.rg1Click(Sender: TObject);
begin
  sql_texto := 'UPDATE FORNECEDOR SET STATUS = ';
  if (rg1.ItemIndex = 1) then
    sql_texto :=   sql_texto + '0' //Inativo
  else
    sql_texto :=  sql_texto + '1'; //Ativo
  sql_texto :=   sql_texto + ' WHERE CODFORNECEDOR = ';
  sql_texto :=   sql_texto + IntToStr(c_ColabCODFORNECEDOR.AsInteger);

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

  if (c_Colab.Active) then
     c_Colab.Close;
  c_Colab.Open;
end;

end.
