unit uRatearConta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, SqlExpr, Provider, DB, DBClient, StdCtrls, Buttons,
  Grids, DBGrids, JvExDBGrids, JvDBGrid, Mask, JvExMask, JvToolEdit,
  JvBaseEdits, ExtCtrls, Menus, JvSpin;

type
  TfRatearConta = class(TForm)
    Panel1: TPanel;
    edComanda: TEdit;
    cbCliente: TComboBox;
    edRateio: TJvCalcEdit;
    edTotal: TJvCalcEdit;
    lbCliente: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel2: TPanel;
    JvDBGrid1: TJvDBGrid;
    BitBtn6: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    dstMesas: TDataSource;
    cMesas: TClientDataSet;
    cMesasNOMECLIENTE: TStringField;
    cMesasCODCLIENTE: TIntegerField;
    cMesasTOTALMOVIMENTO: TFloatField;
    cMesasCODMOVIMENTO: TIntegerField;
    cMesasCODALMOXARIFADO: TIntegerField;
    cMesasCODNATUREZA: TSmallintField;
    dMesas: TDataSetProvider;
    sMesas: TSQLDataSet;
    sMesasNOMECLIENTE: TStringField;
    sMesasCODCLIENTE: TIntegerField;
    sMesasCODMOVIMENTO: TIntegerField;
    sMesasTOTALMOVIMENTO: TFloatField;
    sMesasCODALMOXARIFADO: TIntegerField;
    sMesasCODNATUREZA: TSmallintField;
    EdMovimento: TEdit;
    sMesasCODMOVRATEIO: TIntegerField;
    cMesasCODMOVRATEIO: TIntegerField;
    sclientes: TSQLDataSet;
    sclientesNOMECLIENTE: TStringField;
    sclientesCODCLIENTE: TIntegerField;
    sclientesCODMOVIMENTO: TIntegerField;
    sclientesTOTALMOVIMENTO: TFloatField;
    sclientesCODALMOXARIFADO: TIntegerField;
    sclientesCODNATUREZA: TSmallintField;
    sclientesCODMOVRATEIO: TIntegerField;
    smov: TSQLDataSet;
    dMov: TDataSetProvider;
    cMov: TClientDataSet;
    smovNOMECLIENTE: TStringField;
    smovCODCLIENTE: TIntegerField;
    smovCODMOVIMENTO: TIntegerField;
    smovTOTALMOVIMENTO: TFloatField;
    smovCODALMOXARIFADO: TIntegerField;
    smovCODNATUREZA: TSmallintField;
    smovCODMOVRATEIO: TIntegerField;
    cMovCODMOVIMENTO: TIntegerField;
    cMovNOMECLIENTE: TStringField;
    cMovCODCLIENTE: TIntegerField;
    cMovTOTALMOVIMENTO: TFloatField;
    cMovCODALMOXARIFADO: TIntegerField;
    cMovCODNATUREZA: TSmallintField;
    cMovCODMOVRATEIO: TIntegerField;
    smovVALORRATEIO: TFloatField;
    cMovVALORRATEIO: TFloatField;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    Excluir1: TMenuItem;
    ExcluirItem1: TMenuItem;
    edparcela: TJvSpinEdit;
    Label4: TLabel;
    sds_Mov_Det: TSQLDataSet;
    sds_Mov_DetCODDETALHE: TIntegerField;
    sds_Mov_DetCODMOVIMENTO: TIntegerField;
    sds_Mov_DetCODPRODUTO: TIntegerField;
    sds_Mov_DetICMS: TFloatField;
    sds_Mov_DetPRECO: TFloatField;
    sds_Mov_DetQUANTIDADE: TFloatField;
    sds_Mov_DetPRODUTO: TStringField;
    sds_Mov_DetUN: TStringField;
    sds_Mov_DetQTDE_ALT: TFloatField;
    sds_Mov_DetBAIXA: TStringField;
    sds_Mov_DetCONTROLE: TSmallintField;
    sds_Mov_DetCODALMOXARIFADO: TIntegerField;
    sds_Mov_DetALMOXARIFADO: TStringField;
    sds_Mov_DetVALORUNITARIOATUAL: TFloatField;
    sds_Mov_DetCOD_COMISSAO: TIntegerField;
    sds_Mov_DetCONTA_DESPESA: TStringField;
    sds_Mov_DetCODPRO: TStringField;
    sds_Mov_DetQTDE_PCT: TFloatField;
    sds_Mov_DetCOD_BARRA: TStringField;
    sds_Mov_DetLOCALIZACAO: TStringField;
    sds_Mov_DetESTOQUEATUAL: TFloatField;
    sds_Mov_DetVALTOTAL: TFloatField;
    sds_Mov_DetPRECOCUSTO: TFloatField;
    sds_Mov_DetDESCPRODUTO: TStringField;
    sds_Mov_DetLOTE: TStringField;
    sds_Mov_DetCODIGO: TIntegerField;
    sds_Mov_DetCODIGO1: TIntegerField;
    sds_Mov_DetPERIODOINI: TSQLTimeStampField;
    sds_Mov_DetPERIODOFIM: TSQLTimeStampField;
    dsp_Mov_det: TDataSetProvider;
    cds_Mov_det: TClientDataSet;
    cds_Mov_detCODDETALHE: TIntegerField;
    cds_Mov_detCODMOVIMENTO: TIntegerField;
    cds_Mov_detCODPRODUTO: TIntegerField;
    cds_Mov_detICMS: TFloatField;
    cds_Mov_detPRECO: TFloatField;
    cds_Mov_detQUANTIDADE: TFloatField;
    cds_Mov_detPRODUTO: TStringField;
    cds_Mov_detUN: TStringField;
    cds_Mov_detValorTotal: TCurrencyField;
    cds_Mov_detQTDE_ALT: TFloatField;
    cds_Mov_detBAIXA: TStringField;
    cds_Mov_detCONTROLE: TSmallintField;
    cds_Mov_detCODALMOXARIFADO: TIntegerField;
    cds_Mov_detALMOXARIFADO: TStringField;
    cds_Mov_detVALORUNITARIOATUAL: TFloatField;
    cds_Mov_detCOD_COMISSAO: TIntegerField;
    cds_Mov_detCONTA_DESPESA: TStringField;
    cds_Mov_detCODPRO: TStringField;
    cds_Mov_detQTDE_PCT: TFloatField;
    cds_Mov_detCOD_BARRA: TStringField;
    cds_Mov_detLOCALIZACAO: TStringField;
    cds_Mov_detESTOQUEATUAL: TFloatField;
    cds_Mov_detVALTOTAL: TFloatField;
    cds_Mov_detPRECOCUSTO: TFloatField;
    cds_Mov_detDESCPRODUTO: TStringField;
    cds_Mov_detLOTE: TStringField;
    cds_Mov_detCODIGO: TIntegerField;
    cds_Mov_detCODIGO1: TIntegerField;
    cds_Mov_detPERIODOINI: TSQLTimeStampField;
    cds_Mov_detPERIODOFIM: TSQLTimeStampField;
    sds_Mov_DetCODMOVRATEIO: TIntegerField;
    sds_Mov_DetVALORRATEIO: TFloatField;
    cds_Mov_detCODMOVRATEIO: TIntegerField;
    cds_Mov_detVALORRATEIO: TFloatField;
    sMovDet: TSQLDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    StringField1: TStringField;
    StringField2: TStringField;
    FloatField4: TFloatField;
    StringField3: TStringField;
    SmallintField1: TSmallintField;
    IntegerField4: TIntegerField;
    StringField4: TStringField;
    FloatField5: TFloatField;
    IntegerField5: TIntegerField;
    StringField5: TStringField;
    StringField6: TStringField;
    FloatField6: TFloatField;
    StringField7: TStringField;
    StringField8: TStringField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    StringField9: TStringField;
    StringField10: TStringField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    SQLTimeStampField1: TSQLTimeStampField;
    SQLTimeStampField2: TSQLTimeStampField;
    IntegerField8: TIntegerField;
    FloatField10: TFloatField;
    dMovDet: TDataSetProvider;
    cMovDet: TClientDataSet;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    StringField11: TStringField;
    StringField12: TStringField;
    CurrencyField1: TCurrencyField;
    FloatField14: TFloatField;
    StringField13: TStringField;
    SmallintField2: TSmallintField;
    IntegerField12: TIntegerField;
    StringField14: TStringField;
    FloatField15: TFloatField;
    IntegerField13: TIntegerField;
    StringField15: TStringField;
    StringField16: TStringField;
    FloatField16: TFloatField;
    StringField17: TStringField;
    StringField18: TStringField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    StringField19: TStringField;
    StringField20: TStringField;
    IntegerField14: TIntegerField;
    IntegerField15: TIntegerField;
    SQLTimeStampField3: TSQLTimeStampField;
    SQLTimeStampField4: TSQLTimeStampField;
    IntegerField16: TIntegerField;
    FloatField20: TFloatField;
    edMovDetalhe: TEdit;
    sMovDetNOMECLIENTE: TStringField;
    cMovDetNOMECLIENTE: TStringField;
    DataSource1: TDataSource;
    JvDBGrid2: TJvDBGrid;
    sdscli: TSQLDataSet;
    sdscliCODCLIENTE: TIntegerField;
    dCli: TDataSetProvider;
    scli: TClientDataSet;
    scliCODCLIENTE: TIntegerField;
    sMovAltera: TSQLDataSet;
    dMovAltera: TDataSetProvider;
    cMovAltera: TClientDataSet;
    sMovAlteraCODMOVIMENTO: TIntegerField;
    sMovAlteraTOTALMOVIMENTO: TFloatField;
    sMovAlteraCODMOVRATEIO: TIntegerField;
    sMovAlteraVALORRATEIO: TFloatField;
    cMovAlteraCODMOVIMENTO: TIntegerField;
    cMovAlteraTOTALMOVIMENTO: TFloatField;
    cMovAlteraCODMOVRATEIO: TIntegerField;
    cMovAlteraVALORRATEIO: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure edparcelaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vforme : string;
    procedure rateioproduto;
    procedure camposobrigatorios;
    procedure rateiocomanda;    
    procedure insererateio;
  end;

