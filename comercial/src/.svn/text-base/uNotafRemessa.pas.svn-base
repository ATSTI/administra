unit uNotafRemessa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, XPMenu, DB, Buttons, ExtCtrls,
  MMJPanel, FMTBcd, SqlExpr, Provider, DBClient, RXCtrls, JvExDBGrids,
  JvDBGrid;

type
  TfNotafRemessa = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    MMJPanel2: TMMJPanel;
    MMJPanel1: TMMJPanel;
    btnSair: TBitBtn;
    DtSrc: TDataSource;
    XPMenu1: TXPMenu;
    btnSelecionar: TBitBtn;
    sdsNFfutura: TSQLDataSet;
    sdsNFremessa: TSQLDataSet;
    sdsNFfuturaNOTASERIE: TStringField;
    sdsNFfuturaNUMNF: TIntegerField;
    sdsNFfuturaQUANTIDADE: TFloatField;
    sdsNFfuturaPESOBRUTO: TBCDField;
    sdsNFfuturaPESOLIQUIDO: TBCDField;
    sdsNFfuturaDTAEMISSAO: TDateField;
    sdsNFfuturaCODVENDA: TIntegerField;
    sdsNFfuturaNOTAFISCAL: TIntegerField;
    sdsNFfuturaBASE_ICMS: TFloatField;
    sdsNFfuturaVALOR_ICMS: TFloatField;
    sdsNFfuturaBASE_ICMS_SUBST: TFloatField;
    sdsNFfuturaVALOR_ICMS_SUBST: TFloatField;
    sdsNFfuturaVALOR_PRODUTO: TFloatField;
    sdsNFfuturaVALOR_TOTAL_NOTA: TFloatField;
    sdsNFfuturaCFOP: TStringField;
    sdsNFfuturaCODCLIENTE: TIntegerField;
    sdsNFfuturaCNPJ_CPF: TStringField;
    sdsNFfuturaINSCRICAOESTADUAL: TStringField;
    sdsNFfuturaSERIE: TStringField;
    cdsNFfutura: TClientDataSet;
    dspNFfutura: TDataSetProvider;
    dspNFremessa: TDataSetProvider;
    cdsNFremessa: TClientDataSet;
    DtsrcR: TDataSource;
    cdsNFfuturaNOTASERIE: TStringField;
    cdsNFfuturaNUMNF: TIntegerField;
    cdsNFfuturaQUANTIDADE: TFloatField;
    cdsNFfuturaPESOBRUTO: TBCDField;
    cdsNFfuturaPESOLIQUIDO: TBCDField;
    cdsNFfuturaDTAEMISSAO: TDateField;
    cdsNFfuturaCODVENDA: TIntegerField;
    cdsNFfuturaNOTAFISCAL: TIntegerField;
    cdsNFfuturaBASE_ICMS: TFloatField;
    cdsNFfuturaVALOR_ICMS: TFloatField;
    cdsNFfuturaBASE_ICMS_SUBST: TFloatField;
    cdsNFfuturaVALOR_ICMS_SUBST: TFloatField;
    cdsNFfuturaVALOR_PRODUTO: TFloatField;
    cdsNFfuturaVALOR_TOTAL_NOTA: TFloatField;
    cdsNFfuturaCFOP: TStringField;
    cdsNFfuturaCODCLIENTE: TIntegerField;
    cdsNFfuturaCNPJ_CPF: TStringField;
    cdsNFfuturaINSCRICAOESTADUAL: TStringField;
    cdsNFfuturaSERIE: TStringField;
    sdsNFfuturaRAZAOSOCIAL: TStringField;
    cdsNFfuturaRAZAOSOCIAL: TStringField;
    sdsNFremessaNOTASERIE: TStringField;
    sdsNFremessaNUMNF: TIntegerField;
    sdsNFremessaQUANTIDADE: TFloatField;
    sdsNFremessaPESOBRUTO: TBCDField;
    sdsNFremessaPESOLIQUIDO: TBCDField;
    sdsNFremessaDTAEMISSAO: TDateField;
    sdsNFremessaCODVENDA: TIntegerField;
    sdsNFremessaNOTAFISCAL: TIntegerField;
    sdsNFremessaBASE_ICMS: TFloatField;
    sdsNFremessaVALOR_ICMS: TFloatField;
    sdsNFremessaBASE_ICMS_SUBST: TFloatField;
    sdsNFremessaVALOR_ICMS_SUBST: TFloatField;
    sdsNFremessaVALOR_PRODUTO: TFloatField;
    sdsNFremessaVALOR_TOTAL_NOTA: TFloatField;
    sdsNFremessaCFOP: TStringField;
    sdsNFremessaCODCLIENTE: TIntegerField;
    sdsNFremessaCNPJ_CPF: TStringField;
    sdsNFremessaINSCRICAOESTADUAL: TStringField;
    sdsNFremessaSERIE: TStringField;
    sdsNFremessaNOTAMAE: TIntegerField;
    cdsNFremessaNOTASERIE: TStringField;
    cdsNFremessaNUMNF: TIntegerField;
    cdsNFremessaQUANTIDADE: TFloatField;
    cdsNFremessaPESOBRUTO: TBCDField;
    cdsNFremessaPESOLIQUIDO: TBCDField;
    cdsNFremessaDTAEMISSAO: TDateField;
    cdsNFremessaCODVENDA: TIntegerField;
    cdsNFremessaNOTAFISCAL: TIntegerField;
    cdsNFremessaBASE_ICMS: TFloatField;
    cdsNFremessaVALOR_ICMS: TFloatField;
    cdsNFremessaBASE_ICMS_SUBST: TFloatField;
    cdsNFremessaVALOR_ICMS_SUBST: TFloatField;
    cdsNFremessaVALOR_PRODUTO: TFloatField;
    cdsNFremessaVALOR_TOTAL_NOTA: TFloatField;
    cdsNFremessaCFOP: TStringField;
    cdsNFremessaCODCLIENTE: TIntegerField;
    cdsNFremessaCNPJ_CPF: TStringField;
    cdsNFremessaINSCRICAOESTADUAL: TStringField;
    cdsNFremessaSERIE: TStringField;
    cdsNFremessaNOTAMAE: TIntegerField;
    sdsNFfuturaPESOREMESSA: TBCDField;
    cdsNFfuturaPESOREMESSA: TBCDField;
    RxLabel1: TRxLabel;
    JvDBGrid1: TJvDBGrid;
    JvDBGrid2: TJvDBGrid;
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure JvDBGrid2CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNotafRemessa: TfNotafRemessa;
  nfr : integer;

