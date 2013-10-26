unit uLancaProcSaudeProc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvComponentBase, JvFormAutoSize, JvExStdCtrls, JvEdit,
  JvDBSearchEdit, StdCtrls, Mask, JvExMask, JvToolEdit, Buttons, ExtCtrls,
  MMJPanel, Grids, DBGrids, JvExDBGrids, JvDBGrid, FMTBcd, SqlExpr, DB,
  DBClient, Provider, Menus, rpcompobase, rpvclreport, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, JvCombobox, JvDBSearchComboBox,DateUtils,uUtils,rplabelitem,
  JvFormPlacement, JvAppStorage, JvAppXMLStorage;

type
  TfLancaProcSaudeProc = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    JvDBSearchEdit1: TJvDBSearchEdit;
    JvDBSearchEdit3: TJvDBSearchEdit;
    JvDBSearchEdit5: TJvDBSearchEdit;
    JvDBGrid1: TJvDBGrid;
    MMJPanel1: TMMJPanel;
    btnGravar: TBitBtn;
    btnIncluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    btnProcurar: TBitBtn;
    btnSair: TBitBtn;
    Panel2: TPanel;
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    Panel4: TPanel;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    ds: TDataSource;
    sds: TSQLDataSet;
    JvDBSearchEdit7: TJvDBSearchEdit;
    Label1: TLabel;
    Label2: TLabel;
    dsClienteBuscaP: TDataSource;
    dsProc: TDataSource;
    BitBtn11: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label11: TLabel;
    PopupMenu1: TPopupMenu;
    Procurar1: TMenuItem;
    Incuir1: TMenuItem;
    Gravar1: TMenuItem;
    Excluir1: TMenuItem;
    Cancelar1: TMenuItem;
    Sair1: TMenuItem;
    rep: TVCLReport;
    cdsProcedimento: TClientDataSet;
    cdsCODPRODUTO: TIntegerField;
    cdsVALORUNITARIOATUAL: TFloatField;
    cdsESTOQUEREPOSICAO: TFloatField;
    cdsPRODUTO: TStringField;
    cdsCONTA_DESPESA: TStringField;
    cdsCONTA_RECEITA: TStringField;
    cdsCONTA_ESTOQUE: TStringField;
    cdsVALOR_PRAZO: TFloatField;
    cdsCODPRO: TStringField;
    dspProcedimento: TDataSetProvider;
    sdsProcedimento: TSQLDataSet;
    JvDBSearchEdit2: TJvDBSearchComboBox;
    JvDBSearchEdit8: TJvDBSearchComboBox;
    JvDBSearchEdit4: TJvDBSearchComboBox;
    JvDBSearchEdit6: TJvDBSearchComboBox;
    JvDateEdit2: TJvDatePickerEdit;
    BitBtn4: TBitBtn;
    JvDateEdit1: TJvDatePickerEdit;
    BitBtn5: TBitBtn;
    Label12: TLabel;
    vencimento2: TJvDatePickerEdit;
    vencimento1: TJvDatePickerEdit;
    Label13: TLabel;
    dataX: TJvDatePickerEdit;
    dataY: TJvDatePickerEdit;
    Label14: TLabel;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    procedure btnProcurarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure JvDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn5Click(Sender: TObject);
    procedure JvDBGrid1TitleClick(Column: TColumn);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
  private
    { Private declarations }
    sqlSaude, sql2: string;
  public
    { Public declarations }
    ccustoProc: string;
  end;

var
  fLancaProcSaudeProc: TfLancaProcSaudeProc;

implementation

uses UDm, UDmSaude, uLancaProcSaude, uLancaProcPcmso, uLancaProcPart ;

{$R *.dfm}