var
  fRatearConta: TfRatearConta;
  resultado : Boolean;
  idMovimento : integer;
  total, rateio : double;
  
implementation

uses UDm, uProcura_prod2, uControle;

{$R *.dfm}

procedure TfRatearConta.FormShow(Sender: TObject);
begin
  DM.PARCELARATEIO := 0;
  sClientes.Open;
  sClientes.First;
  cbCliente.Items.Clear;
  while not sClientes.Eof do
  begin
     cbCliente.Items.Add(sclientesNOMECLIENTE.AsString);
     sClientes.Next;
  end;
  sClientes.Close;

  cbCliente.SetFocus;
  if (cMesas.Active) then
     cMesas.Close;
  cMesas.Params[0].AsInteger := StrToInt(EdMovimento.Text); // Cod MovRateio
  cMesas.Open;
end;

procedure TfRatearConta.BitBtn6Click(Sender: TObject);
var I :integer;
begin
  camposobrigatorios;

  if (edTotal.Value <= edRateio.Value) then
  begin
    MessageDlg('Rateio efetuado', mtWarning, [mbOK], 0);
    exit;
  end;

  if (resultado = False) then
    exit;
  if (vforme = '') then
  begin
    rateiocomanda;
    if (cMesas.Active) then
      cMesas.Close;
    cMesas.Params[0].AsInteger := StrToInt(EdMovimento.Text);
    cMesas.Open;
  end
  else
  begin
    rateioproduto;
    //Mudo o valor da comanda principal
    cds_Mov_det.Close;
    cds_Mov_det.Params[0].AsInteger := StrToInt(edMovDetalhe.Text);
    cds_Mov_det.Open;
    cds_Mov_det.Edit;
    cds_Mov_detVALORRATEIO.Value := cds_Mov_detVALORRATEIO.Value + edRateio.Value;
    cds_Mov_detVALTOTAL.Value := cds_Mov_detVALTOTAL.Value - edRateio.Value;
    if (cds_Mov_detQUANTIDADE.Value > 1) then
      cds_Mov_detPRECO.Value := cds_Mov_detVALTOTAL.Value / cds_Mov_detQUANTIDADE.Value
    else
      cds_Mov_detPRECO.Value := cds_Mov_detPRECO.Value - edRateio.Value;
    cds_Mov_det.ApplyUpdates(0);
    cds_Mov_det.Close;
    if (cMovDet.Active) then
      cMovDet.Close;
    cMovDet.Params[0].AsInteger := StrToInt(edMovDetalhe.Text);
    cMovDet.Open;
  end;
  cbCliente.SetFocus;

