unit uProdudoBusca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls, Buttons,
  Grids, DBGrids, JvExDBGrids, JvDBGrid, EDBFind;

type
  TfProdudoBusca = class(TForm)
    EvDBFind1: TEvDBFind;
    JvDBGrid1: TJvDBGrid;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit2: TEdit;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    sdsCODPRODUTO: TIntegerField;
    sdsCOD_BARRA: TStringField;
    sdsCODPRO: TStringField;
    sdsPRODUTO: TStringField;
    sdsPRECO_VENDA: TFloatField;
    sdsPRECO_COMPRA: TFloatField;
    sdsQTDE_PCT: TFloatField;
    sdsUNIDADEMEDIDA: TStringField;
    sdsGRUPO: TStringField;
    sdsSUBGRUPO: TStringField;
    sdsMARCA: TStringField;
    sdsESTOQUEATUAL: TFloatField;
    sdsCODALMOXARIFADO: TIntegerField;
    sdsICMS: TFloatField;
    sdsTIPO: TStringField;
    sdsLOCALIZACAO: TStringField;
    sdsLOTES: TStringField;
    sdsPRECOMEDIO: TBCDField;
    sdsPESO_QTDE: TFloatField;
    cdsCODPRODUTO: TIntegerField;
    cdsCOD_BARRA: TStringField;
    cdsCODPRO: TStringField;
    cdsPRODUTO: TStringField;
    cdsPRECO_VENDA: TFloatField;
    cdsPRECO_COMPRA: TFloatField;
    cdsQTDE_PCT: TFloatField;
    cdsUNIDADEMEDIDA: TStringField;
    cdsGRUPO: TStringField;
    cdsSUBGRUPO: TStringField;
    cdsMARCA: TStringField;
    cdsESTOQUEATUAL: TFloatField;
    cdsCODALMOXARIFADO: TIntegerField;
    cdsICMS: TFloatField;
    cdsTIPO: TStringField;
    cdsLOCALIZACAO: TStringField;
    cdsLOTES: TStringField;
    cdsPRECOMEDIO: TBCDField;
    cdsPESO_QTDE: TFloatField;
    DtSrc: TDataSource;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fProdudoBusca: TfProdudoBusca;

implementation

uses UDm, uTerminal_Delivery, sCtrlResize;

{$R *.dfm}

procedure TfProdudoBusca.BitBtn1Click(Sender: TObject);
var vPreco : double;
begin
  if (Edit1.Text = '') then
    Edit1.Text := 'Meia ' + EvDBFind1.Text
  else
    Edit1.Text := Edit1.Text + '/ Meia ' + EvDBFind1.Text;

  if (edit2.Text = '') then
  begin
    vPreco := cdsPRECO_VENDA.AsFloat;
    Edit2.Text := Format('%-6.2n',[cdsPRECO_VENDA.AsFloat]);
  end
  else
  begin
    if (vPreco > cdsPRECO_VENDA.AsFloat) then
       Edit2.Text := Format('%-6.2n',[vPreco])
    else
       Edit2.Text := Format('%-6.2n',[cdsPRECO_VENDA.AsFloat]);
  end;
  EvDBFind1.SetFocus;
end;

procedure TfProdudoBusca.FormShow(Sender: TObject);
begin
  if (not cds.Active) then
    cds.Open;
  if (Edit1.Text <> '') then
     Edit1.Text := '';

end;

procedure TfProdudoBusca.FormClose(Sender: TObject;
  var Action: TCloseAction);
var precovenda : double;
begin
    if (Edit1.Text <> '') then
    begin
      fTerminal_Delivery.cds_Mov_detCODPRODUTO.AsInteger := cdsCODPRODUTO.AsInteger;
      fTerminal_Delivery.cds_Mov_detCODPRO.AsString := cdsCODPRO.AsString;
      fTerminal_Delivery.cds_Mov_detDESCPRODUTO.Value := Edit1.Text;
      //fTerminal_Delivery.cds_Mov_detCOD_COMISSAO.AsInteger := cdsCOD_COMISSAO.AsInteger;
      fTerminal_Delivery.cds_Mov_detQTDE_PCT.AsFloat := cdsQTDE_PCT.AsFloat;
      fTerminal_Delivery.cds_Mov_detUN.AsString := cdsUNIDADEMEDIDA.AsString;
      fTerminal_Delivery.cds_Mov_detQUANTIDADE.AsFloat := 1;
      fTerminal_Delivery.cds_Mov_detQTDE_ALT.AsFloat := 0;
      precovenda := StrToFloat(Edit2.Text);
      fTerminal_Delivery.cds_Mov_detVALTOTAL.AsFloat := precovenda;
      fTerminal_Delivery.cds_Mov_detCODALMOXARIFADO.AsInteger := cdsCODALMOXARIFADO.AsInteger;
      fTerminal_Delivery.cds_Mov_detICMS.AsFloat := cdsICMS.AsFloat;
      fTerminal_Delivery.cds_Mov_detPRECO.AsFloat := precovenda;
      fTerminal_Delivery.cds_Mov_det.Post;
      cds.Close;
    end
    else
    begin
       if (fTerminal_Delivery.cds_Mov_det.State in [dsInsert]) then
         fTerminal_Delivery.cds_Mov_det.Cancel;
    end;

end;

procedure TfProdudoBusca.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TfProdudoBusca.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfProdudoBusca.FormCreate(Sender: TObject);
begin
  sCtrlResize.CtrlResize(TForm(fProdudoBusca));
end;

end.
