unit uOperacaoAltera;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, FMTBcd, DBCtrls, SqlExpr, Mask, DBClient, Provider;

type
  TfOperacaoAltera = class(TfPai_new)
    sTipoOper: TSQLDataSet;
    sTipoOperCODDADOS: TIntegerField;
    sTipoOperDESCRICAO: TStringField;
    Label1: TLabel;
    cbLocal: TDBComboBox;
    Label2: TLabel;
    cbVeiculo: TDBComboBox;
    Label3: TLabel;
    cbTipo: TDBComboBox;
    Label4: TLabel;
    cbOper: TDBComboBox;
    Label5: TLabel;
    cbServico: TDBComboBox;
    Label6: TLabel;
    cbModo: TDBComboBox;
    Label7: TLabel;
    cbSetor: TDBComboBox;
    sPalm: TSQLDataSet;
    dPalm: TDataSetProvider;
    cPalmAltera: TClientDataSet;
    cPalmAlteraCOD_PALM: TIntegerField;
    cPalmAlteraCLIENTE: TStringField;
    cPalmAlteraLOCAL: TStringField;
    cPalmAlteraVEICULO: TStringField;
    cPalmAlteraPLACA: TStringField;
    cPalmAlteraTRANSPORTE: TStringField;
    cPalmAlteraTIPO: TStringField;
    cPalmAlteraOPERACAO: TStringField;
    cPalmAlteraMODO: TStringField;
    cPalmAlteraSETOR: TStringField;
    cPalmAlteraSTATUS: TStringField;
    cPalmAlteraSERVICO: TStringField;
    cPalmAlteraOBSERVACAO: TStringField;
    cPalmAlteraDATAOPERACAO: TStringField;
    cPalmAlteraDATATERMINO: TStringField;
    cPalmAlteraFATURADO: TStringField;
    cPalmAlteraRESPONSAVEL: TStringField;
    cPalmAlteraRG: TStringField;
    cPalmAlteraHORAINICIAL: TStringField;
    cPalmAlteraHORAFINAL: TStringField;
    cPalmAlteraPESO: TStringField;
    cPalmAlteraMARCOU: TStringField;
    cPalmAlteraGEROUARQUIVO: TStringField;
    cPalmAlteraNOMEARQUIVO: TStringField;
    cPalmAlteraCODFAIXA: TIntegerField;
    cPalmAlteraVALOROPERACAO: TFloatField;
    cPalmAlteraGEROUFINANCEIRO: TStringField;
    sPalmCOD_PALM: TIntegerField;
    sPalmCLIENTE: TStringField;
    sPalmLOCAL: TStringField;
    sPalmVEICULO: TStringField;
    sPalmPLACA: TStringField;
    sPalmTRANSPORTE: TStringField;
    sPalmTIPO: TStringField;
    sPalmOPERACAO: TStringField;
    sPalmMODO: TStringField;
    sPalmSETOR: TStringField;
    sPalmSTATUS: TStringField;
    sPalmSERVICO: TStringField;
    sPalmOBSERVACAO: TStringField;
    sPalmDATAOPERACAO: TStringField;
    sPalmDATATERMINO: TStringField;
    sPalmFATURADO: TStringField;
    sPalmRESPONSAVEL: TStringField;
    sPalmRG: TStringField;
    sPalmHORAINICIAL: TStringField;
    sPalmHORAFINAL: TStringField;
    sPalmPESO: TStringField;
    sPalmMARCOU: TStringField;
    sPalmGEROUARQUIVO: TStringField;
    sPalmNOMEARQUIVO: TStringField;
    sPalmCODFAIXA: TIntegerField;
    sPalmVALOROPERACAO: TFloatField;
    sPalmGEROUFINANCEIRO: TStringField;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    Label10: TLabel;
    DBEdit3: TDBEdit;
    Label11: TLabel;
    DBEdit4: TDBEdit;
    Label12: TLabel;
    DBEdit5: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fOperacaoAltera: TfOperacaoAltera;

implementation

uses UDm, uDmTransp;

{$R *.dfm}

procedure TfOperacaoAltera.FormShow(Sender: TObject);
begin
  inherited;
  if (sTipoOper.Active) then
     sTipoOper.Close;
  sTipoOper.Params[0].Clear;
  sTipoOper.Params[0].AsString := 'LOCAL DOS SERVIÇOS';
  sTipoOper.Open;
  sTipoOper.First;
  while not sTipoOper.Eof do
  begin
    cbLocal.Items.Add(sTipoOperDESCRICAO.AsString);
    sTipoOper.Next;
  end;

  if (sTipoOper.Active) then
     sTipoOper.Close;
  sTipoOper.Params[0].Clear;
  sTipoOper.Params[0].AsString := 'VEÍCULO';
  sTipoOper.Open;
  sTipoOper.First;
  while not sTipoOper.Eof do
  begin
    cbVeiculo.Items.Add(sTipoOperDESCRICAO.AsString);
    sTipoOper.Next;
  end;

  if (sTipoOper.Active) then
     sTipoOper.Close;
  sTipoOper.Params[0].Clear;
  sTipoOper.Params[0].AsString := 'TIPO';
  sTipoOper.Open;
  sTipoOper.First;
  while not sTipoOper.Eof do
  begin
    cbTipo.Items.Add(sTipoOperDESCRICAO.AsString);
    sTipoOper.Next;
  end;

  if (sTipoOper.Active) then
     sTipoOper.Close;
  sTipoOper.Params[0].Clear;
  sTipoOper.Params[0].AsString := 'OPERAÇÃO';
  sTipoOper.Open;
  sTipoOper.First;
  while not sTipoOper.Eof do
  begin
    cbOper.Items.Add(sTipoOperDESCRICAO.AsString);
    sTipoOper.Next;
  end;

  sTipoOper.Close;
  if (sTipoOper.Active) then
     sTipoOper.Close;
  sTipoOper.Params[0].Clear;
  sTipoOper.Params[0].AsString := 'TIPO DE SERVIÇO';
  sTipoOper.Open;
  sTipoOper.First;
  while not sTipoOper.Eof do
  begin
    cbServico.Items.Add(sTipoOperDESCRICAO.AsString);
    sTipoOper.Next;
  end;

  sTipoOper.Close;
  if (sTipoOper.Active) then
     sTipoOper.Close;
  sTipoOper.Params[0].Clear;
  sTipoOper.Params[0].AsString := 'MODO';
  sTipoOper.Open;
  sTipoOper.First;
  while not sTipoOper.Eof do
  begin
    cbModo.Items.Add(sTipoOperDESCRICAO.AsString);
    sTipoOper.Next;
  end;

  sTipoOper.Close;
  if (sTipoOper.Active) then
     sTipoOper.Close;
  sTipoOper.Params[0].Clear;
  sTipoOper.Params[0].AsString := 'SETOR';
  sTipoOper.Open;
  sTipoOper.First;
  while not sTipoOper.Eof do
  begin
    cbSetor.Items.Add(sTipoOperDESCRICAO.AsString);
    sTipoOper.Next;
  end;
  sTipoOper.Close;

  if (cPalmAltera.Active) then
    cPalmAltera.Close;
  cPalmAltera.Params[0].AsInteger := dmTransp.vCodPalm;
  cPalmAltera.Open;
  if (cPalmAltera.IsEmpty) then
    exit;

end;

end.
