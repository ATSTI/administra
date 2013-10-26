unit uResolucaoTela;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCore, dxButton, StdCtrls, ExtCtrls, MMJPanel, FMTBcd,
  DBClient, Provider, DB, SqlExpr;

type
  TfResolucaoTela = class(TForm)
    MMJPanel1: TMMJPanel;
    Label1: TLabel;
    Label2: TLabel;
    RadioGroup1: TRadioGroup;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    sds_parametro: TSQLDataSet;
    dsp: TDataSetProvider;
    cds_parametro: TClientDataSet;
    cds_parametroLOGIN: TStringField;
    cds_parametroSENHA: TStringField;
    cds_parametroPERFIL: TStringField;
    cds_parametroCODUSUARIO: TIntegerField;
    sds_parametroLOGIN: TStringField;
    sds_parametroSENHA: TStringField;
    sds_parametroPERFIL: TStringField;
    sds_parametroCODUSUARIO: TIntegerField;
    sds_parametroMICRO: TStringField;
    sds_parametroP1: TStringField;
    sds_parametroP2: TStringField;
    cds_parametroMICRO: TStringField;
    cds_parametroP1: TStringField;
    cds_parametroP2: TStringField;
    sLog: TSQLDataSet;
    cLog: TClientDataSet;
    pLog: TDataSetProvider;
    sLogLOGIN: TStringField;
    sLogMICRO: TStringField;
    sLogMODULO: TStringField;
    sLogID_LOG: TIntegerField;
    sLogUSUARIO: TStringField;
    cLogLOGIN: TStringField;
    cLogMICRO: TStringField;
    cLogMODULO: TStringField;
    cLogID_LOG: TIntegerField;
    cLogUSUARIO: TStringField;
    procedure dxButton1Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fResolucaoTela: TfResolucaoTela;

implementation

uses UDm, uFinanceiro, ufDlgLogin;

{$R *.dfm}

procedure TfResolucaoTela.dxButton1Click(Sender: TObject);
begin
 { if cds_parametro.Active then
     cds_parametro.Close;
  cds_parametro.Params[0].AsString := usuario;
  cds_parametro.Open;
  }
  if cLog.Active then
     cLog.Close;
  cLog.Params[0].AsString := MICRO;
  cLog.Open;
  if (cLog.IsEmpty) then
  begin
      cLog.Append;
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_ID_LOG, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      cLogID_LOG.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
      dm.c_6_genid.Close;
      cLogMICRO.AsString := MICRO;
  end
  else
  begin
      cLog.edit;
  end;

  if (RadioGroup1.ItemIndex = 0) then
  begin
     cLogMODULO.AsString := '800';
     cLogUSUARIO.AsString := '600';
  end;
  if (RadioGroup1.ItemIndex = 1) then
  begin
     cLogMODULO.AsString := '1024';
     cLogUSUARIO.AsString := '768';
  end;

  if (RadioGroup1.ItemIndex = 2) then
  begin
    cLogMODULO.AsString := '1280';
    cLogUSUARIO.AsString := '800';
  end;
  if (RadioGroup1.ItemIndex = 3) then
  begin
    cLogMODULO.AsString := '1440';
    cLogUSUARIO.AsString := '900';
  end;
  {if (RadioGroup1.ItemIndex = 4) then
  begin
    cLogMODULO.AsString := 'widescreen';
    cLogUSUARIO.AsString := 'widescreen';
  end; }
  cLog.ApplyUpdates(0);

  //  cds_parametro.Close;

  MessageDlg('Reinicialize o Sistema para que as mudanças tenhão efeito', mtWarning, [mbOK], 0);
  fFinanceiro.Close;
  fResolucaoTela.Close;

end;

procedure TfResolucaoTela.dxButton2Click(Sender: TObject);
begin
  close;
end;

end.