procedure TfLancaProcSaudeProc.btnProcurarClick(Sender: TObject);
begin

  if (cds.Active) then
    cds.Close;
  sql2 := 'SELECT tit, emissao, vence, assocTitular, assocDependente, ' +
    'codConta , conta, hist, vlrRec, vlrPagto, contratado, codTitular, ' +
    'codContratado, codDependente, codrec, codpag, codMovi, codVen, codMovDet, ' +
    'faixaEtaria FROM LANCAPROCSAUDEPROC(';

  if (JvDateEdit1.Text = '') then
  begin
    MessageDlg('Preencha o período a pesquisar.', mtInformation, [mbOK], 0);
    exit;
  end;
  sqlSaude := '';
  sqlSaude := sqlSaude + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit1.Date)) + ','; // Emissao;
  sqlSaude := sqlSaude + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit2.Date)) + ','; // Emissao;

      // Data Vencimento

  if (vencimento1.Text = '') then
    begin
      sqlSaude := sqlSaude + QuotedStr('01/01/2007') + ',';
      sqlSaude := sqlSaude + QuotedStr('01/01/2028') + ',';
    end
  else begin
    sqlSaude := sqlSaude + QuotedStr(FormatDateTime('mm/dd/yy',vencimento1.Date)) + ','; // vencimento1;
    sqlSaude := sqlSaude + QuotedStr(FormatDateTime('mm/dd/yy',vencimento2.Date)) + ','; // vencimento2;
  end;


  // Titular
  if (JvDBSearchEdit2.Text <> '') then
  begin
    if (dmSaude.cdsClienteBuscaRA.AsString <> JvDBSearchEdit1.Text) then
      DMSaude.cdsClienteBusca.Locate('RA',JvDBSearchEdit1.Text,[loCaseInsensitive]);
    sqlSaude := sqlSaude + IntToStr(dmSaude.cdsClienteBuscaCODCLIENTE.asInteger) + ', ';
  end
  else
    sqlSaude := sqlSaude + '0' + ',';

  // Beneficiario
  if (JvDBSearchEdit8.Text <> '') then
    sqlSaude := sqlSaude + IntToStr(DMSaude.cdsClienteBuscaPCODCLIENTE.asInteger) + ', '
  else
    sqlSaude := sqlSaude + '0' + ',';

  // Procedimento
  if (JvDBSearchEdit4.Text <> '') then
    sqlSaude := sqlSaude + cdsCODPRO.asString + ','
  else
    sqlSaude := sqlSaude + '0' + ',';

  // Fornecedor - Contratado
  if (JvDBSearchEdit5.Text <> '') then
    sqlSaude := sqlSaude + IntToStr(dmSaude.cdsFornecedorCODFORNECEDOR.asInteger) + ','
  else
    sqlSaude := sqlSaude + '0' + ',';

  // Centro de Custo
  if (ccustoProc = 'ASH') then
    sqlSaude := sqlSaude + '51' + ')'
  else if (ccustoProc = 'PCMSO') then
    sqlSaude := sqlSaude + '52' + ')' //PCMSO
  else
    sqlSaude := sqlSaude + '53' + ')'; //PARTICULAR
  cds.CommandText := sql2 + sqlSaude;
  cds.Open;
  TFloatField(cds.Fields[8]).DisplayFormat := ',##0.00';
  TFloatField(cds.Fields[9]).DisplayFormat := ',##0.00';
  JvDBGrid1.Columns[0].FieldName := cds.Fields[0].FieldName;
  JvDBGrid1.Columns[1].FieldName := cds.Fields[1].FieldName;
  JvDBGrid1.Columns[2].FieldName := cds.Fields[2].FieldName;
  JvDBGrid1.Columns[3].FieldName := cds.Fields[3].FieldName;
  JvDBGrid1.Columns[4].FieldName := cds.Fields[4].FieldName;
  JvDBGrid1.Columns[5].FieldName := cds.Fields[5].FieldName;
  JvDBGrid1.Columns[6].FieldName := cds.Fields[6].FieldName;
  JvDBGrid1.Columns[7].FieldName := cds.Fields[8].FieldName;
  JvDBGrid1.Columns[8].FieldName := cds.Fields[9].FieldName;
  JvDBGrid1.Columns[9].FieldName := cds.Fields[7].FieldName;

end;

procedure TfLancaProcSaudeProc.FormShow(Sender: TObject);
var datai : TUtils;
    ano, mes, dia, dia1: word;
begin

  decodedate(DataX.date, ano, mes, dia);
  if(mes < 11) then
  mes := mes +1;
  if(mes = 12) then
  mes := mes ;
  if(mes = 2) then
  dia := 28 ;
  if (dia > 30 ) then
  dia := dia - 1;
  DataX.Date:=encodedate(ano, mes, dia);

  decodedate(DataY.date, ano, mes, dia);
