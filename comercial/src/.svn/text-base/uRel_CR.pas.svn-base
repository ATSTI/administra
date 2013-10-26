unit uRel_CR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, DB, FMTBcd, SqlExpr, ComCtrls, ExtCtrls,
  RLBoleto, rpcompobase, rpvclreport, DBClient, Provider, rplabelitem;

type
  TfRel_CR = class(TForm)
    btnImprimir: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    SpeedButton1: TSpeedButton;
    Edit2: TEdit;
    cds_Empresa: TSQLDataSet;
    cds_EmpresaEMPRESA: TStringField;
    cds_EmpresaRAZAO: TStringField;
    cds_EmpresaCNPJ_CPF: TStringField;
    cds_EmpresaENDERECO: TStringField;
    cds_EmpresaLOGRADOURO: TStringField;
    cds_EmpresaBAIRRO: TStringField;
    cds_EmpresaCIDADE: TStringField;
    cds_EmpresaUF: TStringField;
    cds_EmpresaCEP: TStringField;
    cds_EmpresaDDD: TStringField;
    cds_EmpresaFONE: TStringField;
    cds_EmpresaFONE_1: TStringField;
    cds_EmpresaFONE_2: TStringField;
    cds_EmpresaFAX: TStringField;
    cds_EmpresaE_MAIL: TStringField;
    cds_EmpresaWEB: TStringField;
    cds_EmpresaLOGOTIPO: TGraphicField;
    cds_EmpresaSLOGAN: TStringField;
    cds_EmpresaOUTRAS_INFO: TStringField;
    cds_EmpresaCODIGO: TIntegerField;
    cds_EmpresaTIPO: TStringField;
    cds_EmpresaIE_RG: TStringField;
    cds_EmpresaCODIGO_CONTA: TIntegerField;
    VCLReport1: TVCLReport;
    RLBTitulo1: TRLBTitulo;
    BitBtn4: TBitBtn;
    sds_cr: TSQLDataSet;
    dsp_cr: TDataSetProvider;
    cds_cr: TClientDataSet;
    cds_crCODIGO_DE_BARRAS: TStringField;
    sds_crCODIGO_DE_BARRAS: TStringField;
    cds_banco: TSQLDataSet;
    cds_bancoCODBANCO: TSmallintField;
    cds_cli: TSQLDataSet;
    cds_cliCODBANCO: TSmallintField;
    cds_bancoBANCO: TStringField;
    cds_bancoNOMEBANCO: TStringField;
    cds_bancoCARTEIRA: TStringField;
    cds_bancoCODIGO_CEDENTE: TStringField;
    cds_bancoCODIGO_EMPRESA: TStringField;
    cds_bancoCODIGO_AGENCIA: TStringField;
    cds_bancoDIGITO_AGENCIA: TStringField;
    cds_bancoNUMERO_CONTA: TStringField;
    cds_bancoDIGITO_CONTA: TStringField;
    cds_bancoCODIGO_PLANO: TIntegerField;
    cds_bancoINSTRUCAO1: TStringField;
    cds_bancoINSTRUCAO2: TStringField;
    cds_bancoINSTRUCAO3: TStringField;
    cds_bancoINSTRUCAO4: TStringField;
    cds_bancoCEDENTE: TStringField;
    cds_bancoNCONVENIO: TIntegerField;
    sds_crCODRECEBIMENTO: TIntegerField;
    cds_crCODRECEBIMENTO: TIntegerField;
    sds_crBL: TIntegerField;
    cds_crBL: TIntegerField;
    Panel1: TPanel;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    sds_crIMAGE_COD_BARRAS: TGraphicField;
    cds_crIMAGE_COD_BARRAS: TGraphicField;
    sds_crDV: TStringField;
    cds_crDV: TStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRel_CR: TfRel_CR;
  numero :string;
  titulo, titulo1 : string;

implementation

uses ucrEscolas, UDm, gbCobranca;

{$R *.dfm}

Function RemoveChar(Const Texto:String):String;
var
  F: integer;
  S: string;
begin
  S := '';
  for F := 1 To Length(Texto) Do
  begin
    if (Texto[F] in ['0'..'9']) then
    begin
     S := S + Copy(Texto, F, 1);
    end;
  end;
  result := S;
