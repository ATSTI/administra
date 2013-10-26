unit uClassificacaoFiscalProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, FMTBcd, Provider, DBClient, DB, SqlExpr, Menus,
  XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel, Grids, DBGrids, Mask,
  DBCtrls;

type
  TfClassificacaoFIscalProduto = class(TfPai_new)
    sdsClassFisc: TSQLDataSet;
    cdsClassFisc: TClientDataSet;
    dspClassFisc: TDataSetProvider;
    cdsClassFiscCOD_PROD: TIntegerField;
    cdsClassFiscCFOP: TStringField;
    cdsClassFiscUF: TStringField;
    cdsClassFiscICMS_SUBST: TFloatField;
    cdsClassFiscICMS_SUBST_IC: TFloatField;
    cdsClassFiscICMS_SUBST_IND: TFloatField;
    cdsClassFiscICMS: TFloatField;
    cdsClassFiscICMS_BASE: TFloatField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    DBGrid1: TDBGrid;
    Label9: TLabel;
    sdsClassFiscCOD_PROD: TIntegerField;
    sdsClassFiscCFOP: TStringField;
    sdsClassFiscUF: TStringField;
    sdsClassFiscICMS_SUBST: TFloatField;
    sdsClassFiscICMS_SUBST_IC: TFloatField;
    sdsClassFiscICMS_SUBST_IND: TFloatField;
    sdsClassFiscICMS: TFloatField;
    sdsClassFiscICMS_BASE: TFloatField;
    sdsClassFiscCODPRO: TStringField;
    cdsClassFiscCODPRO: TStringField;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    sdsClassFiscCST: TStringField;
    cdsClassFiscCST: TStringField;
    sdsClassFiscIPI: TFloatField;
    cdsClassFiscIPI: TFloatField;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    sdsClassFiscCSOSN: TStringField;
    cdsClassFiscCSOSN: TStringField;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    Label17: TLabel;
    DBEdit16: TDBEdit;
    sdsClassFiscCSTIPI: TStringField;
    sdsClassFiscCSTPIS: TStringField;
    sdsClassFiscCSTCOFINS: TStringField;
    sdsClassFiscPIS: TFloatField;
    sdsClassFiscCOFINS: TFloatField;
    cdsClassFiscCSTIPI: TStringField;
    cdsClassFiscCSTPIS: TStringField;
    cdsClassFiscCSTCOFINS: TStringField;
    cdsClassFiscPIS: TFloatField;
    cdsClassFiscCOFINS: TFloatField;
    BitBtn1: TBitBtn;
    gbProduto: TGroupBox;
    edProdCopiar: TEdit;
    btnExecutaCopia: TBitBtn;
    sdsProdCopia: TSQLDataSet;
    dspProdCopia: TDataSetProvider;
    cdsProdCopia: TClientDataSet;
    cdsProdCopiaCOD_PROD: TIntegerField;
    cdsProdCopiaCFOP: TStringField;
    cdsProdCopiaUF: TStringField;
    cdsProdCopiaICMS_SUBST: TFloatField;
    cdsProdCopiaICMS_SUBST_IC: TFloatField;
    cdsProdCopiaICMS_SUBST_IND: TFloatField;
    cdsProdCopiaICMS: TFloatField;
    cdsProdCopiaICMS_BASE: TFloatField;
    cdsProdCopiaCST: TStringField;
    cdsProdCopiaIPI: TFloatField;
    cdsProdCopiaCSOSN: TStringField;
    cdsProdCopiaCSTIPI: TStringField;
    cdsProdCopiaCSTPIS: TStringField;
    cdsProdCopiaCSTCOFINS: TStringField;
    cdsProdCopiaPIS: TFloatField;
    cdsProdCopiaCOFINS: TFloatField;
    Label18: TLabel;
    Label19: TLabel;
    edNCM: TEdit;
    sdsNcm: TSQLDataSet;
    dspNCM: TDataSetProvider;
    cdsNcm: TClientDataSet;
    sqlTestaSeExiste: TSQLQuery;
    sqlTestaSeExisteCOUNT: TIntegerField;
    cdsNcmCODPRODUTO: TIntegerField;
    cdsNcmFAMILIA: TStringField;
    cdsNcmCATEGORIA: TStringField;
    cdsNcmMARCA: TStringField;
    cdsNcmUNIDADEMEDIDA: TStringField;
    cdsNcmDATAULTIMACOMPRA: TDateField;
    cdsNcmESTOQUEMAXIMO: TFloatField;
    cdsNcmESTOQUEATUAL: TFloatField;
    cdsNcmESTOQUEREPOSICAO: TFloatField;
    cdsNcmESTOQUEMINIMO: TFloatField;
    cdsNcmVALORUNITARIOATUAL: TFloatField;
    cdsNcmVALORUNITARIOANTERIOR: TFloatField;
    cdsNcmICMS: TFloatField;
    cdsNcmCODALMOXARIFADO: TIntegerField;
    cdsNcmIPI: TFloatField;
    cdsNcmCLASSIFIC_FISCAL: TStringField;
    cdsNcmCST: TStringField;
    cdsNcmBASE_ICMS: TFloatField;
    cdsNcmPRODUTO: TStringField;
    cdsNcmPRECOMEDIO: TBCDField;
    cdsNcmCOD_COMISSAO: TIntegerField;
    cdsNcmMARGEM_LUCRO: TFloatField;
    cdsNcmCOD_BARRA: TStringField;
    cdsNcmVALOR_PRAZO: TFloatField;
    cdsNcmTIPO: TStringField;
    cdsNcmCONTA_DESPESA: TStringField;
    cdsNcmCONTA_RECEITA: TStringField;
    cdsNcmCONTA_ESTOQUE: TStringField;
    cdsNcmRATEIO: TStringField;
    cdsNcmCODPRO: TStringField;
    cdsNcmQTDE_PCT: TFloatField;
    cdsNcmPESO_QTDE: TFloatField;
    cdsNcmDATACADASTRO: TSQLTimeStampField;
    cdsNcmMARGEM: TFloatField;
    cdsNcmPRO_COD: TStringField;
    cdsNcmDATAGRAV: TDateField;
    cdsNcmCODFORN: TStringField;
    cdsNcmFOTOPRODUTO: TStringField;
    cdsNcmLOTES: TStringField;
    cdsNcmUSA: TStringField;
    cdsNcmLOCALIZACAO: TStringField;
    cdsNcmTIPOPRECOVENDA: TStringField;
    cdsNcmVALORMINIMO: TFloatField;
    cdsNcmGERADESCONTO: TStringField;
    cdsNcmIMPRIMIR: TStringField;
    cdsNcmVALORCOMISSAO: TFloatField;
    cdsNcmORIGEM: TIntegerField;
    cdsNcmNCM: TStringField;
    cdsNcmIMPRESSORA_1: TStringField;
    cdsNcmIMPRESSORA_2: TStringField;
    cdsNcmIMPRESSORA_3: TStringField;
    cdsNcmQTD: TIntegerField;
    cdsNcmTAM_LOTE: TIntegerField;
    cdsNcmOBS: TStringField;
    BitBtn2: TBitBtn;
    gbGeraUF: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    edCFOPCOPIA: TEdit;
    edUFCopia: TEdit;
    BitBtn3: TBitBtn;
    procedure btnIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnExcluirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnExecutaCopiaClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
  cfcodprod :integer;
  cfcodproduto, cfop, uf :String;
    { Public declarations }
  end;