//  mes := mes +1;
  if(mes < 11) then
  mes := mes +1;
  if(mes = 12) then
  mes := mes ;

  dia := 1;
  DataY.Date:=encodedate(ano, mes, dia);

  decodedate(JvDateEdit1.date, ano, mes, dia);
  mes := mes ;
  dia := 1;
  JvDateEdit1.Date:=encodedate(ano, mes, dia);

  JvDateEdit1.SetFocus;

  if (not cdsProcedimento.Active) then
    cdsProcedimento.Open;

  if (dmSaude.cdsClienteBusca.Active) then
    dmSaude.cdsClienteBusca.close;

  dmSaude.cdsClienteBusca.CommandText := 'select CODCLIENTE, NOMECLIENTE, ' +
   'RAZAOSOCIAL, RA from CLIENTES where status = 0 and GRUPO_CLIENTE = ' + QuotedStr(ccustoProc) +
   ' and segmento = 0 order by NOMECLIENTE ';

//  dmSaude.cdsClienteBusca.Params[0].AsString := ccustoProc;

  dmSaude.cdsClienteBusca.Open;


  if (dmSaude.cdsFornecedor.Active) then
    dmSaude.cdsFornecedor.Close;
  dmSaude.cdsFornecedor.Params[0].AsInteger := 0;
  dmSaude.cdsFornecedor.Open;

  if (DMSaude.cdsClienteBuscaP.Active) then
    DMSaude.cdsClienteBuscaP.close;
  DMSaude.cdsClienteBuscaP.Params[0].AsString := ccustoProc;
  DMSaude.cdsClienteBuscaP.Open;
  JvDBSearchEdit1.Text := '';
  JvDBSearchEdit2.Text := '';
  JvDBSearchEdit3.Text := '';
  JvDBSearchEdit4.Text := '';
  JvDBSearchEdit5.Text := '';
  JvDBSearchEdit6.Text := '';
  JvDBSearchEdit7.Text := '';
  JvDBSearchEdit8.Text := '';
end;

