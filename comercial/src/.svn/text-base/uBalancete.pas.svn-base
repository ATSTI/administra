unit uBalancete;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, ExtCtrls, MMJPanel, JvAppStorage,
  JvAppXMLStorage, JvComponentBase, JvFormPlacement, rpcompobase,
  rpvclreport;

type
  TfBalancete = class(TForm)
    mmjpanel: TMMJPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn3: TBitBtn;
    maskedit2: TMaskEdit;
    MaskEdit1: TMaskEdit;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    VCLReport1: TVCLReport;
    JvFormStorage1: TJvFormStorage;
    JvAppXMLFileStorage1: TJvAppXMLFileStorage;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBalancete: TfBalancete;

implementation

uses UDm;

{$R *.dfm}

procedure TfBalancete.BitBtn3Click(Sender: TObject);
begin
   Close;
end;

procedure TfBalancete.BitBtn7Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'balancete.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  vclreport1.Title := vclreport1.Filename;

  VCLReport1.Report.Params.ParamByName('PDTA1').Value := FormatDateTime('dd/mm/yy', StrToDate(maskedit1.Text));
  VCLReport1.Report.Params.ParamByName('PDTA2').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit2.Text));
  VCLReport1.Execute;
  VCLReport1.Report.DatabaseInfo.Items[0].DisConnect;

end;

end.
