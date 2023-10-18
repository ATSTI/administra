unit uEscolherNF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCore, dxButton,
  StdCtrls,
  DB, DBCtrls,  DBxpress,
  FMTBcd, SqlExpr, Provider, DBClient;

type
  TfEscolherNF = class(TForm)
    dxButton8: TdxButton;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    dxButton3: TdxButton;
    dxButton4: TdxButton;
    dblkp_empresa: TDBLookupComboBox;
    dsEmpresa: TDataSource;
    Label1: TLabel;
    cds_empresa: TClientDataSet;
    dsp_empresa: TDataSetProvider;
    sds_Empresa: TSQLDataSet;
    cds_empresaEMPRESA: TStringField;
    cds_empresaCCUSTO: TIntegerField;
    cds_empresaNOME: TStringField;
    procedure dxButton8Click(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
    procedure dxButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NFeEletronica(Tipo: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEscolherNF: TfEscolherNF;

implementation

uses uNotafiscal, uNFCompra, uNF, uNotaf, ufNotafiscalProc, UDMNF,
  uLotes, uNotaf1,
  uNotafc,
  UDm;

{$R *.dfm}

procedure TfEscolherNF.dxButton8Click(Sender: TObject);
begin
   fLotes := TfLotes.Create(Application);
   fNFCompra := TfNFCompra.Create(Application);
   try
      fNFCompra.ShowModal;
   finally
      fLotes.free;
      fNFCompra.Free;
   end;
end;

procedure TfEscolherNF.dxButton1Click(Sender: TObject);
begin
   fNF := TfNF.Create(Application);
   try
      fNF.ShowModal;
   finally
      fNF.Free;
   end;
end;

procedure TfEscolherNF.dxButton2Click(Sender: TObject);
begin
   fNotaFiscalProc := TfNotaFiscalProc.Create(Application);
   try
      fNotaFiscalProc.ShowModal;
   finally
      fNotaFiscalProc.Free;
   end;
end;

procedure TfEscolherNF.dxButton3Click(Sender: TObject);
begin
   NFeEletronica('1');
   fNotaf := TfNotaf.Create(Application);
   try
     fNotaf.codVendaFin := 0;
     fNotaf.codMovFin := 0;
     fNotaf.nfe_ccusto_empresa := dblkp_empresa.KeyValue;
     fNotaf.nfe_ccusto_emp_nome := dblkp_empresa.Text;
     DM.tipoVenda := 'NF';
     TipoNF := 'Cliente';
     DMNF.cds_venda.Params[0].Clear;
     DMNF.cds_venda.Params[1].Clear;     
     fNotaf.ShowModal;
     if (not cds_empresa.Active) then
       cds_empresa.open;
   finally
      fNotaf.Free;
   end;
end;

procedure TfEscolherNF.dxButton4Click(Sender: TObject);
begin
   NFeEletronica('0');
   fNotaFc := TfNotaFc.Create(Application);
   try
      TipoNF := 'Fornecedor';
      fNotaFc.nfec_ccusto_empresa := dblkp_empresa.KeyValue;
      fNotaFc.nfec_ccusto_emp_nome := dblkp_empresa.Text;
      //fNotaFc.RadioGroup1.Visible := False;
      fNotaFc.ShowModal;
   finally
      fNotaFc.Free;
   end;
end;

procedure TfEscolherNF.FormShow(Sender: TObject);
begin
  if (not cds_empresa.Active) then
    cds_empresa.open;
  dblkp_empresa.KeyValue := cds_empresaCCUSTO.AsInteger;
end;

procedure TfEscolherNF.NFeEletronica(Tipo: String);
var
  TD: TTransactionDesc;
  dia, mes,ano :word;
  numero_ano,numero_mes, numero_dia : string;
  str_sql_user: String;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  DecodeDate(Now,ano,mes,dia);
  numero_ano := copy(IntToStr(ano),3,2);
  if (mes < 10) then
    numero_mes := '0' + IntToStr(mes)
  else
    numero_mes := IntToStr(mes);
  if (dia < 10) then
    numero_dia := '0' + IntToStr(dia)
  else
    numero_dia := IntToStr(dia);

  dm.sqlsisAdimin.StartTransaction(TD);
  try
    //if (tipo = '0') then
    //  tipo := '9' + IntToStr(fNotaf.nfe_ccusto_empresa)
    //else
    //  tipo := '1' + IntToStr(fNotaf.nfe_ccusto_empresa)
    str_sql_user := 'UPDATE UCTABUSERSLOGGED SET ' +
      ' CODEMPRESA = ' + IntToStr(dblkp_empresa.KeyValue) +
      ' , NOMEEMPRESA = ' + QuotedStr(dblkp_empresa.Text) +
      ' , TIPONOTA = ' + Tipo +
      ' WHERE UCIDUSER = ' + IntToStr(usulog) +
      ' AND UCDATA LIKE ' + QuotedStr(numero_dia + '/' + numero_mes  + '/' + numero_ano + '%');
    dm.sqlsisAdimin.ExecuteDirect(str_sql_user);
    dm.sqlsisAdimin.Commit(TD);
  except
    on E : Exception do
    begin
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
      exit;
    end;
  end;

end;

end.
