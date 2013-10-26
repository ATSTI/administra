unit uTipoImprimiAgenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, rpcompobase, rpvclreport;

type
  TfTipoImprimiAgenda = class(TForm)
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    VCLReport1: TVCLReport;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTipoImprimiAgenda: TfTipoImprimiAgenda;

implementation

uses uAgendamento, UDm;

{$R *.dfm}

procedure TfTipoImprimiAgenda.BitBtn1Click(Sender: TObject);
begin
  if (RadioGroup1.ItemIndex = 0) then
    VCLReport1.Filename := str_relatorio + 'rel_agendamento.rep';

  if (RadioGroup1.ItemIndex = 1) then
    VCLReport1.Filename := str_relatorio + 'rel_agendamentodia.rep';

  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  if fAgendamento.Edit1.Text <> '' then
    VCLReport1.Report.Params.ParamByName('PCOD').Value := StrToInt(fAgendamento.Edit1.Text)
  else
    VCLReport1.Report.Params.ParamByName('PCOD').Value := 9999999;

  VCLReport1.Report.Params.ParamByName('DTA1').Value := StrToDate(fAgendamento.DateEdit1.Text);
  VCLReport1.Report.Params.ParamByName('DTA2').Value := StrToDate(fAgendamento.DateEdit2.Text);
  VCLReport1.Execute;
end;

procedure TfTipoImprimiAgenda.BitBtn2Click(Sender: TObject);
begin
 close;
end;

end.