end;

procedure TfRatearConta.BitBtn4Click(Sender: TObject);
begin
  close;
end;

procedure TfRatearConta.BitBtn2Click(Sender: TObject);
var valorrateio : double;
begin
  if (vforme = '') then
  begin
    if (cMov.Active) then
      cMov.Close;
    cMov.Params[0].AsInteger := cMesasCODCLIENTE.AsInteger;
    cMov.Open;
    if (not cMov.IsEmpty) then
    begin
      cMov.Edit;
      cMovCODMOVRATEIO.Clear;
      valorrateio := cMovVALORRATEIO.Value;
      cMovTOTALMOVIMENTO.Value := cMovTOTALMOVIMENTO.Value - valorrateio;
      cMovVALORRATEIO.Clear;
      cMov.ApplyUpdates(0);
      cMov.Close;
      // altero ovalor da comanda principal
      cMov.Params[0].AsInteger := StrToInt(edComanda.Text);
      cMov.Open;
      cmov.Edit;
      cMovTOTALMOVIMENTO.Value := cMovTOTALMOVIMENTO.Value + valorrateio;
      cMovVALORRATEIO.Value := cMovVALORRATEIO.Value - valorrateio;
      cMov.ApplyUpdates(0);
      cMov.Close;
    end;
    if (cMesas.Active) then
       cMesas.Close;
    cMesas.Params[0].AsInteger := StrToInt(EdMovimento.Text); // Cod MovRateio
    cMesas.Open;
  end
  else
  begin
    //Mudo o valor do
    cds_Mov_det.Close;
    cds_Mov_det.Params[0].AsInteger := StrToInt(edMovDetalhe.Text);
    cds_Mov_det.Open;
    cds_Mov_detPRECO.Value := cds_Mov_detPRECO.Value + edRateio.Value;
    cds_Mov_det.ApplyUpdates(0);
    cds_Mov_det.Close;
    {if (cMov.Active) then
      cMov.Close;
    cMov.Params[0].AsInteger := StrToInt(cbCliente.Text);
    cMov.Open;
    if (cMovDet.Active) then
      cMovDet.Close;
    cMovDet.Params[0].AsInteger := cMovCODMOVIMENTO.AsInteger;
    cMov.Close;
    cMovDet.Open;
    }
  end;
