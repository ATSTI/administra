unit ufuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, SqlExpr, DB, DBClient, Provider, Menus, XPMenu,
  StdCtrls, Buttons, ExtCtrls, MMJPanel, Mask, DBCtrls, EChkCPF, DBLocal,
  DBLocalS, uPai,dbxpress, JvExControls, JvLabel, JvExStdCtrls, JvCheckBox ;

type
  TfFuncionario = class(TfPai)
    dsp_fun: TDataSetProvider;
    cds_fun: TClientDataSet;
    sql_fun: TSQLDataSet;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    Label17: TLabel;
    DBEdit15: TDBEdit;
    Label20: TLabel;
    DBEdit18: TDBEdit;
    Label21: TLabel;
    DBEdit19: TDBEdit;
    Label22: TLabel;
    DBEdit20: TDBEdit;
    Label23: TLabel;
    DBEdit21: TDBEdit;
    sql_proc_fun: TSQLClientDataSet;
    sql_proc_funCOD_FUNCIONARIO: TIntegerField;
    sql_proc_funNOME_FUNCIONARIO: TStringField;
    Label24: TLabel;
    DBEdit22: TDBEdit;
    EvCheckCPF1: TEvCheckCPF;
    DBRadioGroup1: TDBRadioGroup;
    GroupBox1: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit23: TDBEdit;
    Label25: TLabel;
    DBEdit24: TDBEdit;
    Label26: TLabel;
    DBEdit25: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBComboBox1: TDBComboBox;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    DBEdit16: TDBEdit;
    JvLabel1: TJvLabel;
    dbcargos: TDBComboBox;
    sCargos: TSQLDataSet;
    sCargosCOD_CARGOSFUNCOES: TIntegerField;
    sCargosDESCRICAO: TStringField;
    BitBtn1: TBitBtn;
    sCliente: TSQLDataSet;
    dCliente: TDataSetProvider;
    cCliente: TClientDataSet;
    dForn: TDataSetProvider;
    sForn: TSQLDataSet;
    cForn: TClientDataSet;
    cClienteCODCLIENTE: TIntegerField;
    cClienteNOMECLIENTE: TStringField;
    cClienteRAZAOSOCIAL: TStringField;
    cClienteTIPOFIRMA: TSmallintField;
    cClienteSEGMENTO: TSmallintField;
    cClienteREGIAO: TSmallintField;
    cClienteDATACADASTRO: TDateField;
    cClienteCODUSUARIO: TIntegerField;
    cClienteSTATUS: TSmallintField;
    sClienteCODCLIENTE: TIntegerField;
    sClienteNOMECLIENTE: TStringField;
    sClienteRAZAOSOCIAL: TStringField;
    sClienteTIPOFIRMA: TSmallintField;
    sClienteSEGMENTO: TSmallintField;
    sClienteREGIAO: TSmallintField;
    sClienteDATACADASTRO: TDateField;
    sClienteCODUSUARIO: TIntegerField;
    sClienteSTATUS: TSmallintField;
    cFornCODFORNECEDOR: TIntegerField;
    cFornNOMEFORNECEDOR: TStringField;
    cFornRAZAOSOCIAL: TStringField;
    cFornCONTATO: TStringField;
    cFornTIPOFIRMA: TSmallintField;
    cFornCPF: TStringField;
    cFornCNPJ: TStringField;
    cFornINSCESTADUAL: TStringField;
    cFornRG: TStringField;
    cFornSEGMENTO: TSmallintField;
    cFornREGIAO: TSmallintField;
    cFornLIMITECREDITO: TFloatField;
    cFornDATACADASTRO: TDateField;
    cFornCODUSUARIO: TIntegerField;
    cFornSTATUS: TSmallintField;
    cFornHOMEPAGE: TStringField;
    cFornPRAZOPAGAMENTO: TSmallintField;
    cFornPRAZOENTREGA: TSmallintField;
    cFornCONTA_FORNECEDOR: TStringField;
    sFornCODFORNECEDOR: TIntegerField;
    sFornNOMEFORNECEDOR: TStringField;
    sFornRAZAOSOCIAL: TStringField;
    sFornCONTATO: TStringField;
    sFornTIPOFIRMA: TSmallintField;
    sFornCPF: TStringField;
    sFornCNPJ: TStringField;
    sFornINSCESTADUAL: TStringField;
    sFornRG: TStringField;
    sFornSEGMENTO: TSmallintField;
    sFornREGIAO: TSmallintField;
    sFornLIMITECREDITO: TFloatField;
    sFornDATACADASTRO: TDateField;
    sFornCODUSUARIO: TIntegerField;
    sFornSTATUS: TSmallintField;
    sFornHOMEPAGE: TStringField;
    sFornPRAZOPAGAMENTO: TSmallintField;
    sFornPRAZOENTREGA: TSmallintField;
    sFornCONTA_FORNECEDOR: TStringField;
    rgCliFor: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    Label30: TLabel;
    DBEdit17: TDBEdit;
    sql_funCOD_FUNCIONARIO: TIntegerField;
    sql_funSEXO: TStringField;
    sql_funESTADO_CIVIL: TStringField;
    sql_funDATA_NASC: TDateField;
    sql_funRUA: TStringField;
    sql_funN: TStringField;
    sql_funCOMPLEMENTO: TStringField;
    sql_funBAIRRO: TStringField;
    sql_funCIDADE: TStringField;
    sql_funUF: TStringField;
    sql_funCEP: TStringField;
    sql_funRG: TStringField;
    sql_funTELEFONE: TStringField;
    sql_funCELULAR: TStringField;
    sql_funRECEBE_COMISSAO: TStringField;
    sql_funVALOR_COMISSAO: TFloatField;
    sql_funESPOSA: TStringField;
    sql_funPAI: TStringField;
    sql_funMAE: TStringField;
    sql_funNOME_FUNCIONARIO: TStringField;
    sql_funCPF: TStringField;
    sql_funDDD: TStringField;
    sql_funCODUSUARIO: TIntegerField;
    sql_funFUNCAO_CARGO: TStringField;
    sql_funDATA_ADMISSAO: TDateField;
    sql_funDATA_DESLIGAMENTO: TDateField;
    sql_funREGIAO_VENDA: TStringField;
    sql_funESPECIALIDADE: TStringField;
    sql_funCONTACORRENTE: TStringField;
    sql_funBANCO: TStringField;
    sql_funAGENCIA: TStringField;
    sql_funCODCLIENTE: TIntegerField;
    sql_funCODFORNECEDOR: TIntegerField;
    sql_funCLIFOR: TStringField;
    sql_funSTATUS: TStringField;
    sql_funSALARIO: TFloatField;
    sql_funEMAIL: TStringField;
    cds_funCOD_FUNCIONARIO: TIntegerField;
    cds_funSEXO: TStringField;
    cds_funESTADO_CIVIL: TStringField;
    cds_funDATA_NASC: TDateField;
    cds_funRUA: TStringField;
    cds_funN: TStringField;
    cds_funCOMPLEMENTO: TStringField;
    cds_funBAIRRO: TStringField;
    cds_funCIDADE: TStringField;
    cds_funUF: TStringField;
    cds_funCEP: TStringField;
    cds_funRG: TStringField;
    cds_funTELEFONE: TStringField;
    cds_funCELULAR: TStringField;
    cds_funRECEBE_COMISSAO: TStringField;
    cds_funVALOR_COMISSAO: TFloatField;
    cds_funESPOSA: TStringField;
    cds_funPAI: TStringField;
    cds_funMAE: TStringField;
    cds_funNOME_FUNCIONARIO: TStringField;
    cds_funCPF: TStringField;
    cds_funDDD: TStringField;
    cds_funCODUSUARIO: TIntegerField;
    cds_funFUNCAO_CARGO: TStringField;
    cds_funDATA_ADMISSAO: TDateField;
    cds_funDATA_DESLIGAMENTO: TDateField;
    cds_funREGIAO_VENDA: TStringField;
    cds_funESPECIALIDADE: TStringField;
    cds_funCONTACORRENTE: TStringField;
    cds_funBANCO: TStringField;
    cds_funAGENCIA: TStringField;
    cds_funCODCLIENTE: TIntegerField;
    cds_funCODFORNECEDOR: TIntegerField;
    cds_funCLIFOR: TStringField;
    cds_funSTATUS: TStringField;
    cds_funSALARIO: TFloatField;
    cds_funEMAIL: TStringField;
    procedure DtSrcStateChange(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFuncionario: TfFuncionario;

implementation

uses UDm, uProcurar, sCtrlResize, uCargosFuncoes;

{$R *.dfm}

procedure TfFuncionario.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure TfFuncionario.btnIncluirClick(Sender: TObject);
begin
  DBEdit21.SetFocus;
  inherited;
  DBRadioGroup2.ItemIndex := 0;
end;

procedure TfFuncionario.btnProcurarClick(Sender: TObject);
begin
  inherited;
  fProcurar:= TfProcurar.Create(self,sql_proc_fun);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOME_FUNCIONARIO';
   if fProcurar.ShowModal=mrOk then
   begin
     if cds_fun.Active then
       cds_fun.Close;
     cds_fun.Params[0].AsInteger := sql_proc_funCOD_FUNCIONARIO.AsInteger;
     cds_fun.Open;
     if (cds_funRECEBE_COMISSAO.AsString = 'V') then
       DBRadioGroup1.ItemIndex := 0;
     if (cds_funRECEBE_COMISSAO.AsString = 'C') then
       DBRadioGroup1.ItemIndex := 1;
     if (cds_funRECEBE_COMISSAO.AsString = 'A') then
       DBRadioGroup1.ItemIndex := 2;
       
   end;
  finally
    sql_proc_fun.Close;
    fProcurar.Free;
  end;
end;

procedure TfFuncionario.btnGravarClick(Sender: TObject);
VAR  str_sql: String;
     TD: TTransactionDesc;
begin
  IF (cds_fun.State in [dsInsert]) then
  begin
    //Abre a c_genid para pegar o número do CODPAGAMENTO
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_COD_FUNC, 1) as INTEGER) as CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_funCOD_FUNCIONARIO.AsInteger := dm.c_6_genid.fields[0].AsInteger;
    dm.c_6_genid.Close;
  end;

       //QUANDO LANÇAR DATA DESLIGAMENTO ALTERAR STATUS PARA 0 NA TABELA USUARIO

   if(not cds_funDATA_DESLIGAMENTO.IsNull) then
   begin
     TD.TransactionID := 1;
     TD.IsolationLevel := xilREADCOMMITTED;
     dm.sqlsisAdimin.StartTransaction(TD);
     str_sql := 'UPDATE USUARIO SET STATUS = 0 ' +
     ' WHERE NOMEUSUARIO  = ' + QuotedStr(cds_funNOME_FUNCIONARIO.AsString) ;
     dm.sqlsisAdimin.ExecuteDirect(str_sql);
     dm.sqlsisAdimin.Commit(TD);
   end;

  cds_funRECEBE_COMISSAO.AsString := DBRadioGroup1.Value;
  inherited;