var
  fClassificacaoFIscalProduto: TfClassificacaoFIscalProduto;

implementation

uses UDm, sCtrlResize;

{$R *.dfm}

procedure TfClassificacaoFIscalProduto.btnIncluirClick(Sender: TObject);
begin
  inherited;
  cdsClassFiscCOD_PROD.AsInteger := cfcodprod;
  cdsClassFiscCODPRO.AsString := cfcodproduto;
  DBEdit2.SetFocus;
end;

procedure TfClassificacaoFIscalProduto.FormShow(Sender: TObject);
begin
  //sCtrlResize.CtrlResize(TForm(fClassificacaoFIscalProduto));
  if(cdsClassFisc.Active) then
    cdsClassFisc.Close;
  cdsClassFisc.Params.ParamByName('pcodpro').AsInteger := cfcodprod;
  cdsClassFisc.open;
  uf   := cdsClassFiscUF.AsString;
  cfop := cdsClassFiscCFOP.AsString;
end;

procedure TfClassificacaoFIscalProduto.btnGravarClick(Sender: TObject);
var str:string;
begin
  DecimalSeparator := '.';
  try
    if (cdsClassFisc.State in [dsEdit]) then
    Begin
      str := 'Update ClassificacaoFiscalProduto set CFOP = ';
      str := str + QuotedStr(cdsClassFiscCFOP.AsString);
      str := str + ', UF = ' + QuotedStr(cdsClassFiscUF.AsString);
      str := str + ', ICMS_SUBST = ' + FloatToStr(cdsClassFiscICMS_SUBST.AsFloat);
      str := str + ', ICMS_SUBST_IC = ' + FloatToStr(cdsClassFiscICMS_SUBST_IC.AsFloat);
      str := str + ', ICMS_SUBST_IND = ' + FloatToStr(cdsClassFiscICMS_SUBST_IND.AsFloat);
      str := str + ', ICMS = ' + FloatToStr(cdsClassFiscICMS.AsFloat);
      str := str + ', ICMS_BASE = ' + FloatToStr(cdsClassFiscICMS_BASE.AsFloat);
      str := str + ', CST = ' + QuotedStr(cdsClassFiscCST.AsString);
      str := str + ', CSOSN = ' + QuotedStr(cdsClassFiscCSOSN.AsString);
      str := str + ', IPI = ' + FloatToStr(cdsClassFiscIPI.AsFloat);
      str := str + ', CSTIPI = ' + QuotedStr(cdsClassFiscCSTIPI.AsString);
      str := str + ', CSTPIS = ' + QuotedStr(cdsClassFiscCSTPIS.AsString);
      str := str + ', CSTCOFINS = ' + QuotedStr(cdsClassFiscCSTCOFINS.AsString);
      str := str + ', PIS = ' + FloatToStr(cdsClassFiscPIS.AsFloat);
      str := str + ', COFINS = ' + FloatToStr(cdsClassFiscCOFINS.AsFloat);

      str := str + ' WHERE COD_PROD = ' + IntToStr(cdsClassFiscCOD_PROD.AsInteger);
      str := str + ' AND CFOP = ' + QuotedStr(CFOP);
      str := str + ' AND UF = ' + QuotedStr(UF);
      dm.sqlsisAdimin.ExecuteDirect(str);
      inherited;
    end
    else
      inherited;
  finally
    DecimalSeparator := ',';
  end;
