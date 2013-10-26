unit uPdm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, MMJPanel, FMTBcd, DB, DBClient,
  Provider, SqlExpr, DBCtrls, Mask, DBLocal, DBLocalS, Grids, DBGrids,
  Menus, XPMenu, JvExControls, JvLabel;

type
  TfPdm = class(TForm)
    MMJPanel1: TMMJPanel;
    Label9: TLabel;
    Label10: TLabel;
    MMJPanel2: TMMJPanel;
    btnSair: TBitBtn;
    meData: TMaskEdit;
    Label12: TLabel;
    edControle: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DtSrc: TDataSource;
    DtSrc1: TDataSource;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    Label6: TLabel;
    DBGrid1: TDBGrid;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    XPMenu1: TXPMenu;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    sds_Movimento: TSQLDataSet;
    sds_MovimentoCODMOVIMENTO: TIntegerField;
    sds_MovimentoDATAMOVIMENTO: TDateField;
    sds_MovimentoCODCLIENTE: TIntegerField;
    sds_MovimentoCODNATUREZA: TSmallintField;
    sds_MovimentoSTATUS: TSmallintField;
    sds_MovimentoCODUSUARIO: TSmallintField;
    sds_MovimentoNOMECLIENTE: TStringField;
    sds_MovimentoDESCNATUREZA: TStringField;
    sds_MovimentoALMOXARIFADO: TStringField;
    sds_MovimentoCODVENDEDOR: TSmallintField;
    sds_MovimentoCODALMOXARIFADO: TIntegerField;
    sds_MovimentoNOMEFORNECEDOR: TStringField;
    sds_MovimentoCODFORNECEDOR: TIntegerField;
    sds_MovimentoTIPOTITULO: TSmallintField;
    sds_MovimentoDATA_SISTEMA: TSQLTimeStampField;
    sds_MovimentoNOMEUSUARIO: TStringField;
    sds_MovimentoOBS: TStringField;
    sds_MovimentoPLACA: TStringField;
    sds_MovimentoMARCA_MODELO: TStringField;
    sds_MovimentoCOD_VEICULO: TIntegerField;
    sds_MovimentoBAIXAMOVIMENTO: TSmallintField;
    sds_MovimentoCONTROLE: TStringField;
    dsp_Movimento: TDataSetProvider;
    dsp_Mov_det: TDataSetProvider;
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
    cds_Mov_detTotalPedido: TAggregateField;
    cds_Movimento: TClientDataSet;
    cds_MovimentoCODMOVIMENTO: TIntegerField;
    cds_MovimentoDATAMOVIMENTO: TDateField;
    cds_MovimentoCODCLIENTE: TIntegerField;
    cds_MovimentoCODNATUREZA: TSmallintField;
    cds_MovimentoSTATUS: TSmallintField;
    cds_MovimentoCODUSUARIO: TSmallintField;
    cds_MovimentoNOMECLIENTE: TStringField;
    cds_MovimentoDESCNATUREZA: TStringField;
    cds_MovimentoALMOXARIFADO: TStringField;
    cds_MovimentoCODVENDEDOR: TSmallintField;
    cds_MovimentoCODALMOXARIFADO: TIntegerField;
    cds_MovimentoNOMEFORNECEDOR: TStringField;
    cds_MovimentoCODFORNECEDOR: TIntegerField;
    cds_MovimentoTIPOTITULO: TSmallintField;
    cds_MovimentoDATA_SISTEMA: TSQLTimeStampField;
    cds_MovimentoNOMEUSUARIO: TStringField;
    cds_MovimentoOBS: TStringField;
    cds_MovimentoPLACA: TStringField;
    cds_MovimentoMARCA_MODELO: TStringField;
    cds_MovimentoCOD_VEICULO: TIntegerField;
    cds_MovimentoBAIXAMOVIMENTO: TSmallintField;
    cds_MovimentoCONTROLE: TStringField;
    GroupBox5: TGroupBox;
    DBEdit3: TDBEdit;
    dbeCliente: TDBEdit;
    DBEdit4: TDBEdit;
    Label3: TLabel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    btnExcluir: TBitBtn;
    sds_Mov_DetDESCRICAO: TStringField;
    cds_Mov_detDESCRICAO: TStringField;
    JvLabel1: TJvLabel;
    sds_Mov_DetSTATUS: TStringField;
    cds_Mov_detSTATUS: TStringField;
    sds_Mov_DetLOTE: TStringField;
    cds_Mov_detLOTE: TStringField;
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cds_Mov_detCalcFields(DataSet: TDataSet);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPdm: TfPdm;
  var_1 : integer;

implementation

uses uComercial, UDm, uProcurar, uVendas, uCompra, sCtrlResize, uEstoque;

{$R *.dfm}

