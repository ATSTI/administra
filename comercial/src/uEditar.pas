unit uEditar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, Mask, DBCtrls, DB, DBClient, SqlExpr, Provider,
  Buttons, DBLocal, DBLocalS, rpcompobase, rpvclreport;

type
  TfEditar = class(TForm)
    dsp: TDataSetProvider;
    scds: TSQLDataSet;
    cds: TClientDataSet;
    DtSrc: TDataSource;
    scdsID_GUIAS: TIntegerField;
    scdsREGISTRO_ANS: TStringField;
    scdsNUMERO_GUIA: TStringField;
    scdsDATA_EMISSAO: TDateField;
    scdsNUMERO_CARTAO_BENEFICIARIO: TStringField;
    scdsNOME_PLANO: TStringField;
    scdsVALIDADE_CARTEIRA: TDateField;
    scdsNOME_BENEFICIARIO: TStringField;
    scdsNUMERO_CARTAO_NACIONAL: TStringField;
    scdsCODIGO_OPERADORA: TStringField;
    scdsNOME_CONTRATADO: TStringField;
    scdsCODIGO_CNES: TStringField;
    scdsLOGRADOURO: TStringField;
    scdsNOME_LOGRADOURO: TStringField;
    scdsNUMERO: TStringField;
    scdsCOMPLEMENTO: TStringField;
    scdsMUNICIPIO: TStringField;
    scdsSIGLA: TStringField;
    scdsCODIGO_MUNICIPIO: TStringField;
    scdsCEP: TStringField;
    scdsNOME_EXECUTANTE: TStringField;
    scdsSIGLA_CONSELHO: TStringField;
    scdsNUMERO_PROFISSIONAL: TStringField;
    scdsSIGLA_UNIDADE: TStringField;
    scdsCODIGO_ESPECIALIDADE: TStringField;
    scdsCODIGO_DOENCA: TStringField;
    scdsTEMPO_DOENCA: TStringField;
    scdsACIDENTE_TRABALHO: TIntegerField;
    scdsCODIGO_CID10_1: TStringField;
    scdsCODIGO_CID10_2: TStringField;
    scdsCODIGO_CID10_3: TStringField;
    scdsCODIGO_CID10_4: TStringField;
    scdsDATA_ATENDIMENTO: TDateField;
    scdsCODIGO_PROCEDIMENTOS: TStringField;
    scdsCODIGO_PROCEDIMENTOS_REALIZADO: TStringField;
    scdsTIPO_CONSULTA: TStringField;
    scdsTIPO_SAIDA: TIntegerField;
    scdsOBSERVACAO: TStringField;
    scdsCODIGO_PRESTADORA: TStringField;
    scdsCARATER_SOLICITACAO: TStringField;
    scdsNUMERO_CARTEIRA: TStringField;
    scdsTIPO_GUIA: TStringField;
    scdsDATA_AUT: TDateField;
    scdsSENHA: TStringField;
    scdsDATA_VAL_SENHA: TDateField;
    scdsNAOPERADORA: TStringField;
    scdsNOME_PRESTADOR: TStringField;
    scdsNOME_EXECUTANTE1: TStringField;
    scdsSIGLA_CONSELHO1: TStringField;
    scdsNUMERO_PROFISSIONAL1: TStringField;
    scdsSIGLA_UNIDADE1: TStringField;
    scdsCODIGO_ESPECIALIDADE1: TStringField;
    scdsCODIGO_CNES1: TStringField;
    scdsLOGRADOURO1: TStringField;
    scdsNOME_LOGRADOURO1: TStringField;
    scdsNUMERO1: TStringField;
    scdsCOMPLEMENTO1: TStringField;
    scdsMUNICIPIO1: TStringField;
    scdsSIGLA1: TStringField;
    scdsCODIGO_MUNICIPIO1: TStringField;
    scdsCEP1: TStringField;
    cdsID_GUIAS: TIntegerField;
    cdsREGISTRO_ANS: TStringField;
    cdsNUMERO_GUIA: TStringField;
    cdsDATA_EMISSAO: TDateField;
    cdsNUMERO_CARTAO_BENEFICIARIO: TStringField;
    cdsNOME_PLANO: TStringField;
    cdsVALIDADE_CARTEIRA: TDateField;
    cdsNOME_BENEFICIARIO: TStringField;
    cdsNUMERO_CARTAO_NACIONAL: TStringField;
    cdsCODIGO_OPERADORA: TStringField;
    cdsNOME_CONTRATADO: TStringField;
    cdsCODIGO_CNES: TStringField;
    cdsLOGRADOURO: TStringField;
    cdsNOME_LOGRADOURO: TStringField;
    cdsNUMERO: TStringField;
    cdsCOMPLEMENTO: TStringField;
    cdsMUNICIPIO: TStringField;
    cdsSIGLA: TStringField;
    cdsCODIGO_MUNICIPIO: TStringField;
    cdsCEP: TStringField;
    cdsNOME_EXECUTANTE: TStringField;
    cdsSIGLA_CONSELHO: TStringField;
    cdsNUMERO_PROFISSIONAL: TStringField;
    cdsSIGLA_UNIDADE: TStringField;
    cdsCODIGO_ESPECIALIDADE: TStringField;
    cdsCODIGO_DOENCA: TStringField;
    cdsTEMPO_DOENCA: TStringField;
    cdsACIDENTE_TRABALHO: TIntegerField;
    cdsCODIGO_CID10_1: TStringField;
    cdsCODIGO_CID10_2: TStringField;
    cdsCODIGO_CID10_3: TStringField;
    cdsCODIGO_CID10_4: TStringField;
    cdsDATA_ATENDIMENTO: TDateField;
    cdsCODIGO_PROCEDIMENTOS: TStringField;
    cdsCODIGO_PROCEDIMENTOS_REALIZADO: TStringField;
    cdsTIPO_CONSULTA: TStringField;
    cdsTIPO_SAIDA: TIntegerField;
    cdsOBSERVACAO: TStringField;
    cdsCODIGO_PRESTADORA: TStringField;
    cdsCARATER_SOLICITACAO: TStringField;
    cdsNUMERO_CARTEIRA: TStringField;
    cdsTIPO_GUIA: TStringField;
    cdsDATA_AUT: TDateField;
    cdsSENHA: TStringField;
    cdsDATA_VAL_SENHA: TDateField;
    cdsNAOPERADORA: TStringField;
    cdsNOME_PRESTADOR: TStringField;
    cdsNOME_EXECUTANTE1: TStringField;
    cdsSIGLA_CONSELHO1: TStringField;
    cdsNUMERO_PROFISSIONAL1: TStringField;
    cdsSIGLA_UNIDADE1: TStringField;
    cdsCODIGO_ESPECIALIDADE1: TStringField;
    cdsCODIGO_CNES1: TStringField;
    cdsLOGRADOURO1: TStringField;
    cdsNOME_LOGRADOURO1: TStringField;
    cdsNUMERO1: TStringField;
    cdsCOMPLEMENTO1: TStringField;
    cdsMUNICIPIO1: TStringField;
    cdsSIGLA1: TStringField;
    cdsCODIGO_MUNICIPIO1: TStringField;
    cdsCEP1: TStringField;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    btGravar: TBitBtn;
    btCancelar: TBitBtn;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    btSair: TBitBtn;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    procforn: TSQLClientDataSet;
    procfornNOMEFORNECEDOR: TStringField;
    procfornCODFORNECEDOR: TIntegerField;
    cdsBuscaForn: TClientDataSet;
    cdsBuscaFornCODFORNECEDOR: TIntegerField;
    cdsBuscaFornNOMEFORNECEDOR: TStringField;
    cdsBuscaFornCNPJ: TStringField;
    cdsBuscaFornCNES: TStringField;
    cdsBuscaFornLOGRADOURO: TStringField;
    cdsBuscaFornCOMPLEMENTO: TStringField;
    cdsBuscaFornCEP_CONTRATADO: TStringField;
    cdsBuscaFornNUMERO: TStringField;
    cdsBuscaFornSIGLA: TStringField;
    cdsBuscaFornCD_TIPO_LOGRADOURO: TStringField;
    cdsBuscaFornDADOSADICIONAIS: TStringField;
    cdsBuscaFornNM_MUNICIPIO: TStringField;
    cdsBuscaFornCD_IBGE: TStringField;
    cdsBuscaFornCD_UF: TStringField;
    cdsBuscaFornNOME_REPRFOR: TStringField;
    cdsBuscaFornFUNCAO: TStringField;
    cdsBuscaFornCOMPLEMENTO_1: TStringField;
    cdsBuscaFornUF: TStringField;
    cdsBuscaFornCEP: TStringField;
    dspBuscaForn: TDataSetProvider;
    scdsBuscaForn: TSQLDataSet;
    scdsBuscaFornCODFORNECEDOR: TIntegerField;
    scdsBuscaFornNOMEFORNECEDOR: TStringField;
    scdsBuscaFornCNPJ: TStringField;
    scdsBuscaFornCNES: TStringField;
    scdsBuscaFornLOGRADOURO: TStringField;
    scdsBuscaFornCOMPLEMENTO: TStringField;
    scdsBuscaFornCEP_CONTRATADO: TStringField;
    scdsBuscaFornNUMERO: TStringField;
    scdsBuscaFornSIGLA: TStringField;
    scdsBuscaFornCD_TIPO_LOGRADOURO: TStringField;
    scdsBuscaFornDADOSADICIONAIS: TStringField;
    scdsBuscaFornNM_MUNICIPIO: TStringField;
    scdsBuscaFornCD_IBGE: TStringField;
    scdsBuscaFornCD_UF: TStringField;
    scdsBuscaFornNOME_REPRFOR: TStringField;
    scdsBuscaFornFUNCAO: TStringField;
    scdsBuscaFornCOMPLEMENTO_1: TStringField;
    scdsBuscaFornUF: TStringField;
    scdsBuscaFornCEP: TStringField;
    scdsRepr: TSQLDataSet;
    scdsReprNOME_REPRFOR: TStringField;
    scdsReprFUNCAO: TStringField;
    scdsReprUF: TStringField;
    scdsReprCD_CBO_SAUDE: TStringField;
    scdsReprNUMERO: TStringField;
    scdsReprCOMPLEMENTO: TStringField;
    cdsRepr: TClientDataSet;
    cdsReprNOME_REPRFOR: TStringField;
    cdsReprFUNCAO: TStringField;
    cdsReprUF: TStringField;
    cdsReprCD_CBO_SAUDE: TStringField;
    cdsReprNUMERO: TStringField;
    cdsReprCOMPLEMENTO: TStringField;
    dspRepr: TDataSetProvider;
    procforn2: TSQLClientDataSet;
    procforn2CODFORNECEDOR: TIntegerField;
    procforn2NOMEFORNECEDOR: TStringField;
    procforn2CNPJ: TStringField;
    cdsBuscaForn2: TClientDataSet;
    cdsBuscaForn2CODFORNECEDOR: TIntegerField;
    cdsBuscaForn2NOMEFORNECEDOR: TStringField;
    cdsBuscaForn2CNPJ: TStringField;
    cdsBuscaForn2CNES: TStringField;
    cdsBuscaForn2LOGRADOURO: TStringField;
    cdsBuscaForn2COMPLEMENTO: TStringField;
    cdsBuscaForn2CEP_CONTRATADO: TStringField;
    cdsBuscaForn2NUMERO: TStringField;
    cdsBuscaForn2SIGLA: TStringField;
    cdsBuscaForn2CD_TIPO_LOGRADOURO: TStringField;
    cdsBuscaForn2DADOSADICIONAIS: TStringField;
    cdsBuscaForn2NM_MUNICIPIO: TStringField;
    cdsBuscaForn2CD_IBGE: TStringField;
    cdsBuscaForn2CD_UF: TStringField;
    cdsBuscaForn2NOME_REPRFOR: TStringField;
    cdsBuscaForn2FUNCAO: TStringField;
    cdsBuscaForn2COMPLEMENTO_1: TStringField;
    cdsBuscaForn2UF: TStringField;
    cdsBuscaForn2CEP: TStringField;
    dspBuscaForn2: TDataSetProvider;
    scdsBuscaForn2: TSQLDataSet;
    scdsBuscaForn2CODFORNECEDOR: TIntegerField;
    scdsBuscaForn2NOMEFORNECEDOR: TStringField;
    scdsBuscaForn2CNPJ: TStringField;
    scdsBuscaForn2CNES: TStringField;
    scdsBuscaForn2LOGRADOURO: TStringField;
    scdsBuscaForn2COMPLEMENTO: TStringField;
    scdsBuscaForn2CEP_CONTRATADO: TStringField;
    scdsBuscaForn2NUMERO: TStringField;
    scdsBuscaForn2SIGLA: TStringField;
    scdsBuscaForn2CD_TIPO_LOGRADOURO: TStringField;
    scdsBuscaForn2DADOSADICIONAIS: TStringField;
    scdsBuscaForn2NM_MUNICIPIO: TStringField;
    scdsBuscaForn2CD_IBGE: TStringField;
    scdsBuscaForn2CD_UF: TStringField;
    scdsBuscaForn2NOME_REPRFOR: TStringField;
    scdsBuscaForn2FUNCAO: TStringField;
    scdsBuscaForn2COMPLEMENTO_1: TStringField;
    scdsBuscaForn2UF: TStringField;
    scdsBuscaForn2CEP: TStringField;
    cdsRepr1: TClientDataSet;
    cdsRepr1NOME_REPRFOR: TStringField;
    cdsRepr1FUNCAO: TStringField;
    cdsRepr1UF: TStringField;
    cdsRepr1CD_CBO_SAUDE: TStringField;
    cdsRepr1NUMERO: TStringField;
    cdsRepr1COMPLEMENTO: TStringField;
    dspRepr1: TDataSetProvider;
    scdsRepr1: TSQLDataSet;
    scdsRepr1NOME_REPRFOR: TStringField;
    scdsRepr1FUNCAO: TStringField;
    scdsRepr1UF: TStringField;
    scdsRepr1NUMERO: TStringField;
    scdsRepr1COMPLEMENTO: TStringField;
    scdsRepr1CD_CBO_SAUDE: TStringField;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    btExcluir: TBitBtn;
    btImprimir: TBitBtn;
    vcl_guiaconsulta: TVCLReport;
    DBText1: TDBText;
    DBText2: TDBText;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEditar: TfEditar;
  Incluir, Alterar, Excluir, Cancelar, Procurar : String;