procedure TfLancaProcSaudeProc.btnIncluirClick(Sender: TObject);
var nTitulo : string;
begin
  if (cds.IsEmpty) then
  begin
    MessageDlg('Execute uma pesquisa primeiro.', mtInformation, [mbOK], 0);
    exit;
  end;
  if (not cds.IsEmpty) then
  begin
    if (ccustoProc = 'ASH') then
    begin
      fLancaProcSaude.JvDateEdit1.Date := cds.Fields[1].AsDateTime;
      fLancaProcSaude.JvDateEdit2.Date := cds.Fields[2].AsDateTime;
      fLancaProcSaude.JvDBSearchEdit2.Text := cds.Fields[4].AsString;   // Associado
      fLancaProcSaude.JvDBSearchEdit1.Text := cds.Fields[13].AsString;   // CódAssociado
      //fLancaProcSaude.JvDBSearchEdit4.Text := cds.Fields[6].AsString; // Procedimento
      //fLancaProcSaude.JvDBSearchEdit3.Text := cds.Fields[5].AsString; // Procedimento
      fLancaProcSaude.codConta := cds.Fields[5].AsString;
      if (cds.Fields[8].AsFloat > 0) then
      begin
        fLancaProcSaude.JvCalcEdit2.Text := FloatToStr(cds.Fields[8].AsFloat);  // ValorRec
        fLancaProcSaude.JvCalcEdit1.Text := '0';
      end
      else begin
        fLancaProcSaude.JvCalcEdit2.Text := '0';
        fLancaProcSaude.JvCalcEdit1.Text := FloatToStr(-(cds.Fields[8].AsFloat));  // ValorRec
      end;
      fLancaProcSaude.codReceb := cds.Fields[14].asInteger;
      fLancaProcSaude.codMov := cds.Fields[16].AsInteger;
      fLancaProcSaude.codVen := cds.Fields[17].AsInteger;
      fLancaProcSaude.codMovd := cds.Fields[18].AsInteger;
      //fLancaProcSaude.JvDBSearchEdit6.Text := cds.Fields[10].AsString;// Contratado
      //fLancaProcSaude.JvDBSearchEdit5.Text := IntToStr(cds.Fields[12].AsInteger);   // CódContratado
      fLancaProcSaude.codForn := cds.Fields[12].AsInteger;
      fLancaProcSaude.Memo1.Lines.Text := cds.Fields[7].asString;
      if (fLancaProcSaude.cds_Movimento.Active) then
        fLancaProcSaude.cds_Movimento.Close;
      fLancaProcSaude.cds_Movimento.Params[0].AsInteger := fLancaProcSaude.codMov;
      fLancaProcSaude.cds_Movimento.open;
      fLancaProcSaude.cds_Movimento.Edit;
    end;
    if (ccustoProc = 'PCMSO') then
    begin

      if (fLancaProcPcmso.cds_Movimento.Active) then
        fLancaProcPcmso.cds_Movimento.Close;
      fLancaProcPcmso.cds_Movimento.Params[0].AsInteger := fLancaProcPcmso.codMov;
      fLancaProcPcmso.cds_Movimento.open;
      fLancaProcPcmso.cds_Movimento.Edit;

      fLancaProcPcmso.JvDateEdit1.Date := cds.Fields[1].AsDateTime;
      fLancaProcPcmso.JvDateEdit2.Date := cds.Fields[2].AsDateTime;
      fLancaProcPcmso.JvDBSearchEdit2.Text := cds.Fields[3].AsString;   // Associado
      fLancaProcPcmso.JvDBSearchEdit1.Text := cds.Fields[11].AsString;   // CódAssociado
      fLancaProcPcmso.empresa := cds.Fields[11].AsString;   // CódAssociado
      fLancaProcPcmso.dbFuncionario.Text := cds.Fields[4].AsString;   // Funcionario
      fLancaProcPcmso.dbcodFuncionario.Text := cds.Fields[13].AsString;   // CódFuncionario
      fLancaProcPcmso.codFun := cds.Fields[13].AsString;
      //fLancaProcPcmso.JvDBSearchEdit4.Text := cds.Fields[6].AsString; // Procedimento
      //fLancaProcPcmso.JvDBSearchEdit3.Text := cds.Fields[5].AsString; // Procedimento
      fLancaProcPcmso.codConta := cds.Fields[5].AsString;
      fLancaProcPcmso.vlr := cds.Fields[8].AsFloat;  // ValorRec
      fLancaProcPcmso.codReceb := cds.Fields[14].asInteger;
      fLancaProcPcmso.codMov := cds.Fields[16].AsInteger;
      fLancaProcPcmso.codVen := cds.Fields[17].AsInteger;
      fLancaProcPcmso.codMovd := cds.Fields[18].AsInteger;
      //fLancaProcPcmso.JvDBSearchEdit6.Text := cds.Fields[10].AsString;// Contratado
      //fLancaProcPcmso.JvDBSearchEdit5.Text := IntToStr(cds.Fields[12].AsInteger);   // CódContratado
      fLancaProcPcmso.codForn := cds.Fields[12].AsInteger;
      if (cds.Fields[8].AsFloat > 0) then
      begin
        fLancaProcPcmso.JvCalcEdit2.Text := FloatToStr(cds.Fields[8].AsFloat);  // ValorRec
        fLancaProcPcmso.JvCalcEdit1.Text := '0';
      end
      else begin
        fLancaProcPcmso.JvCalcEdit2.Text := '0';
        fLancaProcPcmso.JvCalcEdit1.Text := FloatToStr(-(cds.Fields[8].AsFloat));  // ValorRec
      end;
      fLancaProcPcmso.Memo1.Lines.Text := cds.Fields[7].asString;

    end;
    if (ccustoProc = 'PARTICULAR') then
    begin
      fLancaProcPart.JvDateEdit1.Date := cds.Fields[1].AsDateTime;
      fLancaProcPart.JvDateEdit2.Date := cds.Fields[2].AsDateTime;
      fLancaProcPart.JvDBSearchEdit2.Text := cds.Fields[4].AsString;   // Associado
      fLancaProcPart.JvDBSearchEdit1.Text := cds.Fields[13].AsString;   // CódAssociado
      //fLancaProcSaude.JvDBSearchEdit4.Text := cds.Fields[6].AsString; // Procedimento
      //fLancaProcSaude.JvDBSearchEdit3.Text := cds.Fields[5].AsString; // Procedimento
      fLancaProcPart.codConta := cds.Fields[5].AsString;
      if (cds.Fields[8].AsFloat > 0) then
      begin
        fLancaProcPart.JvCalcEdit2.Text := FloatToStr(cds.Fields[8].AsFloat);  // ValorRec
        fLancaProcPart.JvCalcEdit1.Text := '0';
      end
      else begin
        fLancaProcPart.JvCalcEdit2.Text := '0';
        fLancaProcPart.JvCalcEdit1.Text := FloatToStr(-(cds.Fields[8].AsFloat));  // ValorRec
      end;
      fLancaProcPart.codReceb := cds.Fields[14].asInteger;
      fLancaProcPart.codMov := cds.Fields[16].AsInteger;
      fLancaProcPart.codVen := cds.Fields[17].AsInteger;
      fLancaProcPart.codMovd := cds.Fields[18].AsInteger;
      //fLancaProcSaude.JvDBSearchEdit6.Text := cds.Fields[10].AsString;// Contratado
      //fLancaProcSaude.JvDBSearchEdit5.Text := IntToStr(cds.Fields[12].AsInteger);   // CódContratado
      fLancaProcPart.codForn := cds.Fields[12].AsInteger;
      fLancaProcPart.Memo1.Lines.Text := cds.Fields[7].asString;
      if (fLancaProcPart.cds_Movimento.Active) then
        fLancaProcPart.cds_Movimento.Close;
      fLancaProcPart.cds_Movimento.Params[0].AsInteger := fLancaProcPart.codMov;
      fLancaProcPart.cds_Movimento.open;
      fLancaProcPart.cds_Movimento.Edit;
    end;

  end;

  if (ccustoProc = 'ASH') then
  begin
    fLancaProcSaude.codPagto := cds.Fields[15].asInteger;
    fLancaProcSaude.ShowModal;
  end;
  if (ccustoProc = 'PCMSO') then
  begin
    fLancaProcPcmso.codPagto := cds.Fields[15].asInteger;
    dmSaude.cdsClienteBusca.Locate('RA', fLancaProcPcmso.empresa, [loCaseInsensitive]);
    fLancaProcPcmso.ShowModal;
  end;
  if (ccustoProc = 'PARTICULAR') then
  begin
    fLancaProcPart.codPagto := cds.Fields[15].asInteger;
    fLancaProcPart.ShowModal;
  end;

  if (dmSaude.cdsClienteBusca.Active) then
    dmSaude.cdsClienteBusca.close;

   dmSaude.cdsClienteBusca.CommandText := 'select CODCLIENTE, NOMECLIENTE, ' +
    'RAZAOSOCIAL, RA from CLIENTES where status = 0 and GRUPO_CLIENTE = ' + QuotedStr(ccustoProc) +
    ' order by NOMECLIENTE ';
 // dmSaude.cdsClienteBusca.Params[0].AsString := ccusto;

 // dmSaude.cdsClienteBusca.Params[0].AsString := ccustoProc;
  dmSaude.cdsClienteBusca.Open;

  if (dmSaude.cdsFornecedor.Active) then
    dmSaude.cdsFornecedor.Close;
  dmSaude.cdsFornecedor.Params[0].AsInteger := 0;
  dmSaude.cdsFornecedor.Open;

  if (DMSaude.cdsClienteBuscaP.Active) then
    DMSaude.cdsClienteBuscaP.close;
  DMSaude.cdsClienteBuscaP.Params[0].AsString := ccustoProc;
  DMSaude.cdsClienteBuscaP.Open;
 // JvDBSearchEdit1.Text := '';
