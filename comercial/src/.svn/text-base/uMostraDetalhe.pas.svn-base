unit uMostraDetalhe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, XPMenu, Menus, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  Grids, DBGrids, DB, DBClient, Provider, SqlExpr;

type
  TfMostraDetalhe = class(TForm)
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
    sds_Mov_DetLOTE: TStringField;
    sds_Mov_DetDTAFAB: TDateField;
    sds_Mov_DetDTAVCTO: TDateField;
    sds_Mov_DetCODIGO: TStringField;
    sds_Mov_DetLOCALIZACAO: TStringField;
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
    cds_Mov_detLOTE: TStringField;
    cds_Mov_detDTAFAB: TDateField;
    cds_Mov_detDTAVCTO: TDateField;
    cds_Mov_detCODIGO: TStringField;
    cds_Mov_detLOCALIZACAO: TStringField;
    cds_Mov_detTotalPedido: TAggregateField;
    DtSrc1: TDataSource;
    DBGrid1: TDBGrid;
    MMJPanel3: TMMJPanel;
    btnSair: TBitBtn;
    PopupMenu1: TPopupMenu;
    Sair1: TMenuItem;
    XPMenu1: TXPMenu;
    sds_venda: TSQLDataSet;
    dsp_venda: TDataSetProvider;
    cds: TClientDataSet;
    cdsCODVENDA: TIntegerField;
    cdsCODMOVIMENTO: TIntegerField;
    cdsCODCLIENTE: TIntegerField;
    cdsDATAVENDA: TDateField;
    cdsDATAVENCIMENTO: TDateField;
    cdsNUMEROBORDERO: TIntegerField;
    cdsBANCO: TSmallintField;
    cdsCODVENDEDOR: TSmallintField;
    cdsSTATUS: TSmallintField;
    cdsCODUSUARIO: TSmallintField;
    cdsDATASISTEMA: TDateField;
    cdsVALOR: TFloatField;
    cdsNOTAFISCAL: TIntegerField;
    cdsSERIE: TStringField;
    cdsDESCONTO: TFloatField;
    cdsCODCCUSTO: TSmallintField;
    cdsN_PARCELA: TSmallintField;
    cdsOPERACAO: TStringField;
    cdsFORMARECEBIMENTO: TStringField;
    cdsN_DOCUMENTO: TStringField;
    cdsCAIXA: TSmallintField;
    cdsMULTA_JUROS: TFloatField;
    cdsAPAGAR: TFloatField;
    cdsVALOR_PAGAR: TFloatField;
    cdsENTRADA: TFloatField;
    cdsN_BOLETO: TStringField;
    cdsSTATUS1: TStringField;
    cdsCONTROLE: TStringField;
    cdsOBS: TStringField;
    sds_vendaCODVENDA: TIntegerField;
    sds_vendaCODMOVIMENTO: TIntegerField;
    sds_vendaCODCLIENTE: TIntegerField;
    sds_vendaDATAVENDA: TDateField;
    sds_vendaDATAVENCIMENTO: TDateField;
    sds_vendaNUMEROBORDERO: TIntegerField;
    sds_vendaBANCO: TSmallintField;
    sds_vendaCODVENDEDOR: TSmallintField;
    sds_vendaSTATUS: TSmallintField;
    sds_vendaCODUSUARIO: TSmallintField;
    sds_vendaDATASISTEMA: TDateField;
    sds_vendaVALOR: TFloatField;
    sds_vendaNOTAFISCAL: TIntegerField;
    sds_vendaSERIE: TStringField;
    sds_vendaDESCONTO: TFloatField;
    sds_vendaCODCCUSTO: TSmallintField;
    sds_vendaN_PARCELA: TSmallintField;
    sds_vendaOPERACAO: TStringField;
    sds_vendaFORMARECEBIMENTO: TStringField;
    sds_vendaN_DOCUMENTO: TStringField;
    sds_vendaCAIXA: TSmallintField;
    sds_vendaMULTA_JUROS: TFloatField;
    sds_vendaAPAGAR: TFloatField;
    sds_vendaVALOR_PAGAR: TFloatField;
    sds_vendaENTRADA: TFloatField;
    sds_vendaN_BOLETO: TStringField;
    sds_vendaSTATUS1: TStringField;
    sds_vendaCONTROLE: TStringField;
    sds_vendaOBS: TStringField;
    MMJPanel1: TMMJPanel;
    Label2: TLabel;
    Label3: TLabel;
    procedure cds_Mov_detCalcFields(DataSet: TDataSet);
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMostraDetalhe: TfMostraDetalhe;
  codigovenda, codigomoviemtemto : integer;
  
implementation

uses UDm;

{$R *.dfm}

procedure TfMostraDetalhe.cds_Mov_detCalcFields(DataSet: TDataSet);
var valor : double;
begin
  inherited;
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

procedure TfMostraDetalhe.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfMostraDetalhe.FormShow(Sender: TObject);
begin
  if cds.Active then
    cds.Close;
  cds.Params[0].AsInteger := codigovenda;
  cds.Open;
  if cds.IsEmpty then
  begin
    cds.Close;
    exit;
  end
  else
  begin
    codigomoviemtemto := cdsCODMOVIMENTO.AsInteger;
    cds.Close;
  end;
  if cds_Mov_det.Active then
     cds_Mov_det.Close;
  cds_Mov_det.Params[0].AsInteger := codigomoviemtemto;
  cds_Mov_det.Open;
end;

procedure TfMostraDetalhe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if cds_Mov_det.Active then
     cds_Mov_det.Close;
end;

procedure TfMostraDetalhe.FormCreate(Sender: TObject);
begin
  if DM.videoW <> '' then
  begin
   ScreenWidth := StrToInt(DM.videoW);
   ScreenHeight := StrToInt(DM.videoH);
   scaled := true;
   if (screen.width <> ScreenWidth) then
   begin
     height := longint(height) * longint(screen.height) DIV ScreenHeight;
     width := longint(width) * longint(screen.width) DIV ScreenWidth;
     scaleBy(screen.width, ScreenWidth);
   end;
  end;
end;

end.
