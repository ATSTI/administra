unit uProcura_prod2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, Provider, DBClient, StdCtrls, Buttons,
  Mask, JvExMask, JvToolEdit, JvBaseEdits, EDBFind, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, JvExControls, JvGradient, Menus, DBxPress;

type
  TfProcura_prod2 = class(TForm)
    JvGradient1: TJvGradient;
    JvDBGrid1: TJvDBGrid;
    cbGarcom: TComboBox;
    cbGarota: TComboBox;
    Label11: TLabel;
    EvDBFind1: TEvDBFind;
    Edit3: TJvCalcEdit;
    Label12: TLabel;
    Edit4: TJvCalcEdit;
    Label13: TLabel;
    BitBtn4: TBitBtn;
    JvDBGrid2: TJvDBGrid;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Dtsrc: TDataSource;
    cds_proc: TClientDataSet;
    cds_procCODPRODUTO: TIntegerField;
    cds_procCODPRO: TStringField;
    cds_procPRODUTO: TStringField;
    cds_procPRECO_VENDA: TFloatField;
    cds_procQTDE_PCT: TFloatField;
    cds_procUNIDADEMEDIDA: TStringField;
    cds_procGRUPO: TStringField;
    cds_procSUBGRUPO: TStringField;
    cds_procMARCA: TStringField;
    cds_procESTOQUEATUAL: TFloatField;
    cds_procCODALMOXARIFADO: TIntegerField;
    cds_procICMS: TFloatField;
    cds_procPRECO_COMPRA: TFloatField;
    cds_procTIPO: TStringField;
    cds_procCOD_BARRA: TStringField;
    cds_procLOTES: TStringField;
    cds_procLOCALIZACAO: TStringField;
    cds_procPESO_QTDE: TFloatField;
    cds_procPRECOMEDIO: TFloatField;
    cds_procIPI: TFloatField;
    cds_procPEDIDO: TFloatField;
    dsp_proc: TDataSetProvider;
    sds_proc: TSQLDataSet;
    sds_procCODPRODUTO: TIntegerField;
    sds_procCODPRO: TStringField;
    sds_procPRODUTO: TStringField;
    sds_procPRECO_VENDA: TFloatField;
    sds_procQTDE_PCT: TFloatField;
    sds_procUNIDADEMEDIDA: TStringField;
    sds_procGRUPO: TStringField;
    sds_procSUBGRUPO: TStringField;
    sds_procMARCA: TStringField;
    sds_procESTOQUEATUAL: TFloatField;
    sds_procCODALMOXARIFADO: TIntegerField;
    sds_procICMS: TFloatField;
    sds_procPRECO_COMPRA: TFloatField;
    sds_procTIPO: TStringField;
    sds_procCOD_BARRA: TStringField;
    sds_procLOTES: TStringField;
    sds_procLOCALIZACAO: TStringField;
    sds_procPESO_QTDE: TFloatField;
    sds_procPRECOMEDIO: TFloatField;
    sds_procIPI: TFloatField;
    sds_procPEDIDO: TFloatField;
    DtSrc1: TDataSource;
    cds_Mov_det: TClientDataSet;
    dsp_Mov_det: TDataSetProvider;
    sds_Mov_Det: TSQLDataSet;
    sgarcom: TSQLDataSet;
    sAtendente: TSQLDataSet;
    sgarcomCOD_FUNCIONARIO: TIntegerField;
    sgarcomNOME_FUNCIONARIO: TStringField;
    sAtendenteCOD_FUNCIONARIO: TIntegerField;
    sAtendenteNOME_FUNCIONARIO: TStringField;
    JvCalcEdit1: TJvCalcEdit;
    Label14: TLabel;
    BitBtn2: TBitBtn;
    PopupMenu1: TPopupMenu;
    Adiciona1: TMenuItem;
    Novo1: TMenuItem;
    Sair1: TMenuItem;
    PrecoMinimo: TSQLDataSet;
    PrecoMinimoCODPRODUTO: TIntegerField;
    PrecoMinimoVALORMINIMO: TFloatField;
    BitBtn3: TBitBtn;
    cbSuites: TComboBox;
    Label3: TLabel;
    sSuites: TSQLDataSet;
    sSuitesNOME: TStringField;
    sSuitesCODIGO: TIntegerField;
    sds_Mov_DetCODDETALHE: TIntegerField;
    sds_Mov_DetCODMOVIMENTO: TIntegerField;
    sds_Mov_DetCODPRODUTO: TIntegerField;
    sds_Mov_DetICMS: TFloatField;
    sds_Mov_DetPRECO: TFloatField;
    sds_Mov_DetQUANTIDADE: TFloatField;
    sds_Mov_DetQTDE_ALT: TFloatField;
    sds_Mov_DetUN: TStringField;
    sds_Mov_DetBAIXA: TStringField;
    sds_Mov_DetCONTROLE: TSmallintField;
    sds_Mov_DetCOD_COMISSAO: TIntegerField;
    sds_Mov_DetVALTOTAL: TFloatField;
    sds_Mov_DetPRECOCUSTO: TFloatField;
    sds_Mov_DetDESCPRODUTO: TStringField;
    sds_Mov_DetLOTE: TStringField;
    sds_Mov_DetCODIGO: TIntegerField;
    sds_Mov_DetCODIGO1: TIntegerField;
    sds_Mov_DetCODPRO: TStringField;
    sds_Mov_DetPRODUTO: TStringField;
    sds_Mov_DetCODALMOXARIFADO: TSmallintField;
    sds_Mov_DetVALORUNITARIOATUAL: TFloatField;
    sds_Mov_DetQTDE_PCT: TFloatField;
    sds_Mov_DetCONTA_DESPESA: TStringField;
    sds_Mov_DetCOD_BARRA: TStringField;
    sds_Mov_DetLOCALIZACAO: TStringField;
    sds_Mov_DetESTOQUEATUAL: TFloatField;
    sds_Mov_DetPERIODOINI: TSQLTimeStampField;
    sds_Mov_DetPERIODOFIM: TSQLTimeStampField;
    cds_Mov_detCODDETALHE: TIntegerField;
    cds_Mov_detCODMOVIMENTO: TIntegerField;
    cds_Mov_detCODPRODUTO: TIntegerField;
    cds_Mov_detICMS: TFloatField;
    cds_Mov_detPRECO: TFloatField;
    cds_Mov_detQUANTIDADE: TFloatField;
    cds_Mov_detQTDE_ALT: TFloatField;
    cds_Mov_detUN: TStringField;
    cds_Mov_detBAIXA: TStringField;
    cds_Mov_detCONTROLE: TSmallintField;
    cds_Mov_detCOD_COMISSAO: TIntegerField;
    cds_Mov_detVALTOTAL: TFloatField;
    cds_Mov_detPRECOCUSTO: TFloatField;
    cds_Mov_detDESCPRODUTO: TStringField;
    cds_Mov_detLOTE: TStringField;
    cds_Mov_detCODIGO: TIntegerField;
    cds_Mov_detCODIGO1: TIntegerField;
    cds_Mov_detCODPRO: TStringField;
    cds_Mov_detPRODUTO: TStringField;
    cds_Mov_detCODALMOXARIFADO: TSmallintField;
    cds_Mov_detVALORUNITARIOATUAL: TFloatField;
    cds_Mov_detQTDE_PCT: TFloatField;
    cds_Mov_detCONTA_DESPESA: TStringField;
    cds_Mov_detCOD_BARRA: TStringField;
    cds_Mov_detLOCALIZACAO: TStringField;
    cds_Mov_detESTOQUEATUAL: TFloatField;
    cds_Mov_detPERIODOINI: TSQLTimeStampField;
    cds_Mov_detPERIODOFIM: TSQLTimeStampField;
    cds_Mov_detValorTotal: TFloatField;
    sOcupado: TSQLDataSet;
    sOcupadoCODDETALHE: TIntegerField;
    sBuscaSuite: TSQLDataSet;
    sBuscaSuiteNOME: TStringField;
    sBuscaSuiteCODIGO: TIntegerField;
    evCodPro: TEvDBFind;
    Label4: TLabel;
    sds_Mov_DetGERADESCONTO: TStringField;
    cds_Mov_detGERADESCONTO: TStringField;
    SQLDataSet1: TSQLDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    FloatField3: TFloatField;
    IntegerField2: TIntegerField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    sProd: TSQLDataSet;
    sProdGERADESCONTO: TStringField;
    sds_Mov_DetIMPRIMIR: TStringField;
    cds_Mov_detIMPRIMIR: TStringField;
    Label5: TLabel;
    edPorcento: TJvCalcEdit;
    OpenDialog1: TOpenDialog;
    sds_Mov_DetHORATERMINO: TSQLTimeStampField;
    cds_Mov_detHORATERMINO: TSQLTimeStampField;
    sds_Mov_DetPAGO: TStringField;
    cds_Mov_detPAGO: TStringField;
    sdsPermissao: TSQLDataSet;
    sdsPermissaoUCUSERNAME: TStringField;
    sdsPermissaoUCLOGIN: TStringField;
    sdsPermissaoUCPROFILE: TIntegerField;
    sds_Mov_DetSTATUS: TStringField;
    cds_Mov_detSTATUS: TStringField;
    sds_Mov_DetCODAUTORIZACAO: TIntegerField;
    cds_Mov_detCODAUTORIZACAO: TIntegerField;
    sds_Mov_DetNOME_FUNCIONARIO: TStringField;
    cds_Mov_detNOME_FUNCIONARIO: TStringField;
    dPermissao: TDataSetProvider;
    sPermissao: TClientDataSet;
    sPermissaoUCUSERNAME: TStringField;
    sPermissaoUCLOGIN: TStringField;
    sPermissaoUCPROFILE: TIntegerField;
    sProdTIPO: TStringField;
    sProdVALORCOMISSAO: TFloatField;
    Rateio1: TMenuItem;
    ComboBox1: TComboBox;
    Label6: TLabel;
    sds_Mov_DetVALORRATEIO: TFloatField;
    cds_Mov_detVALORRATEIO: TFloatField;
    sComissao: TSQLDataSet;
    sComissaoCOD_COMISSAO: TIntegerField;
    sComissaoCOD_COLABORADOR: TIntegerField;
    sComissaoCOD_PRODUTO: TIntegerField;
    sComissaoVALORCOMISSAO: TFloatField;
    sAtendenteCODFORNECEDOR: TIntegerField;
    sgarcomCODFORNECEDOR: TIntegerField;
    sPlano1: TSQLDataSet;
    sPlano1CODIGO: TIntegerField;
    sPlano1CONTA: TStringField;
    sPlano1CONTAPAI: TStringField;
    sPlano1NOME: TStringField;
    sPlano1CONSOLIDA: TStringField;
    sPlano1DESCRICAO: TStringField;
    sPlano1RATEIO: TStringField;
    sPlano1CODREDUZIDO: TStringField;
    sPlano1REDUZRECEITA: TStringField;
    sContaComissao: TSQLDataSet;
    sContaComissaoCONFIGURADO: TStringField;
    sContaComissaoDADOS: TStringField;
    sConta: TSQLDataSet;
    sContaCODIGO: TIntegerField;
    sCaixa: TSQLDataSet;
    sCaixaIDCAIXACONTROLE: TIntegerField;
    sCaixaCODCAIXA: TIntegerField;
    sCaixaCODUSUARIO: TIntegerField;
    sCaixaDATAFECHAMENTO: TDateField;
    sCaixaSITUACAO: TStringField;
    sCaixaMAQUINA: TStringField;
    sCaixaDATAABERTURA: TDateField;
    sCaixaVALORABRE: TFloatField;
    sCaixaVALORFECHA: TFloatField;
    sCaixaNOMECAIXA: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure cds_Mov_detCalcFields(DataSet: TDataSet);
    procedure JvDBGrid1CellClick(Column: TColumn);
    procedure JvDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvDBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvDBGrid1TitleClick(Column: TColumn);
    procedure EvDBFind1Change(Sender: TObject);
    procedure EvDBFind1Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure edPorcentoChange(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure Edit4Click(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure edPorcentoEnter(Sender: TObject);
    procedure evCodProEnter(Sender: TObject);
    procedure EvDBFind1Enter(Sender: TObject);
    procedure evCodProExit(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit4Enter(Sender: TObject);
    procedure edPorcentoExit(Sender: TObject);
    procedure cbGarcomEnter(Sender: TObject);
    procedure cbGarcomExit(Sender: TObject);
    procedure cbGarotaEnter(Sender: TObject);
    procedure cbGarotaExit(Sender: TObject);
    procedure cbSuitesEnter(Sender: TObject);
    procedure cbSuitesExit(Sender: TObject);
    procedure ComboBox1Enter(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure ListaProd;
    procedure pedeacesso;
  public
    varPermissao, vUsercaixa, vAdm : string;
    id_movimento : integer;
    tipo, ContaPaiSuites : String;
    vComissao, vUnitario: Double; 
    procedure imprimirQuarto;
    procedure imprimirComanda;
    procedure imprimirComissao;
    procedure GeraDespColaborador;
    procedure GeraDespGarcom;
    { Public declarations }
  end;

var
  fProcura_prod2: TfProcura_prod2;
  TD: TTransactionDesc;

implementation

uses UDm, uControle, uRatearConta, ufDlgLogin, uAtsAdmin;

{$R *.dfm}

procedure TfProcura_prod2.FormShow(Sender: TObject);
begin
  //------Pego do Parametro o cadigo para listar os Caixas ---
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CONTASUITES';
  dm.cds_parametro.Open;
  ContaPaiSuites := dm.cds_parametroDADOS.AsString;
  cbSuites.Clear;
  if (not dm.cds_parametro.IsEmpty) then
  begin
    if (sSuites.Active) then
      sSuites.Close;
    sSuites.Params[0].AsString := ContaPaiSuites;
    sSuites.Open;
    sSuites.First;
    while not sSuites.Eof do
    begin
        cbSuites.Items.Add(sSuitesNOME.AsString);
        sSuites.Next;
    end;
    sSuites.Close;
  end;
  dm.parametro.Close;
  if (cds_Mov_det.Active) then
      cds_Mov_det.Close;
  cds_Mov_det.Params[0].AsInteger := id_movimento;
  cds_Mov_det.Open;
  if (not sgarcom.Active) then
    sgarcom.Open;
  sgarcom.First;
  cbGarcom.Items.Clear;
  while not sgarcom.Eof do
  begin
     cbGarcom.Items.Add(sgarcomNOME_FUNCIONARIO.AsString);
     sgarcom.Next;
  end;
  sgarcom.Close;
  if (not sAtendente.Active) then
    sAtendente.Open;
  sAtendente.First;
  cbGarota.Items.Clear;
  while not sAtendente.Eof do
  begin
     cbGarota.Items.Add(sAtendenteNOME_FUNCIONARIO.AsString);
     sAtendente.Next;
  end;
  sAtendente.Close;
  BitBtn4.Enabled := True;
  BitBtn1.Enabled := False;
  ListaProd;
  cbGarcom.Text := '';
  cbGarota.Text := '';
  cbSuites.Text := '';
  Edit3.Value := 0;
  edPorcento.Value := 0;
  Edit4.Value := 0;
  JvCalcEdit1.Value := 0;
  evCodPro.SetFocus;

  {if (fControle.sAtendente.Active) then
    fControle.sAtendente.Close;
  fControle.sAtendente.Params[0].AsString := fControle.cMesasNOMECLIENTE.AsString;
  fControle.sAtendente.Open;
  if (not fControle.sAtendente.IsEmpty) then
    fProcura_prod2.cbGarota.Text := fControle.cMesasNOMECLIENTE.AsString;
  fControle.sAtendente.Close;      }

end;

procedure TfProcura_prod2.FormClose(Sender: TObject;
  var Action: TCloseAction);
var total, rateio : double;
begin
  if (cds_proc.Active) then
    cds_proc.Close;
  //EvDBFind1.SetFocus;
 if (fControle.cTotal.Active) then
    fControle.cTotal.Close;
  fControle.cTotal.Params[0].AsInteger := fControle.cMesasCODMOVIMENTO.AsInteger;
  fControle.cTotal.Open;
  if (fControle.cTotal.IsEmpty) then
    total := 0
  else
    total := fControle.cTotaltotal.Value;
  if (rateio > 0) then
   total := total - rateio;
  if (fControle.cMesas.State in [dsBrowse]) then
     fControle.cMesas.Edit;
  fControle.cMesasTOTALMOVIMENTO.Value := total;
  fControle.cMesas.ApplyUpdates(0);
  fControle.mostraSuites;
end;

procedure TfProcura_prod2.ListaProd;
var varSql, varCondicao, varCondicaoA, varSql1, varCond2, varSql2, varCondicao1, s: string;
i : integer;
begin
 cds_proc.CommandText := '';
 varCondicao := '';
 // Produtos
 varSql := 'select distinct CODPRODUTO, COD_BARRA, CODPRO, PRODUTO,  ' +
   'PRECO_VENDA, PRECO_COMPRAULTIMO as PRECO_COMPRA, ' +
   'QTDE_PCT, UNIDADEMEDIDA, ' +
   'GRUPO, SUBGRUPO, MARCA, ' +
   'ESTOQUEATUAL, CODALMOXARIFADO, ICMS, TIPO, LOCALIZACAO, LOTES,    ' +
   'SUBGRUPO as CATEGORIA, PRECO_VENDA as VALOR_PRAZO, PESO_QTDE, ' +
   'PRECO_COMPRAMEDIO as PRECOMEDIO, IPI , PEDIDO ' +
   'from LISTAPRODUTO(0, ';
   // 'TODOSPRODUTOS', 'TODOSPRODUTOS', 'TODOSGRUPOS', 'TODOSSUBGRUPOS','TODASMARCAS', 'CODIGOBARRA')
  // Codigos
  varSql1 := 'select distinct cod.CODIGO ' +
    'from PRODUTOS pro ' +
    'left outer join CODIGOS cod on cod.COD_PRODUTO = pro.CODPRODUTO ' +
    'left outer join USO_PRODUTO uso on uso.COD_PRODUTO = pro.CODPRODUTO ';
  // Uso
  varSql2 := 'select DISTINCT uso.DESCRICAO as USO ' +
    'from PRODUTOS pro ' +
    'left outer join CODIGOS cod on cod.COD_PRODUTO = pro.CODPRODUTO ' +
    'left outer join USO_PRODUTO uso on uso.COD_PRODUTO = pro.CODPRODUTO ';

{  ***** Comentei pois nao e usado mais - Carlos 09/08/2006 ****}

  varCondicao := QuotedStr('TODOSPRODUTOS');
  varCondicao := varCondicao + ', ' + QuotedStr('TODOSGRUPOS');
  varCondicao := varCondicao + ', ' + QuotedStr('TODOSSUBGRUPOS');
  varCondicao := varCondicao + ', ' + QuotedStr('TODASMARCAS');
  varCondicao := varCondicao + ') ';

 varCondicao1 := varSql1 + varCondicaoA + ' order by pro.PRODUTO ';
 varCond2 := varSql2 + varCondicaoA + ' order by pro.CODPRO ';
 varCondicao := varSql + varCondicao + varCondicaoA + ' order by CODPRO ';

//***************************************************************************
 if cds_proc.Active then
   cds_proc.Close;
 cds_proc.CommandText := varCondicao;
 cds_proc.Open;

end;

procedure TfProcura_prod2.BitBtn4Click(Sender: TObject);
var valor, valorminimo, diferenca : double;
    vMudouValor : String;
    vUsuLog, vmovimentodetalhe : integer;
begin
  BitBtn3.Enabled := True;
  if (PrecoMinimo.Active) then
      PrecoMinimo.Close;
  PrecoMinimo.Params[0].AsInteger := cds_procCODPRODUTO.AsInteger;
  PrecoMinimo.Open;
  valor := Edit4.Value;
  valorminimo := PrecoMinimoVALORMINIMO.Value;
  //diferenca := Edit4.Value - PrecoMinimoVALORMINIMO.Value;
  if (valorminimo > valor) then
     diferenca := valorminimo - valor
  else
     diferenca := 0.04;
  varPermissao := 'Sim';
  if (diferenca > 0.05) then
  begin
    usuautorizacao := 0;
    pedeacesso;
  end;
  PrecoMinimo.Close;
  if (varPermissao = 'Sim') then
  if (fControle.cMesasCODNATUREZA.AsInteger = 13) then
  begin
      if (cbSuites.Text <> '') then
      begin
        if (sBuscaSuite.Active) then
          sBuscaSuite.Close;
        sBuscaSuite.Params[0].AsString := cbSuites.Text;
        sBuscaSuite.Open;
        if (sOcupado.Active) then
          sOcupado.Close;
        sOcupado.Params[0].AsInteger := sBuscaSuiteCODIGO.AsInteger;
        sOcupado.Open;
        if (not sOcupado.IsEmpty) then
        begin
          MessageDlg('Suite está em uso.', mtWarning, [mbOK], 0);
          sSuites.Close;
          exit;
        end;
        sSuites.Close;
      end;
      cds_Mov_det.Append;
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOVDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      cds_Mov_detCODDETALHE.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
      vmovimentodetalhe := dm.c_6_genid.Fields[0].AsInteger;
      dm.c_6_genid.Close;
      cds_Mov_detCODMOVIMENTO.AsInteger := id_movimento;
      cds_Mov_detCODPRODUTO.AsInteger := cds_procCODPRODUTO.AsInteger;
      cds_Mov_detCODPRO.AsString := cds_procCODPRO.AsString;
      cds_Mov_detPRODUTO.Value := cds_procPRODUTO.Value;
      cds_Mov_detDESCPRODUTO.Value := cds_procPRODUTO.Value;
      cds_Mov_detQUANTIDADE.AsFloat := StrToFloat(Edit3.Text);
      cds_Mov_detPRECO.AsFloat := StrToFloat(Edit4.Text);
      cds_Mov_detUN.AsString := cds_procUNIDADEMEDIDA.AsString;
      cds_Mov_detPRECOCUSTO.AsFloat := cds_procPRECOMEDIO.AsFloat;
      cds_Mov_detCODALMOXARIFADO.AsInteger := 0;
      if (ComboBox1.Text = 'SIM') then
         cds_Mov_detPAGO.AsString := 'SIM';
      if (cbGarcom.Text <> '') then
      begin
         if (not sgarcom.Active) then
           sgarcom.Open;
         if (sgarcom.Locate('NOME_FUNCIONARIO',cbGarcom.Text, [loCaseInsensitive])) then
            cds_Mov_detCODIGO.AsInteger := sgarcomCOD_FUNCIONARIO.AsInteger
         else
         begin
            MessageDlg('Garçom não Cadastrado', mtError, [mbOK], 0);
            exit;
         end;
         sgarcom.Close;
      end;
      if (cbGarota.Text <> '') then
      begin
         if (not sAtendente.Active) then
           sAtendente.Open;
         if (sAtendente.Locate('NOME_FUNCIONARIO',cbGarota.Text, [loCaseInsensitive])) then
            cds_Mov_detCODIGO1.AsInteger := sAtendenteCOD_FUNCIONARIO.AsInteger
         else
         begin
            MessageDlg('Acompanhante não Cadastrado', mtError, [mbOK], 0);
            exit;
         end;
         sAtendente.Close;
      end;
      if (cbSuites.Text <> '') then
      begin
        if (sSuites.Active) then
          sSuites.Close;
        sSuites.Params[0].AsString := ContaPaiSuites;
        sSuites.Open;
        sSuites.Locate('NOME',cbSuites.Text, [loCaseInsensitive]);
        cds_Mov_detCODALMOXARIFADO.AsInteger := sSuitesCODIGO.AsInteger;
        sSuites.Close;
        cds_Mov_detPERIODOINI.AsDateTime := Now;
      end;
      if (vMudouValor = 'SIM') then
      begin
        cds_Mov_detSTATUS.AsString := 'D'; // Desconto
        cds_Mov_detCODAUTORIZACAO.AsInteger := vUsuLog;
      end;
      cds_Mov_det.ApplyUpdates(0);
      BitBtn4.Enabled := false;
      BitBtn1.Enabled := true;
      BitBtn1.SetFocus;
      if (sProd.Active) then
        sProd.Close;
      sProd.Params[0].AsInteger := cds_procCODPRODUTO.AsInteger;
      sProd.Open;
      tipo := sProdTIPO.AsString;
      vComissao := sProdVALORCOMISSAO.Value * Edit3.Value;
      if (cbGarcom.Text <> '') then
      begin
        GeraDespGarcom;
        //imprimirComissao;
      end;
      if (cbGarota.Text <> '') then
      begin
        geradespcolaborador;
        //imprimirComanda;
      end;

      if (cds_Mov_det.Active) then
          cds_Mov_det.Close;
      cds_Mov_det.Params[0].AsInteger := id_movimento;
      cds_Mov_det.Open;
      cds_Mov_det.Locate('CODDETALHE', vmovimentodetalhe, [loCaseInsensitive]);
  end;
  if (fControle.cMesasCODNATUREZA.AsInteger <> 13) then
  begin
    MessageDlg('Mesa / Comanda já finalizada', mtError, [mbOK], 0);
    exit;
  end;
end;

procedure TfProcura_prod2.cds_Mov_detCalcFields(DataSet: TDataSet);
var valor : double;
begin
  valor := 0;
  if cds_Mov_detQTDE_ALT.Value > 0 then
  begin
    cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value;
    valor := cds_Mov_detValorTotal.Value * (cds_Mov_detQTDE_ALT.Value/100);
    cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value - valor;
  end
  else
    cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value;

end;

procedure TfProcura_prod2.JvDBGrid1CellClick(Column: TColumn);
begin
 Edit3.Text := '1';
 if (Edit4.Text = '') then
   Edit4.Text := '0';
 Edit4.Text := Format('%-6.2n',[cds_procPRECO_VENDA.value]);
 EvDBFind1.SetFocus;
end;

procedure TfProcura_prod2.JvDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 Edit4.Text := Format('%-6.2n',[cds_procPRECO_VENDA.value]);
 EvDBFind1.SetFocus;
end;

procedure TfProcura_prod2.JvDBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 Edit3.Text := '1';
 if (Edit4.Text = '') then
   Edit4.Text := '0';
 Edit4.Text := Format('%-6.2n',[cds_procPRECO_VENDA.value]);
 EvDBFind1.SetFocus;
end;

procedure TfProcura_prod2.JvDBGrid1TitleClick(Column: TColumn);
begin
  cds_proc.IndexFieldNames:=Column.FieldName;
  EvDBFind1.SetFocus;
end;

procedure TfProcura_prod2.EvDBFind1Change(Sender: TObject);
begin
   Edit3.Text := '1';
   if (Edit4.Text = '') then
     Edit4.Text := '0';
   Edit4.Text := Format('%-6.2n',[cds_procPRECO_VENDA.value]);
end;

procedure TfProcura_prod2.EvDBFind1Exit(Sender: TObject);
begin
   Edit3.Text := '1';
   if (Edit4.Text = '') then
     Edit4.Text := '0';
   Edit4.Text := Format('%-6.2n',[cds_procPRECO_VENDA.value]);
  EvDBFind1.Color := clWindow;
end;

procedure TfProcura_prod2.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfProcura_prod2.BitBtn1Click(Sender: TObject);
begin
  BitBtn3.Enabled := False;
  BitBtn1.Enabled := false;
  BitBtn4.Enabled := true;
  ListaProd;
  cbGarcom.Text := '';
  cbGarota.Text := '';
  cbSuites.Text := '';
  Edit3.Value := 0;
  edPorcento.Value := 0;
  Edit4.Value := 0;
  JvCalcEdit1.Value := 0;
  evCodPro.SetFocus;
end;

procedure TfProcura_prod2.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfProcura_prod2.BitBtn3Click(Sender: TObject);
begin
  fRatearConta.vforme := 'procura';
  fRatearConta.edComanda.Text := fControle.EvDBFind1.Text;
  fRatearConta.EdMovimento.Text := IntToStr(cds_Mov_detCODMOVIMENTO.AsInteger);
  fRatearConta.edMovDetalhe.Text := IntToStr(cds_Mov_detCODDETALHE.AsInteger);
  fRatearConta.edtotal.value := JvCalcEdit1.Value;
  fRatearConta.JvDBGrid1.Visible := False;
  fRatearConta.JvDBGrid2.Visible := True;
  fRatearConta.ShowModal;
  fRatearConta.vforme := '';
  if (cds_Mov_det.Active) then
      cds_Mov_det.Close;
  cds_Mov_det.Params[0].AsInteger := id_movimento;
  cds_Mov_det.Open;
  cds_proc.Close;
  sPermissao.Close;
end;

procedure TfProcura_prod2.Edit3Exit(Sender: TObject);
begin
  if (Edit4.Value > 0) then
    JvCalcEdit1.Value := Edit3.Value * Edit4.Value;
  Edit3.Color := clWindow;    
end;

procedure TfProcura_prod2.imprimirComanda;
const
cJustif = #27#97#51;
cEject = #12;
{ Tamanho da fonte }
c10cpi = #18;
c12cpi = #27#77;
c17cpi = #15;
cIExpandido = #14;
cFExpandido = #20;
{ Formatação da fonte }
cINegrito = #27#71;
cFNegrito = #27#72;
cIItalico = #27#52;
cFItalico = #27#53;

var
  IMPRESSORA:TextFile;
  Texto,Texto1,Texto2,Texto3,Texto4,texto5, texto6, texto7, logradouro,cep,fone : string;//Para recortar parte da descrição do produto,nome
  total, porc, totgeral  : double;
  porta : string;
  vNomeCliente, vEnderecoCliente, vFonecli : string;
Begin
  if (sprod.Active) then
    sProd.Close;
  sProd.Params[0].AsInteger := cds_procCODPRODUTO.AsInteger;
  sProd.Open;
  porc := sProdVALORCOMISSAO.Value;
  {------Pesquisando na tab Parametro Centro de Receita Padrão ---------}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'PORTA IMPRESSORA';
  dm.cds_parametro.Open;
  if not dm.cds_parametro.IsEmpty then
  begin
    porta := dm.cds_parametroDADOS.AsString;
  end
  else
  begin
    dm.cds_parametro.Append;
    dm.cds_parametroDESCRICAO.AsString := 'Porta usada para impressoras de CUPOM';
    dm.cds_parametroPARAMETRO.AsString := 'PORTA IMPRESSORA';
    dm.cds_parametroDADOS.AsString := 'LPT1:';
    dm.cds_parametro.ApplyUpdates(0);
    porta := 'LPT1:';
  end;
  // Imprimindo
  if (not dm.cds_empresa.Active) then
    dm.cds_empresa.Open;
  {----- aqui monto o endereço-----}
  Texto  := '                  NINFAS N. CLUB              ' ;
  Texto1 := '----------------------------------------------' ;
  Texto2 := '                     PEDIDO                   ' ;
  Texto7 := fControle.cMesasNOMECLIENTE.AsString;
  Texto3 := fControle.Edit4.Text + '          Gc : ' + cbGarota.Text;
  Texto4 := 'Dia : ' + DateTimeToStr(Now);
  Texto5 := '----------------------------------------------';
  totgeral := Edit4.Value;

  if (edPorcento.Value > 0) then
    porc := Edit4.Value / (1 + (edPorcento.Value / 100));
  if (tipo = 'LOCA') then
    Texto6 := FloatToStr(cds_procQTDE_PCT.AsFloat) + ' ' + cds_procPRODUTO.AsString + Format('  %-6.2n',[vUnitario])
  else
    Texto6 := Edit3.Text + ' ' + cds_procPRODUTO.AsString + Format('  %-6.2n',[porc * Edit3.Value]);

   // Texto6 := FloatToStr(cds_procQTDE_PCT.AsFloat) + ' ' + cds_procPRODUTO.AsString + Format('  %-6.2n',[porc *Edit3.Value]);

  {-----------------------------------------------------------}
  {-------------------Imprimi Cabeçalho-----------------------}
  // Para gravar em arquivo
  //OpenDialog1.Execute;
  //AssignFile(IMPRESSORA, OpenDialog1.FileName);
  AssignFile(IMPRESSORA,porta);
  Rewrite(IMPRESSORA);
 { Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  }
  Writeln(Impressora, c10cpi, texto);
  Writeln(Impressora, c10cpi, texto1);
  Writeln(Impressora, c10cpi, texto2);
  Writeln(Impressora, c10cpi + Format('%-38s',['----------------------------------------------']));
  Writeln(Impressora, c10cpi, texto7);  //DATA
  Writeln(Impressora, c10cpi, texto3);  //DATA
  Writeln(Impressora, c10cpi, texto4);  //DATA
  Writeln(Impressora, c10cpi, texto5);  //DATA
  Writeln(Impressora, c10cpi, texto6);  //DATA
  Writeln(Impressora, c10cpi + Format('%-38s',['----------------------------------------------']));
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  CloseFile(IMPRESSORA);
end;

procedure TfProcura_prod2.imprimirQuarto;
const
cJustif = #27#97#51;
cEject = #12;
{ Tamanho da fonte }
c10cpi = #18;
c12cpi = #27#77;
c17cpi = #15;
cIExpandido = #14;
cFExpandido = #20;
{ Formatação da fonte }
cINegrito = #27#71;
cFNegrito = #27#72;
cIItalico = #27#52;
cFItalico = #27#53;

var
  IMPRESSORA:TextFile;
  Texto,Texto1,Texto2,Texto3,Texto4,texto5, texto6, logradouro,cep,fone : string;//Para recortar parte da descrição do produto,nome
  total, porc, totgeral : double;
  porta : string;
  vNomeCliente, vEnderecoCliente, vFonecli : string;
Begin
  {------Pesquisando na tab Parametro Centro de Receita Padrão ---------}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'PORTA IMPRESSORA';
  dm.cds_parametro.Open;
  if not dm.cds_parametro.IsEmpty then
  begin
    porta := dm.cds_parametroDADOS.AsString;
  end
  else
  begin
    dm.cds_parametro.Append;
    dm.cds_parametroDESCRICAO.AsString := 'Porta usada para impressoras de CUPOM';
    dm.cds_parametroPARAMETRO.AsString := 'PORTA IMPRESSORA';
    dm.cds_parametroDADOS.AsString := 'LPT1:';
    dm.cds_parametro.ApplyUpdates(0);
    porta := 'LPT1:';
  end;
  // Imprimindo
  if (not dm.cds_empresa.Active) then
    dm.cds_empresa.Open;
  {----- aqui monto o endereço-----}
  Texto  := '                NINFAS N. CLUB                ' ;
  Texto1 := '----------------------------------------------' ;
  Texto2 := '              LIBERACAO DE QUARTO             ' ;
  Texto3 := '         ' + DateTimeToStr(Now);
  {-----------------------------------------------------------}
  {-------------------Imprimi Cabeçalho-----------------------}
  // Para gravar em arquivo
  //OpenDialog1.Execute;
  //AssignFile(IMPRESSORA, OpenDialog1.FileName);
  AssignFile(IMPRESSORA,porta);
  Rewrite(IMPRESSORA);
  {Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);  }
  Writeln(Impressora, c10cpi, texto);
  Writeln(Impressora, c10cpi, texto1);
  Writeln(IMPRESSORA);
  Writeln(Impressora, c10cpi, texto2);
  Writeln(IMPRESSORA);
  Writeln(Impressora, c10cpi, texto3);  //DATA
  Writeln(Impressora, c10cpi + Format('%-38s',['----------------------------------------------']));
  Writeln(Impressora, c10cpi + Format('%-38s',['          ' + cbSuites.Text]));        //SUITE
  Writeln(Impressora, c10cpi + Format('%-38s',['----------------------------------------------']));
  Writeln(Impressora, c10cpi + Format('%-38s',['------------------ATENDENTE-------------------']));
  Writeln(Impressora, c10cpi + Format('%-38s',[cbGarota.Text]));                       //GAROTA
  Writeln(Impressora, c10cpi + Format('%-38s',['----------------------------------------------']));
  Writeln(Impressora, c10cpi + Format('%-38s',['          ' + fControle.Edit4.Text])); //CAIXA
  Texto3 := '(01)DIARIA  ' + FloatToStr(cds_procQTDE_PCT.Value) + '-' + FormatDateTime('hh:MM', cds_Mov_detHORATERMINO.AsDateTime);
  Writeln(Impressora, c10cpi, '      ' + texto3);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  CloseFile(IMPRESSORA);
end;

procedure TfProcura_prod2.edPorcentoChange(Sender: TObject);
var vUnit : Double;
begin
    if (cds_procPRECO_VENDA.Value > 0) then
      Edit4.Value := cds_procPRECO_VENDA.Value
    else
      Edit4.Value := vUnitario;
      
    if (edPorcento.Value > 0) then
        Edit4.Value := Edit4.Value * (1 + (edPorcento.Value / 100));

end;

procedure TfProcura_prod2.pedeacesso;
var valor, valorminimo, diferenca : double;
    vMudouValor : String;
    vUsuLog : integer;
begin
    if Dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'CONTAADMINISTRADOR';
    dm.cds_parametro.Open;
    vAdm := dm.cds_parametroDADOS.AsString;
    dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'AUTORIZACOMANDA';
    dm.cds_parametro.Open;
    vUsercaixa := dm.cds_parametroDADOS.AsString;
    dm.cds_parametro.Close;
    if MessageDlg('Valor menor que Preço minimo permitido (R$' +
         formatfloat('#,##0.00',PrecoMinimoVALORMINIMO.Value) + '-Manter o Valor ?)', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
    begin
      fDlgLogin := TfDlgLogin.Create(Application);
      try
        fDlgLogin.ShowModal;
      finally
        fDlgLogin.free;
      end;
      vUsuLog := usulog;
      if (sPermissao.Active) then
        sPermissao.Close;
      sPermissao.Params[0].AsInteger := usuautorizacao;
      sPermissao.Open;
      if ((sPermissaoUCPROFILE.AsInteger = StrToInt(vAdm)) or (sPermissaoUCPROFILE.AsInteger = StrToInt(vUsercaixa))) then
      begin
        vMudouValor := 'SIM';
        varPermissao := 'Sim';
        fAtsAdmin.UserControlComercial.VerificaLogin(nome_user,senha_user);
      end
      else
      begin
        MessageDlg('Usuario não tem permissão para '+#13+#10+'      executar essa operação', mtWarning, [mbOK], 0);
        sPermissao.Close;
        Edit4.Value := cds_procPRECO_VENDA.Value;
        Edit4.SetFocus;
        exit;
      end;
    end
    else
    begin
       varPermissao := 'Não';
       exit;
    end;
end;

procedure TfProcura_prod2.Edit4Exit(Sender: TObject);
begin
  if (Edit4.Value > 0) then
    JvCalcEdit1.Value := Edit3.Value * Edit4.Value;
  Edit4.Color := clWindow;  
end;

procedure TfProcura_prod2.Edit4Click(Sender: TObject);
begin
  vUnitario := Edit4.Value;
end;

procedure TfProcura_prod2.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
 vUnitario := 0;
 if (key = #13) then
 begin
   vUnitario := Edit4.Value;
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfProcura_prod2.edPorcentoEnter(Sender: TObject);
begin
   if (vUnitario = 0) then
     vUnitario := Edit4.Value;
  edPorcento.Color := clMoneyGreen;     
end;

procedure TfProcura_prod2.evCodProEnter(Sender: TObject);
begin
  evCodPro.Color := clMoneyGreen;
end;

procedure TfProcura_prod2.EvDBFind1Enter(Sender: TObject);
begin
  EvDBFind1.Color := clMoneyGreen;
end;

procedure TfProcura_prod2.evCodProExit(Sender: TObject);
begin
   Edit3.Text := '1';
   if (Edit4.Text = '') then
     Edit4.Text := '0';
   Edit4.Text := Format('%-6.2n',[cds_procPRECO_VENDA.value]);
  evCodPro.Color := clWindow;
end;

procedure TfProcura_prod2.Edit3Enter(Sender: TObject);
begin
  Edit3.Color := clMoneyGreen;
end;

procedure TfProcura_prod2.Edit4Enter(Sender: TObject);
begin
  Edit4.Color := clMoneyGreen;
end;

procedure TfProcura_prod2.edPorcentoExit(Sender: TObject);
begin
  edPorcento.Color := clWindow;
end;

procedure TfProcura_prod2.cbGarcomEnter(Sender: TObject);
begin
  cbGarcom.Color := clMoneyGreen;
end;

procedure TfProcura_prod2.cbGarcomExit(Sender: TObject);
begin
  cbGarcom.Color := clWindow;
end;

procedure TfProcura_prod2.cbGarotaEnter(Sender: TObject);
begin
  cbGarota.Color := clMoneyGreen;
end;

procedure TfProcura_prod2.cbGarotaExit(Sender: TObject);
begin
  cbGarota.Color := clWindow;
end;

procedure TfProcura_prod2.cbSuitesEnter(Sender: TObject);
begin
  cbSuites.Color := clMoneyGreen;
end;

procedure TfProcura_prod2.cbSuitesExit(Sender: TObject);
begin
  cbSuites.Color := clWindow;
end;

procedure TfProcura_prod2.ComboBox1Enter(Sender: TObject);
begin
  ComboBox1.Color := clMoneyGreen;
end;

procedure TfProcura_prod2.ComboBox1Exit(Sender: TObject);
begin
  ComboBox1.Color := clWindow;
end;

procedure TfProcura_prod2.ComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfProcura_prod2.imprimirComissao;
const
cJustif = #27#97#51;
cEject = #12;
{ Tamanho da fonte }
c10cpi = #18;
c12cpi = #27#77;
c17cpi = #15;
cIExpandido = #14;
cFExpandido = #20;
{ Formatação da fonte }
cINegrito = #27#71;
cFNegrito = #27#72;
cIItalico = #27#52;
cFItalico = #27#53;

var
  IMPRESSORA:TextFile;
  Texto,Texto1,Texto2,Texto3,Texto4,texto5, texto6, texto7, logradouro,cep,fone : string;//Para recortar parte da descrição do produto,nome
  total, porc, totgeral  : double;
  porta : string;
  vNomeCliente, vEnderecoCliente, vFonecli : string;
  iduser : integer;
Begin
   if (not sgarcom.Active) then
     sgarcom.Open;
   if (sgarcom.Locate('NOME_FUNCIONARIO',cbGarcom.Text, [loCaseInsensitive])) then
      iduser := sgarcomCOD_FUNCIONARIO.AsInteger
   else
   begin
      MessageDlg('Garçom não Cadastrado', mtError, [mbOK], 0);
      exit;
   end;
   sgarcom.Close;
  if (sComissao.Active) then
    sComissao.Close;
  sComissao.Params[0].AsInteger := iduser;
  sComissao.Params[1].AsInteger := cds_procCODPRODUTO.AsInteger;
  sComissao.Open;
  if (sComissao.IsEmpty) then
    exit;
  porc := sComissaoVALORCOMISSAO.Value;
  {------Pesquisando na tab Parametro Centro de Receita Padrão ---------}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'PORTA IMPRESSORA';
  dm.cds_parametro.Open;
  if not dm.cds_parametro.IsEmpty then
  begin
    porta := dm.cds_parametroDADOS.AsString;
  end
  else
  begin
    dm.cds_parametro.Append;
    dm.cds_parametroDESCRICAO.AsString := 'Porta usada para impressoras de CUPOM';
    dm.cds_parametroPARAMETRO.AsString := 'PORTA IMPRESSORA';
    dm.cds_parametroDADOS.AsString := 'LPT1:';
    dm.cds_parametro.ApplyUpdates(0);
    porta := 'LPT1:';
  end;
  // Imprimindo
  if (not dm.cds_empresa.Active) then
    dm.cds_empresa.Open;
  {----- aqui monto o endereço-----}
  Texto  := '                  NINFAS N. CLUB              ' ;
  Texto1 := '----------------------------------------------' ;
  Texto2 := '                     COMISSAO                 ' ;
  Texto7 := fControle.cMesasNOMECLIENTE.AsString;
  Texto3 := fControle.Edit4.Text + '          Gc : ' + cbGarcom.Text;
  Texto4 := 'Dia : ' + DateTimeToStr(Now);
  Texto5 := '----------------------------------------------';
  totgeral := Edit4.Value;
  Texto6 := Edit3.Text + ' ' + cds_procPRODUTO.AsString + Format('  %-6.2n',[porc * Edit3.Value]);
  //Texto6 := FloatToStr(cds_procQTDE_PCT.AsFloat) + ' ' + cds_procPRODUTO.AsString + Format('  %-6.2n',[porc]);
  {-----------------------------------------------------------}
  {-------------------Imprimi Cabeçalho-----------------------}
  // Para gravar em arquivo
  //OpenDialog1.Execute;
  //AssignFile(IMPRESSORA, OpenDialog1.FileName);
  AssignFile(IMPRESSORA,porta);
  Rewrite(IMPRESSORA);
  Writeln(Impressora, c10cpi, texto);
  Writeln(Impressora, c10cpi, texto1);
  Writeln(Impressora, c10cpi, texto2);
  Writeln(Impressora, c10cpi + Format('%-38s',['----------------------------------------------']));
  Writeln(Impressora, c10cpi, texto7);  //DATA
  Writeln(Impressora, c10cpi, texto3);  //DATA
  Writeln(Impressora, c10cpi, texto4);  //DATA
  Writeln(Impressora, c10cpi, texto5);  //DATA
  Writeln(Impressora, c10cpi, texto6);  //DATA
  Writeln(Impressora, c10cpi + Format('%-38s',['----------------------------------------------']));
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);

  Writeln(IMPRESSORA);
  CloseFile(IMPRESSORA);
end;

procedure TfProcura_prod2.GeraDespColaborador;
var  strSql : string;
     porc : Double;
     idFornecedor, idpag : integer;
     codCaixa : integer;
     vdata : tDate;
begin
    if (sCaixa.Active) then
      sCaixa.Close;
    sCaixa.Params[0].AsString := MICRO;
    sCaixa.Params[1].AsString := 'A'; //Caixa Aberto
    sCaixa.Open;
    codCaixa := sCaixaIDCAIXACONTROLE.AsInteger;
    vData := sCaixaDATAABERTURA.Value;
    sCaixa.Close;

  if (not sAtendente.Active) then
      sAtendente.Open;
  sAtendente.Locate('NOME_FUNCIONARIO', cbGarota.Text, [loCaseInsensitive]);
  idFornecedor := sAtendenteCODFORNECEDOR.AsInteger;
  sAtendente.Close;
  if (idFornecedor > 0) then
  begin
    if (sprod.Active) then
      sProd.Close;
    sProd.Params[0].AsInteger := cds_procCODPRODUTO.AsInteger;
    sProd.Open;
    porc := sProdVALORCOMISSAO.Value;
    sProd.Close;
    if (porc > 0) then
    begin
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_COD_PAGAMENTO, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      idpag := dm.c_6_genidCODIGO.AsInteger;
      dm.c_6_genid.Close;
      // Mudo a natureza do Movimento
      strSql := 'INSERT INTO PAGAMENTO ' +
        '(CODPAGAMENTO, TITULO, EMISSAO, CODFORNECEDOR, DATAVENCIMENTO, STATUS , VIA, FORMAPAGAMENTO, ' +
        'CODALMOXARIFADO, CODCOMPRADOR, CODUSUARIO, DATASISTEMA, VALOR_PRIM_VIA, ' +
        'VALOR_RESTO, VALORTITULO, JUROS, DESCONTO, PERDA, FUNRURAL, PARCELAS, ' +
        'TROCA, CAIXA, DATACONSOLIDA, CONTACREDITO, CODORIGEM, SITUACAO, CODORIGEM1) VALUES (';
      strSql := strSql + IntToStr(idpag);       // CodPagamento
      strSql := strSql + ', ' + IntToStr(idpag); // Titulo
      strSql := strSql + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', vdata));// Emissão
      strSql := strSql + ', ' + IntToStr(idFornecedor); //Fornecedor
      strSql := strSql + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', vdata));// Vencimento
      strSql := strSql + ', ' + QuotedStr('5-'); //Status
      strSql := strSql + ', ' + QuotedStr('1');// via
      strSql := strSql + ', ' + QuotedStr('1'); //Formapgto
      strSql := strSql + ', ' + '51'; //CODALMOXARIFADO
      strSql := strSql + ', ' + '1'; //CodComprador
      strSql := strSql + ', ' + '1'; //CodUsuario
      strSql := strSql + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', vdata));// DataSistema
      DecimalSeparator := '.';
      strSql := strSql + ', ' + FloatToStr(porc); //Total Comissao
      strSql := strSql + ', ' + FloatToStr(porc); //Total Comissao
      strSql := strSql + ', ' + FloatToStr(porc); //Total Comissao
      strSql := strSql + ', 0';
      strSql := strSql + ', 0';
      strSql := strSql + ', 0';
      strSql := strSql + ', 0';
      strSql := strSql + ', 1';
      strSql := strSql + ', 0';
      // CAIXA
      if (not sPlano1.Active) then
        sPlano1.Open;
      sPlano1.Locate('NOME',fControle.Edit4.Text, [loCaseInsensitive]);
      strSql := strSql + ', ' + IntToStr(sPlano1CODIGO.AsInteger); //Status
      sPlano1.Close;
      strSql := strSql + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', vdata));// Data Consolida
      if (not sContaComissao.Active) then
         sContaComissao.Open;
      if (sConta.Active) then
         sConta.Close;
      sConta.Params[0].AsString := sContaComissaoDADOS.AsString;
      sConta.Open;
      strSql := strSql + ', ' + IntToStr(sContaCODIGO.AsInteger); //ContaCredito
      strSql := strSql + ', ' + IntToStr(cds_Mov_detCODDETALHE.AsInteger);
      strSql := strSql + ', 0';
      strSql := strSql + ',' + IntToStr(codCaixa);
      strSql := strSql + ')';
      dm.sqlsisAdimin.StartTransaction(TD);
      dm.sqlsisAdimin.ExecuteDirect(strSql);
      Try
         dm.sqlsisAdimin.Commit(TD);
      except
         dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes
         MessageDlg('Erro no sistema, a comissão não foi gerada.', mtError, [mbOk], 0);
      end;
    end;
  end;
end;

procedure TfProcura_prod2.GeraDespGarcom;
var  strSql : string;
     porc : Double;
     idFornecedor, iduser, idpag : integer;
     codCaixa : integer;
begin
    if (sCaixa.Active) then
      sCaixa.Close;
    sCaixa.Params[0].AsString := MICRO;
    sCaixa.Params[1].AsString := 'A'; //Caixa Aberto
    sCaixa.Open;
    codCaixa := sCaixaIDCAIXACONTROLE.AsInteger;
    sCaixa.Close;
  if (not sgarcom.Active) then
      sgarcom.Open;
  sgarcom.Locate('NOME_FUNCIONARIO', cbGarcom.Text, [loCaseInsensitive]);
  idFornecedor := sgarcomCODFORNECEDOR.AsInteger;
  iduser := sgarcomCOD_FUNCIONARIO.AsInteger;
  sgarcom.Close;
  if (idFornecedor > 0) then
  begin
    if (sComissao.Active) then
      sComissao.Close;
    sComissao.Params[0].AsInteger := iduser;
    sComissao.Params[1].AsInteger := cds_procCODPRODUTO.AsInteger;
    sComissao.Open;
    porc := sComissaoVALORCOMISSAO.Value;
    sComissao.Close;
    if (porc > 0) then
    begin
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_COD_PAGAMENTO, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      idpag := dm.c_6_genidCODIGO.AsInteger;
      dm.c_6_genid.Close;
      // Mudo a natureza do Movimento
      strSql := 'INSERT INTO PAGAMENTO ' +
        '(CODPAGAMENTO, TITULO, EMISSAO, CODFORNECEDOR, DATAVENCIMENTO, STATUS , VIA, FORMAPAGAMENTO, ' +
        'CODALMOXARIFADO, CODCOMPRADOR, CODUSUARIO, DATASISTEMA, VALOR_PRIM_VIA, ' +
        'VALOR_RESTO, VALORTITULO, JUROS, DESCONTO, PERDA, FUNRURAL, PARCELAS, ' +
        'TROCA, CAIXA, DATACONSOLIDA, CONTACREDITO, CODORIGEM, SITUACAO, CODORIGEM1) VALUES (';
      strSql := strSql + IntToStr(idpag);       // CodPagamento
      strSql := strSql + ', ' + IntToStr(idpag); // Titulo
      strSql := strSql + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', Now));// Emissão
      strSql := strSql + ', ' + IntToStr(idFornecedor); //Fornecedor
      strSql := strSql + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', Now));// Vencimento
      strSql := strSql + ', ' + QuotedStr('5-'); //Status
      strSql := strSql + ', ' + QuotedStr('1');// via
      strSql := strSql + ', ' + QuotedStr('1'); //Formapgto
      strSql := strSql + ', ' + '51'; //CODALMOXARIFADO
      strSql := strSql + ', ' + '1'; //CodComprador
      strSql := strSql + ', ' + '1'; //CodUsuario
      strSql := strSql + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', Now));// DataSistema
      DecimalSeparator := '.';
      strSql := strSql + ', ' + FloatToStr(porc); //Total Comissao
      strSql := strSql + ', ' + FloatToStr(porc); //Total Comissao
      strSql := strSql + ', ' + FloatToStr(porc); //Total Comissao
      strSql := strSql + ', 0';
      strSql := strSql + ', 0';
      strSql := strSql + ', 0';
      strSql := strSql + ', 0';
      strSql := strSql + ', 1';
      strSql := strSql + ', 0';
      // CAIXA
      if (not sPlano1.Active) then
        sPlano1.Open;
      sPlano1.Locate('NOME',fControle.Edit4.Text, [loCaseInsensitive]);
      strSql := strSql + ', ' + IntToStr(sPlano1CODIGO.AsInteger); //Status
      sPlano1.Close;
      strSql := strSql + ', ' + QuotedStr(FormatDateTime('mm/dd/yyyy', Now));// Data Consolida
      if (not sContaComissao.Active) then
         sContaComissao.Open;
      if (sConta.Active) then
         sConta.Close;
      sConta.Params[0].AsString := sContaComissaoDADOS.AsString;
      sConta.Open;
      strSql := strSql + ', ' + IntToStr(sContaCODIGO.AsInteger); //ContaCredito
      strSql := strSql + ', ' + IntToStr(cds_Mov_detCODDETALHE.AsInteger);
      strSql := strSql + ', 0';
      strSql := strSql + ',' + IntToStr(codCaixa);          
      strSql := strSql + ')';
      dm.sqlsisAdimin.StartTransaction(TD);
      dm.sqlsisAdimin.ExecuteDirect(strSql);
      Try
         dm.sqlsisAdimin.Commit(TD);
      except
         dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes
         MessageDlg('Erro no sistema, a comissão não foi gerada.', mtError, [mbOk], 0);
      end;
    end;
  end;
end;

end.