implementation

uses UDm, UDmSaude, ufDlgLogin, uUtils, uNotaf, UDMNF, sCtrlResize;

{$R *.dfm}

(************************************************************************************)

Procedure FormResize(Sender: TObject); var R : TRect; DC : HDc; Canv : TCanvas;
begin
  R := Rect( 0, 0, Screen.Width, Screen.Height );
  DC := GetWindowDC( GetDeskTopWindow );
  Canv := TCanvas.Create;
  Canv.Handle := DC;
  Canv.CopyRect(R,Canv,R);
  ReleaseDC( GetDeskTopWindow, DC );
end;
(************************************************************************************)
procedure TfNotafRemessa.btnSairClick(Sender: TObject);
begin
  if DtSrc.State in [dsInsert,dsEdit] then
  begin
    if MessageDlg('Você não salvou este registro deseja sair assim mesmo?',mtConfirmation, [mbYes,mbNo],0) = mrYes then
      close;
  end
  else
    Close;
end;
(************************************************************************************)
procedure TfNotafRemessa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if assigned(DtSrc.DataSet) then
     DtSrc.DataSet.Close;
end;
(************************************************************************************)
procedure TfNotafRemessa.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;
(************************************************************************************)
procedure TfNotafRemessa.FormShow(Sender: TObject);
begin
   sCtrlResize.CtrlResize(TForm(fNotafRemessa));
   nfr := cdsNFfuturaNUMNF.AsInteger;
   if (cdsNFfutura.Active) then
     cdsNFfutura.Close;
   cdsNFfutura.Params[0].AsInteger := DMNF.cds_nfCODCLIENTE.AsInteger;
   cdsNFfutura.Open;

   if (cdsNFremessa.Active) then
     cdsNFremessa.Close;
   cdsNFremessa.Params[0].AsInteger := cdsNFfuturaNUMNF.AsInteger;
   cdsNFremessa.Open;
end;
(************************************************************************************)
procedure TfNotafRemessa.btnSelecionarClick(Sender: TObject);
begin
  dmnf.cds_nfNOTAMAE.AsInteger := nfr;
  fNotafRemessa.Close();
end;
(************************************************************************************)
procedure TfNotafRemessa.JvDBGrid2CellClick(Column: TColumn);
begin
  nfr := cdsNFfuturaNUMNF.AsInteger;
end;
(************************************************************************************)

end.