end;

procedure TfClassificacaoFIscalProduto.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  uf   := cdsClassFiscUF.AsString;
  cfop := cdsClassFiscCFOP.AsString;
end;

procedure TfClassificacaoFIscalProduto.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  uf   := cdsClassFiscUF.AsString;
  cfop := cdsClassFiscCFOP.AsString;
end;

procedure TfClassificacaoFIscalProduto.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  uf   := cdsClassFiscUF.AsString;
  cfop := cdsClassFiscCFOP.AsString;
end;

procedure TfClassificacaoFIscalProduto.DBGrid1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  uf   := cdsClassFiscUF.AsString;
  cfop := cdsClassFiscCFOP.AsString;
end;

procedure TfClassificacaoFIscalProduto.btnExcluirClick(Sender: TObject);
var str: string;
begin
  inherited;
  str := 'DELETE FROM ClassificacaoFiscalProduto ';
  str := str + ' WHERE COD_PROD = ' + IntToStr(cdsClassFiscCOD_PROD.AsInteger);
  str := str + ' AND CFOP = ' + QuotedStr(CFOP);
  str := str + ' AND UF = ' + QuotedStr(UF);
  dm.sqlsisAdimin.ExecuteDirect(str);
end;

procedure TfClassificacaoFIscalProduto.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if (gbProduto.Visible = True) then
    gbProduto.Visible := False
  else
    gbProduto.Visible := True;