//  JvDBSearchEdit2.Text := '';
  JvDBSearchEdit1.Text := cds.Fields[11].AsString;
  JvDBSearchEdit2.Text := cds.Fields[3].AsString;
  JvDBSearchEdit3.Text := '';
  JvDBSearchEdit4.Text := '';
  JvDBSearchEdit5.Text := '';
  JvDBSearchEdit6.Text := '';
  JvDBSearchEdit7.Text := '';
  JvDBSearchEdit8.Text := '';
  btnProcurar.Click;

end;

procedure TfLancaProcSaudeProc.btnSairClick(Sender: TObject);
begin
   DMSaude.sqlVencimentoPCMSO.Close;
   DMSaude.sqlVencimentoASH.Close;
   Close;
end;

procedure TfLancaProcSaudeProc.BitBtn2Click(Sender: TObject);
begin
  JvDBSearchEdit7.Clear;
  JvDBSearchEdit8.Clear;
end;

procedure TfLancaProcSaudeProc.BitBtn3Click(Sender: TObject);
begin
  JvDBSearchEdit5.Clear;
  JvDBSearchEdit6.Clear;
end;

procedure TfLancaProcSaudeProc.BitBtn11Click(Sender: TObject);
begin
  JvDBSearchEdit1.Clear;
  JvDBSearchEdit2.Clear;
end;

procedure TfLancaProcSaudeProc.BitBtn1Click(Sender: TObject);
begin
  JvDBSearchEdit3.Clear;
  JvDBSearchEdit4.Clear;
end;

procedure TfLancaProcSaudeProc.btnImprimirClick(Sender: TObject);
  var data1,data2 :TRpLabel;
