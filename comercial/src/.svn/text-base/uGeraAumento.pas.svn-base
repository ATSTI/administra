unit uGeraAumento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, TFlatGaugeUnit, Buttons, JvExStdCtrls,
  JvEdit, JvValidateEdit, FMTBcd, DBClient, Provider, DB, SqlExpr, DBLocal,
  DBLocalS, Grids, DBGrids, JvExDBGrids, JvDBGrid;

type
  TfGeraAumento = class(TForm)
    Panel1: TPanel;
    cbRegiao: TComboBox;
    Label1: TLabel;
    cbFamilia: TComboBox;
    Label7: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    edValor: TJvValidateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    FlatGauge1: TFlatGauge;
    Label4: TLabel;
    SQLDataSet1: TSQLDataSet;
    SQLDataSet1CODDADOS: TIntegerField;
    SQLDataSet1DESCRICAO: TStringField;
    SQLDataSet1USO: TStringField;
    SQLDataSet1CODIGOS: TStringField;
    SQLDataSet1OUTROS: TStringField;
    DataSetProvider1: TDataSetProvider;
    cdsRegiao: TClientDataSet;
    cdsRegiaoCODDADOS: TIntegerField;
    cdsRegiaoDESCRICAO: TStringField;
    cdsRegiaoUSO: TStringField;
    cdsRegiaoCODIGOS: TStringField;
    cdsRegiaoOUTROS: TStringField;
    btnProdutoProcura: TBitBtn;
    scds_produto: TSQLClientDataSet;
    scds_produtoCODPRODUTO: TIntegerField;
    scds_produtoPRODUTO: TStringField;
    scds_produtoCODPRO: TStringField;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    cdsCODLISTAPRECO: TIntegerField;
    cdsUNIDADE: TStringField;
    cdsCODPRODUTO: TIntegerField;
    cdsCODFORNECEDOR: TIntegerField;
    cdsCODIGO: TStringField;
    cdsPRECOLISTA: TFloatField;
    cdsTIPOOPERACAO: TStringField;
    cdsPRODUTO: TStringField;
    cdsFAMILIA: TStringField;
    cdsREGIAO2: TSmallintField;
    sdsCODLISTAPRECO: TIntegerField;
    sdsUNIDADE: TStringField;
    sdsCODPRODUTO: TIntegerField;
    sdsCODFORNECEDOR: TIntegerField;
    sdsCODIGO: TStringField;
    sdsPRECOLISTA: TFloatField;
    sdsTIPOOPERACAO: TStringField;
    sdsPRODUTO: TStringField;
    sdsFAMILIA: TStringField;
    sdsREGIAO: TSmallintField;
    Edit3: TEdit;
    Valor: TLabel;
    JvDBGrid1: TJvDBGrid;
    DataSource1: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure btnProdutoProcuraClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fGeraAumento: TfGeraAumento;

implementation

uses UDm, uProcurar;

{$R *.dfm}

procedure TfGeraAumento.FormShow(Sender: TObject);
begin
  if (not dm.cds_familia.Active) then
    dm.cds_familia.Open;
  dm.cds_familia.First;
  while not dm.cds_familia.Eof do
  begin
     cbFamilia.Items.Add(dm.cds_familiaDESCFAMILIA.AsString);
     dm.cds_familia.Next;
  end;
  dm.cds_familia.Close;

  if (not cdsRegiao.Active) then
    cdsRegiao.Open;
  cdsRegiao.First;
  while not cdsRegiao.Eof do
  begin
     cbRegiao.Items.Add(cdsRegiaoDESCRICAO.AsString);
     cdsRegiao.Next;
  end;
  cdsRegiao.Close;

end;

procedure TfGeraAumento.Edit1Exit(Sender: TObject);
begin
    if dm.scds_produto_proc.Active then
      dm.scds_produto_proc.Close;
    dm.scds_produto_proc.Params[0].AsInteger := 0;
    dm.scds_produto_proc.Params[1].AsString := Edit1.Text;
    dm.scds_produto_proc.Open;
    if dm.scds_produto_proc.IsEmpty then begin
      MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
      [mbOk], 0);
      btnProdutoProcura.Click;
      exit;
    end;
    Edit1.text := dm.scds_produto_procCODPRO.AsString;
    Edit2.text := dm.scds_produto_procPRODUTO.AsString;
    Edit3.text := IntToStr(dm.scds_produto_procCODPRODUTO.AsInteger);    
end;