end;

procedure TfClassificacaoFIscalProduto.btnExecutaCopiaClick(
  Sender: TObject);
begin
  //inherited;
  if ((edProdCopiar.Text <> '') and (edNCM.Text = '')) then
  begin
    if (cdsProdCopia.Active) then
      cdsProdCopia.Close;
    cdsProdCopia.Params[0].AsString := edProdCopiar.Text;
    cdsProdCopia.Open;
    if (cdsProdCopia.IsEmpty) then
    begin
      MessageDlg('Produto sem Tributação.', mtWarning, [mbOK], 0);
      exit;
    end;
    while not cdsProdCopia.Eof do
    begin
      if (cdsClassFisc.Active = False) then
        cdsClassFisc.Open;
      if (sqlTestaSeExiste.Active) then
        sqlTestaSeExiste.Close;
      sqlTestaSeExiste.Params[0].AsInteger := cfcodprod;
      sqlTestaSeExiste.Params[1].AsString  := cdsProdCopiaUF.AsString;
      sqlTestaSeExiste.Params[2].AsString  := cdsProdCopiaCFOP.AsString;
      sqlTestaSeExiste.Open;

      if (sqlTestaSeExisteCOUNT.AsInteger = 0) then
      begin
        cdsClassFisc.Append;
        cdsClassFiscCOD_PROD.AsInteger     := cfcodprod;
        cdsClassFiscCFOP.AsString          := cdsProdCopiaCFOP.AsString;
        cdsClassFiscUF.AsString            := cdsProdCopiaUF.AsString;
        cdsClassFiscCST.AsString           := cdsProdCopiaCST.AsString;
        cdsClassFiscCSOSN.AsString         := cdsProdCopiaCSOSN.AsString;
        cdsClassFiscCSTIPI.AsString        := cdsProdCopiaCSTIPI.AsString;
        cdsClassFiscCSTPIS.AsString        := cdsProdCopiaCSTPIS.AsString;
        cdsClassFiscCSTCOFINS.AsString     := cdsProdCopiaCSTCOFINS.AsString;
        cdsClassFiscICMS_SUBST.AsFloat     := cdsProdCopiaICMS_SUBST.AsFloat;
        cdsClassFiscICMS_SUBST_IC.AsFloat  := cdsProdCopiaICMS_SUBST_IC.AsFloat;
        cdsClassFiscICMS_SUBST_IND.AsFloat := cdsProdCopiaICMS_SUBST_IND.AsFloat;
        cdsClassFiscICMS.AsFloat           := cdsProdCopiaICMS.AsFloat;
        cdsClassFiscICMS_BASE.AsFloat      := cdsProdCopiaICMS_BASE.AsFloat;
        cdsClassFiscICMS_SUBST.AsFloat     := cdsProdCopiaICMS_SUBST.AsFloat;
        cdsClassFiscIPI.AsFloat            := cdsProdCopiaIPI.AsFloat;
        cdsClassFiscPIS.AsFloat            := cdsProdCopiaPIS.AsFloat;
        cdsClassFiscCOFINS.AsFloat         := cdsProdCopiaCOFINS.AsFloat;
        cdsClassFisc.ApplyUpdates(0);

      end;
      cdsProdCopia.Next;
    end;
  end;
  if ((edProdCopiar.Text <> '') and (edNCM.Text <> '')) then
  begin
    if (cdsProdCopia.Active) then
      cdsProdCopia.Close;
    cdsProdCopia.Params[0].AsString := edProdCopiar.Text;
    cdsProdCopia.Open;

    if (cdsNcm.Active) then
      cdsNcm.Close;
    cdsNcm.Params[0].AsString := edNCM.Text;
    cdsNcm.Open;
    if (cdsNcm.IsEmpty) then
    begin
      MessageDlg('NCM informado não tem Tributação.', mtWarning, [mbOK], 0);
      exit;
    end;

    while not cdsNcm.Eof do
    begin
      while not cdsProdCopia.Eof do
      begin
        if (cdsClassFisc.Active = False) then
          cdsClassFisc.Open;
        if (sqlTestaSeExiste.Active) then
          sqlTestaSeExiste.Close;
        sqlTestaSeExiste.Params[0].AsInteger := cdsNcmCODPRODUTO.AsInteger;
        sqlTestaSeExiste.Params[1].AsString  := cdsProdCopiaUF.AsString;
        sqlTestaSeExiste.Params[2].AsString  := cdsProdCopiaCFOP.AsString;
        sqlTestaSeExiste.Open;

        if (sqlTestaSeExisteCOUNT.AsInteger = 0) then
        begin
          if (cdsClassFisc.Active = False) then
            cdsClassFisc.Open;

          cdsClassFisc.Append;
          cdsClassFiscCOD_PROD.AsInteger     := cdsNcmCODPRODUTO.AsInteger;
          cdsClassFiscCFOP.AsString          := cdsProdCopiaCFOP.AsString;
          cdsClassFiscUF.AsString            := cdsProdCopiaUF.AsString;
          cdsClassFiscCST.AsString           := cdsProdCopiaCST.AsString;
          cdsClassFiscCSOSN.AsString         := cdsProdCopiaCSOSN.AsString;
          cdsClassFiscCSTIPI.AsString        := cdsProdCopiaCSTIPI.AsString;
          cdsClassFiscCSTPIS.AsString        := cdsProdCopiaCSTPIS.AsString;
          cdsClassFiscCSTCOFINS.AsString     := cdsProdCopiaCSTCOFINS.AsString;
          cdsClassFiscICMS_SUBST.AsFloat     := cdsProdCopiaICMS_SUBST.AsFloat;
          cdsClassFiscICMS_SUBST_IC.AsFloat  := cdsProdCopiaICMS_SUBST_IC.AsFloat;
          cdsClassFiscICMS_SUBST_IND.AsFloat := cdsProdCopiaICMS_SUBST_IND.AsFloat;
          cdsClassFiscICMS.AsFloat           := cdsProdCopiaICMS.AsFloat;
          cdsClassFiscICMS_BASE.AsFloat      := cdsProdCopiaICMS_BASE.AsFloat;
          cdsClassFiscICMS_SUBST.AsFloat     := cdsProdCopiaICMS_SUBST.AsFloat;
          cdsClassFiscIPI.AsFloat            := cdsProdCopiaIPI.AsFloat;
          cdsClassFiscPIS.AsFloat            := cdsProdCopiaPIS.AsFloat;
          cdsClassFiscCOFINS.AsFloat         := cdsProdCopiaCOFINS.AsFloat;
          cdsClassFisc.ApplyUpdates(0);
        end;
        cdsProdCopia.Next;
      end;
      cdsProdCopia.First;
      cdsNcm.Next;
    end;

  end;
  gbProduto.Visible := False;
  MessageDlg('Cópia executado com sucesso.', mtInformation, [mbOK], 0);
