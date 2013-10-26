unit u_mesas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls, Buttons,
  Grids, DBGrids, JvExDBGrids, JvDBGrid, ExtCtrls, MMJPanel, DBXPress;

type
  TF_MESAS = class(TForm)
    MMJPanel1: TMMJPanel;
    Label1: TLabel;
    Edit1: TEdit;
    RadioGroup1: TRadioGroup;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Panel1: TPanel;
    JvDBGrid1: TJvDBGrid;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    s_mesas: TSQLDataSet;
    p_mesas: TDataSetProvider;
    c_mesas: TClientDataSet;
    d_mesas: TDataSource;
    s_mesasCODCLIENTE: TIntegerField;
    s_mesasNOMECLIENTE: TStringField;
    s_mesasRAZAOSOCIAL: TStringField;
    s_mesasCONTATO: TStringField;
    s_mesasTIPOFIRMA: TSmallintField;
    s_mesasCPF: TStringField;
    s_mesasCNPJ: TStringField;
    s_mesasINSCESTADUAL: TStringField;
    s_mesasRG: TStringField;
    s_mesasSEGMENTO: TSmallintField;
    s_mesasREGIAO: TSmallintField;
    s_mesasLIMITECREDITO: TFloatField;
    s_mesasDATACADASTRO: TDateField;
    s_mesasCODUSUARIO: TIntegerField;
    s_mesasSTATUS: TSmallintField;
    s_mesasHOMEPAGE: TStringField;
    s_mesasPRAZORECEBIMENTO: TSmallintField;
    s_mesasPRAZOENTREGA: TSmallintField;
    s_mesasCODBANCO: TSmallintField;
    s_mesasBASE_ICMS: TSmallintField;
    s_mesasDATANASC: TDateField;
    s_mesasCONTA_CLIENTE: TStringField;
    s_mesasOBS: TStringField;
    s_mesasTEM_IE: TStringField;
    s_mesasDATARESC: TDateField;
    s_mesasNOMEMAE: TStringField;
    s_mesasSEXO: TStringField;
    s_mesasFORMA_CORRESPOND: TStringField;
    s_mesasGRUPO_CLIENTE: TStringField;
    s_mesasCODINCLUCANC: TIntegerField;
    s_mesasEXIST_COBERT: TStringField;
    s_mesasEXISTCOPART: TStringField;
    s_mesasDATAREINC: TDateField;
    s_mesasGERAAVISO: TStringField;
    s_mesasGERAENV: TStringField;
    s_mesasGERABOL: TStringField;
    s_mesasEMVIAGEM: TStringField;
    s_mesasDTAALTERA: TDateField;
    s_mesasSERIELETRA: TStringField;
    s_mesasSERIE: TStringField;
    s_mesasRA: TStringField;
    s_mesasCURSO: TStringField;
    s_mesasIP: TStringField;
    s_mesasN_CONTRATO: TStringField;
    s_mesasMAC: TStringField;
    s_mesasMARCA: TStringField;
    s_mesasBANDA_UPLOAD: TStringField;
    s_mesasBANDA_DOWLOAD: TStringField;
    s_mesasTORRE_CONECCAO: TStringField;
    s_mesasCOD_FAIXA: TIntegerField;
    s_mesasDESCONTO: TFloatField;
    s_mesasMENSALIDADE: TFloatField;
    s_mesasANUIDADE: TFloatField;
    s_mesasPARCELA: TIntegerField;
    s_mesasPARCELAGERADAS: TIntegerField;
    s_mesasNUMERO: TIntegerField;
    s_mesasDATANASCIMENTO: TSQLTimeStampField;
    s_mesasANOLETIVO: TStringField;
    s_mesasSITUACAOESCOLAR: TStringField;
    s_mesasRGMAE: TStringField;
    s_mesasCPFMAE: TStringField;
    s_mesasPAI: TStringField;
    s_mesasRGPAI: TStringField;
    s_mesasCPFPAI: TStringField;
    s_mesasLANCADOCLASSE: TIntegerField;
    s_mesasTRANSPORTE: TStringField;
    s_mesasCIDADENASC: TStringField;
    s_mesasUFNASC: TStringField;
    s_mesasNACIONALIDADE: TStringField;
    s_mesasCERTIDAONASCNUM: TStringField;
    s_mesasLIVRONASC: TStringField;
    s_mesasFLLIVRONASC: TStringField;
    s_mesasLOCALTRABPAI: TStringField;
    s_mesasLOCALTRABMAE: TStringField;
    s_mesasTELTRABPAI: TStringField;
    s_mesasTELTRABMAE: TStringField;
    s_mesasINFONECESSARIAS: TStringField;
    s_mesasCARTEIRAVACINACAO: TStringField;
    s_mesasRAPRODESP: TStringField;
    s_mesasLOCALTRABALUNO: TStringField;
    s_mesasTELTRABALUNO: TStringField;
    s_mesasRAPROD: TStringField;
    s_mesasCERT_NAS_COMARCA: TStringField;
    s_mesasCERT_NAS_UF: TStringField;
    s_mesasCERT_NAS_MUNICIPIO: TStringField;
    s_mesasCERT_NAS_DISTRITO: TStringField;
    s_mesasCERT_NAS_SUBDISTRITO: TStringField;
    s_mesasDIVERSO1: TStringField;
    s_mesasDIVERSO2: TStringField;
    s_mesasDATAEMISSAORG: TDateField;
    s_mesasESTADORG: TStringField;
    s_mesasCOMUNICAALUNO: TStringField;
    s_mesasFONEMAE: TStringField;
    s_mesasCELULARMAE: TStringField;
    s_mesasCOMUNICAMAE: TStringField;
    s_mesasFONEPAI: TStringField;
    s_mesasCELULARPAI: TStringField;
    s_mesasCOMUNICAPAI: TStringField;
    s_mesasVALOR_MATRICULA: TFloatField;
    s_mesasDATATRANSF: TDateField;
    s_mesasCOR_RACA: TStringField;
    s_mesasPERIODO: TStringField;
    s_mesasFOTO: TStringField;
    s_mesasDATA_MATRICULA: TSQLTimeStampField;
    s_mesasCODRESPONSAVEL: TIntegerField;
    s_mesasID_COB: TIntegerField;
    s_mesasCOD_TRANPORTADORA: TIntegerField;
    s_mesasBLOQUEADO: TStringField;
    s_mesasBLOQUEIO: TStringField;
    s_mesasCFOP: TStringField;
    c_mesasCODCLIENTE: TIntegerField;
    c_mesasNOMECLIENTE: TStringField;
    c_mesasRAZAOSOCIAL: TStringField;
    c_mesasCONTATO: TStringField;
    c_mesasTIPOFIRMA: TSmallintField;
    c_mesasCPF: TStringField;
    c_mesasCNPJ: TStringField;
    c_mesasINSCESTADUAL: TStringField;
    c_mesasRG: TStringField;
    c_mesasSEGMENTO: TSmallintField;
    c_mesasREGIAO: TSmallintField;
    c_mesasLIMITECREDITO: TFloatField;
    c_mesasDATACADASTRO: TDateField;
    c_mesasCODUSUARIO: TIntegerField;
    c_mesasSTATUS: TSmallintField;
    c_mesasHOMEPAGE: TStringField;
    c_mesasPRAZORECEBIMENTO: TSmallintField;
    c_mesasPRAZOENTREGA: TSmallintField;
    c_mesasCODBANCO: TSmallintField;
    c_mesasBASE_ICMS: TSmallintField;
    c_mesasDATANASC: TDateField;
    c_mesasCONTA_CLIENTE: TStringField;
    c_mesasOBS: TStringField;
    c_mesasTEM_IE: TStringField;
    c_mesasDATARESC: TDateField;
    c_mesasNOMEMAE: TStringField;
    c_mesasSEXO: TStringField;
    c_mesasFORMA_CORRESPOND: TStringField;
    c_mesasGRUPO_CLIENTE: TStringField;
    c_mesasCODINCLUCANC: TIntegerField;
    c_mesasEXIST_COBERT: TStringField;
    c_mesasEXISTCOPART: TStringField;
    c_mesasDATAREINC: TDateField;
    c_mesasGERAAVISO: TStringField;
    c_mesasGERAENV: TStringField;
    c_mesasGERABOL: TStringField;
    c_mesasEMVIAGEM: TStringField;
    c_mesasDTAALTERA: TDateField;
    c_mesasSERIELETRA: TStringField;
    c_mesasSERIE: TStringField;
    c_mesasRA: TStringField;
    c_mesasCURSO: TStringField;
    c_mesasIP: TStringField;
    c_mesasN_CONTRATO: TStringField;
    c_mesasMAC: TStringField;
    c_mesasMARCA: TStringField;
    c_mesasBANDA_UPLOAD: TStringField;
    c_mesasBANDA_DOWLOAD: TStringField;
    c_mesasTORRE_CONECCAO: TStringField;
    c_mesasCOD_FAIXA: TIntegerField;
    c_mesasDESCONTO: TFloatField;
    c_mesasMENSALIDADE: TFloatField;
    c_mesasANUIDADE: TFloatField;
    c_mesasPARCELA: TIntegerField;
    c_mesasPARCELAGERADAS: TIntegerField;
    c_mesasNUMERO: TIntegerField;
    c_mesasDATANASCIMENTO: TSQLTimeStampField;
    c_mesasANOLETIVO: TStringField;
    c_mesasSITUACAOESCOLAR: TStringField;
    c_mesasRGMAE: TStringField;
    c_mesasCPFMAE: TStringField;
    c_mesasPAI: TStringField;
    c_mesasRGPAI: TStringField;
    c_mesasCPFPAI: TStringField;
    c_mesasLANCADOCLASSE: TIntegerField;
    c_mesasTRANSPORTE: TStringField;
    c_mesasCIDADENASC: TStringField;
    c_mesasUFNASC: TStringField;
    c_mesasNACIONALIDADE: TStringField;
    c_mesasCERTIDAONASCNUM: TStringField;
    c_mesasLIVRONASC: TStringField;
    c_mesasFLLIVRONASC: TStringField;
    c_mesasLOCALTRABPAI: TStringField;
    c_mesasLOCALTRABMAE: TStringField;
    c_mesasTELTRABPAI: TStringField;
    c_mesasTELTRABMAE: TStringField;
    c_mesasINFONECESSARIAS: TStringField;
    c_mesasCARTEIRAVACINACAO: TStringField;
    c_mesasRAPRODESP: TStringField;
    c_mesasLOCALTRABALUNO: TStringField;
    c_mesasTELTRABALUNO: TStringField;
    c_mesasRAPROD: TStringField;
    c_mesasCERT_NAS_COMARCA: TStringField;
    c_mesasCERT_NAS_UF: TStringField;
    c_mesasCERT_NAS_MUNICIPIO: TStringField;
    c_mesasCERT_NAS_DISTRITO: TStringField;
    c_mesasCERT_NAS_SUBDISTRITO: TStringField;
    c_mesasDIVERSO1: TStringField;
    c_mesasDIVERSO2: TStringField;
    c_mesasDATAEMISSAORG: TDateField;
    c_mesasESTADORG: TStringField;
    c_mesasCOMUNICAALUNO: TStringField;
    c_mesasFONEMAE: TStringField;
    c_mesasCELULARMAE: TStringField;
    c_mesasCOMUNICAMAE: TStringField;
    c_mesasFONEPAI: TStringField;
    c_mesasCELULARPAI: TStringField;
    c_mesasCOMUNICAPAI: TStringField;
    c_mesasVALOR_MATRICULA: TFloatField;
    c_mesasDATATRANSF: TDateField;
    c_mesasCOR_RACA: TStringField;
    c_mesasPERIODO: TStringField;
    c_mesasFOTO: TStringField;
    c_mesasDATA_MATRICULA: TSQLTimeStampField;
    c_mesasCODRESPONSAVEL: TIntegerField;
    c_mesasID_COB: TIntegerField;
    c_mesasCOD_TRANPORTADORA: TIntegerField;
    c_mesasBLOQUEADO: TStringField;
    c_mesasBLOQUEIO: TStringField;
    c_mesasCFOP: TStringField;
    s_mesasCOD_CLI: TStringField;
    c_mesasCOD_CLI: TStringField;
    BitBtn2: TBitBtn;
    chk1: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chk1Click(Sender: TObject);
  private
    TD: TTransactionDesc;
    sql_texto : String;
    var_idCli : integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_MESAS: TF_MESAS;