end;

procedure TfRatearConta.edparcelaChange(Sender: TObject);
begin
  if (edparcela.AsInteger > 0) then
     edRateio.Value := edTotal.Value / edparcela.Value;
  DM.PARCELARATEIO := edparcela.AsInteger   
end;

procedure TfRatearConta.rateioproduto;
begin
   // Pego o codigo do cliente para rateio
   if (scli.Active) then
      scli.close;
   scli.Params[0].AsString := cbCliente.Text;
   scli.Open;
   // Abro o Movimento do cliente selecionado
   if (cMov.Active) then
     cMov.Close;
   cMov.Params[0].AsInteger := scliCODCLIENTE.AsInteger;
   cMov.Open;
   // Armazeno na variavel o codigo do Movimento do cliente Para Rateio
   idMovimento := cMovCODMOVIMENTO.AsInteger;
   cMov.Close;
   // Insiro o Rateio na comanda selecionada
   insererateio;
   //
   if (cMovAltera.Active) then
      cMovAltera.Close;
   cMovAltera.Params[0].AsInteger := idMovimento;
   cMovAltera.Open;
   cMovAltera.Edit;
   cMovAlteraTOTALMOVIMENTO.Value := cMovAlteraTOTALMOVIMENTO.Value + edRateio.Value;
   //cMovAlteraCODMOVRATEIO.AsInteger := StrToInt(EdMovimento.Text);
   //cMovAlteraVALORRATEIO.Value := edRateio.Value;
   cMovAltera.ApplyUpdates(0);
   edTotal.Value := edTotal.Value - edRateio.Value;

end;

procedure TfRatearConta.camposobrigatorios;
begin
  resultado := True;
  if (cbCliente.Text = '') then
  begin
     MessageDlg('Excolha a Mesa / Comanda para p/ qual vai ratear', mtWarning, [mbOK], 0);
     resultado := False;
  end;
  if (cbCliente.Text = edComanda.Text) then
  begin
     MessageDlg('Não é possivel ratear para o mesmo cliente', mtWarning, [mbOK], 0);
     resultado := False;
  end;
  if (edTotal.Value = 0) then
  begin
     MessageDlg('Total da venda tem que ser maior que 0', mtWarning, [mbOK], 0);
     resultado := False;
  end;
  if (edRateio.Value = 0) then
  begin
     MessageDlg('o Valor para rateio tem que ser maior que 0', mtWarning, [mbOK], 0);
     resultado := False;
  end;
