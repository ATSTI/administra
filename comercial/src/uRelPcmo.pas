unit uRelPcmo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, rpcompobase, rpvclreport, JvExStdCtrls,
  JvCombobox, JvDBSearchComboBox, SqlExpr, Provider, DB, DBClient, DBLocal,
  DBLocalS;

type
  TfRelPcmo = class(TForm)
    BitBtn1: TBitBtn;
    VCLReport1: TVCLReport;
    JvDBSearchEdit2: TJvDBSearchComboBox;
    SQL: TSQLClientDataSet;
    DataSource1: TDataSource;
    SQLRAZAOSOCIAL: TStringField;
    Label1: TLabel;
    BitBtn2: TBitBtn;
    JvDBSearchComboBox1: TJvDBSearchComboBox;
    SQLRA: TStringField;
    Label2: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelPcmo: TfRelPcmo;

implementation

uses UDmSaude, UDm;

{$R *.dfm}

procedure TfRelPcmo.BitBtn1Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'rel_emp_func_pcmso.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('NOME').Value := JvDBSearchEdit2.Text;
  VCLReport1.Execute;
end;

procedure TfRelPcmo.FormShow(Sender: TObject);
begin
    if (not SQL.Active) then
    SQL.Open;
end;

procedure TfRelPcmo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SQL.Close;
end;

procedure TfRelPcmo.BitBtn2Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'rel_emp_func_pcmso.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.Params.ParamByName('NOME').Value := 'TODOS AS EMPRESAS ATIVAS CADASTRADOS NO SISTEMA HJ';
  VCLReport1.Execute;
  
end;

end.
