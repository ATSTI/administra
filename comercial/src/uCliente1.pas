unit uCliente1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, uCliente,
  Mask, JvExMask, JvToolEdit, JvMaskEdit, DBCtrls, FMTBcd, Provider,
  SqlExpr, DBXpress, DBClient, DBLocal, DBLocalS;

type
  TfCliente1 = class(TfPai_new)
    rgTipo: TRadioGroup;
    gbNome: TGroupBox;
    lblNome: TLabel;
    lblRazao: TLabel;
    GroupBox2: TGroupBox;
    lblCnpj: TLabel;
    lblIE: TLabel;
    lblOrgaoEmissor: TLabel;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    cds_cli: TClientDataSet;
    cds_cliCODCLIENTE: TIntegerField;
    cds_cliNOMECLIENTE: TStringField;
    cds_cliRAZAOSOCIAL: TStringField;
    cds_cliCONTATO: TStringField;
    cds_cliTIPOFIRMA: TSmallintField;
    cds_cliCPF: TStringField;
    cds_cliCNPJ: TStringField;
    cds_cliINSCESTADUAL: TStringField;
    cds_cliRG: TStringField;
    cds_cliSEGMENTO: TSmallintField;
    cds_cliREGIAO: TSmallintField;
    cds_cliLIMITECREDITO: TFloatField;
    cds_cliDATACADASTRO: TDateField;
    cds_cliCODUSUARIO: TIntegerField;
    cds_cliSTATUS: TSmallintField;
    cds_cliHOMEPAGE: TStringField;
    cds_cliPRAZORECEBIMENTO: TSmallintField;
    cds_cliPRAZOENTREGA: TSmallintField;
    cds_cliCODBANCO: TSmallintField;
    cds_cliBASE_ICMS: TSmallintField;
    cds_cliDATANASC: TDateField;
    cds_cliCONTA_CLIENTE: TStringField;
    cds_cliOBS: TStringField;
    cds_cliBANCO: TStringField;
    cds_cliNOMEUSUARIO: TStringField;
    cds_cliTEM_IE: TStringField;
    cds_cliDATARESC: TDateField;
    cds_cliNOMEMAE: TStringField;
    cds_cliSEXO: TStringField;
    cds_cliFORMA_CORRESPOND: TStringField;
    cds_cliGRUPO_CLIENTE: TStringField;
    cds_cliCODINCLUCANC: TIntegerField;
    cds_cliEXIST_COBERT: TStringField;
    cds_cliEXISTCOPART: TStringField;
    cds_cliDATAREINC: TDateField;
    cds_cliGERAAVISO: TStringField;
    cds_cliGERAENV: TStringField;
    cds_cliGERABOL: TStringField;
    cds_cliEMVIAGEM: TStringField;
    cds_cliDTAALTERA: TDateField;
    cds_cliSERIELETRA: TStringField;
    cds_cliSERIE: TStringField;
    cds_cliRA: TStringField;
    cds_cliCURSO: TStringField;
    cds_cliIP: TStringField;
    cds_cliN_CONTRATO: TStringField;
    cds_cliMAC: TStringField;
    cds_cliMARCA: TStringField;
    cds_cliBANDA_UPLOAD: TStringField;
    cds_cliBANDA_DOWLOAD: TStringField;
    cds_cliTORRE_CONECCAO: TStringField;
    cds_cliCOD_FAIXA: TIntegerField;
    cds_cliDESCONTO: TFloatField;
    cds_cliMENSALIDADE: TFloatField;
    cds_cliPAI: TStringField;
    cds_cliLOCALTRABALUNO: TStringField;
    cds_cliDIVERSO1: TStringField;
    cds_cliDIVERSO2: TStringField;
    cds_cliTELTRABALUNO: TStringField;
    cds_cliDATA_MATRICULA: TSQLTimeStampField;
    cds_cliSITUACAOESCOLAR: TStringField;
    cds_cliCOD_TRANPORTADORA: TIntegerField;
    cds_cliCODRESPONSAVEL: TIntegerField;
    cds_cliCFOP: TStringField;
    sds_cli: TSQLDataSet;
    sds_cliCODICLIENTE: TIntegerField;
    sds_cliNOMECLIENTE: TStringField;
    sds_cliRAZAOSOCIAL: TStringField;
    sds_cliCONTATO: TStringField;
    sds_cliTIPOFIRMA: TSmallintField;
    sds_cliCPF: TStringField;
    sds_cliCNPJ: TStringField;
    sds_cliINSCESTADUAL: TStringField;
    sds_cliRG: TStringField;
    sds_cliSEGMENTO: TSmallintField;
    sds_cliREGIAO: TSmallintField;
    sds_cliLIMITECREDITO: TFloatField;
    sds_cliDATACADASTRO: TDateField;
    sds_cliCODUSUARIO: TIntegerField;
    sds_cliSTATUS: TSmallintField;
    sds_cliHOMEPAGE: TStringField;
    sds_cliPRAZORECEBIMENTO: TSmallintField;
    sds_cliPRAZOENTREGA: TSmallintField;
    sds_cliCODBANCO: TSmallintField;
    sds_cliBASE_ICMS: TSmallintField;
    sds_cliDATANASC: TDateField;
    sds_cliCONTA_CLIENTE: TStringField;
    sds_cliOBS: TStringField;
    sds_cliBANCO: TStringField;
    sds_cliNOMEUSUARIO: TStringField;
    sds_cliTEM_IE: TStringField;
    sds_cliDATARESC: TDateField;
    sds_cliNOMEMAE: TStringField;
    sds_cliSEXO: TStringField;
    sds_cliFORMA_CORRESPOND: TStringField;
    sds_cliGRUPO_CLIENTE: TStringField;
    sds_cliCODINCLUCANC: TIntegerField;
    sds_cliEXIST_COBERT: TStringField;
    sds_cliEXISTCOPART: TStringField;
    sds_cliDATAREINC: TDateField;
    sds_cliGERAAVISO: TStringField;
    sds_cliGERAENV: TStringField;
    sds_cliGERABOL: TStringField;
    sds_cliEMVIAGEM: TStringField;
    sds_cliDTAALTERA: TDateField;
    sds_cliSERIELETRA: TStringField;
    sds_cliSERIE: TStringField;
    sds_cliRA: TStringField;
    sds_cliCURSO: TStringField;
    sds_cliIP: TStringField;
    sds_cliN_CONTRATO: TStringField;
    sds_cliMAC: TStringField;
    sds_cliMARCA: TStringField;
    sds_cliBANDA_UPLOAD: TStringField;
    sds_cliBANDA_DOWLOAD: TStringField;
    sds_cliTORRE_CONECCAO: TStringField;
    sds_cliCOD_FAIXA: TIntegerField;
    sds_cliDESCONTO: TFloatField;
    sds_cliMENSALIDADE: TFloatField;
    sds_cliPAI: TStringField;
    sds_cliLOCALTRABALUNO: TStringField;
    sds_cliDIVERSO1: TStringField;
    sds_cliDIVERSO2: TStringField;
    sds_cliTELTRABALUNO: TStringField;
    sds_cliDATA_MATRICULA: TSQLTimeStampField;
    sds_cliSITUACAOESCOLAR: TStringField;
    sds_cliCOD_TRANPORTADORA: TIntegerField;
    sds_cliCODRESPONSAVEL: TIntegerField;
    sds_cliCFOP: TStringField;
    dsp_cli: TDataSetProvider;
    sqlLocate: TSQLDataSet;
    sqlLocateNOMECLIENTE: TStringField;
    dspLocate: TDataSetProvider;
    cdsLocate: TClientDataSet;
    cdsLocateNOMECLIENTE: TStringField;
    rgSitCad: TRadioGroup;
    Dtsrc_e: TDataSource;
    cds_CliEnd: TClientDataSet;
    dsp_CliEnd: TDataSetProvider;
    sds_CliEnd: TSQLDataSet;
    sds_CliEndLOGRADOURO: TStringField;
    sds_CliEndNUMERO: TStringField;
    sds_CliEndBAIRRO: TStringField;
    sds_CliEndCIDADE: TStringField;
    sds_CliEndUF: TStringField;
    cds_CliEndLOGRADOURO: TStringField;
    cds_CliEndNUMERO: TStringField;
    cds_CliEndBAIRRO: TStringField;
    cds_CliEndCIDADE: TStringField;
    cds_CliEndUF: TStringField;
    GroupBox4: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    BitBtn1: TBitBtn;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    Label14: TLabel;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    Label16: TLabel;
    DBEdit21: TDBEdit;
    sds_CliEndCODENDERECO: TIntegerField;
    sds_CliEndCODCLIENTE: TIntegerField;
    sds_CliEndCOMPLEMENTO: TStringField;
    sds_CliEndCEP: TStringField;
    sds_CliEndFAX: TStringField;
    sds_CliEndE_MAIL: TStringField;
    sds_CliEndRAMAL: TStringField;
    sds_CliEndTIPOEND: TSmallintField;
    sds_CliEndDADOSADICIONAIS: TStringField;
    sds_CliEndDDD: TStringField;
    sds_CliEndDDD1: TStringField;
    sds_CliEndDDD2: TStringField;
    sds_CliEndDDD3: TStringField;
    sds_CliEndCD_IBGE: TStringField;
    sds_CliEndPAIS: TStringField;
    cds_CliEndCODENDERECO: TIntegerField;
    cds_CliEndCODCLIENTE: TIntegerField;
    cds_CliEndCOMPLEMENTO: TStringField;
    cds_CliEndCEP: TStringField;
    cds_CliEndFAX: TStringField;
    cds_CliEndE_MAIL: TStringField;
    cds_CliEndRAMAL: TStringField;
    cds_CliEndTIPOEND: TSmallintField;
    cds_CliEndDADOSADICIONAIS: TStringField;
    cds_CliEndDDD: TStringField;
    cds_CliEndDDD1: TStringField;
    cds_CliEndDDD2: TStringField;
    cds_CliEndDDD3: TStringField;
    cds_CliEndCD_IBGE: TStringField;
    cds_CliEndPAIS: TStringField;
    procIBGE: TSQLClientDataSet;
    procIBGENM_LOCALIDADE2: TStringField;
    procIBGECD_UF: TStringField;
    procIBGENM_MUNICIPIO: TStringField;
    procIBGECD_IBGE: TStringField;
    Label54: TLabel;
    DBEdit48: TDBEdit;
    Label55: TLabel;
    DBEdit49: TDBEdit;
    Label80: TLabel;
    sds_cliCODFISCAL: TStringField;
    cds_cliCODFISCAL: TStringField;
    sdsTFiscal: TSQLDataSet;
    sdsTFiscalCODFISCAL: TStringField;
    sdsTFiscalDESCRICAO: TStringField;
    dspTFiscal: TDataSetProvider;
    cdsTFiscal: TClientDataSet;
    cdsTFiscalCODFISCAL: TStringField;
    cdsTFiscalDESCRICAO: TStringField;
    DtSrcTFiscal: TDataSource;
    cbTipoFiscal: TDBLookupComboBox;
    sds_CliEndTELEFONE: TStringField;
    sds_CliEndTELEFONE1: TStringField;
    sds_CliEndTELEFONE2: TStringField;
    cds_CliEndTELEFONE: TStringField;
    cds_CliEndTELEFONE1: TStringField;
    cds_CliEndTELEFONE2: TStringField;
    procedure rgTipoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure JvDBUltimGrid1DblClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure Dtsrc_eStateChange(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure cds_CliEndNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure rgSitCadClick(Sender: TObject);
  private
    FCli : TCliente;
    cCli : Integer;
  public
    TD: TTransactionDesc;
    ModoIncluir: String;
    codClienteProc: Integer;
    nomeClienteProc: String;
  end;

var
  fCliente1: TfCliente1;

implementation

uses uEndereco, UDm, sCtrlResize, uListaClientes, uProcurar;


{$R *.dfm}

procedure TfCliente1.rgTipoClick(Sender: TObject);
begin
  inherited;
  if (rgTipo.ItemIndex = 0) then
  begin
    lblNome.Caption  := 'Nome';
    lblRazao.Caption := 'Apelido';
    lblIE.Caption    := 'R.G.';
    lblCnpj.Caption  := 'CPF';
    DBEdit48.Visible := True;
    DBEdit49.Visible := True;
    Label54.Visible  := True;
    Label55.Visible  := True;
    cds_cliCNPJ.EditMask := '000.000.000-00;1;_'
  end;
  if (rgTipo.ItemIndex = 1) then
  begin
    lblNome.Caption  := 'Razão Soc.';
    lblRazao.Caption := 'Nome Fantasia';
    lblIE.Caption    := 'Insc. Estadual';
    lblCnpj.Caption  := 'CNPJ';
    DBEdit48.Visible := False;
    DBEdit49.Visible := False;
    Label54.Visible  := False;
    Label55.Visible  := False;
    cds_cliCNPJ.EditMask := '00.000.000/0000-00;1;_';
  end;
end;

procedure TfCliente1.btnGravarClick(Sender: TObject);
var
  TD: TTransactionDesc;
begin
  if (cbTipoFiscal.Text = '') then
  begin
    MessageDlg('Informe o Tipo Fiscal.', mtWarning, [mbOK], 0);
    cbTipoFiscal.SetFocus;
    exit;
  end;
  if DtSrc.DataSet.State in [dsInsert] then
  begin
    cCli := 0;
    if(not cdsLocate.active) then
      cdsLocate.open;
    if (cdsLocate.Locate('NOMECLIENTE', DBEdit2.Text ,[loCaseInsensitive])) then
      if(MessageDlg('Nome já Cadastrado'+#13+#10+'Deseja Continuar', mtWarning, [mbYes, mbNo ], 0) = mrno) then
        exit;

    cds_cliCODCLIENTE.AsInteger := 0;
    cds_cliSEGMENTO.AsInteger := 0;
    cds_cliREGIAO.AsInteger := 0;
    cds_cliDATACADASTRO.AsDateTime := Now;
    cds_cliCODUSUARIO.AsInteger := DM.varUSERID;
  end;

  if DtSrc.DataSet.State in [dsEdit] then
  begin
    cCli := cds_cliCODCLIENTE.AsInteger;
  end;
  cds_cliSTATUS.AsInteger := rgSitCad.ItemIndex +1;

  if rgTipo.ItemIndex = 0 then
    cds_cliTIPOFIRMA.AsInteger := 1
  else
  cds_cliTIPOFIRMA.AsInteger := 0;

  Try
    Fcli := TCliente.Create;

    Try
      TD.TransactionID  := 1;
      TD.IsolationLevel := xilREADCOMMITTED;

      dm.sqlsisAdimin.StartTransaction(TD);

      Fcli := TCliente.Create;
      Fcli.CodCli      := cCli;
      Fcli.NomeCliente := cds_cliNOMECLIENTE.AsString;
      FCli.RazaoSocial := cds_cliRAZAOSOCIAL.AsString;
      FCli.InscEstadual:= cds_cliINSCESTADUAL.AsString;
      FCli.Cnpj        := cds_cliCNPJ.AsString;
      FCli.TipoFirma   := rgTipo.ItemIndex;
      FCli.CodUsuario  := DM.varUSERID;
      FCli.DataCadastro:= Now;
      FCli.Contato     := cds_cliCONTATO.AsString;
      FCli.CodFiscal   := cdsTFiscalCODFISCAL.AsString;
      FCli.Status      := cds_cliSTATUS.AsInteger;
      //FCli.DataNasc    := '';
      //IF (NOT cds_cliDATANASC.IsNull) THEN
      FCli.DataNasc    := cds_cliDATANASC.AsDateTime;

      FCli.Referencia  := cds_cliMARCA.AsString;

      if (cCli = 0) then
      begin
        cCli := FCli.inserirCliente;
        FCli.Endereco.CodEndereco := 0;
      end
      else begin
        FCli.Endereco.CodEndereco := cds_CliEndCODENDERECO.AsInteger;
        FCli.alterarCliente(cCli);
      end;
      FCli.Endereco.CodCli        := cCli;
      FCli.Endereco.TipoEndereco  := 0;
      FCli.Endereco.Pais          := 'Brasil';
      FCli.Endereco.Logradouro    := cds_CliEndLOGRADOURO.AsString;
      FCli.Endereco.Complemento   := cds_CliEndCOMPLEMENTO.AsString;
      FCli.Endereco.Numero        := cds_CliEndNUMERO.AsString;
      FCli.Endereco.Bairro        := cds_CliEndBAIRRO.AsString;
      FCli.Endereco.Cidade        := cds_CliEndCIDADE.AsString;
      FCli.Endereco.Uf            := cds_CliEndUF.AsString;
      FCli.Endereco.Cep           := cds_CliEndCEP.AsString;
      FCli.Endereco.DDD1          := cds_CliEndDDD.AsString;
      FCli.Endereco.DDD2          := cds_CliEndDDD1.AsString;
      FCli.Endereco.DDD3          := cds_CliEndDDD2.AsString;
      FCli.Endereco.Fone1         := cds_CliEndTELEFONE.AsString;
      FCli.Endereco.Fone2         := cds_CliEndTELEFONE1.AsString;
      FCli.Endereco.Fone3         := cds_CliEndTELEFONE2.AsString;
      FCli.Endereco.Email         := cds_CliEndE_MAIL.AsString;
      FCli.Endereco.CodIbge       := cds_CliEndCD_IBGE.AsString;

      if (FCli.Endereco.CodEndereco = 0) then
        FCli.Endereco.inserirEndereco
      else
        FCli.Endereco.alterarEndereco(cds_CliEndCODENDERECO.AsInteger);

      dm.sqlsisAdimin.Commit(TD);

      if DtSrc.DataSet.State in [dsInsert] then
      begin
        cds_cli.Close;
        cds_cli.Params[0].Clear;
        cds_cli.Params[0].AsInteger := cCli;
        cds_cli.Open;

        cds_CliEnd.Close;
        cds_CliEnd.Params[0].Clear;
        cds_CliEnd.Params[0].AsInteger := cCli;
        cds_CliEnd.Open;
      end
      else
      begin
        cds_cli.Post;
        cds_CliEnd.Post;
      end;
      dm.codcli := cCli;
      dm.varNomeCliente := cds_cliNOMECLIENTE.AsString;
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
      end;
    end;
  Finally
    FCli.Free;
  end;

  {if (cds_Cli.Active) then
    cds_Cli.Close;
  cds_Cli.Params[0].AsInteger := FCli.CodCli;
  cds_Cli.Open;
  if (cds_CliEnd.Active) then
    cds_CliEnd.Close;
  cds_CliEnd.Params[0].AsInteger := FCli.CodCli;
  cds_CliEnd.Open;
  if (cdsLocate.Active) then
    cdsLocate.Close;
  cdsLocate.Open; }

end;

procedure TfCliente1.FormCreate(Sender: TObject);
begin
  //inherited;
  //Fcli := TCliente.Create;
  modoIncluir := 'N';
  dm.codcli := 0;
  dm.varNomeCliente := 'Consumidor';
end;

procedure TfCliente1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cdsTFiscal.Close;
  inherited;
  //FCli.Destroy;
end;

procedure TfCliente1.JvDBUltimGrid1DblClick(Sender: TObject);
begin
  fEndereco := TfEndereco.Create(Application);
  try
    fEndereco.ShowModal;
  finally
    fEndereco.Free;
    if (cds_CliEnd.Active) then
      cds_CliEnd.Close;
    cds_CliEnd.Open;
  end;
end;

procedure TfCliente1.btnProcurarClick(Sender: TObject);
begin
  fListaClientes:=TfListaClientes.Create(Application);
  fListaClientes.BitBtn8.Enabled := False;
  fListaClientes.ShowModal;
  try
     cds_cli.Close;
     cds_cli.Params[0].Clear;
     cds_cli.Params[0].AsInteger := fListaClientes.cdsCODCLIENTE.AsInteger;
     cds_cli.Open;
     cCli := fListaClientes.cdsCODCLIENTE.AsInteger;

     cds_CliEnd.Close;
     cds_CliEnd.Params[0].Clear;
     cds_CliEnd.Params[0].AsInteger := fListaClientes.cdsCODCLIENTE.AsInteger;
     cds_CliEnd.Open;
    {if cds_cliTIPOFIRMA.AsInteger = 0 then
      cds_cliCNPJ.EditMask := '000.000.000-00;1;_'
    else
      cds_cliCNPJ.EditMask := '00.000.000/0000-00;1;_';    }
  finally
    fListaClientes.Free;
  end;

  {if cdsEnderecoCli.Active then
     cdsEnderecoCli.Close;
  cdsEnderecoCli.Params[0].Clear;
  cdsEnderecoCli.Params[1].AsInteger := cds_cliCODCLIENTE.AsInteger;
  cdsEnderecoCli.Open;
   }
end;

procedure TfCliente1.btnExcluirClick(Sender: TObject);
begin
  dm.sqlsisAdimin.ExecuteDirect('delete from enderecocliente where codcliente='+
    intToStr(cds_cliCODCLIENTE.asInteger));
  inherited;
end;

procedure TfCliente1.DBEdit1Exit(Sender: TObject);
begin
  inherited;
  if (cds_cliNOMECLIENTE.AsString = '') then
    cds_cliNOMECLIENTE.AsString := cds_cliRAZAOSOCIAL.AsString;
end;

procedure TfCliente1.btnIncluirClick(Sender: TObject);
begin
  inherited;
  if (not cds_CliEnd.Active) then
    cds_CliEnd.Open;
  cds_CliEnd.Append;
  DBEdit1.SetFocus;
end;

procedure TfCliente1.BitBtn1Click(Sender: TObject);
begin
  inherited;
  fProcurar:= TfProcurar.Create(self,procIBGE);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NM_LOCALIDADE';
   if fProcurar.ShowModal=mrOk then
   begin
     if(DtSrc.State in [dsbrowse,dsinactive]) then
       cds_CliEnd.Edit;
     cds_CliEndCIDADE.AsString := procIBGENM_MUNICIPIO.AsString;
     cds_CliEndCD_IBGE.AsString := procIBGECD_IBGE.AsString;
     cds_CliEndUF.AsString := procIBGECD_UF.AsString;
   end;
   finally
    procIBGE.Close;
    fProcurar.Free;
   end;

end;

procedure TfCliente1.DtSrcStateChange(Sender: TObject);
begin
  inherited;
  if (cds_Cli.State in [dsEdit]) then
    cds_cliEnd.Edit;
end;

procedure TfCliente1.Dtsrc_eStateChange(Sender: TObject);
begin
  inherited;
  if (Dtsrc_e.State in [dsEdit]) then
    cds_cli.Edit;

end;

procedure TfCliente1.btnCancelarClick(Sender: TObject);
begin
  inherited;
  cds_CliEnd.Cancel;
end;

procedure TfCliente1.cds_CliEndNewRecord(DataSet: TDataSet);
begin
  inherited;
  cds_CliEndCODCLIENTE.AsInteger  := cds_cliCODCLIENTE.AsInteger;
  cds_CliEndCODENDERECO.AsInteger := 9999999;
  cds_CliEndTIPOEND.AsInteger     := 0;
  cds_CliEndUF.AsString           := dm.ufPadrao;
  cds_CliEndCEP.AsString          := dm.cepPadrao;
  cds_CliEndCIDADE.AsString       := dm.cidadePadrao;
  cds_CliEndCD_IBGE.AsString      := dm.ibgePadrao; 
end;

procedure TfCliente1.FormShow(Sender: TObject);
begin
  inherited;
  if (not cdsTFiscal.Active) then
      cdsTFiscal.Open;
  if (modoIncluir = 'S') then
    btnIncluir.Click;
end;

procedure TfCliente1.rgSitCadClick(Sender: TObject);
begin
  inherited;
  if (DtSrc.State in [dsBrowse]) then
    cds_cli.Edit;
end;

end.