implementation

uses UDm, UDM_MOV;

{$R *.dfm}

procedure TF_MESAS.BitBtn1Click(Sender: TObject);
begin
  if (Edit1.Text = '') then
  begin
     ShowMessage('O código precisa ter valor');
     exit;
  end;
  var_idCli := 0;

  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CLI, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  var_idCli := dm.c_6_genidCODIGO.AsInteger;
  dm.c_6_genid.Close;

  sql_texto := 'INSERT INTO CLIENTES (CODCLIENTE , COD_CLI, NOMECLIENTE, ' +
               'RAZAOSOCIAL, TIPOFIRMA, SEGMENTO, REGIAO, DATACADASTRO, ' +
               'CODUSUARIO, STATUS ';
  sql_texto :=   sql_texto + ') VALUES (';
  sql_texto :=   sql_texto + IntToStr(var_idCli) + ', ';
  sql_texto :=   sql_texto + QuotedStr(Edit1.Text) + ', ';
  sql_texto :=   sql_texto + QuotedStr(Edit1.Text + '-' + ComboBox1.Text) + ', ';
  sql_texto :=   sql_texto + QuotedStr(Edit1.Text + '-' + ComboBox1.Text) + ', ';
  sql_texto :=   sql_texto + '1' + ', ';
  sql_texto :=   sql_texto + '2' + ', '; // Seguimento 2 = MESA  USADO PARA RESTAURANTES
  sql_texto :=   sql_texto + '1' + ', '; // Região 0 = Clientes 1 = COMANDA  2 = Colaboradores USADO P/ NTClub
  sql_texto :=   sql_texto + QuotedStr(FormatDateTime('MM/DD/YYYY',Now)) + ', ';
  sql_texto :=   sql_texto + '1' + ', ';
  sql_texto :=   sql_texto + '1' + ')';

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
  if (c_mesas.Active) then
     c_mesas.Close;
  c_mesas.Open;
  Edit1.Text := '';
  Edit1.SetFocus;
