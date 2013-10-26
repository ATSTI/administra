unit uVotam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Mask, JvExMask, JvToolEdit, rpcompobase,
  rpvclreport, Buttons;

type
  TfVotam = class(TForm)
    JvDateEdit1: TJvDateEdit;
    BitBtn1: TBitBtn;
    VCLReport1: TVCLReport;
    Label1: TLabel;
    JvDateEdit2: TJvDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    JvDateEdit3: TJvDateEdit;
    BitBtn2: TBitBtn;
    Label5: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fVotam: TfVotam;

implementation

uses UDm;

{$R *.dfm}

procedure TfVotam.BitBtn1Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'votar_ associados.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('DATA').Value := JvDateEdit1.Text;
  VCLReport1.Report.Params.ParamByName('DATA2').Value := JvDateEdit2.Text;
  VCLReport1.Execute;
end;

procedure TfVotam.BitBtn2Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'votar_ associadosUm.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('DATA').Value := JvDateEdit3.Text;
  VCLReport1.Execute;
end;

procedure TfVotam.FormShow(Sender: TObject);
begin
  Label4.Caption := DateToStr(now);
end;

procedure TfVotam.BitBtn3Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'nascidos.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('DATA1').Value := JvDateEdit1.Text;
  VCLReport1.Report.Params.ParamByName('DATA2').Value := JvDateEdit2.Text;
  VCLReport1.Execute;
end;

procedure TfVotam.BitBtn4Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'novos.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('DATAINI').Value := JvDateEdit1.Text;
  VCLReport1.Report.Params.ParamByName('DATAFIN').Value := JvDateEdit2.Text;
  VCLReport1.Execute;
end;

procedure TfVotam.BitBtn5Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'excluidos.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('DATAINI').Value := JvDateEdit1.Text;
  VCLReport1.Report.Params.ParamByName('DATAFIN').Value := JvDateEdit2.Text;
  VCLReport1.Execute;
end;

end.