implementation

uses UDmSaude, uProcurar, uprocurar_prest, uFiltroGuia, uDm;

{$R *.dfm}

procedure TfEditar.FormShow(Sender: TObject);
begin
  if(filtroGuia.cdsTIPO_GUIA.AsString = 'Consulta') then
  begin
    DBEdit4.Visible := False;
    DBEdit5.Visible := False;
    DBEdit6.Visible := False;
    Label16.Visible := False;
    Label11.Visible := False;
    Label12.Visible := False;
    Label13.Visible := False;
    Label14.Visible := False;
    Label17.Visible := False;
    Label18.Visible := False;
    DBEdit9.Visible := False;
    DBEdit10.Visible := False;
    DBComboBox2.Visible := False;
    BitBtn5.Visible := False;
  end;
  if(filtroGuia.cdsTIPO_GUIA.AsString = 'Serviço') then
  begin
    DBEdit4.Visible := True;
    DBEdit5.Visible := True;
    DBEdit6.Visible := True;
    Label16.Visible := True;
    Label11.Visible := True;
    Label12.Visible := True;
    Label13.Visible := True;
    Label14.Visible := True;
    Label17.Visible := True;
    Label18.Visible := True;
    DBEdit9.Visible := True;
    DBEdit10.Visible := True;
    DBComboBox2.Visible := True;
    BitBtn5.Visible := True;

  end;
    if(filtroGuia.cdsTIPO_GUIA.AsString = 'Internação') then
  begin
    DBEdit4.Visible := True;
    DBEdit5.Visible := True;
    DBEdit6.Visible := True;
    Label16.Visible := True;
    Label11.Visible := True;
    Label12.Visible := True;
    Label13.Visible := True;
    Label14.Visible := True;
    Label17.Visible := True;
    Label18.Visible := False;
    DBEdit9.Visible := True;
    DBEdit10.Visible := True;
    DBComboBox2.Visible := False;
    BitBtn5.Visible := True;
  end;
  if cds.Active then
      cds.Close;
     cds.Params[0].AsInteger := n_guia ;
     cds.Open;
