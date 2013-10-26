unit uFiltroContMaq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, Buttons, DB, SqlExpr, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, ExtCtrls, DBClient, Provider, Mask, JvExMask,
  JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvExStdCtrls, JvCombobox;

type
  TfFintroContMaq = class(TForm)
    Panel1: TPanel;
    JvDBGrid1: TJvDBGrid;
    sds_filtro: TSQLDataSet;
    btnProcurar: TBitBtn;
    dsp_filtro: TDataSetProvider;
    cds_filtro: TClientDataSet;
    dst_filtro: TDataSource;
    sds_filtroCODMOVIMENTO: TIntegerField;
    sds_filtroDATAVENDA: TDateField;
    sds_filtroSERIE: TStringField;
    sds_filtroNOTAFISCAL: TIntegerField;
    sds_filtroCODCLIENTE: TIntegerField;
    sds_filtroCOD_VEICULO: TIntegerField;
    sds_filtroCODVENDEDOR: TSmallintField;
    sds_filtroCODALMOXARIFADO: TIntegerField;
    sds_filtroCODPRODUTO: TIntegerField;
    sds_filtroDESCPRODUTO: TStringField;
    sds_filtroPRODUTO: TStringField;
    sds_filtroNOMECLIENTE: TStringField;
    sds_filtroNOME_FUNCIONARIO: TStringField;
    sds_filtroMARCA_MODELO: TStringField;
    cds_filtroCODMOVIMENTO: TIntegerField;
    cds_filtroDATAVENDA: TDateField;
    cds_filtroSERIE: TStringField;
    cds_filtroNOTAFISCAL: TIntegerField;
    cds_filtroCODCLIENTE: TIntegerField;
    cds_filtroCOD_VEICULO: TIntegerField;
    cds_filtroCODVENDEDOR: TSmallintField;
    cds_filtroCODALMOXARIFADO: TIntegerField;
    cds_filtroCODPRODUTO: TIntegerField;
    cds_filtroDESCPRODUTO: TStringField;
    cds_filtroPRODUTO: TStringField;
    cds_filtroNOMECLIENTE: TStringField;
    cds_filtroNOME_FUNCIONARIO: TStringField;
    cds_filtroMARCA_MODELO: TStringField;
    edNomeCliente: TEdit;
    edCodCliente: TEdit;
    Label9: TLabel;
    btnClienteProcura: TBitBtn;
    edData: TJvDatePickerEdit;
    Label2: TLabel;
    Label1: TLabel;
    edData1: TJvDatePickerEdit;
    btnSair: TBitBtn;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    edCondutor: TJvComboBox;
    edMaquina: TJvComboBox;
    Label4: TLabel;
    sds_fun: TSQLDataSet;
    sds_funCOD_FUNCIONARIO: TIntegerField;
    sds_funNOME_FUNCIONARIO: TStringField;
    sds_Veiculo: TSQLDataSet;
    sds_VeiculoCOD_VEICULO: TIntegerField;
    sds_VeiculoMARCA_MODELO: TStringField;
    sds_filtroPERIODOINI: TSQLTimeStampField;
    sds_filtroPERIODOFIM: TSQLTimeStampField;
    cds_filtroPERIODOINI: TSQLTimeStampField;
    cds_filtroPERIODOFIM: TSQLTimeStampField;
    procedure btnProcurarClick(Sender: TObject);
    procedure btnClienteProcuraClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    varForm : string;
    Procedure populoedits;
  end;

var
  fFintroContMaq: TfFintroContMaq;

implementation

uses UDm, UDMNF, uMaquinaControle, uProcurar_nf;

{$R *.dfm}

procedure TfFintroContMaq.btnProcurarClick(Sender: TObject);
var
 VarSql, VarSerieMaq : string;
begin
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'SERIEMAQUINA';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
    VarSerieMaq := dm.cds_parametroDADOS.AsString;
  dm.cds_parametro.Close;

  VarSql := '';
  VarSql := 'select  v.CODMOVIMENTO, v.DATAVENDA, v.SERIE, v.NOTAFISCAL, ' +
    'v.CODCLIENTE, m.COD_VEICULO, m.CODVENDEDOR, m.CODALMOXARIFADO, ' +
    'md.CODPRODUTO, md.DESCPRODUTO, md.PERIODOINI, md.PERIODOFIM, p.PRODUTO, c.NOMECLIENTE, ' +
    'f.NOME_FUNCIONARIO, veic.MARCA_MODELO ' +
    'from VENDA v, MOVIMENTO m,  MOVIMENTODETALHE md, PRODUTOS p, ' +
    'CLIENTEs c, FUNCIONARIO f, VEICULO veic ' +
    'where m.CODMOVIMENTO = v.CODMOVIMENTO ' +
    'and md.CODMOVIMENTO = v.CODMOVIMENTO ' +
    'and p.CODPRODUTO = md.CODPRODUTO ' +
    'and c.CODCLIENTE = m.CODCLIENTE ' +
    'and f.COD_FUNCIONARIO = m.CODVENDEDOR ' +
    'and veic.COD_VEICULO = m.COD_VEICULO ' +
    'and v.SERIE = ';
  VarSql := VarSql + QuotedStr(VarSerieMaq);
  if (edCodCliente.Text <> '') then
    VarSql := VarSql + ' and c.CODCLIENTE = ' + edCodCliente.Text;
  if (edMaquina.Text <> '') then
  begin
    if (not sds_Veiculo.Active) then
        sds_veiculo.Open;
    if (sds_veiculo.Locate('MARCA_MODELO', edMaquina.Text, [loCaseInsensitive])) then
      VarSql := VarSql + 'and veic.COD_VEICULO = ' + IntToStr(sds_VeiculoCOD_VEICULO.AsInteger);
    sds_Veiculo.Close;
  end;
  if (edCondutor.Text <> '') then
  begin
    if (not sds_fun.Active) then
        sds_fun.Open;
    if (sds_fun.Locate('NOME_FUNCIONARIO', edCondutor.Text, [loCaseInsensitive])) then
      VarSql := VarSql + 'and f.COD_FUNCIONARIO = ' + IntToStr(sds_funCOD_FUNCIONARIO.AsInteger);
    sds_fun.Close;
  end;

  if (edData.Text <> '') then
    VarSql := VarSql + 'and v.DATAVENDA between ' +
    QuotedStr(FormatDatetime('MM/DD/YYYY',edData.Date)) + ' and ' +
    QuotedStr(FormatDatetime('MM/DD/YYYY',edData1.Date));

  if (cds_filtro.Active) then
    cds_filtro.Close;
  cds_filtro.CommandText := VarSql;
  cds_filtro.Open;