end;

procedure TfRel_CR.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfRel_CR.btnImprimirClick(Sender: TObject);
begin
  if not fcrEscolas.scdsCr_proc.Active then
  begin
   MessageDlg('Pôr favor efetue a pesquisa antes, para depois imprimir..', mtWarning, [mbOK], 0);
   exit;
  end;
  sqlGrupo := ' order by cli.NOMECLIENTE, rec.CODCLIENTE, '
            + ' rec.DATAVENCIMENTO, rec.EMISSAO';
  imp := imp + sqlTexto + sqlGrupo;
  fcrEscolas.repContasReceber.FileName := str_relatorio + 'relcrescola.rep';
  fcrEscolas.repContasReceber.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;  
  fcrEscolas.repContasReceber.Report.DataInfo.Items[0].SQL:= imp;
  fcrEscolas.repContasReceber.Execute;
end;

procedure TfRel_CR.BitBtn2Click(Sender: TObject);
begin
  if (not fcrEscolas.scdsCr_proc.Active) then
  begin
   MessageDlg('Pôr favor efetue a pesquisa antes, para depois imprimir..', mtWarning, [mbOK], 0);
   exit;
  end;
  if (fcrEscolas.scdsCr_procSTATUS.AsString <> '12') then
  begin
   MessageDlg('O Status deve ser "12-Duplica Banco" para este relatório !', mtWarning, [mbOK], 0);
   exit;
  end;
  if (fcrEscolas.medta3.Text <> datastr) then
  begin
    fcrEscolas.repRelDuplicata.Report.Params.ParamByName('PDTA1').Value :=
               formatdatetime('dd/mm/yy', StrToDate(fcrEscolas.medta3.Text));
  end;
  if (fcrEscolas.medta4.Text <> datastr) then
  begin
    fcrEscolas.repRelDuplicata.Report.Params.ParamByName('PDTA2').Value :=
               formatdatetime('dd/mm/yy', StrToDate(fcrEscolas.medta4.Text));
  end;
  fcrEscolas.repRelDuplicata.FileName := str_relatorio + 'rel_duplicata_enviada.rep';
  fcrEscolas.repRelDuplicata.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;  
  fcrEscolas.repRelDuplicata.Execute;
end;

procedure TfRel_CR.BitBtn1Click(Sender: TObject);
begin
  BitBtn4.Click;
  VCLReport1.Filename := str_relatorio + 'boleto_BB.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Execute;
end;

procedure TfRel_CR.BitBtn3Click(Sender: TObject);
begin
  fcrEscolas.VCLReport1.Filename := str_relatorio + 'recibo.rep';
  fcrEscolas.VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  if (not fcrEscolas.scdsCr_proc.Active) then
  begin
   MessageDlg('Pôr favor efetue a pesquisa antes, para depois imprimir..', mtWarning, [mbOK], 0);
   exit;
  end;
  fcrEscolas.VCLReport1.Report.Params.ParamByName('CODVENDA').Value := 0;
  if (fcrEscolas.medta3.Text <> datastr) then
  begin
    fcrEscolas.VCLReport1.Report.Params.ParamByName('PDTA1').Value :=
               formatdatetime('dd/mm/yy', StrToDate(fcrEscolas.medta3.Text));
  end;
  if (fcrEscolas.medta4.Text <> datastr) then
  begin
    fcrEscolas.VCLReport1.Report.Params.ParamByName('PDTA2').Value :=
               formatdatetime('dd/mm/yy', StrToDate(fcrEscolas.medta4.Text));
  end;
  if fcrEscolas.edCodCliente.Text <> '' then
    fcrEscolas.VCLReport1.Report.Params.ParamByName('CODID').Value := StrToInt(fcrEscolas.edCodCliente.Text)
  else
    fcrEscolas.VCLReport1.Report.Params.ParamByName('CODID').Value := 9999999;
  fcrEscolas.VCLReport1.Report.Params.ParamByName('N_COPIAS').Value :=StrToInt(Edit2.Text);
  fcrEscolas.VCLReport1.Execute;
end;