end;

procedure TfEditar.btCancelarClick(Sender: TObject);
begin
  cds.Cancel;
  MessageDlg('Alerações Canceladas', mtInformation, [mbOK], 0);
end;

procedure TfEditar.btGravarClick(Sender: TObject);
begin
  if(not cdsRepr.Active)then
    cdsRepr.Open;
    cdsRepr.Edit;
  if(cdsRepr.Locate('NOME_REPRFOR',DBComboBox1.Text,[loCaseInsensitive]))then
  begin
    cdsSIGLA_CONSELHO.AsString := cdsReprCOMPLEMENTO.AsString;
    cdsNUMERO_PROFISSIONAL.AsString := cdsReprNUMERO.AsString;
    cdsCODIGO_ESPECIALIDADE.AsString := cdsReprFUNCAO.AsString;
  end;
  if(not cdsRepr1.Active)then
    cdsRepr1.Open;
    cdsRepr1.Edit;
  if(cdsRepr1.Locate('NOME_REPRFOR',DBComboBox2.Text,[loCaseInsensitive]))then
  begin
    cdsSIGLA_CONSELHO1.AsString := cdsRepr1COMPLEMENTO.AsString;
    cdsNUMERO_PROFISSIONAL1.AsString := cdsRepr1NUMERO.AsString;
    cdsCODIGO_ESPECIALIDADE1.AsString := cdsRepr1FUNCAO.AsString;
  end;
  cds.ApplyUpdates(0);
  MessageDlg('Dados Alterado', mtInformation, [mbOK], 0);