end;

procedure TF_MESAS.BitBtn3Click(Sender: TObject);
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);

  sql_texto := 'DELETE FROM CLIENTES WHERE CODCLIENTE = ';
  sql_texto :=   sql_texto + IntToStr(c_mesasCODCLIENTE.AsInteger);

  dm.sqlsisAdimin.ExecuteDirect(sql_texto);
  Try

     dm.sqlsisAdimin.Commit(TD);
  except
     dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
     MessageDlg('Erro no sistema, o registro não foi Excluido.', mtError,
         [mbOk], 0);
  end;
  if (c_mesas.Active) then
     c_mesas.Close;
  c_mesas.Open;
end;

procedure TF_MESAS.BitBtn2Click(Sender: TObject);
begin
  if (Edit1.Text = '') then
  begin
     ShowMessage('O código precisa ter valor');
     exit;
  end;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);

  sql_texto := 'UPDATE CLIENTES SET COD_CLI = ';
  sql_texto :=   sql_texto + QuotedStr(Edit1.Text) + ', ';
  sql_texto :=   sql_texto + 'NOMECLIENTE = ';
  sql_texto :=   sql_texto + QuotedStr(Edit1.Text + '-' + ComboBox1.Text) + ', ';
  sql_texto :=   sql_texto + 'RAZAOSOCIAL = ';
  sql_texto :=   sql_texto + QuotedStr(Edit1.Text + '-' + ComboBox1.Text);
  sql_texto :=   sql_texto + ' WHERE CODCLIENTE = ';
  sql_texto :=   sql_texto + IntToStr(c_mesasCODCLIENTE.AsInteger);
  
  dm.sqlsisAdimin.ExecuteDirect(sql_texto);
  Try

     dm.sqlsisAdimin.Commit(TD);
  except
     dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
     MessageDlg('Erro no sistema, a venda não foi gravada.', mtError,
         [mbOk], 0);
  end;
  if (c_mesas.Active) then
     c_mesas.Close;
  c_mesas.Open;