procedure TfRel_CR.BitBtn4Click(Sender: TObject);
begin
   fcrEscolas.scdsCr_proc.DisableControls;
   fcrEscolas.scdsCr_proc.First;
   While not fcrEscolas.scdsCr_proc.Eof do
   begin
    if (fcrEscolas.scdsCr_procDUP_REC_NF.AsString = 'S') then
    begin
      {** abro o cadastro do cliente e pego o codbanco}
      if cds_cli.Active then
         cds_cli.Close;
      cds_cli.Params[0].AsInteger := fcrEscolas.scdsCr_procCODCLIENTE.AsInteger;
      cds_cli.Open;
      {** abro o banco e pego os dados da conta}
      if cds_banco.Active then
         cds_banco.Close;
      cds_banco.Params[0].AsInteger := cds_cliCODBANCO.AsInteger;
      cds_banco.Open;

      if cds_cr.Active then
         cds_cr.Close;
      cds_cr.Params[0].Clear;
      cds_cr.Params[0].Value := fcrEscolas.scdsCr_procTITULO.AsString;
      cds_cr.Open;
      cds_cr.Edit;
      //Dados do Cedente
      RLBTitulo1.Cedente.ContaBancaria.Banco.Codigo := cds_bancoCODIGO_EMPRESA.AsString;
      RLBTitulo1.Cedente.ContaBancaria.CodigoAgencia := cds_bancoCODIGO_AGENCIA.AsString;
      RLBTitulo1.Cedente.ContaBancaria.DigitoAgencia := cds_bancoDIGITO_AGENCIA.AsString;
      RLBTitulo1.Cedente.ContaBancaria.NumeroConta := cds_bancoNUMERO_CONTA.AsString;
      RLBTitulo1.Cedente.ContaBancaria.DigitoConta := cds_bancoDIGITO_CONTA.AsString;
      RLBTitulo1.Cedente.CodigoCedente := cds_bancoNUMERO_CONTA.AsString;
      RLBTitulo1.Cedente.DigitoCodigoCedente := cds_bancoDIGITO_CONTA.AsString;
      RLBTitulo1.Carteira := cds_bancoCARTEIRA.AsString;
      if cds_bancoCODIGO_CEDENTE.AsString = '902598' then
         RLBTitulo1.LayoutNN := lnC6_N5;
      RLBTitulo1.Cedente.ContaBancaria.Convenio := cds_bancoCODIGO_CEDENTE.AsString;
      //dados da cobranca
      RLBTitulo1.NossoNumero := RemoveChar(fcrEscolas.scdsCr_procTITULO.AsString);
      RLBTitulo1.ValorDocumento := fcrEscolas.scdsCr_procVALORTITULO.AsFloat;
      //RLBTitulo1.DataDocumento := fcrEscolas.scdsCr_procEMISSAO.Value;
      RLBTitulo1.DataVencimento := fcrEscolas.scdsCr_procDATAVENCIMENTO.Value;
   {** Falta preencher 0 numero documento}
      //RLBTitulo1.NumeroDocumento := Trim(fcrEscolas.scdsCr_procTITULO.AsString);
      titulo1 := fcrEscolas.scdsCr_procTITULO.AsString;
      titulo := cds_bancoCODIGO_CEDENTE.AsString;
      RLBTitulo1.Visualizar;
      cds_cr.ApplyUpdates(0);
    end;
    fcrEscolas.scdsCr_proc.Next;
  end;
  fcrEscolas.scdsCr_proc.EnableControls;
  cds_cli.close;
  cds_banco.close;
  cds_cr.close;
end;

procedure TfRel_CR.FormClose(Sender: TObject; var Action: TCloseAction);
var
  testo_update : string;
begin
  testo_update := '';
  testo_update := 'update RECEBIMENTO set BL = null, ' +
   'CODIGO_DE_BARRAS = '+ '''' + '''' +
   ', IMAGE_COD_BARRAS = null' + //'''' + '''' +
   ' where BL = 1';
  dm.sqlsisAdimin.ExecuteDirect(testo_update);
  fcrEscolas.btnProcurar.Click;
end;

procedure TfRel_CR.FormShow(Sender: TObject);
begin
  tipo_empresa := '1';
end;

end.