end;

procedure TfEditar.btSairClick(Sender: TObject);
begin
  cds.ApplyUpdates(0);
  close;
end;

procedure TfEditar.BitBtn4Click(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,procforn);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NOMEFORNECEDOR';
   if fProcurar.ShowModal=mrOk then
   begin
     if(not cds.Active)then
      cds.Open;
      cds.Edit;
     cdsNOME_CONTRATADO.AsString := procfornNOMEFORNECEDOR.AsString;
     if cdsBuscaForn.Active then
       cdsBuscaForn.Close;
     cdsBuscaForn.Params[0].AsInteger := procfornCODFORNECEDOR.AsInteger;
     cdsBuscaForn.Open;

     cdsCODIGO_OPERADORA.AsString := cdsBuscaFornCNPJ.AsString;
     cdsLOGRADOURO.AsString := cdsBuscaFornCD_TIPO_LOGRADOURO.AsString;
     cdsNOME_LOGRADOURO.AsString := cdsBuscaFornLOGRADOURO.AsString;
     cdsNUMERO.AsString := cdsBuscaFornNUMERO.AsString;
     cdsCOMPLEMENTO.AsString := cdsBuscaFornCOMPLEMENTO.AsString;
     cdsMUNICIPIO.AsString := cdsBuscaFornNM_MUNICIPIO.AsString;
     cdsSIGLA.AsString := cdsBuscaFornSIGLA.AsString;
     cdsCODIGO_MUNICIPIO.AsString := cdsBuscaFornCD_IBGE.AsString;
     cdsCEP.AsString := cdsBuscaFornCEP_CONTRATADO.AsString;

     if cdsRepr.Active then
       cdsRepr.Close;
     cdsRepr.Params[0].Clear;
     cdsRepr.Params[0].AsInteger := procfornCODFORNECEDOR.AsInteger;
     cdsRepr.Open;
     DBComboBox1.Items.Clear;
     DBComboBox1.Clear;
     WHILE NOT cdsRepr.Eof DO
     BEGIN
       DBComboBox1.Items.Add(cdsReprNOME_REPRFOR.AsString);
       cdsRepr.Next;
     end;
   end;
   finally
    procforn.Close;
    fProcurar.Free;
   end;
