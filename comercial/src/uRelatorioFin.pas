unit uRelatorioFin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ExtCtrls, MMJPanel, rpcompobase,
  rpvclreport, DB, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit;

type
  TfRelatorioFin = class(TForm)
    rep: TVCLReport;
    GroupBox3: TGroupBox;
    btnSair: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    GroupBox2: TGroupBox;
    edCodCCusto: TComboBox;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    cbMes: TComboBox;
    MaskEdit1: TJvDatePickerEdit;
    MaskEdit2: TJvDatePickerEdit;
    rgTipo: TRadioGroup;
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure cbMesChange(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelatorioFin: TfRelatorioFin;

implementation

uses UDm, uUtils;

{$R *.dfm}

procedure TfRelatorioFin.BitBtn4Click(Sender: TObject);
begin
  Case rgTipo.ItemIndex of
    0 : rep.Filename := str_relatorio + 'rel_dre.rep';
    1 : rep.Filename := str_relatorio + 'rel_dreCaixa.rep';
  end;
  rep.Title    := rep.Filename;
  rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  if MaskEdit1.Text = '  /  /    ' then
  begin
    MessageDlg('Preencha o Campo Período !', mtWarning, [mbOK], 0);
    MaskEdit1.SetFocus;
    exit;
  end
  else
    rep.Report.Params.ParamByName('PDTA1').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit1.Text));

  if MaskEdit2.Text = '  /  /    ' then
  begin
    MessageDlg('Preencha o Campo Período !', mtWarning, [mbOK], 0);
    MaskEdit2.SetFocus;
    exit;
  end
  else
    rep.Report.Params.ParamByName('PDTA2').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit2.Text));

  if edCodCCusto.Text <> '' then
  begin
    if (not dm.cds_ccusto.Active) then
       dm.cds_ccusto.Open;
    dm.cds_ccusto.Locate('NOME', edCodCCusto.Text,[loPartialKey]);
    rep.Report.Params.ParamByName('PCC').Value := dm.cds_ccustoCODIGO.asInteger;
  end
  else
    rep.Report.Params.ParamByName('PCC').Value := 0;

  {case RadioGroup1.ItemIndex of
    0: begin
         rep.Report.Params.ParamByName('GRUPO').Value := 'N';
         rep.Report.Params.ParamByName('SUB').Value := 'N';
       end;
    1: begin
         rep.Report.Params.ParamByName('GRUPO').Value := 'S';
         rep.Report.Params.ParamByName('SUB').Value := 'N';
       end;
    2: begin
         rep.Report.Params.ParamByName('GRUPO').Value := 'N';
         rep.Report.Params.ParamByName('SUB').Value := 'S';
       end;
  end;}
  rep.Execute;
end;

procedure TfRelatorioFin.FormCreate(Sender: TObject);
begin
  //Vejo quais são as contas de Receitas para listar no lookupcombobox.
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTRORECEITA';
  dm.cds_parametro.Open;

  // populo a combobox Centro de Custo
  if dm.cds_ccusto.Active then
    dm.cds_ccusto.Close;
  dm.cds_ccusto.Params[0].AsString := dm.cds_parametroDADOS.AsString;
  dm.cds_parametro.Close;
  dm.cds_ccusto.Open;
  DM.cds_ccusto.First;
  while not DM.cds_ccusto.Eof do
  begin
    edCodCCusto.Items.Add(dm.cds_ccustoNOME.AsString);
    DM.cds_ccusto.Next;
  end;
  dm.cds_ccusto.Close;
  //====================================================

end;

procedure TfRelatorioFin.BitBtn6Click(Sender: TObject);
begin
  Close;
end;

procedure TfRelatorioFin.BitBtn1Click(Sender: TObject);
begin
    {rep.Filename := str_relatorio + 'rel_fluxocaixa.rep';
    rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    if MaskEdit4.Text = '  /  /    ' then
    begin
      MessageDlg('Preencha o Campo Período !', mtWarning, [mbOK], 0);
      MaskEdit4.SetFocus;
      exit;
    end
    else
      rep.Report.Params.ParamByName('DATA1').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit4.Text));

    if MaskEdit3.Text = '  /  /    ' then
    begin
      MessageDlg('Preencha o Campo Período !', mtWarning, [mbOK], 0);
      MaskEdit3.SetFocus;
      exit;
    end
    else
      rep.Report.Params.ParamByName('DATA2').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit3.Text));

    rep.Execute;
    }
end;

procedure TfRelatorioFin.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;

end;

procedure TfRelatorioFin.BitBtn3Click(Sender: TObject);
begin
  Case rgTipo.ItemIndex of
    0 : rep.Filename := str_relatorio + 'rel_dreSintetico.rep';
    1 : rep.Filename := str_relatorio + 'rel_dreSinteticoCaixa.rep';
  end;
  rep.Title    := rep.Filename;
  rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  if MaskEdit1.Text = '  /  /    ' then
  begin
    MessageDlg('Preencha o Campo Período !', mtWarning, [mbOK], 0);
    MaskEdit1.SetFocus;
    exit;
  end
  else
    rep.Report.Params.ParamByName('PDTA1').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit1.Text));

  if MaskEdit2.Text = '  /  /    ' then
  begin
    MessageDlg('Preencha o Campo Período !', mtWarning, [mbOK], 0);
    MaskEdit2.SetFocus;
    exit;
  end
  else
    rep.Report.Params.ParamByName('PDTA2').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit2.Text));

  if edCodCCusto.Text <> '' then
  begin
    if (not dm.cds_ccusto.Active) then
       dm.cds_ccusto.Open;
    dm.cds_ccusto.Locate('NOME', edCodCCusto.Text,[loPartialKey]);
    rep.Report.Params.ParamByName('PCC').Value := dm.cds_ccustoCODIGO.asInteger;
  end
  else
    rep.Report.Params.ParamByName('PCC').Value := 0;

  rep.Execute;

end;

procedure TfRelatorioFin.cbMesChange(Sender: TObject);
var  periodo : TUtils;
begin
  periodo := TUtils.Create;
  periodo.criaIni(cbMes.text);
  periodo.criaFim(cbMes.text);
  MaskEdit1.Text := periodo.PeriodoIni;
  MaskEdit2.Text := periodo.PeriodoFim;
  periodo.Destroy;

end;

procedure TfRelatorioFin.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
