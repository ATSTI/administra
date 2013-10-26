unit uMaquinaControle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, JvExStdCtrls, JvCombobox, Buttons,
  ExtCtrls, MMJPanel, uOsClasse, DBClient, Provider, SqlExpr, DB, FMTBcd;

type
  TfMaquinasControle = class(TForm)
    edMaquina: TJvComboBox;
    edData: TJvDatePickerEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    cbResultado: TJvComboBox;
    edServico: TEdit;
    Label5: TLabel;
    edCondutor: TJvComboBox;
    labelCondutor: TLabel;
    cbServico: TJvComboBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    MMJPanel2: TMMJPanel;
    btnGravar: TBitBtn;
    btnIncluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    btnProcurar: TBitBtn;
    btnSair: TBitBtn;
    Label9: TLabel;
    btnClienteProcura: TBitBtn;
    edCodCliente: TEdit;
    edNomeCliente: TEdit;
    sdsProd: TSQLDataSet;
    sdsProdCODPRODUTO: TIntegerField;
    sdsProdCOD_BARRA: TStringField;
    sdsProdCODPRO: TStringField;
    sdsProdPRODUTO: TStringField;
    dspProd: TDataSetProvider;
    cdsProd: TClientDataSet;
    cdsProdCODPRODUTO: TIntegerField;
    cdsProdCOD_BARRA: TStringField;
    cdsProdCODPRO: TStringField;
    cdsProdPRODUTO: TStringField;
    sds_Veiculo: TSQLDataSet;
    sds_VeiculoCOD_VEICULO: TIntegerField;
    sds_VeiculoMARCA_MODELO: TStringField;
    sds_fun: TSQLDataSet;
    sds_funCOD_FUNCIONARIO: TIntegerField;
    sds_funNOME_FUNCIONARIO: TStringField;
    sds_serie: TSQLDataSet;
    sds_serieSERIE: TStringField;
    sds_serieULTIMO_NUMERO: TIntegerField;
    dsp_serie: TDataSetProvider;
    cds_serie: TClientDataSet;
    cds_serieSERIE: TStringField;
    cds_serieULTIMO_NUMERO: TIntegerField;
    cds_ccusto: TClientDataSet;
    cds_ccustoCODIGO: TIntegerField;
    cds_ccustoCONTA: TStringField;
    cds_ccustoNOME: TStringField;
    d_2: TDataSetProvider;
    s_2: TSQLDataSet;
    s_2CODIGO: TIntegerField;
    s_2CONTA: TStringField;
    s_2NOME: TStringField;
    edDataini: TJvMaskEdit;
    edDatafim: TJvMaskEdit;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnClienteProcuraClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure edDatainiChange(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    Os: TOsClasse;
    Procedure limpaCampos;
    Procedure carregaCombos;
    Procedure controlaEventos;
    { Private declarations }
  public
    modo: String; // Insert, Edit, Browse, Inactive
    VarHoraIni, VarHoraFim : TDateTime;
    varCodMovimento : integer;
    { Public declarations }
  end;

var
  fMaquinasControle: TfMaquinasControle;
  codigoFun, CodigoMaq : integer;

implementation

uses UDm, uProcurar_nf, UDMNF, uFiltroContMaq;

{$R *.dfm}

procedure TfMaquinasControle.btnIncluirClick(Sender: TObject);
begin
  modo := 'Insert';
  limpaCampos;
  controlaEventos;
end;

procedure TfMaquinasControle.btnGravarClick(Sender: TObject);
begin
  if ((modo = 'Insert') or (modo = 'Edit')) then
  begin
    if (edCodCliente.Text = '') then
    begin
      MessageDlg('Cliente não informado', mtError, [mbOK], 0);
      edCodCliente.SetFocus;
      exit;
    end;
    Os := TOsClasse.Create;

    if Dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'SERIEMAQUINA';
    dm.cds_parametro.Open;
    if (not dm.cds_parametro.IsEmpty) then
    begin
      if (cds_serie.Active) then
         cds_serie.Close;
      cds_serie.Params[0].AsString := dm.cds_parametroDADOS.AsString;
      cds_serie.Open;
      dm.cds_parametro.Close;
      if (not cds_serie.IsEmpty) then
      begin
        {Os.serie := cds_serieSERIE.AsString;
        Os.notaFiscal := cds_serieULTIMO_NUMERO.AsInteger + 1;
        cds_serie.Edit;
        cds_serieULTIMO_NUMERO.AsInteger := cds_serieULTIMO_NUMERO.AsInteger + 1;
        cds_serie.ApplyUpdates(0);}
      end
      else
      begin
        MessageDlg('Serie não encontrado', mtWarning, [mbOK], 0);
        exit;
      end;
    end
    else
    begin
       MessageDlg('Parametro SERIEMAQUINAS não encontrado', mtWarning, [mbOK], 0);
       exit;
    end;
    {if (not sds_Veiculo.Active) then
        sds_veiculo.Open;
    if (sds_veiculo.Locate('MARCA_MODELO', edMaquina.Text, [loCaseInsensitive])) then
      Os.codMaquina := IntToStr(sds_VeiculoCOD_VEICULO.AsInteger);
    if (not sds_fun.Active) then
        sds_fun.Open;
    if (sds_fun.Locate('NOME_FUNCIONARIO', edCondutor.Text, [loCaseInsensitive])) then
      Os.codCondutor := IntToStr(sds_funCOD_FUNCIONARIO.AsInteger);
    sds_fun.Close;
    Os.dataMovimento := edData.Text;
    Os.dataVencimento := edData.Text;
    Os.datainicio := edDataini.Text;
    Os.datafinal := edDatafim.Text;
    Os.codNatureza := 3;
    Os.status := '0';
    Os.codCliente := StrToInt(edCodCliente.Text);
    Os.codUsuario := usulog;
    Os.codResponsavel := usulog;
    if (dm.cds_ccusto.Locate('NOME', cbResultado.Text, [loCaseInsensitive])) then
      Os.codCentroResultado := dm.cds_ccustoCODIGO.AsInteger
    else begin
      if (cbResultado.Text <> '') then
      begin
        MessageDlg('Centro de Resultado não encontrado.', mtError, [mbOK], 0);
        cbResultado.SetFocus;
        exit;
      end;
    end;
    if (cdsProd.Locate('PRODUTO', cbServico.Text, [loCaseInsensitive])) then
    begin
      Os.codProduto := cdsProdCODPRODUTO.AsInteger;
      Os.obsMovimento := edServico.Text;
    end;
    Os.preco := 0;
    Os.Quantidade := 0;
    if (Modo = 'Insert') then
    begin
      Os.IncluiOs;
      varCodMovimento := StrToInt(Os.codMovimento);
    end;
    if (Modo = 'Edit') then
      Os.EditaOs;
    Os.Destroy;
    modo := 'Browse';
    controlaEventos;}
  end;

end;

procedure TfMaquinasControle.carregaCombos;
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
  //Vejo quais são as contas de Receitas para listar no lookupcombobox.
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTRORECEITA';
  dm.cds_parametro.Open;
  if dm.cds_ccusto.Active then
    dm.cds_ccusto.Close;
  dm.cds_ccusto.Params[0].AsString := dm.cds_parametroDADOS.AsString;;
  dm.cds_ccusto.Open;
  // populo a cbCResultado
  DM.cds_ccusto.First;
  cbResultado.Items.Clear;
  while not DM.cds_ccusto.Eof do
  begin
    cbResultado.Items.Add(dm.cds_ccustoNOME.AsString);
    DM.cds_ccusto.Next;
  end;
  dm.cds_parametro.Close;
  //Vejo quais são os produtos cadastrados como Serviços.
  if (cdsProd.Active) then
    cdsProd.CommandText := 'SELECT CODPRODUTO, COD_BARRA, CODPRO, PRODUTO FROM ' +
      'LISTAPRODUTO(0, ' + QuotedStr('TODOSPRODUTOS') +
      ', ' + QuotedStr('TODOSPRODUTOS') + ', ' + QuotedStr('TODOSGRUPOS') +  ', ' +
      QuotedStr('TODOSSUBGRUPOS')  + ',' + QuotedStr('TODASMARCAS')+') Where TIPOPROD = ' +
      QuotedStr('SERV');
  cdsProd.Open;
  cbServico.Items.Clear;
  While (not cdsProd.Eof) do
  begin
    cbServico.Items.Add(cdsProd.Fields[3].asString);
    cdsProd.Next;
  end;
end;

procedure TfMaquinasControle.controlaEventos;
begin
  if ((modo = 'Insert') or (modo = 'Edit')) then
  begin
    btnGravar.Visible := True;
    btnIncluir.Visible := False;
    btnProcurar.Enabled := False;
    btnSair.Enabled := False;
    btnExcluir.Visible := False;
    btnCancelar.Visible := True;
    btnClienteProcura.Enabled := True;
  end;
  if ((modo = 'Browse') or (modo = 'Inactive')) then
  begin
    btnGravar.Visible := False;
    btnIncluir.Visible := True;
    btnProcurar.Enabled := True;
    btnSair.Enabled := True;
    btnExcluir.Visible := True;
    btnCancelar.Visible := False;
    //btnClienteProcura.Enabled := False;
  end;

end;

procedure TfMaquinasControle.limpaCampos;
begin
  cbResultado.Text := '';
  edCodCliente.Text := '';
  edMaquina.Text := '';  
  edNomeCliente.Text := '';
  cbServico.Text := '';
  edServico.Text := '';
end;

procedure TfMaquinasControle.btnClienteProcuraClick(Sender: TObject);
begin
  if ((modo = 'Insert') or (modo = 'Edit')) then
  begin
    //DM.varNomeCliente := '';
    //dm.codcli := 0;
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
          //dbeCliente.SetFocus;
        end;
        if dmnf.scds_cli_procBLOQUEIO.AsString = 'S' then
        begin
          MessageDlg('Cliente com cadastro "BLOQUEADO",  venda não permitida.', mtError, [mbOK], 0);
          modo := 'Browse';
          controlaEventos;
          exit;
          //dbeCliente.SetFocus;
        end;
      //prazo := dmnf.scds_cli_procPRAZORECEBIMENTO.AsFloat;
      edCodCliente.Text := IntToStr(dmnf.scds_cli_procCODCLIENTE.AsInteger);
      edNomeCliente.Text := dmnf.scds_cli_procNOMECLIENTE.AsString;
    finally
     dmnf.scds_cli_proc.Close;
     fProcurar_nf.Free;
    end;
  end;

end;

procedure TfMaquinasControle.FormShow(Sender: TObject);
begin
  carregaCombos;
end;

procedure TfMaquinasControle.btnCancelarClick(Sender: TObject);
begin
  modo := 'Browse';
  controlaEventos;
end;

procedure TfMaquinasControle.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfMaquinasControle.btnProcurarClick(Sender: TObject);
begin
  fFintroContMaq := TfFintroContMaq.Create(Application);
  try
    fFintroContMaq.VarForm := 'maquina';
    fFintroContMaq.ShowModal;
  finally
    fFintroContMaq.free;
  end;
  if ((edMaquina.Text <> '') and (modo <> 'Insert')) then
     modo := 'Browse';
end;

procedure TfMaquinasControle.edDatainiChange(Sender: TObject);
begin
 if (modo = 'Browse') then
 begin
   modo := 'Edit';
   controlaEventos;
 end;  
end;

procedure TfMaquinasControle.btnExcluirClick(Sender: TObject);
begin
  //Os.ExcluiOs;

end;

end.
