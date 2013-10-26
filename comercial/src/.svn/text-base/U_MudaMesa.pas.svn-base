unit U_MudaMesa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, MMJPanel, FMTBcd, Provider, SqlExpr, DB,
  DBClient, JvExControls, JvLabel, Buttons, DBxPress;

type
  TF_MudaMesa = class(TForm)
    MMJPanel1: TMMJPanel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    s_mesas: TClientDataSet;
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
    s_mesasCOD_CLI: TStringField;
    sql_mesas: TSQLDataSet;
    sql_mesasCODCLIENTE: TIntegerField;
    sql_mesasNOMECLIENTE: TStringField;
    sql_mesasRAZAOSOCIAL: TStringField;
    sql_mesasCONTATO: TStringField;
    sql_mesasTIPOFIRMA: TSmallintField;
    sql_mesasCPF: TStringField;
    sql_mesasCNPJ: TStringField;
    sql_mesasINSCESTADUAL: TStringField;
    sql_mesasRG: TStringField;
    sql_mesasSEGMENTO: TSmallintField;
    sql_mesasREGIAO: TSmallintField;
    sql_mesasLIMITECREDITO: TFloatField;
    sql_mesasDATACADASTRO: TDateField;
    sql_mesasCODUSUARIO: TIntegerField;
    sql_mesasSTATUS: TSmallintField;
    sql_mesasHOMEPAGE: TStringField;
    sql_mesasPRAZORECEBIMENTO: TSmallintField;
    sql_mesasPRAZOENTREGA: TSmallintField;
    sql_mesasCODBANCO: TSmallintField;
    sql_mesasBASE_ICMS: TSmallintField;
    sql_mesasDATANASC: TDateField;
    sql_mesasCONTA_CLIENTE: TStringField;
    sql_mesasOBS: TStringField;
    sql_mesasTEM_IE: TStringField;
    sql_mesasDATARESC: TDateField;
    sql_mesasNOMEMAE: TStringField;
    sql_mesasSEXO: TStringField;
    sql_mesasFORMA_CORRESPOND: TStringField;
    sql_mesasGRUPO_CLIENTE: TStringField;
    sql_mesasCODINCLUCANC: TIntegerField;
    sql_mesasEXIST_COBERT: TStringField;
    sql_mesasEXISTCOPART: TStringField;
    sql_mesasDATAREINC: TDateField;
    sql_mesasGERAAVISO: TStringField;
    sql_mesasGERAENV: TStringField;
    sql_mesasGERABOL: TStringField;
    sql_mesasEMVIAGEM: TStringField;
    sql_mesasDTAALTERA: TDateField;
    sql_mesasSERIELETRA: TStringField;
    sql_mesasSERIE: TStringField;
    sql_mesasRA: TStringField;
    sql_mesasCURSO: TStringField;
    sql_mesasIP: TStringField;
    sql_mesasN_CONTRATO: TStringField;
    sql_mesasMAC: TStringField;
    sql_mesasMARCA: TStringField;
    sql_mesasBANDA_UPLOAD: TStringField;
    sql_mesasBANDA_DOWLOAD: TStringField;
    sql_mesasTORRE_CONECCAO: TStringField;
    sql_mesasCOD_FAIXA: TIntegerField;
    sql_mesasDESCONTO: TFloatField;
    sql_mesasMENSALIDADE: TFloatField;
    sql_mesasANUIDADE: TFloatField;
    sql_mesasPARCELA: TIntegerField;
    sql_mesasPARCELAGERADAS: TIntegerField;
    sql_mesasNUMERO: TIntegerField;
    sql_mesasDATANASCIMENTO: TSQLTimeStampField;
    sql_mesasANOLETIVO: TStringField;
    sql_mesasSITUACAOESCOLAR: TStringField;
    sql_mesasRGMAE: TStringField;
    sql_mesasCPFMAE: TStringField;
    sql_mesasPAI: TStringField;
    sql_mesasRGPAI: TStringField;
    sql_mesasCPFPAI: TStringField;
    sql_mesasLANCADOCLASSE: TIntegerField;
    sql_mesasTRANSPORTE: TStringField;
    sql_mesasCIDADENASC: TStringField;
    sql_mesasUFNASC: TStringField;
    sql_mesasNACIONALIDADE: TStringField;
    sql_mesasCERTIDAONASCNUM: TStringField;
    sql_mesasLIVRONASC: TStringField;
    sql_mesasFLLIVRONASC: TStringField;
    sql_mesasLOCALTRABPAI: TStringField;
    sql_mesasLOCALTRABMAE: TStringField;
    sql_mesasTELTRABPAI: TStringField;
    sql_mesasTELTRABMAE: TStringField;
    sql_mesasINFONECESSARIAS: TStringField;
    sql_mesasCARTEIRAVACINACAO: TStringField;
    sql_mesasRAPRODESP: TStringField;
    sql_mesasLOCALTRABALUNO: TStringField;
    sql_mesasTELTRABALUNO: TStringField;
    sql_mesasRAPROD: TStringField;
    sql_mesasCERT_NAS_COMARCA: TStringField;
    sql_mesasCERT_NAS_UF: TStringField;
    sql_mesasCERT_NAS_MUNICIPIO: TStringField;
    sql_mesasCERT_NAS_DISTRITO: TStringField;
    sql_mesasCERT_NAS_SUBDISTRITO: TStringField;
    sql_mesasDIVERSO1: TStringField;
    sql_mesasDIVERSO2: TStringField;
    sql_mesasDATAEMISSAORG: TDateField;
    sql_mesasESTADORG: TStringField;
    sql_mesasCOMUNICAALUNO: TStringField;
    sql_mesasFONEMAE: TStringField;
    sql_mesasCELULARMAE: TStringField;
    sql_mesasCOMUNICAMAE: TStringField;
    sql_mesasFONEPAI: TStringField;
    sql_mesasCELULARPAI: TStringField;
    sql_mesasCOMUNICAPAI: TStringField;
    sql_mesasVALOR_MATRICULA: TFloatField;
    sql_mesasDATATRANSF: TDateField;
    sql_mesasCOR_RACA: TStringField;
    sql_mesasPERIODO: TStringField;
    sql_mesasFOTO: TStringField;
    sql_mesasDATA_MATRICULA: TSQLTimeStampField;
    sql_mesasCODRESPONSAVEL: TIntegerField;
    sql_mesasID_COB: TIntegerField;
    sql_mesasCOD_TRANPORTADORA: TIntegerField;
    sql_mesasBLOQUEADO: TStringField;
    sql_mesasBLOQUEIO: TStringField;
    sql_mesasCFOP: TStringField;
    sql_mesasCOD_CLI: TStringField;
    p_mesas: TDataSetProvider;
    OK: TBitBtn;
    BitBtn2: TBitBtn;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    procedure FormCreate(Sender: TObject);
    procedure OKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_MudaMesa: TF_MudaMesa;