begin

  rep.Filename := str_relatorio + 'ver_lancamentos.rep';
  rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  sql2 := 'SELECT * ' +
    'FROM LANCAPROCSAUDEPROC(';
  rep.Report.DataInfo.Items[0].SQL:= sql2 + sqlSaude;

  data1:=TRpLabel(rep.Report.FindComponent('TRpLabel4'));
  data2:=TRpLabel(rep.Report.FindComponent('TRpLabel8'));



   if JvDateEdit1.text <> '' then
  begin
  if Assigned(data1) then
    data1.Text := dataX.Text;
  if Assigned(data2) then
    data2.Text := dataY.Text;
  end;


  rep.Execute;

{
  rep.Filename := str_relatorio + 'ver_lancamentos.rep';
  rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  rep.Report.DataInfo.Items[0].SQL:= sqlSaude;
  rep.Execute;


  rep.Filename := str_relatorio + 'receita_saude.rep';
  rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  sql2 := 'SELECT * ' +
    'FROM LANCAMENTOS(';
  rep.Report.DataInfo.Items[0].SQL:= sql2 + sqlSaude;
  rep.Execute;
 }
end;

procedure TfLancaProcSaudeProc.BitBtn4Click(Sender: TObject);
  var data1,data2 :TRpLabel;
begin
  rep.Filename := str_relatorio + 'receita_saude_matricial.rep';
  rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  sql2 := 'SELECT * ' +
    'FROM LANCAMENTOS(';
  rep.Report.DataInfo.Items[0].SQL:= sql2 + sqlSaude;

  data1:=TRpLabel(rep.Report.FindComponent('TRpLabel2'));
  data2:=TRpLabel(rep.Report.FindComponent('TRpLabel3'));

   if JvDateEdit1.text <> '' then
  begin
  if Assigned(data1) then
    data1.Text := JvDateEdit1.Text;
  if Assigned(data2) then
    data2.Text := JvDateEdit2.Text;
  end;


  rep.Execute;
end;

procedure TfLancaProcSaudeProc.JvDateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfLancaProcSaudeProc.BitBtn5Click(Sender: TObject);
  var data1,data2 :TRpLabel;
begin
  rep.Filename := str_relatorio + 'aviso_saudeMatricial.rep';
  rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;

  sql2 := 'SELECT * ' +
    'FROM AVISO_ASH(';
  rep.Report.DataInfo.Items[0].SQL:= sql2 + sqlSaude;

  data1:=TRpLabel(rep.Report.FindComponent('TRpLabel2'));
  data2:=TRpLabel(rep.Report.FindComponent('TRpLabel3'));



   if JvDateEdit1.text <> '' then
  begin
  if Assigned(data1) then
    data1.Text := dataX.Text;
  if Assigned(data2) then
    data2.Text := dataY.Text;
  end;



  rep.Execute;
end;



procedure TfLancaProcSaudeProc.JvDBGrid1TitleClick(Column: TColumn);
begin
  cds.IndexFieldNames := Column.FieldName;
end;

procedure TfLancaProcSaudeProc.BitBtn6Click(Sender: TObject);
  var data1,data2 :TRpLabel;
begin
  rep.Filename := str_relatorio + 'previsao_exames.rep';
  rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  sql2 := 'SELECT * ' +
    'FROM PREVISAO_EXAMES(';
  rep.Report.DataInfo.Items[0].SQL:= sql2 + sqlSaude;



  data1:=TRpLabel(rep.Report.FindComponent('TRpLabel2'));
  data2:=TRpLabel(rep.Report.FindComponent('TRpLabel3'));

   if JvDateEdit1.text <> '' then
  begin
  if Assigned(data1) then
    data1.Text := JvDateEdit1.Text;
  if Assigned(data2) then
    data2.Text := JvDateEdit2.Text;
  end;


  rep.Execute;

end;

