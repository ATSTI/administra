unit uRelProgReceb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, rpcompobase, rpvclreport, Mask, JvExMask,
  JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, FMTBcd,
  JvExStdCtrls, JvCombobox, DBClient, Provider, DB, SqlExpr;

type
  TfRelProgReceb = class(TForm)
    GroupBox5: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    cbMes: TComboBox;
    data1: TJvDatePickerEdit;
    data2: TJvDatePickerEdit;
    rep: TVCLReport;
    btnSair: TBitBtn;
    btnImprimir: TBitBtn;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    JvComboBox1: TJvComboBox;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure cbMesChange(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelProgReceb: TfRelProgReceb;

implementation

uses UDm, uUtils;

{$R *.dfm}

procedure TfRelProgReceb.FormCreate(Sender: TObject);
begin
  if (cds.Active) then
    cds.close;
  cds.CommandText := 'SELECT DISTINCT(RAZAOSOCIAL) FROM CLIENTES WHERE STATUS = 1';
  cds.Open;
  while not cds.Eof do
  begin
    jvComboBox1.Items.Add(cds.Fields[0].asString);
    cds.Next;
  end;
  cds.Close;

end;

procedure TfRelProgReceb.btnImprimirClick(Sender: TObject);
begin
  try
    Rep.Filename := str_relatorio + 'programacaorecebimento.rep';
    Rep.Title := rep.Filename;
    Rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    Rep.Report.Params.ParamByName('DATAINI').Value := StrToDate(Data1.Text);
    Rep.Report.Params.ParamByName('DATAFIM').Value := StrToDate(Data2.Text);
    Rep.Report.Params.ParamByName('RAZAO').Value := JvComboBox1.Text;
  except
    on EConvertError do
    begin
       ShowMessage ('Data Inválida! dd/mm/aa');
       Data1.SetFocus;
    end;
  end;
  Rep.Execute;
end;

procedure TfRelProgReceb.cbMesChange(Sender: TObject);
var  periodo : TUtils;
begin
  periodo := TUtils.Create;
  periodo.criaIni(cbMes.text);
  periodo.criaFim(cbMes.text);
  data1.Text := periodo.PeriodoIni;
  data2.Text := periodo.PeriodoFim;
  periodo.Destroy;
end;

procedure TfRelProgReceb.btnSairClick(Sender: TObject);
begin
  close;
end;

end.