end;

procedure TfClassificacaoFIscalProduto.BitBtn2Click(Sender: TObject);
begin
  if (gbGeraUF.Visible = True) then
    gbGeraUF.Visible := False
  else
    gbGeraUF.Visible := True;
end;

procedure TfClassificacaoFIscalProduto.BitBtn3Click(Sender: TObject);
var i: integer;
  uf: string;
begin
  if ((edUFCopia.Text <> '') and (edCFOPCOPIA.Text <> '')) then
  begin
    if (cdsProdCopia.Active) then
      cdsProdCopia.Close;
    cdsProdCopia.CommandText := 'SELECT * FROM CLASSIFICACAOFISCALPRODUTO ' +
      ' WHERE COD_PROD  = ' +  IntToStr(cdsClassFiscCOD_PROD.AsInteger) +
      '   AND CFOP      = ' +  QuotedStr(edCFOPCOPIA.Text) +
      '   AND UF        = ' +  QuotedStr(edUFCopia.Text);
    cdsProdCopia.Open;
    if (cdsProdCopia.IsEmpty) then
    begin
      MessageDlg('Tributação não localizada para este produto.', mtWarning, [mbOK], 0);
      exit;
    end;
    for I := 1 to 25 do
    begin
      case I of
        1: uf := 'AC';
        2: uf := 'AM';
        3: uf := 'RR';
        4: uf := 'AP';
        5: uf := 'PA';
        6: uf := 'RO';
        7: uf := 'MT';
        8: uf := 'MA';
        9: uf := 'TO';
        10: uf := 'CE';
        11: uf := 'RN';
        12: uf := 'PB';
        13: uf := 'PE';
        14: uf := 'AL';
        15: uf := 'SE';
        16: uf := 'PI';
        17: uf := 'BA';
        18: uf := 'DF';
        19: uf := 'GO';
        20: uf := 'MG';
        21: uf := 'ES';
        22: uf := 'RJ';
        23: uf := 'PR';
        24: uf := 'SC';
        25: uf := 'RS';
        26: uf := 'MS';
      end;

      if (cdsClassFisc.Active = False) then
        cdsClassFisc.Open;
      if (sqlTestaSeExiste.Active) then
        sqlTestaSeExiste.Close;
      sqlTestaSeExiste.Params[0].AsInteger := cfcodprod;
      sqlTestaSeExiste.Params[1].AsString  := uf;
      sqlTestaSeExiste.Params[2].AsString  := cdsProdCopiaCFOP.AsString;
      sqlTestaSeExiste.Open;

      if (sqlTestaSeExisteCOUNT.AsInteger = 0) then
      begin
        cdsClassFisc.Append;
        cdsClassFiscCOD_PROD.AsInteger     := cfcodprod;
        cdsClassFiscCFOP.AsString          := cdsProdCopiaCFOP.AsString;
        cdsClassFiscUF.AsString            := uf;
        cdsClassFiscCST.AsString           := cdsProdCopiaCST.AsString;
        cdsClassFiscCSOSN.AsString         := cdsProdCopiaCSOSN.AsString;
        cdsClassFiscCSTIPI.AsString        := cdsProdCopiaCSTIPI.AsString;
        cdsClassFiscCSTPIS.AsString        := cdsProdCopiaCSTPIS.AsString;
        cdsClassFiscCSTCOFINS.AsString     := cdsProdCopiaCSTCOFINS.AsString;
        cdsClassFiscICMS_SUBST.AsFloat     := cdsProdCopiaICMS_SUBST.AsFloat;
        cdsClassFiscICMS_SUBST_IC.AsFloat  := cdsProdCopiaICMS_SUBST_IC.AsFloat;
        cdsClassFiscICMS_SUBST_IND.AsFloat := cdsProdCopiaICMS_SUBST_IND.AsFloat;
        cdsClassFiscICMS.AsFloat           := cdsProdCopiaICMS.AsFloat;
        cdsClassFiscICMS_BASE.AsFloat      := cdsProdCopiaICMS_BASE.AsFloat;
        cdsClassFiscICMS_SUBST.AsFloat     := cdsProdCopiaICMS_SUBST.AsFloat;
        cdsClassFiscIPI.AsFloat            := cdsProdCopiaIPI.AsFloat;
        cdsClassFiscPIS.AsFloat            := cdsProdCopiaPIS.AsFloat;
        cdsClassFiscCOFINS.AsFloat         := cdsProdCopiaCOFINS.AsFloat;
        cdsClassFisc.ApplyUpdates(0);

      end;
    end; // fim do for
  end;
  gbGeraUF.Visible := False;
  MessageDlg('Cópia executada com sucesso.', mtInformation, [mbOK], 0);

end;

end.