end;

procedure TF_MESAS.RadioGroup1Click(Sender: TObject);
begin
  sql_texto := 'UPDATE CLIENTES SET STATUS = ';
  if (RadioGroup1.ItemIndex = 1) then
    sql_texto :=   sql_texto + '0' //Inativo
  else
    sql_texto :=  sql_texto + '1'; //Ativo
  sql_texto :=   sql_texto + ' WHERE CODCLIENTE = ';
  sql_texto :=   sql_texto + IntToStr(c_mesasCODCLIENTE.AsInteger);

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

  if (c_mesas.Active) then
     c_mesas.Close;
  c_mesas.Open;
end;

procedure TF_MESAS.FormShow(Sender: TObject);
begin
  if (c_mesas.Active) then
     c_mesas.Close;
  c_mesas.Open;
end;

procedure TF_MESAS.chk1Click(Sender: TObject);
begin
  sql_texto := 'UPDATE CLIENTES SET BLOQUEADO = ';
  if (chk1.Checked = True) then
    sql_texto :=   sql_texto + QuotedStr('S') //Inativo
  else
    sql_texto :=  sql_texto + QuotedStr('N'); //Ativo
  sql_texto :=   sql_texto + ' WHERE CODCLIENTE = ';
  sql_texto :=   sql_texto + IntToStr(c_mesasCODCLIENTE.AsInteger);

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

  if (c_mesas.Active) then
     c_mesas.Close;
  c_mesas.Open;
end;

end.