procedure TfLancaProcSaudeProc.BitBtn7Click(Sender: TObject);
begin
  if (cds.Active) then
    cds.Close;
  sql2 := 'SELECT tit, emissao, vence, assocTitular, assocDependente, ' +
    'codConta , conta, hist, vlrRec, vlrPagto, contratado, codTitular, ' +
    'codContratado, codDependente, codrec, codpag, codMovi, codVen, codMovDet, ' +
    'faixaEtaria FROM PREVISAO_EXAMES(';

  if (JvDateEdit1.Text = '') then
  begin
    MessageDlg('Preencha o período a pesquisar.', mtInformation, [mbOK], 0);
    exit;
  end;
  sqlSaude := '';
  sqlSaude := sqlSaude + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit1.Date)) + ','; // Emissao;
  sqlSaude := sqlSaude + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit2.Date)) + ','; // Emissao;

      // Data Vencimento

  vencimento1.Clear;
  vencimento2.Clear;

  if (vencimento1.Text = '') then
    begin
      sqlSaude := sqlSaude + QuotedStr('01/01/2007') + ',';
      sqlSaude := sqlSaude + QuotedStr('01/01/2028') + ',';
    end
  else begin
    sqlSaude := sqlSaude + QuotedStr(FormatDateTime('mm/dd/yy',vencimento1.Date)) + ','; // vencimento1;
    sqlSaude := sqlSaude + QuotedStr(FormatDateTime('mm/dd/yy',vencimento2.Date)) + ','; // vencimento2;
  end;


  // Titular
  if (JvDBSearchEdit2.Text <> '') then
  begin
    if (dmSaude.cdsClienteBuscaRA.AsString <> JvDBSearchEdit1.Text) then
      DMSaude.cdsClienteBusca.Locate('RA',JvDBSearchEdit1.Text,[loCaseInsensitive]);
    sqlSaude := sqlSaude + IntToStr(dmSaude.cdsClienteBuscaCODCLIENTE.asInteger) + ', ';
  end
  else
    sqlSaude := sqlSaude + '0' + ',';

  // Beneficiario
  if (JvDBSearchEdit8.Text <> '') then
    sqlSaude := sqlSaude + IntToStr(DMSaude.cdsClienteBuscaPCODCLIENTE.asInteger) + ', '
  else
    sqlSaude := sqlSaude + '0' + ',';

  // Procedimento
  if (JvDBSearchEdit4.Text <> '') then
    sqlSaude := sqlSaude + cdsCODPRO.asString + ','
  else
    sqlSaude := sqlSaude + '0' + ',';

  // Fornecedor - Contratado
  if (JvDBSearchEdit5.Text <> '') then
    sqlSaude := sqlSaude + IntToStr(dmSaude.cdsFornecedorCODFORNECEDOR.asInteger) + ','
  else
    sqlSaude := sqlSaude + '0' + ',';

  // Centro de Custo
  if (ccustoProc = 'ASH') then
    sqlSaude := sqlSaude + '51' + ')'
  else if (ccustoProc = 'PCMSO') then
    sqlSaude := sqlSaude + '52' + ')' //PCMSO
  else
    sqlSaude := sqlSaude + '53' + ')'; //PARTICULAR
  cds.CommandText := sql2 + sqlSaude;
  cds.Open;
  TFloatField(cds.Fields[8]).DisplayFormat := ',##0.00';
  TFloatField(cds.Fields[9]).DisplayFormat := ',##0.00';
  JvDBGrid1.Columns[0].FieldName := cds.Fields[0].FieldName;
  JvDBGrid1.Columns[1].FieldName := cds.Fields[1].FieldName;
  JvDBGrid1.Columns[2].FieldName := cds.Fields[2].FieldName;
  JvDBGrid1.Columns[3].FieldName := cds.Fields[3].FieldName;
  JvDBGrid1.Columns[4].FieldName := cds.Fields[4].FieldName;
  JvDBGrid1.Columns[5].FieldName := cds.Fields[5].FieldName;
  JvDBGrid1.Columns[6].FieldName := cds.Fields[6].FieldName;
  JvDBGrid1.Columns[7].FieldName := cds.Fields[8].FieldName;
  JvDBGrid1.Columns[8].FieldName := cds.Fields[9].FieldName;
  JvDBGrid1.Columns[9].FieldName := cds.Fields[7].FieldName;


end;

procedure TfLancaProcSaudeProc.BitBtn8Click(Sender: TObject);
begin
  {
  rep.Filename := str_relatorio + 'ver_reembolsos.rep';
  rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  sql2 := 'SELECT * ' +
    'FROM LANCAPROCSAUDEPROC(';
  rep.Report.DataInfo.Items[0].SQL:= sql2 + sqlSaude;
  rep.Execute;
  }
/// if (cds.Active) then
///    cds.Close;

  rep.Filename := str_relatorio + 'ver_reembolsos.rep';
  rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
