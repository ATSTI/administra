unit uLabColetaMateriais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, ExtCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  StdCtrls, JvExStdCtrls, JvCombobox, JvDBSearchComboBox, Menus, XPMenu,
  DB, Buttons, MMJPanel, FMTBcd, DBClient, Provider, SqlExpr, Mask,
  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  rpcompobase, rpvclreport;

type
  TfLabColetaMateriais = class(TfPai_new)
    GroupBox1: TGroupBox;
    cbCliente: TJvDBSearchComboBox;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    JvDBGrid1: TJvDBGrid;
    RadioGroup1: TRadioGroup;
    Label3: TLabel;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    cdsCODEXAME: TIntegerField;
    cdsDATASOLICITACAO: TDateField;
    cdsDATAENTREGAMATERIAL: TDateField;
    cdsDATAPREVISTAENTREGA: TDateField;
    cdsDATALAUDOEXAME: TDateField;
    cdsDATARETIRADA: TDateField;
    cdsCODCLIENTE: TIntegerField;
    cdsTIPOEXAME: TStringField;
    cdsMEDICOSOLICITANTE: TIntegerField;
    cdsCONVENIO: TStringField;
    cdsVALOR: TFloatField;
    cdsSITUACAO: TStringField;
    cdsMATERIALRECEBIDO: TStringField;
    cdsNOMECLIENTE: TStringField;
    ds: TDataSource;
    sdsClienteBusca: TSQLDataSet;
    dspBuscaCliente: TDataSetProvider;
    cdsClienteBusca: TClientDataSet;
    cdsClienteBuscaCODCLIENTE: TIntegerField;
    cdsClienteBuscaNOMECLIENTE: TStringField;
    cdsClienteBuscaRA: TStringField;
    dsClienteBusca: TDataSource;
    sdsCODEXAME: TIntegerField;
    sdsDATASOLICITACAO: TDateField;
    sdsDATAENTREGAMATERIAL: TDateField;
    sdsDATAPREVISTAENTREGA: TDateField;
    sdsDATALAUDOEXAME: TDateField;
    sdsDATARETIRADA: TDateField;
    sdsCODCLIENTE: TIntegerField;
    sdsTIPOEXAME: TStringField;
    sdsMEDICOSOLICITANTE: TIntegerField;
    sdsCONVENIO: TStringField;
    sdsVALOR: TFloatField;
    sdsSITUACAO: TStringField;
    sdsMATERIALRECEBIDO: TStringField;
    sdsNOMECLIENTE: TStringField;
    dt1: TJvDatePickerEdit;
    Label6: TLabel;
    BitBtn2: TBitBtn;
    VCLReport1: TVCLReport;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLabColetaMateriais: TfLabColetaMateriais;

implementation

uses UDm;

{$R *.dfm}

procedure TfLabColetaMateriais.FormCreate(Sender: TObject);
begin
  inherited;
  if (cdsClienteBusca.Active) then
    cdsClienteBusca.close;
  cdsClienteBusca.CommandText := 'SELECT RA, CODCLIENTE, NOMECLIENTE ' +
    'FROM CLIENTES where status = 0 ORDER BY NOMECLIENTE';
  cdsClienteBusca.Open;
  cbCliente.ItemIndex := -1;
end;

procedure TfLabColetaMateriais.BitBtn1Click(Sender: TObject);
var sqltexto : string;
begin
  inherited;
  cds.close;
  sqltexto := '';
  cds.CommandText := '';
  sqltexto := 'select lab.*, cli.NOMECLIENTE from LABEXAME lab left outer join CLIENTES cli on cli.CODCLIENTE = lab.CODCLIENTE ';
  if (RadioGroup1.ItemIndex = 1) then
      sqltexto := sqltexto + 'where lab.SITUACAO = ' + QuotedStr('NÃO COLETADO') //+
  //    ' and lab.SITUACAO <> ' + QuotedStr('LAUDADO') +
  //    ' and lab.SITUACAO <> ' + QuotedStr('COLETADO')
  else
      sqltexto := sqltexto + 'where lab.SITUACAO = ' + QuotedStr('COLETADO');
  if (cbCliente.Text <> '') then
    sqltexto := sqltexto + ' and cli.NOMECLIENTE = ' + QuotedStr(cbCliente.Text)
  else
  begin
    MessageDlg('É preciso selecionar um cliente', mtWarning, [mbOK], 0);
    cbCliente.SetFocus;
    exit;
  end;
  cds.CommandText := sqltexto;
  cds.Open;
end;

procedure TfLabColetaMateriais.btnGravarClick(Sender: TObject);
begin
  if (cdsSITUACAO.AsString ='NÃO COLETADO') then
  begin
    cds.Edit;
    cdsSituacao.AsString := 'COLETADO';
    cdsDATAENTREGAMATERIAL.AsDateTime := dt1.Date;
    RadioGroup1.ItemIndex := 0;
  end;
  if (cds.State in [dsInsert, dsEdit]) then
    inherited;
end;

procedure TfLabColetaMateriais.btnCancelarClick(Sender: TObject);
begin
  if (cdsSITUACAO.AsString = 'COLETADO') then
  begin
    cds.Edit;
    cdsSituacao.AsString := 'NÃO COLETADO';
    cdsDATAENTREGAMATERIAL.Clear;
    RadioGroup1.ItemIndex := 1;
    cds.Post;
    btnGravar.Click;
  end;
  inherited;
end;

procedure TfLabColetaMateriais.BitBtn2Click(Sender: TObject);
begin
  inherited;
  cds.First;
  cds.DisableControls;
  while not cds.Eof do
  begin
    if (JvDBGrid1.SelectedRows.CurrentRowSelected = true) then
    begin
        VCLReport1.FileName := str_relatorio + 'Cópia de recibo_exames.rep';
        VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
        VCLReport1.Report.Params.ParamByName('CODCLI').Value := cdsCODCLIENTE.AsInteger;
    end;
    cds.Next;
  end;
   VCLReport1.Execute;
  cds.First;
  cds.EnableControls;
end;

end.