implementation

uses UDm, UDM_MOV;

{$R *.dfm}

procedure TF_MudaMesa.FormCreate(Sender: TObject);
begin
    if (s_mesas.Active) then
      s_mesas.close;
    s_mesas.Open;
    s_mesas.First;
    while not (s_mesas.Eof) do
    begin
      ComboBox1.Items.Add(s_mesasNOMECLIENTE.AsString);
      s_mesas.Next;
    end;
end;

procedure TF_MudaMesa.OKClick(Sender: TObject);
var strSql : string;
    idcliente, idclienteNew : integer;
    TD: TTransactionDesc;
begin
    idcliente := 0;
    idclienteNew := 0;
    //Verificar se a nova mesa está liberada
    if (DM_MOV.s_BuscaComanda.Active) then
      DM_MOV.s_BuscaComanda.Close;
    DM_MOV.s_BuscaComanda.Params[0].Clear;
    DM_MOV.s_BuscaComanda.Params[1].AsString :=  ComboBox1.Text;
    DM_MOV.s_BuscaComanda.Open;
    if (DM_MOV.s_BuscaComanda.IsEmpty) then
    begin
       DM_MOV.s_BuscaComanda.Close;
       ShowMessage('Comanda/Mesa nao Localizada');
       Exit;
    end;
    idclienteNew := DM_MOV.s_BuscaComandaCODCLIENTE.AsInteger;

    if (DM_MOV.s_buscaMov.Active) then
       DM_MOV.s_buscaMov.Close;
    strSql := 'select md.CODDETALHE ' +
           '  FROM MOVIMENTO m, MOVIMENTODETALHE md, CLIENTES c ' +
           ' WHERE c.CODCLIENTE = m.CODCLIENTE ' +
           '   AND m.CODMOVIMENTO = md.CODMOVIMENTO ' +
           '   AND m.CODNATUREZA = ' + IntToStr(3) +
           '   AND m.STATUS = ' + IntToStr(20) +
           '   AND m.CODCLIENTE = ' + IntToStr(idclienteNew);
    DM_MOV.s_buscaMov.CommandText := strSql;
    DM_MOV.s_buscaMov.Open;

    if (not DM_MOV.s_buscaMov.IsEmpty)then
    begin
       ShowMessage('Mesa ja utilizada !');
       ComboBox1.Text := '';
       DM_MOV.s_buscaMov.Close;
       exit;
    end;
    //FIM Verificar se a nova mesa está liberada

    //Pegar CODIGO do MOVIMENTO PARA TROCAR O CLIENTE/MESA...
    if (DM_MOV.s_BuscaComanda.Active) then
      DM_MOV.s_BuscaComanda.Close;
    DM_MOV.s_BuscaComanda.Params[0].Clear;
    DM_MOV.s_BuscaComanda.Params[1].AsString :=  Edit1.Text;
    DM_MOV.s_BuscaComanda.Open;
    if (DM_MOV.s_BuscaComanda.IsEmpty) then
    begin
       DM_MOV.s_BuscaComanda.Close;
       ShowMessage('Comanda/Mesa nao Localizada');
       Exit;
    end;
    idcliente := DM_MOV.s_BuscaComandaCODCLIENTE.AsInteger;
    if (DM_MOV.s_buscaMov.Active) then
       DM_MOV.s_buscaMov.Close;
    strSql := 'select m.CODMOVIMENTO, c.NOMECLIENTE from MOVIMENTO m ' +
           'inner join CLIENTES c on c.CODCLIENTE = m.CODCLIENTE ' +
           'where m.CODNATUREZA = ' + IntToStr(3) + ' and m.STATUS = ' +
           IntToStr(20) + ' and m.CODCLIENTE = ' + IntToStr(idcliente);
    DM_MOV.s_buscaMov.CommandText := strSql;
    DM_MOV.s_buscaMov.Open;


    strSql := 'UPDATE MOVIMENTO SET CODCLIENTE = ' + IntToStr(idclienteNew) +
             ' WHERE CODMOVIMENTO = ' + IntToStr(DM_MOV.s_buscaMov.FieldByName('CODMOVIMENTO').AsInteger);

    DM_MOV.s_buscaMov.Close;
    Try
       dm.sqlsisAdimin.StartTransaction(TD);
       dm.sqlsisAdimin.ExecuteDirect(strSql);
       dm.sqlsisAdimin.Commit(TD);
    except
       dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
       MessageDlg('Erro ao efetuar troca de Mesa .', mtError,
           [mbOk], 0);
    end;
    
end;

procedure TF_MudaMesa.FormShow(Sender: TObject);
begin
  ComboBox1.Text := '';
  ComboBox1.SetFocus;  
end;

end.
