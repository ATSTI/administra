unit uProc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, FMTBcd, Buttons, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, DB, DBClient, Provider, SqlExpr,
  Mask, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit;

type                                  
  TfProc = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    ds: TDataSource;
    JvDBUltimGrid1: TJvDBUltimGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    GroupBox1: TGroupBox;
    dtaProcura: TJvDatePickerEdit;
    dtaProcura2: TJvDatePickerEdit;
    cbPeriodo: TCheckBox;
    Label1: TLabel;
    BitBtn5: TBitBtn;
    procedure BitBtn4Click(Sender: TObject);
    procedure JvDBUltimGrid1TitleClick(Column: TColumn);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fProc: TfProc;

implementation

uses udm, Frm_Demo_ACBrMDFe;

{$R *.dfm}

procedure TfProc.BitBtn4Click(Sender: TObject);
var strQ, strCond: String;
begin
  strCond := '';
  strQ := 'SELECT ';
  if (cbPeriodo.Checked) then
  begin
    strQ := 'SELECT FIRST 20 ';
  end;
  strQ := strQ + ' a.COD_MDFE, a.CODEMITENTE, a.TIPOEMITENTE,' +
    '  a.MODELO, a.SERIE, a.NUMERO_MDF, a.CHAVE_MDF, PROTOCOLOENV,' +
    ' a.DIGITO_MDF, a.MODALIDADE, a.DATA_MDF, ' +
    ' a.FORMA_EMISSAO, a.VERSAO_APLICATIVO, ' +
    ' a.UF_CARREGAMENTO, a.UF_DESCARREGAMENTO, ' +
    ' a.COD_MUNICIPIO_CARREG, a.MUNICIPO_CARREG, ' +
    ' a.UF_PERCURSO, a.COD_MUNICIPIO_DESCARREG,  ' +
    ' a.MUNICIPO_DESCARREG, a.CHAVE_NFE1,        ' +
    ' a.CHAVE_NFE2, a.CHAVE_NFE3, a.CHAVE_NFE4, ' +
    ' a.CHAVE_NFE5, a.CHAVE_NFE6, a.CHAVE_NFE7, ' +
    ' a.TIPO_TRANSP, a.UNID_TRANSP, a.TIPO_CARGA, ' +
    ' a.UNID_CARGA, a.IDENT_CARGA, a.QTDE_NFE, ' +
    ' a.VALOR_CARGA, a.UNID_PESO, a.PESO_BRUTO, ' +
    ' a.CNPJ_AUTORIZADO1, a.CNPJ_AUTORIZADO2, ' +
    ' a.INFO_ADIC_FISCO, a.INFO_ADIC_CONTRIBUINTE, ' +
    ' a.RNTRC, a.CIOT, a.CINT, a.PLACA, a.TARA, ' +
    ' a.CAPKG, a.CAPM3, a.PROP_CNPJ, a.PROP_RNTRC, ' +
    ' a.PROP_NOME, a.PROP_IE, a.PROP_UF, ' +
    ' a.PROP_TIPO, a.CONDUTOR_NOME, a.CONDUTOR_CPF, ' +
    ' a.TIPO_RODADO, a.TIPO_CARROCERIA, ' +
    ' a.UF_VEICULO, a.REBOQUE_CINT, a.REBOQUE_PLACA, ' +
    ' a.REBOQUE_TARA, a.REBOQUE_CAPKG, ' +
    ' a.REBOQUE_CAPM3, a.REBOQUE_CPF, ' +
    ' a.REBOQUE_CNPJ, a.REBOQUE_RNTRC, ' +
    ' a.REBOQUE_NOME, a.REBOQUE_IE, a.REBOQUE_UF, ' +
    ' a.REBOQUE_TIPOPROP, a.REBOQUE_TIPOCARROCERIA, ' +
    ' a.REBOQUE_UFVEICULO, a.PESO_VOLUME1, ' +
    ' a.PESO_VOLUME2, a.PESO_VOLUME3, ' +
    ' a.PESO_VOLUME4, a.PESO_VOLUME5, ' +
    ' a.PESO_VOLUME6, a.PESO_VOLUME7, a.CHAVE_MDFE ' +
    ' ,a.NF1_CNPJ, a.NF1_NUM, a.NF1_SERIE, a.NF1_UF, a.NF1_PIN, a.NF1_VALOR' +
    ' ,a.NF2_CNPJ,a.NF2_NUM, a.NF2_SERIE, a.NF2_UF, a.NF2_PIN, a.NF2_VALOR' +
    ' ,a.NF3_CNPJ,a.NF3_NUM, a.NF3_SERIE, a.NF3_UF, a.NF3_PIN, a.NF3_VALOR' +
    ' ,a.PROTOCOLOENC, a.PROTOCOLOCAN ' +
    ' ,a.UF_PERCURSO, a.UF_PERCURSO2, a.UF_PERCURSO3, a.UF_PERCURSO4 ' +
    ' ,a.UF_PERCURSO5, a.UF_PERCURSO6, a.TIPO_EMITENTE' +
    ' ,a.SEG_RESP, a.SEG_CNPJ_EMITENTE, a.SEG_SEGURADORA, a.SEG_CNPJ_SEGURADORA' +
    ' ,a.SEG_APOLICE, a.SEG_AVERBA ' +
    ' FROM MDFE a ';

  if (cbPeriodo.Checked) then
  begin
    strCond := ' WHERE a.DATA_MDF BETWEEN ' + QuotedStr(FormatDateTime('mm/dd/yyyy',dtaProcura.date));
    strCond := strCond + ' AND ' + QuotedStr(FormatDateTime('mm/dd/yyyy',dtaProcura2.date));
  end;
  if (dm.cds.Active) then
    dm.cds.Close;
  dm.cds.CommandText := strQ + strCond +  ' ORDER BY a.COD_MDFE DESC ';
  dm.cds.Open;  
end;

procedure TfProc.JvDBUltimGrid1TitleClick(Column: TColumn);
begin
  dm.cds.IndexFieldNames := Column.FieldName;
end;

procedure TfProc.BitBtn1Click(Sender: TObject);
begin
  fACBrMDFe.modoAbertura := 'EDITAR';
  fACBrMDFe.ShowModal;
end;

procedure TfProc.BitBtn2Click(Sender: TObject);
begin
  fACBrMDFe.modoAbertura := 'NOVO';
  fACBrMDFe.ShowModal;
end;

procedure TfProc.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TfProc.BitBtn5Click(Sender: TObject);
begin
  if not dm.cds.Active then
  begin
    MessageDlg('Selecione a MDFe a ser duplicada.', mtWarning, [mbOK], 0);
    exit;
  end;
  try
    dm.sc.ExecuteDirect('EXECUTE PROCEDURE MDFE_DUPLICA(' + IntToStr(
      dm.cdsCOD_MDFE.AsInteger) + ')');
    MessageDlg('MDFe duplicada com sucesso.', mtWarning, [mbOK], 0);
  except
    MessageDlg('Erro, MDFe não foi duplicada.', mtWarning, [mbOK], 0);
  end;
  dm.cds.Close;
  dm.cds.Open;
end;

end.
