unit uRel_comissao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rpcompobase, rpvclreport, DB, StdCtrls, JvExStdCtrls,
  JvCombobox, JvDBSearchComboBox, Buttons, Mask, JvExMask, JvToolEdit,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, FMTBcd, SqlExpr,
  Provider, DBClient, DBLocal, DBLocalS;

type
  TfRel_comissao = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    cbMes: TComboBox;
    dta1: TJvDatePickerEdit;
    dta2: TJvDatePickerEdit;
    rep: TVCLReport;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Edit1: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    scds_venda_proc: TSQLDataSet;
    scds_venda_procCODCLIENTE: TIntegerField;
    scds_venda_procDATAVENDA: TDateField;
    scds_venda_procNOTAFISCAL: TIntegerField;
    scds_venda_procSTATUS: TSmallintField;
    scds_venda_procVALOR: TFloatField;
    scds_venda_procCODVENDA: TIntegerField;
    scds_venda_procNOMECLIENTE: TStringField;
    scds_movimento_proc: TSQLDataSet;
    scds_movimento_procCODMOVIMENTO: TIntegerField;
    scds_movimento_procCODCLIENTE: TIntegerField;
    scds_movimento_procDATAMOVIMENTO: TDateField;
    scds_movimento_procNOMECLIENTE: TStringField;
    DtSrc: TDataSource;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    btnSair: TBitBtn;
    Edit2: TJvDBSearchComboBox;
    cds_func: TClientDataSet;
    dsp_func: TDataSetProvider;
    sds_func: TSQLDataSet;
    sds_funcCOD_FUNCIONARIO: TIntegerField;
    sds_funcNOME_FUNCIONARIO: TStringField;
    cds_funcCOD_FUNCIONARIO: TIntegerField;
    cds_funcNOME_FUNCIONARIO: TStringField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit4: TJvDBSearchComboBox;
    DtSrc_pro: TDataSource;
    cds_produto: TClientDataSet;
    dsp_produto: TDataSetProvider;
    sds_produto: TSQLDataSet;
    sds_produtoCODPRODUTO: TIntegerField;
    sds_produtoPRODUTO: TStringField;
    sds_produtoCODPRO: TStringField;
    cds_produtoCODPRODUTO: TIntegerField;
    cds_produtoPRODUTO: TStringField;
    cds_produtoCODPRO: TStringField;
    BitBtn3: TBitBtn;
    btnVendaServico: TBitBtn;
    procedure cbMesChange(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4Change(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btnVendaServicoClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRel_comissao: TfRel_comissao;

implementation

uses uUtils, UDm, uProcurar;

{$R *.dfm}

procedure TfRel_comissao.cbMesChange(Sender: TObject);
var  periodo : TUtils;
begin
  periodo := TUtils.Create;
  periodo.criaIni(cbMes.text);
  periodo.criaFim(cbMes.text);  
  dta1.Text := periodo.PeriodoIni;
  dta2.Text := periodo.PeriodoFim;
  periodo.Destroy;
end;

procedure TfRel_comissao.CheckBox1Click(Sender: TObject);
begin
  if (CheckBox1.Checked) then
  begin
    Edit1.Enabled := True;
    Edit2.Enabled := True;
    Edit1.Color := clWindow;
    Edit2.Color := clWindow;
  end
  else begin
    Edit1.Text := '';
    Edit2.Text := '';
    Edit1.Enabled := False;
    Edit2.Enabled := False;
    Edit1.Color := cl3DLight;
    Edit2.Color := cl3DLight;
  end;
end;

procedure TfRel_comissao.CheckBox2Click(Sender: TObject);
begin
  if (CheckBox2.Checked) then
  begin
    Edit3.Enabled := True;
    Edit4.Enabled := True;
    Edit3.Color := clWindow;
    Edit4.Color := clWindow;
  end
  else begin
    Edit3.Text := '';
    Edit4.Text := '';
    Edit3.Enabled := False;
    Edit4.Enabled := False;
    Edit3.Color := cl3DLight;
    Edit4.Color := cl3DLight;
  end;
end;

procedure TfRel_comissao.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TfRel_comissao.BitBtn1Click(Sender: TObject);
begin
  Rep.Filename := str_relatorio + 'comissao.rep';
  Rep.Title := Rep.Filename;
  Rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  Rep.Report.Params.ParamByName('DATA1').Value := StrToDate(Dta1.Text);
  Rep.Report.Params.ParamByName('DATA2').Value := StrToDate(Dta2.Text);
  if (Edit1.Text <> '') then
    Rep.Report.Params.ParamByName('PFUN').Value := Edit1.Text
  else
    Rep.Report.Params.ParamByName('PFUN').Value := '0';
  rep.execute;
end;

procedure TfRel_comissao.BitBtn2Click(Sender: TObject);
begin
  Rep.Filename := str_relatorio + 'comissao_produto-vendedor.rep';
  Rep.Title := Rep.Filename;
  Rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  Rep.Report.Params.ParamByName('DATA1').Value := StrToDate(Dta1.Text);
  Rep.Report.Params.ParamByName('DATA2').Value := StrToDate(Dta2.Text);
  if (Edit1.Text <> '') then
    Rep.Report.Params.ParamByName('PFUN').Value := Edit1.Text
  else
    Rep.Report.Params.ParamByName('PFUN').Value := '0';
  if (Edit3.Text <> '') then
    Rep.Report.Params.ParamByName('PROD').Value := Edit3.Text
  else
    Rep.Report.Params.ParamByName('PROD').Value := 'TODOS PRODUTOS';
  rep.execute;
  
end;

procedure TfRel_comissao.FormCreate(Sender: TObject);
begin
  if not cds_func.Active then
    cds_func.Open;
  if not cds_produto.Active then
    cds_produto.Open;
end;


procedure TfRel_comissao.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    if not cds_func.Active then
      cds_func.open;

    if not cds_func.LOCATE('COD_FUNCIONARIO', edit1.Text, [loCaseInsensitive]) then
    begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      exit;
    end;
    Edit2.Text := cds_funcNOME_FUNCIONARIO.AsString;
    key:= #0;
    SelectNext((Sender as TwinControl),True,True);
  end;
end;

procedure TfRel_comissao.Edit2Change(Sender: TObject);
begin
  Edit1.Text := IntToStr(cds_funcCOD_FUNCIONARIO.asInteger);
end;

procedure TfRel_comissao.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    if not cds_produto.Active then
      cds_produto.open;

    if not cds_produto.LOCATE('CODPRO', edit3.Text, [loCaseInsensitive]) then
    begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      exit;
    end;
    Edit4.Text := cds_produtoPRODUTO.AsString;
    key:= #0;
    SelectNext((Sender as TwinControl),True,True);
  end;
end;

procedure TfRel_comissao.Edit4Change(Sender: TObject);
begin
  Edit3.Text := cds_produtoCODPRO.AsString;
end;

procedure TfRel_comissao.BitBtn3Click(Sender: TObject);
begin
  Rep.Filename := str_relatorio + 'comissao_sintetico.rep';
  Rep.Title := Rep.Filename;
  Rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  Rep.Report.Params.ParamByName('DATA1').Value := StrToDate(Dta1.Text);
  Rep.Report.Params.ParamByName('DATA2').Value := StrToDate(Dta2.Text);
  if (Edit1.Text <> '') then
    Rep.Report.Params.ParamByName('PFUN').Value := Edit1.Text
  else
    Rep.Report.Params.ParamByName('PFUN').Value := '0';
  rep.execute;
end;

procedure TfRel_comissao.btnVendaServicoClick(Sender: TObject);
begin
  Rep.Filename := str_relatorio + 'rel_servico.rep';
  Rep.Title := Rep.Filename;
  Rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  Rep.Report.Params.ParamByName('DATA1').Value := StrToDate(Dta1.Text);
  Rep.Report.Params.ParamByName('DATA2').Value := StrToDate(Dta2.Text);
  if (Edit1.Text <> '') then
    Rep.Report.Params.ParamByName('PFUN').Value := Edit1.Text
  else
    Rep.Report.Params.ParamByName('PFUN').Value := '0';
  rep.execute;

end;

end.