procedure TfGeraAumento.btnProdutoProcuraClick(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,scds_produto);
  try
    fProcurar.btnImprimir.Visible := false;
    fProcurar.BtnProcurar.Click;
    fProcurar.EvDBFind1.DataField := 'PRODUTO';
    fProcurar.ShowModal;
    Edit1.Text := scds_produtoCODPRO.AsString;
    Edit2.Text := scds_produtoPRODUTO.AsString;
    Edit3.text := IntToStr(scds_produtoCODPRODUTO.AsInteger);
  finally
    fProcurar.Free;
  end;
end;

procedure TfGeraAumento.CheckBox1Click(Sender: TObject);
begin
  if (CheckBox1.Checked = True) then
  begin
    CheckBox2.Checked := False;
    CheckBox3.Checked := False;
  end;
end;

procedure TfGeraAumento.CheckBox2Click(Sender: TObject);
begin
  if (CheckBox2.Checked = True) then
  begin
    CheckBox1.Checked := False;
    CheckBox3.Checked := False;
  end;
end;

procedure TfGeraAumento.CheckBox3Click(Sender: TObject);
begin
  if (CheckBox3.Checked = True) then
  begin
    CheckBox2.Checked := False;
    CheckBox1.Checked := False;
  end;
end;

procedure TfGeraAumento.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TfGeraAumento.BitBtn1Click(Sender: TObject);
var
  codRegiao, codProd, I : integer;
  varValor : Double;
  sqlTexto, avancar: string;

begin
  if (not cds.Active) then
    cds.Open;
  cds.First;
  FlatGauge1.MaxValue := cds.RecordCount;
  Label4.Caption := 'Aguarde enquanto o sistema atualiza a lista de Preço';
  I := 0;
  while not cds.Eof do
  begin
      avancar := 'NAO';
      if (I > 0) then
       FlatGauge1.Progress := FlatGauge1.Progress + 1
      else
        I := 1;
      if ((cbRegiao.Text = '') and (cbFamilia.Text = '') and (Edit3.Text = '')) then
      begin
         ShowMessage('é nescessario informar pelo menos um dos seguintes campos "Grupo Fornecedor", "Grupo Produtos", "Produto"');
         exit;
      end;
      if ((CheckBox1.Checked = False) and (CheckBox2.Checked = False) and (CheckBox3.Checked = False)) then
      begin
         ShowMessage('é nescessario marcar um dos seguintes campos "Percentual %", "Reais R$", "Mudar o Valor"');
         exit;
      end;
      if (edValor.Value = 0) then
      begin
         ShowMessage('é nescessario informar o campo Valor');
         exit;
      end;
      // é só alterar o valor
      if (CheckBox1.Checked = True) then // Percentual
         varValor := cdsPRECOLISTA.Value * (1 + (edValor.Value / 100));

      if (CheckBox2.Checked = True) then // Acrescenta ao valor
         varValor := edValor.Value + cdsPRECOLISTA.Value;

      if (CheckBox3.Checked = True) then // Altera o Valor
         varValor := edValor.Value;

      if (cbRegiao.Text <> '') then //Grupo Fornecedro
      begin
         if (not cdsRegiao.Active) then
             cdsRegiao.Open;
         cdsRegiao.Locate('DESCRICAO', cbRegiao.Text, [loCaseInsensitive]);
         codRegiao := cdsRegiaoCODDADOS.AsInteger;
         if (cdsREGIAO2.AsInteger <> codRegiao) then
           avancar := 'SIM';
      end;

      if (cbFamilia.Text <> '') then //Grupo Produtos
         if (cdsFAMILIA.AsString <> cbFamilia.Text) then
           avancar := 'SIM';

      if (Edit3.Text <> '') then //Produtos
         if (cdsCODPRODUTO.AsInteger <> StrToInt(Edit3.Text)) then
           avancar := 'SIM';

      // Agora é só fazer o update
      if (avancar = 'NAO') then
      begin
        sqlTexto := 'Update LISTAPRECO set PRECOLISTA =  ';
        DecimalSeparator := '.';
        sqlTexto := sqlTexto + Format('%-6.2n',[varValor]);
        sqlTexto := sqlTexto + ' where CODLISTAPRECO = ';
        sqlTexto := sqlTexto + IntToStr(cdsCODLISTAPRECO.AsInteger);
        DM.sqlsisAdimin.ExecuteDirect(sqlTexto);
        DecimalSeparator := ',';
        cds.Next;
      end
      else
      begin
        cds.Next;
      end;
  end;
end;

procedure TfGeraAumento.BitBtn3Click(Sender: TObject);
begin
  if (not cds.Active) then
    cds.Open;
  cds.First;
end;

end.