procedure TfPdm.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TfPdm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if var_1 <> 1 then
 begin
  if fVendas.cds_Movimento.Active then
     fVendas.cds_Movimento.Close;
  if fVendas.cds_Mov_det.Active then
     fVendas.cds_Mov_det.Close;
 end;
 if dm.scds_NaturezaProcura.Active then
    dm.scds_NaturezaProcura.Close;

end;

procedure TfPdm.FormShow(Sender: TObject);
begin
   sCtrlResize.CtrlResize(TForm(fPdm));

  fPdm.cds_Mov_det.Params[0].Clear;
  cds_movimento.Open;
  cds_mov_det.Open;
  if (not cds_Mov_detDESCRICAO.IsNull) then
    DBGrid1.Columns[1].FieldName := 'DESCRICAO';

  if (cds_MovimentoBAIXAMOVIMENTO.AsInteger = 1) then // Saída
  begin
    dbeCliente.DataField := 'CodCliente';
    DBEdit4.DataField := 'NomeCliente';
  end;
  if (cds_MovimentoBAIXAMOVIMENTO.AsInteger = 0) then // Saída
  begin
    dbeCliente.DataField := 'CodFornecedor';
    DBEdit4.DataField := 'NomeFornecedor';
  end;

end;

procedure TfPdm.cds_Mov_detCalcFields(DataSet: TDataSet);
begin
  cds_Mov_detValorTotal.Value := cds_Mov_detPRECO.Value * cds_Mov_detQUANTIDADE.Value;
end;

procedure TfPdm.btnExcluirClick(Sender: TObject);
var deleta, delmov: string;
  fEst: TEstoque;
begin
  try
    if (cds_MovimentoCODNATUREZA.AsInteger < 3) then
    begin
      if (cds_MovimentoBAIXAMOVIMENTO.AsInteger = 0) then // Entrada
      begin
        deleta := 'Delete From COMPRA WHERE CODMOVIMENTO = ';
        Try
          cds_Mov_det.First;
          While not cds_Mov_det.Eof do
          begin
            if (cds_Mov_detSTATUS.AsString = '9') then
            begin
              FEst := TEstoque.Create;
              FEst.QtdeEntrada := (-1) * cds_Mov_detQUANTIDADE.AsFloat;
              FEst.CodProduto  := cds_Mov_detCODPRODUTO.AsInteger;
              FEst.Lote        := cds_Mov_detLOTE.AsString;
              FEst.CentroCusto := cds_MovimentoCODALMOXARIFADO.AsInteger;
              FEst.MesAno      := cds_MovimentoDATAMOVIMENTO.AsDateTime;
              FEst.PrecoCompra := cds_Mov_detPRECO.AsFloat;
              FEst.CodDetalhe  := cds_Mov_detCODDETALHE.AsInteger;
              FEst.Status      := '0';
              FEst.inserirMes;
            end;
            cds_Mov_det.Next;
          end;
        Finally
          FEst.Free;
        end;

      end;
      if (cds_MovimentoBAIXAMOVIMENTO.AsInteger = 1) then // Saída
      begin
        deleta := 'Delete From VENDA WHERE CODMOVIMENTO = ';
        Try
          cds_Mov_det.First;
          While not cds_Mov_det.Eof do
          begin
            if (cds_Mov_detSTATUS.AsString = '9') then
            begin
              FEst := TEstoque.Create;
              FEst.QtdeSaida   := (-1) * cds_Mov_detQUANTIDADE.AsFloat;
              FEst.CodProduto  := cds_Mov_detCODPRODUTO.AsInteger;
              FEst.Lote        := cds_Mov_detLOTE.AsString;
              FEst.CentroCusto := cds_MovimentoCODALMOXARIFADO.AsInteger;
              FEst.MesAno      := cds_MovimentoDATAMOVIMENTO.AsDateTime;
              FEst.PrecoVenda  := cds_Mov_detPRECO.AsFloat;
              FEst.CodDetalhe  := cds_Mov_detCODDETALHE.AsInteger;
              FEst.inserirMes;
            end;
            cds_Mov_det.Next;
          end;
        Finally
          FEst.Free;
        end;
      end;
     deleta := deleta + IntToStr(cds_MovimentoCODMOVIMENTO.AsInteger);
     delmov := 'Delete From MOVIMENTO WHERE CODMOVIMENTO = ';
     delmov := delmov + IntToStr(cds_MovimentoCODMOVIMENTO.AsInteger);
     DM.sqlsisAdimin.ExecuteDirect(deleta);
     DM.sqlsisAdimin.ExecuteDirect(delmov);
     cds_Movimento.Close;
     cds_Mov_det.close;
     cds_Movimento.Params[0].Clear;
     cds_Movimento.Open;
     cds_Mov_det.Params[0].Clear;
     cds_Mov_det.Params[1].Clear;
     cds_Mov_det.Open;
     if (not cds_Mov_detDESCRICAO.IsNull) then
       DBGrid1.Columns[1].FieldName := 'DESCRICAO';
    end;

  Except
    on E : Exception do
    begin
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
    end;
  end;

end;

end.