end;

procedure TfFintroContMaq.btnClienteProcuraClick(Sender: TObject);
begin
    fProcurar_nf := TfProcurar_nf.Create(self,dmnf.scds_cli_proc);
    fProcurar_nf.BtnProcurar.Click;
    fProcurar_nf.EvDBFind1.DataField := 'NOMECLIENTE';
    fProcurar_nf.btnIncluir.Visible := True;
    try
      if (fProcurar_nf.ShowModal = mrOK) then
        if dmnf.scds_cli_procSTATUS.AsInteger = 2 then
        begin
          MessageDlg('Cliente com status "INATIVO" para efetuar uma venda para '+#13+#10+'esse cliente, antes vc terá que mudar seu status para "ATIVO".', mtError, [mbOK], 0);
          exit;
        end;
        if dmnf.scds_cli_procBLOQUEIO.AsString = 'S' then
        begin
          MessageDlg('Cliente com cadastro "BLOQUEADO",  venda não permitida.', mtError, [mbOK], 0);
          exit;
        end;
      edCodCliente.Text := IntToStr(dmnf.scds_cli_procCODCLIENTE.AsInteger);
      edNomeCliente.Text := dmnf.scds_cli_procNOMECLIENTE.AsString;
    finally
     dmnf.scds_cli_proc.Close;
     fProcurar_nf.Free;
    end;
end;

procedure TfFintroContMaq.btnSairClick(Sender: TObject);
begin
   if (varForm = 'maquina') then
     populoedits;
   Close;
end;

procedure TfFintroContMaq.BitBtn1Click(Sender: TObject);
begin
  edCodCliente.Text := '';
  edNomeCliente.Text := '';
  edCondutor.Text := '';
  edMaquina.Text := '';  
  edData.Clear;
  edData1.Clear;
end;

procedure TfFintroContMaq.FormCreate(Sender: TObject);
begin
  // Preencho combo edmaquina
  if (not sds_Veiculo.Active) then
     sds_Veiculo.Open;
  edMaquina.Items.Clear;
  while not sds_Veiculo.Eof do
  begin
    edMaquina.Items.Add(sds_VeiculoMARCA_MODELO.AsString);
    sds_Veiculo.Next;
  end;
  sds_Veiculo.Close;
  // Preencho combo edcondutor
  if (not sds_fun.Active) then
     sds_fun.Open;
  edCondutor.Items.Clear;
  while not sds_fun.Eof do
  begin
    edCondutor.Items.Add(sds_funNOME_FUNCIONARIO.AsString);
    sds_fun.Next;
  end;
  sds_fun.Close;
end;

procedure TfFintroContMaq.populoedits;
begin
     fMaquinasControle.varCodMovimento := cds_filtroCODMOVIMENTO.AsInteger;
     fMaquinasControle.edMaquina.Text := cds_filtroMARCA_MODELO.AsString;
     if (not dm.cds_ccusto.Active) then
        dm.cds_ccusto.Open;
     if (dm.cds_ccusto.Locate('CODIGO', cds_filtroCODALMOXARIFADO.AsInteger, [loCaseInsensitive])) then
       fMaquinasControle.cbResultado.Text := dm.cds_ccustoNOME.AsString;
     fMaquinasControle.edData.Text := cds_filtroDATAVENDA.AsString;
     fMaquinasControle.edCodCliente.Text := IntToStr(cds_filtroCODCLIENTE.AsInteger);
     fMaquinasControle.edNomeCliente.Text := cds_filtroNOMECLIENTE.AsString;
     fMaquinasControle.cbServico.Text := cds_filtroPRODUTO.AsString;
     fMaquinasControle.edServico.Text := cds_filtroDESCPRODUTO.AsString;
     fMaquinasControle.edCondutor.Text := cds_filtroNOME_FUNCIONARIO.AsString;
     fMaquinasControle.edDataini.Text := cds_filtroPERIODOINI.Text;
     fMaquinasControle.edDatafim.Text := cds_filtroPERIODOFIM.Text;
end;

procedure TfFintroContMaq.JvDBGrid1DblClick(Sender: TObject);
begin
 if (varForm <> 'maquina') then
 begin
   fMaquinasControle := TfMaquinasControle.Create(Application);
   try
     populoedits;
     fMaquinasControle.btnProcurar.Enabled := False;
     fMaquinasControle.ShowModal;
   finally
     fMaquinasControle.Free;
   end;
 end;  
end;

end.