end;

procedure TfEditar.BitBtn5Click(Sender: TObject);
begin
  if (dm.cdsProc.Active) then
    dm.cdsProc.Close;
  dm.cdsProc.CommandText := 'select CODFORNECEDOR,NOMEFORNECEDOR, CNPJ ' +
    'from FORNECEDOR where NOMEFORNECEDOR LIKE :NOME ';
  fProcurar_prest:= TfProcurar_prest.Create(self, dm.cdsProc);
  try
   fProcurar_prest.BtnProcurar.Click;
   fProcurar_prest.EvDBFind1.DataField := 'NOMEFORNECEDOR';
   if fProcurar_prest.ShowModal=mrOk then
   begin
     if(not cds.Active)then
      cds.Open;
      cds.Edit;
     cdsNOME_PRESTADOR.AsString := dm.cdsProc.Fields[1].AsString;
     cdsNAOPERADORA.AsString := dm.cdsProc.Fields[2].AsString;
     if cdsBuscaForn2.Active then
       cdsBuscaForn2.Close;
     cdsBuscaForn2.Params[0].AsInteger := dm.cdsProc.Fields[0].AsInteger;
     cdsBuscaForn2.Open;
     if cdsRepr1.Active then
       cdsRepr1.Close;
     cdsRepr1.Params[0].AsInteger := dm.cdsProc.Fields[0].AsInteger;
     cdsRepr1.Open;
     DBComboBox2.Items.Clear;
     DBComboBox2.Clear;
     WHILE NOT cdsRepr1.Eof DO
     BEGIN
       DBComboBox2.Items.Add(cdsRepr1NOME_REPRFOR.AsString);
       cdsRepr1.Next;
     end;
   end;
   finally
    dm.cdsProc.Close;
    fProcurar_prest.Free;
   end;