end;

procedure TfRatearConta.rateiocomanda;
begin
   if (scli.Active) then
      scli.close;
   scli.Params[0].AsString := cbCliente.Text;
   scli.Open;
   // Abro o Movimento do cliente selecionado
   if (cMov.Active) then
     cMov.Close;
   cMov.Params[0].AsInteger := scliCODCLIENTE.AsInteger;
   cMov.Open;
   // Armazeno na variavel o codigo do Movimento do cliente Para Rateio
   idMovimento := cMovCODMOVIMENTO.AsInteger;
   cMov.Close;
   // Pego o codigo do cliente para rateio
   if (cMovAltera.Active) then
      cMovAltera.Close;
   cMovAltera.Params[0].AsInteger := idMovimento;
   cMovAltera.Open;
   cMovAltera.Edit;
   cMovAlteraTOTALMOVIMENTO.Value := cMovAlteraTOTALMOVIMENTO.Value + edRateio.Value;
   cMovAlteraCODMOVRATEIO.AsInteger := StrToInt(EdMovimento.Text);
   cMovAlteraVALORRATEIO.Value := edRateio.Value;
   cMovAltera.ApplyUpdates(0);

   if (cMovAltera.Active) then
      cMovAltera.Close;
   cMovAltera.Params[0].AsInteger := StrToInt(EdMovimento.Text);
   cMovAltera.Open;
   cMovAltera.Edit;
   cMovAlteraVALORRATEIO.Value := cMovAlteraVALORRATEIO.Value + edRateio.Value;
   cMovAlteraTOTALMOVIMENTO.Value := cMovAlteraTOTALMOVIMENTO.Value - edRateio.Value;
   cMovAltera.ApplyUpdates(0);

   edTotal.Value := edTotal.Value - edRateio.Value;
   if (cMovDet.Active) then
     cMovDet.Close;
   cMovDet.Params[0].AsInteger := StrToInt(EdMovimento.Text);
   cMovDet.Open;
end;

procedure TfRatearConta.insererateio;
begin
   cds_Mov_det.Open;
   cds_Mov_det.Append;
   if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
   dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOVDET, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
   dm.c_6_genid.Open;
   cds_Mov_detCODDETALHE.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
   dm.c_6_genid.Close;
   cds_Mov_detCODMOVRATEIO.AsInteger := StrToInt(edMovDetalhe.Text);
   cds_Mov_detCODMOVIMENTO.AsInteger := idMovimento;
   cds_Mov_detCODPRODUTO.AsInteger := fProcura_prod2.cds_Mov_detCODPRODUTO.AsInteger;
   cds_Mov_detCODPRO.AsString := fProcura_prod2.cds_Mov_detCODPRO.AsString;
   cds_Mov_detPRODUTO.Value := fProcura_prod2.cds_Mov_detPRODUTO.Value;
   cds_Mov_detDESCPRODUTO.Value := fProcura_prod2.cds_Mov_detPRODUTO.Value;
   cds_Mov_detQUANTIDADE.AsFloat := 1;
   cds_Mov_detPRECO.AsFloat := edRateio.Value;
   cds_Mov_detVALORRATEIO.AsFloat := edRateio.Value;
   cds_Mov_detUN.AsString := fProcura_prod2.cds_Mov_detUN.AsString;
   cds_Mov_detPRECOCUSTO.AsFloat := fProcura_prod2.cds_Mov_detPRECOCUSTO.AsFloat;
   cds_Mov_detCODALMOXARIFADO.AsInteger := 0;
   if (not fProcura_prod2.cds_Mov_detCODIGO.IsNull) then
      cds_Mov_detCODIGO.AsInteger := fProcura_prod2.cds_Mov_detCODIGO.AsInteger;
   if (not fProcura_prod2.cds_Mov_detCODIGO1.IsNull) then
      cds_Mov_detCODIGO1.AsInteger := fProcura_prod2.cds_Mov_detCODIGO1.AsInteger;
   cds_Mov_det.ApplyUpdates(0);
end;

end.
