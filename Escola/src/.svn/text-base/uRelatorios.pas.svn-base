unit uRelatorios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, rpcompobase, rpvclreport, StdCtrls, ExtCtrls;

type
  TfRelatorios = class(TForm)
    SpeedButton4: TSpeedButton;
    SpeedButton2: TSpeedButton;
    BitBtn4: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    VCLReport_etiqueta: TVCLReport;
    VCLReport1: TVCLReport;
    RadioGroup1: TRadioGroup;
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelatorios: TfRelatorios;

implementation

uses UDm, UDMEscola, uListaCliEscola;

{$R *.dfm}

procedure TfRelatorios.SpeedButton4Click(Sender: TObject);
begin
  if not dm.cds_empresa.Active then
    dm.cds_empresa.Open;
  VCLReport_etiqueta.Filename := str_relatorio + 'clienteEtiquetaUnica.rep';
  VCLReport_etiqueta.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport_etiqueta.Report.Params.ParamByName('N_ETIQUETA').Value := 1;
  IF (fListaCliEscola.edCodigo.Text <> '') then
    VCLReport_etiqueta.Report.Params.ParamByName('CODCLI').Value := StrToInt(fListaCliEscola.edCodigo.Text)
  else
    VCLReport_etiqueta.Report.Params.ParamByName('CODCLI').Value := 0;
  VCLReport_etiqueta.Report.Params.ParamByName('CODVEND').Value := 0;
  VCLReport_etiqueta.Report.Params.ParamByName('UFCLI').Value := 'TODOS';
  VCLReport_etiqueta.Report.Params.ParamByName('CID').Value := 'TODAS AS CIDADES CADASTRADAS NO SISTEMA';
  VCLReport_etiqueta.Report.Params.ParamByName('DDDCLI').Value := 'TODOS';
  VCLReport_etiqueta.Execute;

end;

procedure TfRelatorios.SpeedButton2Click(Sender: TObject);
begin
  if not dm.cds_empresa.Active then
    dm.cds_empresa.Open;
  VCLReport1.FileName := str_relatorio + 'clienteEtiqueta2.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;  
  // Número de Etiquetas por Cliente
  VCLReport1.Report.Params.ParamByName('N_ETIQUETA').Value := 1;
  IF (fListaCliEscola.edCodigo.Text <> '') then
    VCLReport1.Report.Params.ParamByName('CODCLI').Value := StrToInt(fListaCliEscola.edCodigo.Text)
  else
    VCLReport1.Report.Params.ParamByName('CODCLI').Value := 0;

  VCLReport1.Report.Params.ParamByName('CODVEND').Value := 0;
  VCLReport1.Report.Params.ParamByName('UFCLI').Value := 'TODOS';
  VCLReport1.Report.Params.ParamByName('CID').Value := 'TODAS AS CIDADES CADASTRADAS NO SISTEMA';
  VCLReport1.Report.Params.ParamByName('DDDCLI').Value := 'TODOS';
  VCLReport1.Execute;

end;

end.
