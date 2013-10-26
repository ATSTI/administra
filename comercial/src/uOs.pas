unit uOs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvCombobox, Mask, JvExMask, JvToolEdit,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, uOsClasse, Buttons,
  ExtCtrls, MMJPanel, DB, FMTBcd, DBClient, Provider, SqlExpr, Grids,
  DBGrids, JvExDBGrids, JvDBGrid, JvBaseEdits, JvMemo, DateUtils,
  JvComponentBase, JvFormAutoSize, dbXpress, JvEdit, JvDBUltimGrid, Menus;

type
  TfOs = class(TForm)
    MMJPanel2: TMMJPanel;
    btnGravar: TBitBtn;
    btnIncluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    btnProcurar: TBitBtn;
    btnSair: TBitBtn;
    sdsProd: TSQLDataSet;
    dspProd: TDataSetProvider;
    cdsProd: TClientDataSet;
    sdsProdCODPRODUTO: TIntegerField;
    sdsProdCOD_BARRA: TStringField;
    sdsProdCODPRO: TStringField;
    sdsProdPRODUTO: TStringField;
    cdsProdCODPRODUTO: TIntegerField;
    cdsProdCOD_BARRA: TStringField;
    cdsProdCODPRO: TStringField;
    cdsProdPRODUTO: TStringField;
    sds_Veiculocli: TSQLDataSet;
    sds_VeiculocliCOD_VEICULO: TIntegerField;
    sds_VeiculocliCOD_CLIENTE: TIntegerField;
    sds_VeiculocliPLACA: TStringField;
    sds_VeiculocliMARCA_MODELO: TStringField;
    sds_VeiculocliTIPO: TStringField;
    sds_VeiculocliCOMBUSTIVEL: TStringField;
    sds_VeiculocliANO_FAB: TStringField;
    sds_VeiculocliANO_MOD: TStringField;
    sds_VeiculocliCOR: TStringField;
    dsp_Veiculocli: TDataSetProvider;
    cds_Veiculocli: TClientDataSet;
    cds_VeiculocliCOD_VEICULO: TIntegerField;
    cds_VeiculocliCOD_CLIENTE: TIntegerField;
    cds_VeiculocliPLACA: TStringField;
    cds_VeiculocliMARCA_MODELO: TStringField;
    cds_VeiculocliTIPO: TStringField;
    cds_VeiculocliCOMBUSTIVEL: TStringField;
    cds_VeiculocliANO_FAB: TStringField;
    cds_VeiculocliANO_MOD: TStringField;
    cds_VeiculocliCOR: TStringField;
    sqlOS: TSQLDataSet;
    dspOS: TDataSetProvider;
    cdsOS: TClientDataSet;
    dtsrc: TDataSource;
    cdsOSCODOS: TIntegerField;
    cdsOSCODCLIENTE: TIntegerField;
    cdsOSCODMOVIMENTO: TIntegerField;
    cdsOSDATAMOVIMENTO: TDateField;
    cdsOSDATA_SISTEMA: TSQLTimeStampField;
    cdsOSSTATUS: TStringField;
    cdsOSDATA_INI: TDateField;
    cdsOSDATA_FIM: TDateField;
    cdsOSDESCRICAO_SERV: TStringField;
    GroupBox7: TGroupBox;
    sdsPecas: TSQLDataSet;
    dspPecas: TDataSetProvider;
    cdsPecas: TClientDataSet;
    dsPecas: TDataSource;
    cdsPecasID_OS_DET: TIntegerField;
    cdsPecasID_OS: TIntegerField;
    cdsPecasDESCRICAO_SERV: TStringField;
    cdsPecasRESPONSAVEL: TStringField;
    cdsPecasSTATUS: TStringField;
    cdsPecasTIPO: TStringField;
    cdsPecasQTDE: TFloatField;
    cdsPecasPRECO: TFloatField;
    cdsPecasDESCONTO: TFloatField;
    cdsPecasVALORTOTAL: TFloatField;
    cdsPecasCODPRODUTO: TIntegerField;
    cdsPecasCODPRO: TStringField;
    cdsOSSTATUSDESC: TStringField;
    cdsPecasSTATUSDESC: TStringField;
    cdsOSOBS: TStringField;
    cdsOSID_OS_DET: TIntegerField;
    sdsServico: TSQLDataSet;
    dspServico: TDataSetProvider;
    cdsServico: TClientDataSet;
    cdsServicoSTATUS: TStringField;
    cdsServicoDESCRICAO_SERV: TStringField;
    cdsServicoSTATUSDESC: TStringField;
    cdsServicoID_OS_DET: TIntegerField;
    cdsServicoID_OS: TIntegerField;
    Panel1: TPanel;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    edData: TJvDatePickerEdit;
    edNumOS: TEdit;
    edDataFim: TJvDatePickerEdit;
    GroupBox4: TGroupBox;
    Label3: TLabel;
    edCodCliente: TEdit;
    edNomeCliente: TEdit;
    btnClienteProcura: TBitBtn;
    GroupBox5: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    edVeiculo: TJvMaskEdit;
    edObs: TEdit;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    cdsPecasVlrTotal: TAggregateField;
    edKm: TJvCalcEdit;
    cdsServicoQTDE: TFloatField;
    cdsServicoPRECO: TFloatField;
    cdsServicoVALORTOTAL: TFloatField;
    cdsOSCODVEICULO: TStringField;
    cdsServicoCODUSUARIO: TIntegerField;
    sdsServicoSTATUS: TStringField;
    sdsServicoCODUSUARIO: TIntegerField;
    sdsServicoDESCRICAO_SERV: TStringField;
    sdsServicoSTATUSDESC: TStringField;
    sdsServicoID_OS_DET: TIntegerField;
    sdsServicoID_OS: TIntegerField;
    sdsServicoQTDE: TFloatField;
    sdsServicoPRECO: TFloatField;
    sdsServicoVALORTOTAL: TFloatField;
    sdsServicoNOMEUSUARIO: TStringField;
    cdsServicoNOMEUSUARIO: TStringField;
    sdsServicoCODPRODUTO: TIntegerField;
    cdsServicoCODPRODUTO: TIntegerField;
    cdsOSRESPONSAVEL: TStringField;
    sdsServicoCODPRO: TStringField;
    cdsServicoCODPRO: TStringField;
    sdsServicoDESCONTO: TFloatField;
    cdsServicoDESCONTO: TFloatField;
    cdsOSRAZAOSOCIAL: TStringField;
    cdsOSKM: TIntegerField;
    Panel3: TPanel;
    btnIncluirServico: TBitBtn;
    btnExcluirServico: TBitBtn;
    dsServico: TDataSource;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cdsPecasID_OSDET_SERV: TIntegerField;
    btnServAltera: TBitBtn;
    btnPecaAltera: TBitBtn;
    sdsServicoTIPO: TStringField;
    cdsServicoTIPO: TStringField;
    RadioGroup1: TRadioGroup;
    JvDBGrid1: TJvDBUltimGrid;
    JvDBGrid2: TJvDBUltimGrid;
    Label5: TLabel;
    edVeiculoDesc: TEdit;
    cdsOSVEICULO: TStringField;
    PopupMenu1: TPopupMenu;
    F4Gravar: TMenuItem;
    F9Sair1: TMenuItem;
    F3Cancelar1: TMenuItem;
    sqlUsuario: TSQLQuery;
    edCFOP: TEdit;
    sdsPecasID_OS_DET: TIntegerField;
    sdsPecasID_OS: TIntegerField;
    sdsPecasCODPRODUTO: TIntegerField;
    sdsPecasDESCRICAO_SERV: TStringField;
    sdsPecasRESPONSAVEL: TStringField;
    sdsPecasTIPO: TStringField;
    sdsPecasQTDE: TFloatField;
    sdsPecasPRECO: TFloatField;
    sdsPecasDESCONTO: TFloatField;
    sdsPecasVALORTOTAL: TFloatField;
    sdsPecasCODPRO: TStringField;
    sdsPecasSTATUSDESC: TStringField;
    sdsPecasSTATUS: TStringField;
    sdsPecasID_OSDET_SERV: TIntegerField;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnClienteProcuraClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNovoClick(Sender: TObject);
    procedure btnProdutoProcuraClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure edProdutoExit(Sender: TObject);
    procedure edCodClienteExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnIncluirServicoClick(Sender: TObject);
    procedure JvDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure cdsServicoNewRecord(DataSet: TDataSet);
    procedure cdsPecasNewRecord(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure JvDBGrid1CellClick(Column: TColumn);
    procedure btnServAlteraClick(Sender: TObject);
    procedure btnPecaAlteraClick(Sender: TObject);
    procedure edDataChange(Sender: TObject);
    procedure btnExcluirServicoClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure dsPecasStateChange(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure edCodClienteKeyPress(Sender: TObject; var Key: Char);
  private
    TD: TTransactionDesc;
    estoque, qtde : Double;
    ufOs : String;
    Procedure limpaCampos;
    Procedure controlaEventos;
    Procedure abrirOs(codOs :Integer);
    Procedure buscaProduto;
    procedure carregaCombos;
    { Private declarations }
  public
    codigoOs : Integer;
    FOsCls: TOsClasse;
    modoOs, modoOsItem, ServDescricao, statusOs: String; // Insert, Edit, Browse, Inactive
    numOsDet, ServCodServ: Integer;
    Procedure carregaCampos;
    Procedure abrirPecas;

    { Public declarations }
  end;

var
  fOs: TfOs;                              

implementation

uses UDm, uProcurar_nf, UDMNF, uProcura_prodOficina, sCtrlResize,
  uOsInsere, uOsInserePeca;

{$R *.dfm}

procedure TfOs.btnIncluirClick(Sender: TObject);
begin
  modoOs := 'Insert';
  modoOsItem := '';
  edNumOS.Text := 'Nova OS ...';
  limpaCampos;
  controlaEventos;
  abrirOs(0);
  abrirPecas;
  edData.Date    := Today;
  edDataFim.Date := Today;
  //edData.SetFocus;
  numOsDet := 90000001;
end;

procedure TfOs.btnGravarClick(Sender: TObject);
var linhaServ: Integer;
begin
  if (cdsOSSTATUS.AsString = 'F') then
  begin
    ShowMessage('OS já finalizada.');
    Exit;
  end;

  if (cdsOSSTATUS.AsString = 'E') then
  begin
    ShowMessage('OS excluída.');
    Exit;
  end;

  if ((modoOs <> 'Insert') and (modoOs <> 'Edit')) then
    exit;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  if (edCodCliente.Text = '') then
  begin
    MessageDlg('Cliente não informado', mtError, [mbOK], 0);
    edCodCliente.SetFocus;
    exit;
  end;

  if (edKm.Text = '') then
  begin
    MessageDlg('km não informada.', mtError, [mbOK], 0);
    edKm.SetFocus;
    exit;
  end;

  if (sqlUsuario.Active) then
    sqlUsuario.Close;
  sqlUsuario.ParamByName('PUSU').asInteger := usulog;
  sqlUsuario.Open;
  if (sqlUsuario.IsEmpty) then
  begin
    Try
      dm.sqlsisAdimin.StartTransaction(TD);

      dm.sqlsisAdimin.ExecuteDirect('INSERT INTO USUARIO VALUES(' +
        IntToStr(usulog) +
        ', ' + QuotedStr('USUARIO OS') +
        ', 0, ' + QuotedStr('AMBOS') + ')');
      dm.sqlsisAdimin.Commit(TD);
    Except
      on E : Exception do
      begin
        //ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.sqlsisAdimin.Rollback(TD);
      end;
    end;

  end;

  Try
    dm.sqlsisAdimin.StartTransaction(TD);

    if ((edCFOP.Text = '') and (UFos = dm.ufPadrao)) then
      edCfop.Text := dm.cfopSaida
    else
      edCfop.Text := dm.cfopSaidaF;

    FOsCls.codCliente := StrToInt(edCodCliente.Text);
    if (modoOs = 'Insert') then
    begin
      FOsCls.codOs      := 0;
    end;
    if (edVeiculo.Text = '') then
    begin
      MessageDlg('Veiculo não informado', mtError, [mbOK], 0);
      edVeiculo.SetFocus;
      exit;
    end;
    FOsCls.codVeiculo := edVeiculo.Text;
    FOsCls.cfop       := edcfop.text;
    FOsCls.codUsuario := usulog;
    FOsCls.dataOs     := edData.Date;
    FOsCls.dataInicio := edData.Date;
    FOsCls.dataFim    := edDataFim.Date;
    FOsCls.obs        := edObs.Text;
    FOsCls.veiculo    := edVeiculoDesc.Text;
    if (modoOs = 'Insert') then
    begin
      FOsCls.status := statusOs;
    end;
    FOsCls.km         := StrToInt(edKm.Text);

    if (modoOs = 'Insert') then
      CodigoOs := FOsCls.IncluirOs(0);

    if (modoOs = 'Edit') then
    begin
      if (cdsOSCODOS.AsInteger = 0) then
      begin
        FOsCls.alterarOs(StrToInt(edNumOS.Text));
        CodigoOs := StrToInt(edNumOS.Text);
      end
      else begin
        FOsCls.alterarOs(cdsOSCODOS.AsInteger);
        CodigoOs := cdsOSCODOS.AsInteger;
      end;
    end;

    cdsServico.DisableControls;
    linhaServ := cdsServico.RecNo;
    if (cdsServico.State in [dsEdit,dsInsert]) then
      cdsServico.Cancel;
    cdsServico.First;
    While not cdsServico.Eof do
    begin
      FOsCls.osDet.CodOsP   := CodigoOs;
      if ((cdsServicoTIPO.AsString = 'S') and (cdsServicoID_OS_DET.AsInteger > 90000000)) then
      begin
        FOsCls.osDet.CodDet   := 0;
        FOsCls.osDet.Status   := statusOs;
        FOsCls.osDet.Tipo     := 'S';
      end;
      DecimalSeparator        := '.';
      FOsCls.osDet.CodProduto := cdsServicoCODPRODUTO.AsInteger;
      FOsCls.osDet.Descricao  := cdsServicoDESCRICAO_SERV.AsString;
      FOsCls.osDet.Qtde       := cdsServicoQTDE.AsFloat;
      FOsCls.osDet.Preco      := cdsServicoPRECO.AsFloat;
      FOsCls.osDet.Desconto   := cdsServicoDESCONTO.AsFloat;
      FOsCls.osDet.CodUsuario := cdsServicoCODUSUARIO.AsInteger;
      DecimalSeparator        := ',';
      if ((cdsServicoTIPO.AsString = 'S')  and (cdsServicoID_OS_DET.AsInteger > 90000000)) then
      begin
        if (cdsServico.State in [dsBrowse]) then
          cdsServico.Edit;
        cdsServicoID_OS_DET.AsInteger := FOsCls.osDet.IncluirOsDet(0);
        if (cdsServicoID_OS_DET.AsInteger = 0) then
        begin
          ShowMessage('Erro na Inclusao Os Detalhe');
          Exit;
        end;

      end
      else begin
        FOsCls.osDet.alterarOsDet(cdsServicoID_OS_DET.AsInteger);
      end;
      cdsServico.Next;
    end;
    cdsServico.RecNo := linhaServ;
    cdsServico.EnableControls;

    cdsPecas.DisableControls;
    if (cdsPecas.State in [dsEdit,dsInsert]) then
      cdsPecas.Cancel;
    cdsPecas.First;
    While not cdsPecas.Eof do
    begin
      FOsCls.osDet.CodOsP   := CodigoOs;
      if ((cdsPecasTIPO.AsString = 'P') and (cdsPecasID_OS_DET.AsInteger > 90000000)) then
      begin
        FOsCls.osDet.CodDet   := 0;
        FOsCls.osDet.Status   := statusOs;
        FOsCls.osDet.Tipo     := 'P';
      end;
      DecimalSeparator := '.';
      FOsCls.osDet.CodProduto := cdsPecasCODPRODUTO.AsInteger;
      FOsCls.osDet.Descricao := cdsPecasDESCRICAO_SERV.AsString;
      FOsCls.osDet.Qtde      := cdsPecasQTDE.AsFloat;
      FOsCls.osDet.Preco     := cdsPecasPRECO.AsFloat;
      FOsCls.osDet.Desconto  := cdsPecasDESCONTO.AsFloat;
      FOSCls.osDet.CodOsServ := ServCodServ;
      DecimalSeparator := ',';
      if ((cdsPecasTIPO.AsString = 'P') and (cdsPecasID_OS_DET.AsInteger > 90000000)) then
      begin
        if ((FOsCls.osDet.IncluirOsDet(0) = 0)) then
        begin
          ShowMessage('Erro na Inclusao Os Detalhe');
          Exit;
        end;
      end
      else begin
        FOsCls.osDet.alterarOsDet(cdsPecasID_OS_DET.AsInteger);
      end;
      cdsPecas.Next;
    end;
    cdsPecas.EnableControls;
    dm.sqlsisAdimin.Commit(TD);
    edNumOS.Text := IntToStr(CodigoOs);

    if (modoOs = 'Insert') then
      MessageDlg('OS gerada com sucesso.', mtInformation, [mbOK], 0);
    //else
    //  MessageDlg('Alteracao gravada com sucesso.', mtInformation, [mbOK], 0);
    modoOs := 'Browse';
    controlaEventos;
    if (cdsOs.State in [dsEdit, dsInsert]) then
    begin
      cdsOs.Post;
    end;
  except
    on E : Exception do
    begin
      cdsPecas.EnableControls;
      cdsServico.EnableControls;
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      dm.sqlsisAdimin.Rollback(TD);
    end;
  end;
end;

procedure TfOs.limpaCampos;
begin
  edData.Clear;
  edDataFim.Clear;
  edCodCliente.Text  := '';
  edNomeCliente.Text := '';
  edNumOS.Text       := '';
  edVeiculo.Text     := '';
  edKm.Text          := '';
  edObs.Text         := '';
  edVeiculoDesc.Text := '';
  cdsOs.Close;
  cdsPecas.Close;
end;

procedure TfOs.carregaCombos;
begin

end;

procedure TfOs.btnClienteProcuraClick(Sender: TObject);
begin
  if ((modoOs = 'Insert') or (modoOs = 'Edit')) then
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
          modoOs := 'Browse';
          controlaEventos;
          exit;
          //dbeCliente.SetFocus;
        end;
      //prazo := dmnf.scds_cli_procPRAZORECEBIMENTO.AsFloat;
      edCodCliente.Text := IntToStr(dmnf.scds_cli_procCODCLIENTE.AsInteger);
      edNomeCliente.Text := dmnf.scds_cli_procNOMECLIENTE.AsString;
      edCFOP.Text        := dm.scds_cli_procCFOP.AsString;
      ufOs               := dm.scds_cli_procUF.AsString;
      if ((edCFOP.Text = '') and (dm.scds_cli_procUF.AsString = dm.ufPadrao)) then
        edCfop.Text := dm.cfopSaida
      else
        edCfop.Text := dm.cfopSaidaF;
    finally
     dmnf.scds_cli_proc.Close;
     fProcurar_nf.Free;
    end;
  end;
end;

procedure TfOs.controlaEventos;
begin
  if ((modoOs = 'Insert') or (modoOs = 'Edit')) then
  begin
    btnGravar.Visible        := True;
    btnGravar.Enabled        := True;
    btnIncluir.Visible       := False;
    btnProcurar.Enabled      := False;
    btnSair.Enabled          := False;
    btnExcluir.Visible       := False;
    btnCancelar.Visible      := True;
    btnClienteProcura.Enabled := True;
  end;
  if ((modoOs = 'Browse') or (modoOs = 'Inactive')) then
  begin
    btnGravar.Visible         := False;
    btnIncluir.Visible        := True;
    btnProcurar.Enabled       := True;
    btnSair.Enabled           := True;
    btnExcluir.Visible        := True;
    btnCancelar.Visible       := False;
    btnClienteProcura.Enabled := False;
  end;
  if (modoOs = 'VISUALIZAR') then
  begin
    btnGravar.Visible        := True;
    btnGravar.Enabled        := False;
    btnIncluir.Visible       := False;
    btnProcurar.Enabled      := False;
    btnSair.Enabled          := True;
    btnExcluir.Visible       := False;
    btnCancelar.Visible      := False;
    btnClienteProcura.Enabled := False;
  end;
end;

procedure TfOs.FormShow(Sender: TObject);
begin
  //sCtrlResize.CtrlResize(TForm(fOs));
  FOsCls                := TOsClasse.Create;
  numOsDet              := 90000001;
  statusOs              := 'A'; // Andamento (Serviço Executando)
  RadioGroup1.ItemIndex := 1;
  modoOsItem            := '';
  //carregaCampos;
end;

procedure TfOs.btnCancelarClick(Sender: TObject);
begin
  modoOs := 'Browse';
  controlaEventos;
end;

procedure TfOs.FormCreate(Sender: TObject);
begin
  sCtrlResize.CtrlResize(TForm(fOs));
  MMJPanel2.Background.StartColor := dm.corStart;
  MMJPanel2.Background.EndColor   := dm.corEnd;
end;

procedure TfOs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FOsCls.Destroy;
end;


procedure TfOs.abrirOs(codOs :Integer);
begin
  // Abre a OS
  if (cdsServico.Active) then
    cdsServico.Close;
  cdsServico.Params.ParamByName('pOs').Clear;
  cdsServico.Params.ParamByName('pOs').AsInteger := codOs;
  cdsServico.Open;
end;

procedure TfOs.abrirPecas;
begin
  // Abre as Peças por Serviço da OS
  if (cdsPecas.Active) then
    cdsPecas.Close;
  cdsPecas.Params.ParamByName('pOs').Clear;
  cdsPecas.Params.ParamByName('p_Sev').Clear; 
  cdsPecas.Params.ParamByName('pOs').AsInteger := cdsServicoID_OS.AsInteger;
  cdsPecas.Params.ParamByName('p_Sev').AsInteger := cdsServicoID_OS_DET.AsInteger;
  cdsPecas.Open;
end;

procedure TfOs.btnNovoClick(Sender: TObject);
var str: string;
  I : Integer;
begin
  if (cdsServico.Active) then
  begin
    cdsServico.Append;
    cdsServicoSTATUS.AsString := statusOs;
    cdsServicoID_OS.AsInteger := 99999999;
    cdsServicoID_OS_DET.AsInteger := numOsDet;
    numOsDet := numOsDet + 1;
    cdsServicoCODUSUARIO.AsInteger := 1;
    cdsServicoNOMEUSUARIO.AsString := 'Usuario';
    str := '';
    {for I := 0 to edServico.Lines.Count -1 do
      str := str + edServico.Lines[I] + #13#10;
    cdsServicoDESCRICAO_SERV.AsString := str;
    cdsServicoQTDE.AsFloat            := edQtdeServ.Value;
    cdsServicoPRECO.AsFloat           := edPrecoServ.Value;
    cdsServicoVALORTOTAL.AsFloat      := edQtdeServ.Value * edPrecoServ.Value;
    cdsServico.Post;  }
  end;
end;

procedure TfOs.btnProdutoProcuraClick(Sender: TObject);
begin
    //fProcura_prodOficina.cbTipo.ItemIndex := 4;
    fProcura_prodOficina.btnIncluir.Visible := true;
    if (procprod <> 'PROC_PROD_COMPLETO') then
    begin
      fProcura_prodOficina.Panel1.Visible := false;
      fProcura_prodOficina.Panel2.Visible := true;
      //fProcura_prodOficina.CheckBox1.Checked := True;
      //fProcura_prodOficina.BitBtn1.Click;
    end
    else begin
      fProcura_prodOficina.Panel2.Visible := false;
      fProcura_prodOficina.Panel1.Visible := true;
      //fProcura_prodOficina.CheckBox1.Checked := False;
      if (fProcura_prodOficina.cds_proc.Active) then
        fProcura_prodOficina.cds_proc.Close;
    end;
    varonde := 'compra';
    var_F := 'venda';

    fProcura_prodOficina.ShowModal;
    if (procprod = 'PROC_PROD_COMPLETO') then
    begin
      if (cdsPecas.State in [dsInsert, dsEdit]) then
      begin
        cdsPecasCODPRO.AsString := fProcura_prodOficina.cds_procCODPRO.AsString;
        cdsPecasCODPRODUTO.asInteger := fProcura_prodOficina.cds_procCODPRODUTO.AsInteger;
        cdsPecasDESCRICAO_SERV.asString := fProcura_prodOficina.cds_procPRODUTO.AsString;
        cdsPecasPRECO.AsFloat := fProcura_prodOficina.cds_procPRECO_VENDA.AsFloat;
        if ( fProcura_prodOficina.cds_procQTDE_PCT.AsFloat < 1) then
          cdsPecasQTDE.AsFloat := 1
        else
          cdsPecasQTDE.AsFloat := fProcura_prodOficina.cds_procQTDE_PCT.AsFloat;
        qtde         := fProcura_prodOficina.cds_procPESO_QTDE.AsFloat;
        //cdsPecasPRECO.AsFloat := fProcura_prodOficina.cds_procPRECOMEDIO.AsFloat;
        estoque      := fProcura_prodOficina.cds_procESTOQUEATUAL.AsFloat;
        //codProduto   := fProcura_prodOficina.cds_procCODPRODUTO.AsInteger;
      end;
    end;

end;

procedure TfOs.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfOs.edProdutoExit(Sender: TObject);
begin
  // Busca Produto
  buscaProduto;
end;

procedure TfOs.buscaProduto;
begin
end;

procedure TfOs.edCodClienteExit(Sender: TObject);
begin
  if (edCodCliente.Text = '') then
  begin
    exit;
  end;
  if dm.scds_cliente_proc.Active then
  dm.scds_cliente_proc.Close;
  dm.scds_cliente_proc.Params[0].Clear;
  dm.scds_cliente_proc.Params[1].Clear;
  dm.scds_cliente_proc.Params[2].Clear;
  dm.scds_cliente_proc.Params[2].AsInteger := StrToInt(edCodCliente.Text);
  dm.scds_cliente_proc.Open;
  if (dm.scds_cliente_proc.IsEmpty) then
  begin
    MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning, [mbOk], 0);
    //btnClienteProcura.Click;
    exit;
  end;
  edNomeCliente.Text := dm.scds_cliente_procNOMECLIENTE.AsString;
  edCFOP.Text        := dm.scds_cliente_procCFOP.AsString;
  ufOs               := dm.scds_cliente_procUF.AsString;
  if ((edCFOP.Text = '') and (dm.scds_cliente_procUF.AsString = dm.ufPadrao)) then
    edCfop.Text := dm.cfopSaida
  else
    edCfop.Text := dm.cfopSaidaF;
end;

procedure TfOs.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
  end;
end;

procedure TfOs.btnIncluirServicoClick(Sender: TObject);
begin
  if ((modoOs <> 'Insert') and (modoOs <> 'Edit')) then
    exit;

  modoOsItem := 'IncluiServico';

  cdsServico.Append;
  cdsServicoID_OS_DET.AsInteger := numOsDet;
  fOs.cdsServicoTIPO.AsString   := 'S';

  fOsInsere.ShowModal;

end;

procedure TfOs.JvDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    fOsInsere.ShowModal;
  end;
end;

procedure TfOs.cdsServicoNewRecord(DataSet: TDataSet);
begin
  cdsServicoID_OS.AsInteger := 1;
end;

procedure TfOs.cdsPecasNewRecord(DataSet: TDataSet);
begin
  cdsPecasID_OS.AsInteger := 1;
end;

procedure TfOs.carregaCampos;
begin
  if ((cdsOs.Active) and (not cdsOs.IsEmpty)) then
  begin
    edNumOS.Text       := IntToStr(cdsOSCODOS.AsInteger);
    edData.Date        := cdsOSDATA_INI.AsDateTime;
    edDataFim.Date     := cdsOSDATA_FIM.AsDateTime;
    edCodCliente.Text  := IntToStr(cdsOSCODCLIENTE.AsInteger);
    edNomeCliente.Text := cdsOSRAZAOSOCIAL.AsString;
    edVeiculo.Text     := cdsOSCODVEICULO.AsString;
    edKm.Text          := IntToStr(cdsOSKM.AsInteger);
    edObs.Text         := cdsOSOBS.AsString;
    edVeiculoDesc.Text := cdsOSVEICULO.AsString;
    abrirOs(cdsOSCODOS.AsInteger);
    abrirPecas;
    //modoOs := 'Edit';
    controlaEventos;
  end
  else begin
    limpaCampos;
    abrirOs(cdsOSCODOS.AsInteger);
    abrirPecas;
  end;
end;

procedure TfOs.BitBtn1Click(Sender: TObject);
begin
  if (edKm.Text = '') then
  begin
    MessageDlg('km não informada.', mtError, [mbOK], 0);
    edKm.SetFocus;
    exit;
  end;


  if ((modoOs <> 'Insert') and (modoOs <> 'Edit')) then
    modoOs := 'Edit';

  modoOsItem := 'IncluiPeca';

  if (cdsServico.IsEmpty) then
  begin
    MessageDlg('Primeiro, informe o Serviço a ser executado.', mtWarning, [mbOk], 0);
    exit;
  end;

  if ((modoOs = 'Insert') or (modoOs = 'Edit')) then
    btnGravar.Click;
  modoOs := 'Edit';
  controlaEventos;

  ServCodServ   := cdsServicoID_OS_DET.AsInteger;
  ServDescricao := cdsServicoDESCRICAO_SERV.AsString;
  if (not cdsPecas.Active) then
    cdsPecas.Open;

  cdsPecas.Append;

  cdsPecasID_OS_DET.AsInteger := numOsDet;
  cdsPecasSTATUS.AsString     := statusOs;
  cdsPecasID_OSDET_SERV.AsInteger := ServCodServ;
  cdsPecasTIPO.AsString   := 'P';

  if (procprod <> 'PROC_PROD_COMPLETO') then
  begin
    fProcura_prodOficina.Panel1.Visible := false;
    fProcura_prodOficina.Panel2.Visible := true;
    fProcura_prodOficina.BitBtn1.Click;
    varonde := 'os';
    var_F := 'os';
    fProcura_prodOficina.ShowModal;
    if (cdsPecas.State = dsBrowse) then
      cdsPecas.Edit;
    cdsPecasCODPRODUTO.AsInteger := fProcura_prodOficina.cds_procCODPRODUTO.AsInteger;
    cdsPecasQTDE.AsFloat         := 1;
    cdsPecasPRECO.AsFloat        := fProcura_prodOficina.cds_procPRECO_VENDA.AsFloat;
  end
  else begin
    fProcura_prodOficina.Panel2.Visible := false;
    fProcura_prodOficina.Panel1.Visible := true;
    if (fProcura_prodOficina.cds_proc.Active) then
      fProcura_prodOficina.cds_proc.Close;
    fOsInserePeca.ShowModal;
  end;
end;

procedure TfOs.JvDBGrid1CellClick(Column: TColumn);
begin
  abrirPecas;
end;

procedure TfOs.btnServAlteraClick(Sender: TObject);
begin
  if ((modoOs <> 'Insert') and (modoOs <> 'Edit')) then
    exit;

  modoOsItem := 'EditaServico';

  cdsServico.Edit;

  fOsInsere.ShowModal;
end;

procedure TfOs.btnPecaAlteraClick(Sender: TObject);
begin
  if ((modoOs <> 'Insert') and (modoOs <> 'Edit')) then
  begin
    modoOs := 'Edit';
    controlaEventos;
    cdsOS.Edit;
  end;    
  modoOsItem := 'EditaPeca';

  {if (fOsInserePeca.cdsPecas1.Active) then
    fOsInserePeca.cdsPecas1.Close;
  fOsInserePeca.cdsPecas1.Params.ParamByName('pOs').Clear;
  fOsInserePeca.cdsPecas1.Params.ParamByName('p_Sev').Clear;
  fOsInserePeca.cdsPecas1.Params.ParamByName('pOs').AsInteger := cdsPecasID_OS.AsInteger;
  fOsInserePeca.cdsPecas1.Params.ParamByName('p_Sev').AsInteger := cdsPecasID_OS_DET.AsInteger;
  fOsInserePeca.cdsPecas1.Open;  }

  cdsPecas.Edit;

  fOsInserePeca.ShowModal;

end;

procedure TfOs.edDataChange(Sender: TObject);
begin
  if ((modoOs <> 'Insert') and (modoOs <> 'Edit') and (edNumOS.Text <> '')) then
  begin
    modoOs := 'Edit';
    controlaEventos;
  end;
end;

procedure TfOs.btnExcluirServicoClick(Sender: TObject);
begin
  if ((modoOs <> 'Insert') and (modoOs <> 'Edit')) then
    exit;

  if (MessageDlg('Confirma a exclusão deste Serviço ?' + #13#10 + '(Se houver peças' +
    ' estas serão excluídas tambem).', mtConfirmation, [mbYes, mbNo],0) = mrNo) then
    exit;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;

  Try
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect('DELETE FROM OS_DET WHERE ID_OS_DET = ' +
      IntToStr(cdsServicoID_OS_DET.AsInteger));
    dm.sqlsisAdimin.ExecuteDirect('DELETE FROM OS_DET WHERE ID_OSDET_SERV = ' +
      IntToStr(cdsServicoID_OS_DET.AsInteger));

    dm.sqlsisAdimin.Commit(TD);
    MessageDlg('Serviço excluído com sucesso.', mtWarning, [mbOk], 0);
  except
    on E : Exception do
    begin
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      dm.sqlsisAdimin.Rollback(TD);
    end;
  end;
end;

procedure TfOs.BitBtn2Click(Sender: TObject);
begin
  if ((modoOs <> 'Insert') and (modoOs <> 'Edit')) then
    exit;

  if (MessageDlg('Confirma a exclusão desta Peça ?', mtConfirmation, [mbYes, mbNo],0) = mrNo) then
    exit;

  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;

  Try
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect('DELETE FROM OS_DET WHERE ID_OS_DET = ' +
      IntToStr(cdsPecasID_OS_DET.AsInteger));

    dm.sqlsisAdimin.Commit(TD);
    MessageDlg('Peça excluída com sucesso.', mtWarning, [mbOk], 0);
  except
    on E : Exception do
    begin
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      dm.sqlsisAdimin.Rollback(TD);
    end;
  end;
end;

procedure TfOs.dsPecasStateChange(Sender: TObject);
begin
  fOsInserePeca.edProduto.Enabled     := cdsPecas.State in [dsEdit, dsInsert];
  fOsInserePeca.edServico.Enabled     := cdsPecas.State in [dsEdit, dsInsert];
  fOsInserePeca.edQtdeServ.Enabled    := cdsPecas.State in [dsEdit, dsInsert];
  fOsInserePeca.edPrecoServ.Enabled   := cdsPecas.State in [dsEdit, dsInsert];
  fOsInserePeca.edDescServ.Enabled    := cdsPecas.State in [dsEdit, dsInsert];
  fOsInserePeca.edDescVlrServ.Enabled := cdsPecas.State in [dsEdit, dsInsert];
  fOsInserePeca.btnIncluir.Visible    := cdsPecas.State in [dsBrowse, dsInactive];
  fOsInserePeca.btnGravar.Visible     := cdsPecas.State in [dsEdit, dsInsert];
  fOsInserePeca.btnExcluir.Visible    := cdsPecas.State in [dsBrowse, dsInactive];
  fOsInserePeca.btnCancelar.Visible   := cdsPecas.State in [dsEdit, dsInsert];

end;

procedure TfOs.RadioGroup1Click(Sender: TObject);
begin
  if (RadioGroup1.ItemIndex = 0) then
  begin
    statusOs := 'O'; // Orcamento
    GroupBox3.Color := clSkyBlue;
    GroupBox4.Color := clSkyBlue;
    GroupBox5.Color := clSkyBlue;
  end;
  if (RadioGroup1.ItemIndex = 1) then
  begin
    statusOs := 'A'; // Andamento
    GroupBox3.Color := clBtnFace;
    GroupBox4.Color := clBtnFace;
    GroupBox5.Color := clBtnFace;
  end;
end;

procedure TfOs.edCodClienteKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    if (modoOs = 'Insert') then
    begin
      if (edCodCliente.Text = '') then
      begin
        btnClienteProcura.Click;
      end;  
    end;
  end;
  if (key = #13) then
  begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
  end;

end;

end.