end;

procedure TfFuncionario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (varForm1 = 'vendedor') then
  begin
    cod_forn := cds_funCOD_FUNCIONARIO.AsInteger;
    nome_forn := cds_funNOME_FUNCIONARIO.AsString;
  end;
  inherited;

end;

procedure TfFuncionario.FormCreate(Sender: TObject);
begin
//  inherited;
  if (varForm1 = 'Procura') then
  begin
    btnProcurar.Visible := False;
  end;
  dbcargos.Items.Clear;
  if (not sCargos.Active) then
     sCargos.Open;
  sCargos.First;
  while not sCargos.Eof do
  begin
    dbcargos.Items.Add(sCargosDESCRICAO.AsString);
    sCargos.Next;
  end;
end;

procedure TfFuncionario.FormShow(Sender: TObject);
begin
 // inherited;
  sCtrlResize.CtrlResize(TForm(fFuncionario));
end;

procedure TfFuncionario.BitBtn1Click(Sender: TObject);
begin
  inherited;
  fCargosFuncoes := TfCargosFuncoes.Create(Application);
  try
    fCargosFuncoes.ShowModal;
  finally
    fCargosFuncoes.Free;
  end;
  dbcargos.Items.Clear;
  if (not sCargos.Active) then
     sCargos.Open;
  sCargos.First;
  while not sCargos.Eof do
  begin
    dbcargos.Items.Add(sCargosDESCRICAO.AsString);
    sCargos.Next;
  end;
end;

end.