//  sql2 := 'SELECT * ' +

  sql2 := 'SELECT tit, emissao, vence, assocTitular, assocDependente, ' +
    'codConta , conta, hist, vlrRec, vlrPagto, contratado, codTitular, ' +
    'codContratado, codDependente, codrec, codpag, codMovi, codVen, codMovDet, ' +
    'faixaEtaria FROM LANCAPROCSAUDEPROC(';

  if (JvDateEdit1.Text = '') then
  begin
    MessageDlg('Preencha o período a pesquisar.', mtInformation, [mbOK], 0);
    exit;
  end;
  sqlSaude := '';
  sqlSaude := sqlSaude + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit1.Date)) + ','; // Emissao;
  sqlSaude := sqlSaude + QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit2.Date)) + ','; // Emissao;

      // Data Vencimento

  if (vencimento1.Text = '') then
    begin
      sqlSaude := sqlSaude + QuotedStr('01/01/2007') + ',';
      sqlSaude := sqlSaude + QuotedStr('01/01/2028') + ',';
    end
  else begin
    sqlSaude := sqlSaude + QuotedStr(FormatDateTime('mm/dd/yy',vencimento1.Date)) + ','; // vencimento1;
    sqlSaude := sqlSaude + QuotedStr(FormatDateTime('mm/dd/yy',vencimento2.Date)) + ','; // vencimento2;
  end;


  // Titular
  if (JvDBSearchEdit2.Text <> '') then
  begin
    if (dmSaude.cdsClienteBuscaRA.AsString <> JvDBSearchEdit1.Text) then
      DMSaude.cdsClienteBusca.Locate('RA',JvDBSearchEdit1.Text,[loCaseInsensitive]);
    sqlSaude := sqlSaude + IntToStr(dmSaude.cdsClienteBuscaCODCLIENTE.asInteger) + ', ';
  end
  else
    sqlSaude := sqlSaude + '0' + ',';

  // Beneficiario
  if (JvDBSearchEdit8.Text <> '') then
    sqlSaude := sqlSaude + IntToStr(DMSaude.cdsClienteBuscaPCODCLIENTE.asInteger) + ', '
  else
    sqlSaude := sqlSaude + '0' + ',';

  // Procedimento
  if (JvDBSearchEdit4.Text <> '') then
    sqlSaude := sqlSaude + cdsCODPRO.asString + ','
  else
    sqlSaude := sqlSaude + '0' + ',';

  // Fornecedor - Contratado
  if (JvDBSearchEdit5.Text <> '') then
    sqlSaude := sqlSaude + IntToStr(dmSaude.cdsFornecedorCODFORNECEDOR.asInteger) + ','
  else
    sqlSaude := sqlSaude + '0' + ',';

  // Centro de Custo
  if (ccustoProc = 'ASH') then
    sqlSaude := sqlSaude + '51' + ')'
  else if (ccustoProc = 'PCMSO') then
    sqlSaude := sqlSaude + '52' + ')' //PCMSO
  else
    sqlSaude := sqlSaude + '53' + ')'; //PARTICULAR
 // cds.CommandText := sql2 + sqlSaude;
  rep.Report.DataInfo.Items[0].SQL:= sql2 + sqlSaude;
  rep.Execute;

end;

procedure TfLancaProcSaudeProc.BitBtn9Click(Sender: TObject);
  var data1,data2 :TRpLabel;
begin
  rep.Filename := str_relatorio + 'aviso_saude.rep';
  rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;

  sql2 := 'SELECT * ' +
    'FROM AVISO_ASH(';
  rep.Report.DataInfo.Items[0].SQL:= sql2 + sqlSaude;

  data1:=TRpLabel(rep.Report.FindComponent('TRpLabel2'));
  data2:=TRpLabel(rep.Report.FindComponent('TRpLabel3'));



   if JvDateEdit1.text <> '' then
  begin
  if Assigned(data1) then
    data1.Text := dataX.Text;
  if Assigned(data2) then
    data2.Text := dataY.Text;
  end;



  rep.Execute;

end;

procedure TfLancaProcSaudeProc.BitBtn10Click(Sender: TObject);
  var data1,data2 :TRpLabel;
begin
  rep.Filename := str_relatorio + 'receita_saude.rep';
  rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;

  sql2 := 'SELECT * ' +
    'FROM AVISO_ASH(';
  rep.Report.DataInfo.Items[0].SQL:= sql2 + sqlSaude;

  data1:=TRpLabel(rep.Report.FindComponent('TRpLabel2'));
  data2:=TRpLabel(rep.Report.FindComponent('TRpLabel3'));



   if JvDateEdit1.text <> '' then
  begin
  if Assigned(data1) then
    data1.Text := dataX.Text;
  if Assigned(data2) then
    data2.Text := dataY.Text;
  end;



  rep.Execute;

end;

end.

