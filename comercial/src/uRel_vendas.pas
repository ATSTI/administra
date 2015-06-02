unit uRel_vendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SqlExpr, Provider, DB, DBClient, DBLocal, DBLocalS, StdCtrls,
  Buttons, ExtCtrls, MMJPanel, Mask, XPMenu, rpcompobase, rpvclreport,
  Menus;

type
  TfRel_Vendas = class(TForm)
    MMJPanel1: TMMJPanel;
    btnProcurar: TBitBtn;
    btnSair: TBitBtn;
    scds_serie_proc: TSQLClientDataSet;
    scds_serie_procCODSERIE: TStringField;
    scds_serie_procSERIE: TStringField;
    scds_serie_procULTIMO_NUMERO: TIntegerField;
    scds_serie_procNOTAFISCAL: TSmallintField;
    VCLReport1: TVCLReport;
    MMJPanel2: TMMJPanel;
    BitBtn1: TBitBtn;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    DateEdit1: TMaskEdit;
    DateEdit2: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    ComboBox2: TComboBox;
    PopupMenu1: TPopupMenu;
    Sair1: TMenuItem;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    edSemana: TEdit;
    Label9: TLabel;
    edMes: TEdit;
    Label10: TLabel;
    edAno: TEdit;
    BitBtn2: TBitBtn;
    cbProduto: TCheckBox;
    cbSubGrupo: TCheckBox;
    btnImprimir: TBitBtn;
    BitBtn3: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure cbProdutoClick(Sender: TObject);
    procedure cbSubGrupoClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRel_Vendas: TfRel_Vendas;

implementation

uses UDm;

{$R *.dfm}

procedure TfRel_Vendas.FormShow(Sender: TObject);
begin
  EdAno.Text := FormatDateTime('yyyy', now);

  if DM.cds_categoria.Active then
     DM.cds_categoria.Close;
  DM.cds_categoria.Params[0].Clear;
  DM.cds_categoria.Params[1].AsString := 'todos';
  DM.cds_categoria.Open;
  While not DM.cds_categoria.Eof do
  begin
    ComboBox2.Items.Add(DM.cds_categoriaDESCCATEGORIA.AsString);
    DM.cds_categoria.Next;
  end;
  DM.cds_categoria.Close;

  if (not scds_serie_proc.Active) then
     scds_serie_proc.Open;
     scds_serie_proc.First;
  While not scds_serie_proc.Eof do
  begin
    ComboBox1.Items.Add(scds_serie_procSERIE.AsString);
    scds_serie_proc.Next;
  end;
  scds_serie_proc.Close;

end;

procedure TfRel_Vendas.btnImprimirClick(Sender: TObject);
begin
  if RadioButton1.Checked then
  begin
    try
     VCLReport1.Filename := str_relatorio + 'VENDAS_DIARIAS.rep';
     VCLReport1.Title := VCLReport1.Filename;
     VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
     VCLReport1.Report.Params.ParamByName('DATA1').Value := StrToDate(DateEdit1.Text);
     VCLReport1.Report.Params.ParamByName('DATA2').Value := StrToDate(DateEdit2.Text);
     if (ComboBox2.Text <> '') then
       VCLReport1.Report.Params.ParamByName('PSERIE').Value := ComboBox2.Text
     else
       VCLReport1.Report.Params.ParamByName('PSERIE').Value := 'todos';
    except
      on EConvertError do
      begin
         ShowMessage ('Data Inválida! dd/mm/aa');
         DateEdit1.SetFocus;
      end;
    end;
    VCLReport1.Execute;
    exit;
  end
  else if RadioButton2.Checked then
  begin
    try
      VCLReport1.Filename := str_relatorio + 'VENDAS_D_SINTETICO.rep';
      VCLReport1.Title := VCLReport1.Filename;
      VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
      VCLReport1.Report.Params.ParamByName('DATA1').Value := StrToDate(DateEdit1.Text);
      VCLReport1.Report.Params.ParamByName('DATA2').Value := StrToDate(DateEdit2.Text);
      if (ComboBox2.Text <> '') then
        VCLReport1.Report.Params.ParamByName('PSERIE').Value := ComboBox2.Text
      else
        VCLReport1.Report.Params.ParamByName('PSERIE').Value := 'todos';
    except
      on EConvertError do
      begin
         ShowMessage ('Data Inválida! dd/mm/aa');
         DateEdit1.SetFocus;
      end;
    end;
    VCLReport1.Execute;
    exit;
  end
  else if RadioButton3.Checked then
  begin
    try
      VCLReport1.Filename := str_relatorio + 'VENDAS_M_SINTETICO.rep';
      VCLReport1.Title := VCLReport1.Filename;
      VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
      VCLReport1.Report.Params.ParamByName('DATA1').Value := StrToDate(DateEdit1.Text);
      VCLReport1.Report.Params.ParamByName('DATA2').Value := StrToDate(DateEdit2.Text);
      if (ComboBox2.Text <> '') then
        VCLReport1.Report.Params.ParamByName('PSERIE').Value := ComboBox2.Text
      else
        VCLReport1.Report.Params.ParamByName('PSERIE').Value := 'todos';

    except
      on EConvertError do
      begin
         ShowMessage ('Data Inválida! dd/mm/aa');
         DateEdit1.SetFocus;
      end;
    end;
    VCLReport1.Execute;
    exit;
  end;
  if RadioButton4.Checked then
  begin
    try
      VCLReport1.Filename := str_relatorio + 'vendas_prod.rep';
      VCLReport1.Title := VCLReport1.Filename;
      VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
      if ComboBox1.Text <> '' then
        VCLReport1.Report.Params.ParamByName('PRO1').Value := ComboBox1.Text
      else
        VCLReport1.Report.Params.ParamByName('PRO1').Value := 'TODOS OS SUBGRUPOS CADASTRADOS';
      VCLReport1.Report.Params.ParamByName('DATA1').Value := StrToDate(DateEdit1.Text);
      VCLReport1.Report.Params.ParamByName('DATA2').Value := StrToDate(DateEdit2.Text);
    except
      on EConvertError do
      begin
         ShowMessage ('Data Inválida! dd/mm/aa');
         DateEdit1.SetFocus;
      end;
    end;
    VCLReport1.Execute;
    exit;
  end;