end;

procedure TfEditar.btExcluirClick(Sender: TObject);
var Excluir : String;
begin
  if Excluir = 'N' then Exit;
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
  cds.Delete;
  cds.ApplyUpdates(0);
  end;
end;
procedure TfEditar.btImprimirClick(Sender: TObject);
begin
  if(cds.State in [dsinactive]) then
    exit;
  if(cdsTIPO_GUIA.AsString = 'Consulta') then
    vcl_guiaconsulta.Filename := str_relatorio + 'guia_consulta.rep';
  if(cdsTIPO_GUIA.AsString = 'Internação') then
    vcl_guiaconsulta.Filename := str_relatorio + 'guia_internacao.rep';
  if(cdsTIPO_GUIA.AsString = 'Serviço') then
    vcl_guiaconsulta.Filename := str_relatorio + 'guia_servico.rep';

  vcl_guiaconsulta.Report.DatabaseInfo.Items[0].SQLConnection := DM.sqlsisAdimin;
  vcl_guiaconsulta.Report.Params.ParamByName('NOME').AsString := cdsNOME_BENEFICIARIO.AsString;
  vcl_guiaconsulta.Report.Params.ParamByName('CODGUIA').AsString := cdsNUMERO_GUIA.AsString;
  vcl_guiaconsulta.Execute;

end;

procedure TfEditar.DtSrcStateChange(Sender: TObject);
//var icomp: integer;
const
 Estados : array [TDataSetState] of string =
 ('Fechado','Consultando','Alterando','Inserindo','','','','','','','','','');
begin
 {
 if Incluir = 'S' then
  btIncluir.Enabled:=DtSrc.State in [dsBrowse,dsInactive]
 else
    btnIncluir.Enabled:= False;

 if Alterar = 'S' then
  btGravar.Enabled:=DtSrc.State in [dsInsert,dsEdit]
 else
  btGravar.Enabled:=False;

 if Cancelar = 'S' then
  btCancelar.Enabled:=DtSrc.State in [dsInsert,dsEdit]
 else
  btCancelar.Enabled:=false;

 if Excluir = 'S' then
  btExcluir.Enabled:=DtSrc.State in [dsBrowse]
 else
  btExcluir.Enabled:=false;

 if Procurar = 'S' then
  btnProcurar.Enabled := DtSrc.State in [dsBrowse,dsInactive]
 else
  btnProcurar.Enabled := False;
  btnSair.Enabled:=DtSrc.State in [dsBrowse,dsInactive];

  for icomp:=0 to ComponentCount - 1 do
   if Components[icomp] is TDbEdit then
      (Components[icomp] as TDbEdit).Enabled := DtSrc.State in [dsInsert,dsEdit, dsBrowse];
 }
  if DtSrc.State in [dsInsert, dsEdit] then
  begin
    btexcluir.Enabled := False;
    btgravar.Enabled :=  True;
    btCancelar.Enabled := True;
  end;

  if DtSrc.State in [dsBrowse,dsInactive] then
  begin
    btexcluir.Enabled := True;
    btgravar.Enabled := False;
    btCancelar.Enabled := False;
  end;
end;

procedure TfEditar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    begin
    Key := #0;
    Perform(Wm_NextDlgCtl,0,0);
    end;
end;

procedure TfEditar.FormCreate(Sender: TObject);
begin
 fEditar.Color := clskyblue ; 
end;

end.
