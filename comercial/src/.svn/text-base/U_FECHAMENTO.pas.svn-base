unit U_FECHAMENTO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, dxCore, dxButton, StdCtrls, ExtCtrls, MMJPanel, Grids,
  DBGrids, JvExDBGrids, JvDBGrid, FMTBcd, DB, DBClient, Provider, SqlExpr,
  Mask, DBCtrls;

type
  TF_Fechamento = class(TForm)
    JvDBGrid1: TJvDBGrid;
    MMJPanel1: TMMJPanel;
    Edit1: TEdit;
    dxButton1: TdxButton;
    MMJPanel2: TMMJPanel;
    PopupMenu1: TPopupMenu;
    s_busca: TSQLDataSet;
    p_busca: TDataSetProvider;
    c_busca: TClientDataSet;
    d_busca: TDataSource;
    s_buscaCODMOVIMENTO: TIntegerField;
    s_buscaDATAMOVIMENTO: TDateField;
    s_buscaCODCLIENTE: TIntegerField;
    s_buscaCODNATUREZA: TSmallintField;
    s_buscaSTATUS: TSmallintField;
    s_buscaCODUSUARIO: TSmallintField;
    s_buscaCODVENDEDOR: TSmallintField;
    s_buscaCODALMOXARIFADO: TIntegerField;
    s_buscaCODFORNECEDOR: TIntegerField;
    s_buscaDATA_SISTEMA: TSQLTimeStampField;
    s_buscaCOD_VEICULO: TIntegerField;
    s_buscaCONTROLE: TStringField;
    s_buscaOBS: TStringField;
    s_buscaTOTALMOVIMENTO: TFloatField;
    s_buscaCODMOVRATEIO: TIntegerField;
    s_buscaVALORRATEIO: TFloatField;
    s_buscaRATEIO: TFloatField;
    s_buscaCONFERIDO: TStringField;
    s_buscaNFCOBRANCA: TIntegerField;
    s_buscaORDEMATEND: TIntegerField;
    s_buscaNFREVENDA: TIntegerField;
    s_buscaCODORIGEM: TIntegerField;
    s_buscaKM: TStringField;
    s_buscaNFE: TStringField;
    s_buscaPRAZO_ENT: TIntegerField;
    s_buscaVAL_PROP: TDateField;
    s_buscaFORMA_PAG: TStringField;
    s_buscaVALOR_FRETE: TFloatField;
    s_buscaDATA_ENTREGA: TDateField;
    s_buscaPRAZO_PAGAMENTO: TStringField;
    s_buscaUSER_APROVA: TStringField;
    s_buscaCODTRANSP: TIntegerField;
    s_buscaTPFRETE: TStringField;
    s_buscaCODPEDIDO: TIntegerField;
    s_buscaQTD: TIntegerField;
    s_buscaCODCOTACAO: TIntegerField;
    s_buscaUSUARIOLOGADO: TStringField;
    s_buscaNOMECLIENTE: TStringField;
    s_buscaNOMEUSUARIO: TStringField;
    c_buscaCODMOVIMENTO: TIntegerField;
    c_buscaDATAMOVIMENTO: TDateField;
    c_buscaCODCLIENTE: TIntegerField;
    c_buscaCODNATUREZA: TSmallintField;
    c_buscaSTATUS: TSmallintField;
    c_buscaCODUSUARIO: TSmallintField;
    c_buscaCODVENDEDOR: TSmallintField;
    c_buscaCODALMOXARIFADO: TIntegerField;
    c_buscaCODFORNECEDOR: TIntegerField;
    c_buscaDATA_SISTEMA: TSQLTimeStampField;
    c_buscaCOD_VEICULO: TIntegerField;
    c_buscaCONTROLE: TStringField;
    c_buscaOBS: TStringField;
    c_buscaTOTALMOVIMENTO: TFloatField;
    c_buscaCODMOVRATEIO: TIntegerField;
    c_buscaVALORRATEIO: TFloatField;
    c_buscaRATEIO: TFloatField;
    c_buscaCONFERIDO: TStringField;
    c_buscaNFCOBRANCA: TIntegerField;
    c_buscaORDEMATEND: TIntegerField;
    c_buscaNFREVENDA: TIntegerField;
    c_buscaCODORIGEM: TIntegerField;
    c_buscaKM: TStringField;
    c_buscaNFE: TStringField;
    c_buscaPRAZO_ENT: TIntegerField;
    c_buscaVAL_PROP: TDateField;
    c_buscaFORMA_PAG: TStringField;
    c_buscaVALOR_FRETE: TFloatField;
    c_buscaDATA_ENTREGA: TDateField;
    c_buscaPRAZO_PAGAMENTO: TStringField;
    c_buscaUSER_APROVA: TStringField;
    c_buscaCODTRANSP: TIntegerField;
    c_buscaTPFRETE: TStringField;
    c_buscaCODPEDIDO: TIntegerField;
    c_buscaQTD: TIntegerField;
    c_buscaCODCOTACAO: TIntegerField;
    c_buscaUSUARIOLOGADO: TStringField;
    c_buscaNOMECLIENTE: TStringField;
    c_buscaNOMEUSUARIO: TStringField;
    s_buscaUN: TStringField;
    s_buscaQUANTIDADE: TFloatField;
    s_buscaPRECO: TFloatField;
    s_buscaVALTOTAL: TFloatField;
    s_buscaDESCPRODUTO: TStringField;
    c_buscaUN: TStringField;
    c_buscaQUANTIDADE: TFloatField;
    c_buscaPRECO: TFloatField;
    c_buscaVALTOTAL: TFloatField;
    c_buscaDESCPRODUTO: TStringField;
    c_buscaTOTAL: TAggregateField;
    DBEdit1: TDBEdit;
    procedure dxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Fechamento: TF_Fechamento;

implementation

uses UDm;

{$R *.dfm}

procedure TF_Fechamento.dxButton1Click(Sender: TObject);
begin
   if (c_busca.Active) then
       c_busca.Close;
   c_busca.Params[0].Clear;
   c_busca.Params[0].AsInteger := StrToInt(Edit1.Text);
   c_busca.Open;
end;

end.