end;

procedure TfRel_Vendas.btnSairClick(Sender: TObject);
begin
   close;
end;

procedure TfRel_Vendas.BitBtn2Click(Sender: TObject);
begin
  if (cbProduto.Checked) then
  begin
    if (edSemana.Text <> '') then
    begin
      if (edAno.Text = '') then
      begin
        ShowMessage ('Informe o Ano desejado.');
        Exit;
      end;
      VCLReport1.Filename := str_relatorio + 'vendasSemanaProduto.rep';
      VCLReport1.Title := VCLReport1.Filename;
      VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
      VCLReport1.Report.Params.ParamByName('PSEM').Value := EdSemana.Text;
      VCLReport1.Report.Params.ParamByName('PANO').Value := EdAno.Text;
      VCLReport1.Execute;
      exit;
    end
    Else if (edMes.Text <> '') then
    begin
      if (edAno.Text = '') then
      begin
        ShowMessage ('Informe o Ano desejado.');
        Exit;
      end;
      VCLReport1.Filename := str_relatorio + 'vendasMesProduto.rep';
      VCLReport1.Title := VCLReport1.Filename;
      VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
      VCLReport1.Report.Params.ParamByName('MESAN').Value := EdMes.Text;
      VCLReport1.Report.Params.ParamByName('PANO').Value := EdAno.Text;
      VCLReport1.Execute;
      exit;
    end
    Else begin
      if (edAno.Text = '') then
      begin
        ShowMessage ('Informe o Ano desejado.');
        Exit;
      end;
      VCLReport1.Filename := str_relatorio + 'vendasMesPorProduto.rep';
      VCLReport1.Title := VCLReport1.Filename;
      VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
      VCLReport1.Report.Params.ParamByName('PANO').Value := EdAno.Text;
      VCLReport1.Execute;
      exit;
    end;
    exit;
  end;
  if (cbSubGrupo.Checked) then
  begin
    if (edSemana.Text <> '') then
    begin
      if (edAno.Text = '') then
      begin
        ShowMessage ('Informe o Ano desejado.');
        Exit;
      end;
      if (edAno.Text = '') then
      begin
        ShowMessage ('Informe o Ano desejado.');
        Exit;
      end;
      VCLReport1.Filename := str_relatorio + 'vendassemana.rep';
      VCLReport1.Title := VCLReport1.Filename;
      VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
      VCLReport1.Report.Params.ParamByName('PSEM').Value := EdSemana.Text;
      VCLReport1.Report.Params.ParamByName('PANO').Value := EdAno.Text;
      VCLReport1.Execute;
      exit;
    end;
    if (edMes.Text <> '') then
    begin
      if (edAno.Text = '') then
      begin
        ShowMessage ('Informe o Ano desejado.');
        Exit;
      end;
      VCLReport1.Filename := str_relatorio + 'vendasmes.rep';
      VCLReport1.Title := VCLReport1.Filename;
      VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
      VCLReport1.Report.Params.ParamByName('MESAN').Value := EdMes.Text;
      VCLReport1.Report.Params.ParamByName('PANO').Value := EdAno.Text;
      VCLReport1.Execute;
      exit;
    end;
  end;
end;

procedure TfRel_Vendas.cbProdutoClick(Sender: TObject);
begin
  if (cbProduto.Checked) then
    cbSubGrupo.Checked := False
  else
    cbSubGrupo.Checked := True;
end;

procedure TfRel_Vendas.cbSubGrupoClick(Sender: TObject);
begin
  if (cbSubGrupo.Checked) then
    cbProduto.Checked := False
  else
    cbProduto.Checked := True;

end;

procedure TfRel_Vendas.BitBtn3Click(Sender: TObject);
begin
     VCLReport1.Filename := str_relatorio + 'rel_vendaCompraiCMS.rep';
     VCLReport1.Title := VCLReport1.Filename;
     VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
     VCLReport1.Report.Params.ParamByName('DATA1').Value := StrToDate(DateEdit1.Text);
     VCLReport1.Report.Params.ParamByName('DATA2').Value := StrToDate(DateEdit2.Text);
     VCLReport1.Execute;
end;

end.
