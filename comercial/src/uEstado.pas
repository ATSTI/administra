unit uEstado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  FMTBcd, Grids, DBGrids, Mask, DBCtrls, DBClient, Provider, SqlExpr,
  EDBFind;

type
  TfEstado = class(TfPai)
    sds: TSQLDataSet;
    sdsUF: TStringField;
    sdsICMS: TFloatField;
    sdsREDUCAO: TFloatField;
    sdsCFNOME: TStringField;
    sdsIPI: TFloatField;
    dsp: TDataSetProvider;
    cds_estado: TClientDataSet;
    cds_estadoCFOP: TStringField;
    cds_estadoUF: TStringField;
    cds_estadoICMS: TFloatField;
    cds_estadoREDUCAO: TFloatField;
    cds_estadoCFNOME: TStringField;
    cds_estadoIPI: TFloatField;
    DBText2: TDBText;
    sdsCFOP: TStringField;
    sdsICMS_SUBSTRIB: TFloatField;
    sdsICMS_SUBSTRIB_IC: TFloatField;
    sdsICMS_SUBSTRIB_IND: TFloatField;
    cds_estadoICMS_SUBSTRIB: TFloatField;
    cds_estadoICMS_SUBSTRIB_IC: TFloatField;
    cds_estadoICMS_SUBSTRIB_IND: TFloatField;
    sdsCST: TStringField;
    cds_estadoCST: TStringField;
    sdsCODESTADO: TIntegerField;
    cds_estadoCODESTADO: TIntegerField;
    sdsPIS: TFloatField;
    sdsCOFINS: TFloatField;
    cds_estadoPIS: TFloatField;
    cds_estadoCOFINS: TFloatField;
    sdsCSTIPI: TStringField;
    sdsCSTPIS: TStringField;
    sdsCSTCOFINS: TStringField;
    sdsDADOSADC1: TStringField;
    sdsDADOSADC2: TStringField;
    sdsDADOSADC3: TStringField;
    sdsDADOSADC4: TStringField;
    cds_estadoCSTIPI: TStringField;
    cds_estadoCSTPIS: TStringField;
    cds_estadoCSTCOFINS: TStringField;
    cds_estadoDADOSADC1: TStringField;
    cds_estadoDADOSADC2: TStringField;
    cds_estadoDADOSADC3: TStringField;
    cds_estadoDADOSADC4: TStringField;
    sdsNAOENVFATURA: TStringField;
    cds_estadoNAOENVFATURA: TStringField;
    sdsDADOSADC5: TStringField;
    sdsDADOSADC6: TStringField;
    cds_estadoDADOSADC5: TStringField;
    cds_estadoDADOSADC6: TStringField;
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label7: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit5: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    CheckBox1: TCheckBox;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    sdsCSOSN: TStringField;
    cds_estadoCSOSN: TStringField;
    DBEdit21: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    sdsTFiscal: TSQLDataSet;
    sdsTFiscalCODFISCAL: TStringField;
    sdsTFiscalDESCRICAO: TStringField;
    dspTFiscal: TDataSetProvider;
    cdsTFiscal: TClientDataSet;
    cdsTFiscalCODFISCAL: TStringField;
    cdsTFiscalDESCRICAO: TStringField;
    DtSrcTFiscal: TDataSource;
    sdsCODFISCAL: TStringField;
    cds_estadoCODFISCAL: TStringField;
    panelAjuda: TPanel;
    Memo1: TMemo;
    procedure DtSrcStateChange(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure cds_estadoReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cds_estadoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure btnGravarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Label19Click(Sender: TObject);
    procedure Label15Click(Sender: TObject);
    procedure Label16Click(Sender: TObject);
    procedure Label17Click(Sender: TObject);
    procedure Label13Click(Sender: TObject);
  private
    { Private declarations }
  public
    sqlCfop: String;
    { Public declarations }
  end;

var
  fEstado: TfEstado;

implementation

uses uComercial, UDm, uProcurar, sCtrlResize, uCfop;

{$R *.dfm}

procedure TfEstado.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure TfEstado.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBEdit1.SetFocus;
end;

procedure TfEstado.FormShow(Sender: TObject);
begin
  inherited;
  if (cds_estado.Active) then
    cds_estado.Close;
  cds_estado.CommandText := sqlCfop;
  cds_estado.Open;
  if (not cdsTFiscal.Active) then
      cdsTFiscal.Open;
  DecimalSeparator := ',';
end;

procedure TfEstado.btnProcurarClick(Sender: TObject);
begin
  fCfop := TfCfop.Create(Application);
  try
    fCfop.ShowModal;
  finally
    fCfop.Free;
  end;
end;

procedure TfEstado.cds_estadoReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  inherited;
  MessageDlg('Não é possível gravar o registro. Erro : ' + E.Message , mtWarning,
        [mbOk], 0);
end;

procedure TfEstado.cds_estadoPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
  MessageDlg('Não é possível gravar o registro. Erro : ' + E.Message , mtWarning,
        [mbOk], 0);

end;

procedure TfEstado.btnGravarClick(Sender: TObject);
begin
  if (cds_estado.State in [dsInsert]) then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENESTADO_ICMS, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_estadoCODESTADO.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
  end;
  inherited;
end;

procedure TfEstado.btnExcluirClick(Sender: TObject);
var str: string;
begin
  inherited;
  str := 'DELETE FROM ESTADO_ICMS ';
  str := str + ' WHERE CODESTADO = ' + IntToStr(cds_estadoCODESTADO.AsInteger);
  dm.sqlsisAdimin.ExecuteDirect(str);
end;

procedure TfEstado.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  if (cds_estadoNAOENVFATURA.asString = 'S') then
    CheckBox1.Checked := True
  else
    CheckBox1.Checked := False;

end;

procedure TfEstado.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  cds_estado.IndexFieldNames := Column.FieldName;
end;

procedure TfEstado.CheckBox1Click(Sender: TObject);
begin
  inherited;
  if (cds_estado.State in [dsBrowse])then
    cds_estado.Edit;
  if (CheckBox1.Checked) then
    cds_estadoNAOENVFATURA.asString := 'S'
  else
    cds_estadoNAOENVFATURA.asString := '';
end;

procedure TfEstado.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if (cdsTFiscal.Active) then
      cdsTFiscal.Close;
end;



procedure TfEstado.FormCreate(Sender: TObject);
begin
//  inherited;
  sqlCfop := 'select esta.CODESTADO, esta.CFOP ' +
      ' ,esta.UF, esta.ICMS ,esta.REDUCAO, cfo.CFNOME ' +
      ' ,esta.IPI, esta.CSTIPI, esta.ICMS_SUBSTRIB, esta.ICMS_SUBSTRIB_IC ' +
      ' ,esta.ICMS_SUBSTRIB_IND, esta.CST , esta.PIS , esta.COFINS' +
      ' ,esta.CSTPIS , esta.CSTCOFINS, esta.DADOSADC1, esta.DADOSADC2' +
      ' ,esta.DADOSADC3, esta.DADOSADC4, esta.DADOSADC5, esta.DADOSADC6' +
      ' ,esta.NAOENVFATURA, esta.CSOSN, esta.CODFISCAL' +
      ' FROM ESTADO_ICMS esta ' +
      ' left outer join CFOP cfo on cfo.CFCOD = esta.CFOP ' +
      ' order by esta.CFOP';
end;

procedure TfEstado.Label19Click(Sender: TObject);
begin
  inherited;
  if (panelAjuda.Visible = True) then
  begin
    panelAjuda.Visible := False;
  end
  else begin
    Memo1.Lines.Clear;
    Memo1.Lines.Add('ATENÇÃO : A ATS não se responsabiliza pelos valores informados aqui, ');
    Memo1.Lines.Add('esta informação e de responsabilidade de seu contador, a tabela');
    Memo1.Lines.Add('abaixo é apenas para auxiliar em sua configuração.');
    Memo1.Lines.Add(' ');    
    Memo1.Lines.Add('A partir da versão 2.00 do leiaute da NF-e, o contribuinte');
    Memo1.Lines.Add('emissor do SIMPLES NACIONAL deve informar um dos seguintes');
    Memo1.Lines.Add('Código de Situação da Operação - SIMPLES NACIONAL (CSOSN)');
    Memo1.Lines.Add('em substituição ao CST :');
    Memo1.Lines.Add(' ');
    Memo1.Lines.Add('101 - Tributada pelo Simples Nacional com permissão de crédito;');
    Memo1.Lines.Add('102 - Tributada pelo Simples Nacional sem permissão de crédito;');
    Memo1.Lines.Add('103 - Isenção do ICMS no Simples Nacional para faixa de receita bruta;');
    Memo1.Lines.Add('201 - Tributada pelo Simples Nacional com permissão de crédito e com cobrança do ICMS por substituição tributária;');
    Memo1.Lines.Add('202 - Tributada pelo Simples Nacional sem permissão de crédito e com cobrança do ICMS por substituição tributária;');
    Memo1.Lines.Add('203 - Isenção do ICMS no Simples Nacional para faixa de receita bruta e com cobrança do ICMS por substituição tributária;');
    Memo1.Lines.Add('300 - Imune;');
    Memo1.Lines.Add('400 - Não tributada pelo Simples Nacional;');
    Memo1.Lines.Add('500 - ICMS cobrado anteriormente por substituição tributária (substituído) ou por antecipação;');
    Memo1.Lines.Add('900 - Outros.');
    panelAjuda.Visible := True;
  end;
end;

procedure TfEstado.Label15Click(Sender: TObject);
begin
  if (panelAjuda.Visible = True) then
  begin
    panelAjuda.Visible := False;
  end
  else begin
    Memo1.Lines.Clear;
    Memo1.Lines.Add('ATENÇÃO : A ATS não se responsabiliza pelos valores informados aqui, ');
    Memo1.Lines.Add('esta informação e de responsabilidade de seu contador, a tabela');
    Memo1.Lines.Add('abaixo é apenas para auxiliar em sua configuração.');
    Memo1.Lines.Add(' ');
    Memo1.Lines.Add('TABELA I');
    Memo1.Lines.Add('CÓDIGO DA SITUAÇÃO TRIBUTÁRIA REFERENTE AO IMPOSTO SOBRE ');
    Memo1.Lines.Add('PRODUTOS INDUSTRIALIZADOS (CST-IPI):');
    Memo1.Lines.Add(' ');
    Memo1.Lines.Add('00 Entrada com Recuperação de Crédito');
    Memo1.Lines.Add('01 Entrada Tributável com Alíquota Zero');
    Memo1.Lines.Add('02 Entrada Isenta');
    Memo1.Lines.Add('03 Entrada Não-Tributada');
    Memo1.Lines.Add('04 Entrada Imune');
    Memo1.Lines.Add('05 Entrada com Suspensão');
    Memo1.Lines.Add('49 Outras Entradas');
    Memo1.Lines.Add('50 Saída Tributada');
    Memo1.Lines.Add('51 Saída Tributável com Alíquota Zero');
    Memo1.Lines.Add('52 Saída Isenta');
    Memo1.Lines.Add('53 Saída Não-Tributada');
    Memo1.Lines.Add('54 Saída Imune');
    Memo1.Lines.Add('55 Saída com Suspensão');
    Memo1.Lines.Add('99 Outras Saídas');
    panelAjuda.Visible := True;
  end;
end;

procedure TfEstado.Label16Click(Sender: TObject);
begin
  if (panelAjuda.Visible = True) then
  begin
    panelAjuda.Visible := False;
  end
  else begin
    Memo1.Lines.Clear;
    Memo1.Lines.Add('ATENÇÃO : A ATS não se responsabiliza pelos valores informados aqui, ');
    Memo1.Lines.Add('esta informação e de responsabilidade de seu contador, a tabela');
    Memo1.Lines.Add('abaixo é apenas para auxiliar em sua configuração.');
    Memo1.Lines.Add(' ');
    Memo1.Lines.Add('CÓDIGO DA SITUAÇÃO TRIBUTÁRIA REFERENTE AO PIS/PASEP (CST-PIS):');
    Memo1.Lines.Add(' ');
    Memo1.Lines.Add('01 - Operação Tributável com Alíquota Básica');
    Memo1.Lines.Add('02 - Operação Tributável com Alíquota Diferenciada');
    Memo1.Lines.Add('03 - Operação Tributável com Alíquota por Unidade de Medida de Produto');
    Memo1.Lines.Add('04 - Operação Tributável Monofásica - Revenda a Alíquota Zero');
    Memo1.Lines.Add('05 - Operação Tributável por Substituição Tributária');
    Memo1.Lines.Add('06 - Operação Tributável a Alíquota Zero');
    Memo1.Lines.Add('07 - Operação Isenta da Contribuição');
    Memo1.Lines.Add('08 - Operação sem Incidência da Contribuição');
    Memo1.Lines.Add('09 - Operação com Suspensão da Contribuição');
    Memo1.Lines.Add('49 - Outras Operações de Saída');
    Memo1.Lines.Add('50 - Operação com Direito a Crédito - Vinculada Exclusivamente a Receita Tributada no Mercado Interno');
    Memo1.Lines.Add('51 - Operação com Direito a Crédito – Vinculada Exclusivamente a Receita Não Tributada no Mercado Interno');
    Memo1.Lines.Add('52 - Operação com Direito a Crédito - Vinculada Exclusivamente a Receita de Exportação');
    Memo1.Lines.Add('53 - Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno');
    Memo1.Lines.Add('54 - Operação com Direito a Crédito - Vinculada a Receitas Tributadas no Mercado Interno e de Exportação');
    Memo1.Lines.Add('55 - Operação com Direito a Crédito - Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação');
    Memo1.Lines.Add('56 - Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno, e de Exportação');
    Memo1.Lines.Add('60 - Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Tributada no Mercado Interno');
    Memo1.Lines.Add('61 - Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Não-Tributada no Mercado Interno');
    Memo1.Lines.Add('62 - Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita de Exportação');
    Memo1.Lines.Add('63 - Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno');
    Memo1.Lines.Add('64 - Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas no Mercado Interno e de Exportação');
    Memo1.Lines.Add('65 - Crédito Presumido - Operação de Aquisição Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação');
    Memo1.Lines.Add('66 - Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno, e de Exportação');
    Memo1.Lines.Add('67 - Crédito Presumido - Outras Operações');
    Memo1.Lines.Add('70 - Operação de Aquisição sem Direito a Crédito');
    Memo1.Lines.Add('71 - Operação de Aquisição com Isenção');
    Memo1.Lines.Add('72 - Operação de Aquisição com Suspensão');
    Memo1.Lines.Add('73 - Operação de Aquisição a Alíquota Zero');
    Memo1.Lines.Add('74 - Operação de Aquisição sem Incidência da Contribuição');
    Memo1.Lines.Add('75 - Operação de Aquisição por Substituição Tributária');
    Memo1.Lines.Add('98 - Outras Operações de Entrada');
    Memo1.Lines.Add('99 - Outras Operações');
    panelAjuda.Visible := True;
  end;
end;

procedure TfEstado.Label17Click(Sender: TObject);
begin
  if (panelAjuda.Visible = True) then
  begin
    panelAjuda.Visible := False;
  end
  else begin
    Memo1.Lines.Clear;
    Memo1.Lines.Add('ATENÇÃO : A ATS não se responsabiliza pelos valores informados aqui, ');
    Memo1.Lines.Add('esta informação e de responsabilidade de seu contador, a tabela');
    Memo1.Lines.Add('abaixo é apenas para auxiliar em sua configuração.');
    Memo1.Lines.Add(' ');
    Memo1.Lines.Add('CÓDIGO DA SITUAÇÃO TRIBUTÁRIA REFERENTE À COFINS (CST-COFINS):');
    Memo1.Lines.Add(' ');
    Memo1.Lines.Add('01 - Operação Tributável com Alíquota Básica');
    Memo1.Lines.Add('02 - Operação Tributável com Alíquota Diferenciada');
    Memo1.Lines.Add('03 - Operação Tributável com Alíquota por Unidade de Medida de Produto');
    Memo1.Lines.Add('04 - Operação Tributável Monofásica - Revenda a Alíquota Zero');
    Memo1.Lines.Add('05 - Operação Tributável por Substituição Tributária');
    Memo1.Lines.Add('06 - Operação Tributável a Alíquota Zero');
    Memo1.Lines.Add('07 - Operação Isenta da Contribuição');
    Memo1.Lines.Add('08 - Operação sem Incidência da Contribuição');
    Memo1.Lines.Add('09 - Operação com Suspensão da Contribuição');
    Memo1.Lines.Add('49 - Outras Operações de Saída');
    Memo1.Lines.Add('50 - Operação com Direito a Crédito - Vinculada Exclusivamente a Receita Tributada no Mercado Interno');
    Memo1.Lines.Add('51 - Operação com Direito a Crédito - Vinculada Exclusivamente a Receita Não-Tributada no Mercado Interno');
    Memo1.Lines.Add('52 - Operação com Direito a Crédito - Vinculada Exclusivamente a Receita de Exportação');
    Memo1.Lines.Add('53 - Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno');
    Memo1.Lines.Add('54 - Operação com Direito a Crédito - Vinculada a Receitas Tributadas no Mercado Interno e de Exportação');
    Memo1.Lines.Add('55 - Operação com Direito a Crédito - Vinculada a Receitas Não Tributadas no Mercado Interno e de Exportação');
    Memo1.Lines.Add('56 - Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno e de Exportação');
    Memo1.Lines.Add('60 - Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Tributada no Mercado Interno');
    Memo1.Lines.Add('61 - Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Não-Tributada no Mercado Interno');
    Memo1.Lines.Add('62 - Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita de Exportação');
    Memo1.Lines.Add('63 - Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno');
    Memo1.Lines.Add('64 - Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas no Mercado Interno e de Exportação');
    Memo1.Lines.Add('65 - Crédito Presumido - Operação de Aquisição Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação');
    Memo1.Lines.Add('66 - Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno e de Exportação');
    Memo1.Lines.Add('67 - Crédito Presumido - Outras Operações');
    Memo1.Lines.Add('70 - Operação de Aquisição sem Direito a Crédito');
    Memo1.Lines.Add('71 - Operação de Aquisição com Isenção');
    Memo1.Lines.Add('72 - Operação de Aquisição com Suspensão');
    Memo1.Lines.Add('73 - Operação de Aquisição a Alíquota Zero');
    Memo1.Lines.Add('74 - Operação de Aquisição sem Incidência da Contribuição');
    Memo1.Lines.Add('75 - Operação de Aquisição por Substituição Tributária');
    Memo1.Lines.Add('98 - Outras Operações de Entrada');
    Memo1.Lines.Add('99 - Outras Operações');
    panelAjuda.Visible := True;
  end;
end;

procedure TfEstado.Label13Click(Sender: TObject);
begin
  if (panelAjuda.Visible = True) then
  begin
    panelAjuda.Visible := False;
  end
  else begin
    Memo1.Lines.Clear;
    Memo1.Lines.Add('ATENÇÃO : A ATS não se responsabiliza pelos valores informados aqui, ');
    Memo1.Lines.Add('esta informação e de responsabilidade de seu contador, a tabela');
    Memo1.Lines.Add('abaixo é apenas para auxiliar em sua configuração.');
    Memo1.Lines.Add(' ');
    Memo1.Lines.Add('Código de Situação Tributária(CST) na Nota Fiscal Eletrônica:');
    Memo1.Lines.Add(' ');

    Memo1.Lines.Add('Tabela A – Origem da Mercadoria');
	  Memo1.Lines.Add('  ');

	  Memo1.Lines.Add('Tabela B – Tributação pelo ICMS (Vigente desde 1-1-2001)');
    Memo1.Lines.Add('  ');
	  Memo1.Lines.Add('0. Nacional');
	  Memo1.Lines.Add('1. Estrangeira – Importação direta');
	  Memo1.Lines.Add('2. Estrangeira – Adquirida no mercado interno');
    Memo1.Lines.Add('  ');
    Memo1.Lines.Add('  ');
	  Memo1.Lines.Add('00. Tributada integralmente');
	  Memo1.Lines.Add('10. Tributada e com cobrança do ICMS por substituição tributária');
	  Memo1.Lines.Add('20. Com redução de base de cálculo');
	  Memo1.Lines.Add('30. Isenta ou não tributada e com cobrança do ICMS por substituição tributária');
	  Memo1.Lines.Add('40. Isenta');
	  Memo1.Lines.Add('41. Não tributada');
	  Memo1.Lines.Add('50. Suspensão');
	  Memo1.Lines.Add('51. Diferimento');
	  Memo1.Lines.Add('60. ICMS cobrado anteriormente por substituição tributária');
	  Memo1.Lines.Add('70. Com redução da base de cálculo e cobrança do ICMS por substituição tributária');
	  Memo1.Lines.Add('90. Outras');
    panelAjuda.Visible := True;
  end;
end;

end.
