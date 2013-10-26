unit uListaClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Provider, SqlExpr, FMTBcd, Grids, DBGrids, rpcompobase,
  DBClient, DB, DBLocal, DBLocalS, Menus, StdCtrls, Buttons,
  ExtCtrls, rpvclreport, XPMenu, MMJPanel, Mask, JvExMask, JvToolEdit,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, JvExDBGrids, JvDBGrid,
  JvBaseDlg, JvProgressDialog ,JvComponent, JvDBGridExport, JvCsvData,
  EDBFind, dbxpress, DateUtils;

type
  TfListaClientes = class(TForm)
    PopupMenu1: TPopupMenu;
    Novo1: TMenuItem;
    Cancela1: TMenuItem;
    procurar1: TMenuItem;
    fechar1: TMenuItem;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    SQLDataSet1: TSQLDataSet;
    SQLDataSet1CODCLIENTE: TIntegerField;
    SQLDataSet1NOMECLIENTE: TStringField;
    SQLDataSet1TELEFONE: TStringField;
    SQLDataSet1CIDADE: TStringField;
    VCLReport1: TVCLReport;
    ListaCliente: TSQLDataSet;
    ListaClienteCODCLIENTE: TIntegerField;
    ListaClienteNOMECLIENTE: TStringField;
    ListaClienteRAZAOSOCIAL: TStringField;
    ListaClienteSEGMENTO: TSmallintField;
    ListaClienteSTATUS: TSmallintField;
    ListaClienteCONTATO: TStringField;
    ListaClienteDATANASC: TDateField;
    ListaClienteCNPJ: TStringField;
    ListaClienteINSCESTADUAL: TStringField;
    ListaClienteTELEFONE: TStringField;
    ListaClienteTELEFONE1: TStringField;
    ListaClienteTELEFONE2: TStringField;
    ListaClienteFAX: TStringField;
    ListaClienteCIDADE: TStringField;
    ListaClienteCODBANCO: TSmallintField;
    ListaClientePRAZORECEBIMENTO: TSmallintField;
    ListaClienteOBS: TStringField;
    ListaClienteNOME_REPRCLI: TStringField;
    ListaClienteNOMEUSUARIO: TStringField;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    cdsCODCLIENTE: TIntegerField;
    cdsNOMECLIENTE: TStringField;
    cdsRAZAOSOCIAL: TStringField;
    cdsSEGMENTO: TSmallintField;
    cdsSTATUS: TSmallintField;
    cdsCONTATO: TStringField;
    cdsDATANASC: TDateField;
    cdsCNPJ: TStringField;
    cdsINSCESTADUAL: TStringField;
    cdsTELEFONE: TStringField;
    cdsTELEFONE1: TStringField;
    cdsTELEFONE2: TStringField;
    cdsFAX: TStringField;
    cdsCIDADE: TStringField;
    cdsCODBANCO: TSmallintField;
    cdsPRAZORECEBIMENTO: TSmallintField;
    cdsOBS: TStringField;
    cdsNOME_REPRCLI: TStringField;
    cdsNOMEUSUARIO: TStringField;
    sds_parametro: TSQLDataSet;
    sds_parametroDESCRICAO: TStringField;
    sds_parametroPARAMETRO: TStringField;
    sds_parametroCONFIGURADO: TStringField;
    sds_parametroDADOS: TStringField;
    sds_parametroD1: TStringField;
    sds_parametroD2: TStringField;
    sds_parametroD3: TStringField;
    sds_parametroD4: TStringField;
    sds_parametroD5: TStringField;
    sds_parametroD6: TStringField;
    sds_parametroD7: TStringField;
    sds_parametroD8: TStringField;
    sds_parametroD9: TStringField;
    sds_parametroINSTRUCOES: TStringField;
    cds_parametro: TClientDataSet;
    cds_parametroDESCRICAO: TStringField;
    cds_parametroPARAMETRO: TStringField;
    cds_parametroCONFIGURADO: TStringField;
    cds_parametroDADOS: TStringField;
    cds_parametroD1: TStringField;
    cds_parametroD2: TStringField;
    cds_parametroD3: TStringField;
    cds_parametroD4: TStringField;
    cds_parametroD5: TStringField;
    cds_parametroD6: TStringField;
    cds_parametroD7: TStringField;
    cds_parametroD8: TStringField;
    cds_parametroD9: TStringField;
    cds_parametroINSTRUCOES: TStringField;
    DataSetProvider2: TDataSetProvider;
    ListaClienteUF: TStringField;
    cdsUF: TStringField;
    ListaClienteCODUSUARIO: TIntegerField;
    cdsCODUSUARIO: TIntegerField;
    ListaClienteNOME_FUNCIONARIO: TStringField;
    ListaClienteTELEFONE_1: TStringField;
    ListaClienteCELULAR: TStringField;
    cdsNOME_FUNCIONARIO: TStringField;
    cdsTELEFONE_1: TStringField;
    cdsCELULAR: TStringField;
    VCLReport_etiqueta: TVCLReport;
    BuscapeloNome1: TMenuItem;
    BuscapeloCdigo1: TMenuItem;
    ListaClienteENDERECO: TStringField;
    cdsENDERECO: TStringField;
    ListaClienteFONE: TStringField;
    cdsFONE: TStringField;
    Panel1: TPanel;
    MMJPanel2: TMMJPanel;
    BitBtn8: TBitBtn;
    BitBtn4: TBitBtn;
    SpeedButton4: TBitBtn;
    BitBtn13: TBitBtn;
    RadioButton2: TRadioButton;
    RadioButton1: TRadioButton;
    ListaClienteTEL: TStringField;
    cdsTEL: TStringField;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    ListaClienteE_MAIL: TStringField;
    cdsE_MAIL: TStringField;
    JvDBGrid1: TJvDBGrid;
    Exportar1: TMenuItem;
    SaveDialog1: TSaveDialog;
    JvProgressDialog1: TJvProgressDialog;
    EvDBFind1: TEvDBFind;
    EvDBFind2: TEvDBFind;
    EvDBFind3: TEvDBFind;
    btnFiltroForm: TBitBtn;
    btnFiltro: TButton;
    EnviarEmail1: TMenuItem;
    ListaClienteCODFISCAL: TStringField;
    ListaClienteCD_IBGE: TStringField;
    ListaClienteCEP: TStringField;
    cdsCODFISCAL: TStringField;
    cdsCD_IBGE: TStringField;
    cdsCEP: TStringField;
    ListaClienteDATACADASTRO: TDateField;
    cdsDATACADASTRO: TDateField;
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnFiltroClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure edNomeKeyPress(Sender: TObject; var Key: Char);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BuscapeloNome1Click(Sender: TObject);
    procedure BuscapeloCdigo1Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure Exportar1Click(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure JvDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure JvDBGrid1TitleClick(Column: TColumn);
    procedure btnFiltroFormClick(Sender: TObject);
    procedure enviarEmail;
    procedure EnviarEmail1Click(Sender: TObject);
  private
    { Private declarations }
    varOrdenacao: String;
    Data: TJvCsvDataSet;
    procedure SaveDoc(AExportClass: TJvCustomDBGridExportClass; const Filename: string);
    procedure DoExportProgress(Sender: TObject; Min, Max, Position: Cardinal; const AText: string;
    var AContinue: Boolean);
    procedure SetupData;
    procedure ordenarRelatorio;
  public
    { Public declarations }
    //, nome_user, varform
  end;

var
  fListaClientes: TfListaClientes;
  varCondicao: String;
  nomecli, telefonecli, enderecocli : string;
  codcli, codVendedor : integer;

implementation

uses ShellAPI,ShlObj, CommDlg, UDm, uProcurar, uClienteCadastro, ufDlgLogin, sCtrlResize,
  uEtiquetas_cli, uClienteFiltro, uCliente1, VarUtils;

{$R *.dfm}

procedure TfListaClientes.DBGrid1TitleClick(Column: TColumn);
begin
    cds.IndexFieldNames := Column.FieldName;
end;

procedure TfListaClientes.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(ListaCliente.RecNo) then // se for impar
  // se a coluna ñ está selecionada
   if not (gdSelected in State) then
   begin
    //define uma COR DE FUNDO
    JvDBGrid1.Canvas.Brush.Color := $00FFEFDF;
    JvDBGrid1.Canvas.FillRect(Rect); //Pinta a celula
    //Pinta o texto padrão
    JvDBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
   end;
end;

procedure TfListaClientes.btnFiltroClick(Sender: TObject);
Var
 varSql: String;
begin
  ordenarRelatorio;
  varCondicao:= '';
   varSql:='select DISTINCT cli.CODCLIENTE, cli.NOMECLIENTE, cli.RAZAOSOCIAL, ' +
   'cli.SEGMENTO, cli.CODUSUARIO, cli.STATUS, cli.CONTATO, cli.DATANASC, cli.CNPJ, cli.INSCESTADUAL, '+
   '       (CASE when ende.DDD is null then  ende.TELEFONE ELSE ' +
   QuotedStr('(') + ' || ende.DDD || ' + QuotedStr(')') + ' || ende.TELEFONE END ) as TELEFONE , ' +
   '       (CASE when ende.DDD1 is null then  ende.TELEFONE1 ELSE ' +
   QuotedStr('(') + ' || ende.DDD1 || ' + QuotedStr(')') + ' || ende.TELEFONE1 END ) as TELEFONE1, ' +
   '       (CASE when ende.DDD2 is null then  ende.TELEFONE2 ELSE ' +
   QuotedStr('(') + ' || ende.DDD2 || ' + QuotedStr(')') + ' || ende.TELEFONE2 END ) as TELEFONE2, ' +
   '       (CASE when ende.DDD3 is null then  ende.FAX ELSE ' +
   QuotedStr('(') + ' || ende.DDD3 || ' + QuotedStr(')') + ' || ende.FAX END ) as FAX, ende.CIDADE, ' +
   'ende.UF, ende.LOGRADOURO || ' + QuotedStr(', ') + '|| ende.BAIRRO as ENDERECO, ende.TELEFONE as FONE, '+
   'cli.CODBANCO, cli.PRAZORECEBIMENTO, cli.OBS, rep.NOME_REPRCLI, ' +
   'usu.NOMEUSUARIO, fun.NOME_FUNCIONARIO, fun.TELEFONE, fun.CELULAR, ende.TELEFONE as tel, ende.E_mail, ' +
   'cli.CODFISCAL, ende.CD_IBGE,ende.CEP, cli.DATACADASTRO from CLIENTES cli ' +
   'left outer join ENDERECOCLIENTE ende on ende.CODCLIENTE=cli.CODCLIENTE ' +
   'left outer join USUARIO usu on usu.CODUSUARIO = cli.CODUSUARIO ' +
   'left outer join REPR_CLIENTE rep on rep.COD_CLIENTE=cli.CODCLIENTE ' +
   'left outer join FUNCIONARIO fun on fun.CODUSUARIO = cli.CODUSUARIO ';

 varCondicao := 'where ende.TIPOEND = 0 ';

 if (fClienteFiltro.codVen.Text <> '') then
   if varCondicao <> '' then
      varCondicao := varCondicao + ' and cli.CODUSUARIO = ' + fClienteFiltro.codVen.Text
   else
   varCondicao := 'where cli.CODUSUARIO = ' + fClienteFiltro.codVen.Text;
//********************************************************************************************
 if (fClienteFiltro.NomeVen.Text <> '') then
   if varCondicao <> '' then
     varCondicao := varCondicao + ' and UDF_COLLATEBR(usu.NOMEUSUARIO) containing ' + '''' + fClienteFiltro.nomeVen.Text +  ''''
   else
     varCondicao := 'where UDF_COLLATEBR(usu.NOMEUSUARIO) containing ' + '''' + fClienteFiltro.nomeVen.Text + '''';
//********************************************************************************************
 if (fClienteFiltro.CBox3.Checked = true) then
   if varCondicao <> '' then
      varCondicao := varCondicao + ' and ((ende.e_mail is not null) and (ende.e_mail <> ' +
        QuotedStr('') + '))'
   else
   varCondicao := 'where ((ende.e_mail is not null) and (ende.e_mail <> ' +
        QuotedStr('') + '))';
//********************************************************************************************
 if (fClienteFiltro.CBox4.Checked = true) then
   if varCondicao <> '' then
      varCondicao := varCondicao + ' and ((ende.e_mail = ' + QuotedStr('') + ')or(ende.e_mail is null)) '
   else
   varCondicao := 'where ((ende.e_mail = ' + QuotedStr('') + ' or(ende.e_mail is null)) ';
//********************************************************************************************
 if (fClienteFiltro.CBox1.Checked = true) then
   if varCondicao <> '' then
      varCondicao := varCondicao + ' and cli.STATUS = 1 '
   else
   varCondicao := 'where cli.STATUS = 1 ';
//********************************************************************************************
 if (fClienteFiltro.CBox2.Checked = true) then
   if varCondicao <> '' then
      varCondicao := varCondicao + ' and cli.STATUS = 2 '
   else
   varCondicao := 'where cli.STATUS = 2 ';
  //********************************************************************************************

 if (fClienteFiltro.cbfisica.Checked = true) then
   if varCondicao <> '' then
      varCondicao := varCondicao + ' and cli.TIPOFIRMA = 0 '
   else
   varCondicao := 'where cli.TIPOFIRMA = 0 ';
//********************************************************************************************
 if (fClienteFiltro.cbjuridica.Checked = true) then
   if varCondicao <> '' then
      varCondicao := varCondicao + ' and cli.TIPOFIRMA = 1 '
   else
   varCondicao := 'where cli.TIPOFIRMA = 1 ';
  //********************************************************************************************


  if (fClienteFiltro.JvDatePickerEdit2.Checked = true) then
  begin
    if varCondicao <> '' then
      varCondicao := varCondicao + ' and cli.DATACADASTRO between '
    else
      varCondicao := ' where cli.DATACADASTRO between  ';
    varCondicao := varCondicao + QuotedStr(FormatDateTime('mm/dd/yyyy', fClienteFiltro.JvDatePickerEdit2.Date));
    varCondicao := varCondicao +  ' and ' + QuotedStr(FormatDateTime('mm/dd/yyyy', fClienteFiltro.JvDatePickerEdit3.Date));
  end;
//********************************************************************************************
 if (fClienteFiltro.edCodigo.Text <> '') then
   if varCondicao <> '' then
      varCondicao := varCondicao + ' and cli.CODCLIENTE = ' + fClienteFiltro.edCodigo.Text
   else
   varCondicao := 'where cli.CODCLIENTE = ' + fClienteFiltro.edCodigo.Text;
//********************************************************************************************
 if (fClienteFiltro.edNome.Text <> '') then
   if varCondicao <> '' then
     varCondicao := varCondicao + ' and UDF_COLLATEBR(cli.NOMECLIENTE) containing ' + '''' + fClienteFiltro.edNome.Text +  ''''
   else
     varCondicao := 'where UDF_COLLATEBR(cli.NOMECLIENTE) containing ' + '''' + fClienteFiltro.edNome.Text + '''';
//********************************************************************************************
 if (fClienteFiltro.edCNPJCPF.Text <> '') then
   if varCondicao <> '' then
     varCondicao := varCondicao + ' and UDF_DIGITS(cli.CNPJ) containing ' + '''' + fClienteFiltro.edCNPJCPF.Text +  ''''
   else
     varCondicao := 'where UDF_DIGITS(cli.CNPJ) = ' + '''' + fClienteFiltro.edCNPJCPF.Text + '''';
//********************************************************************************************
 if (fClienteFiltro.edIERG.Text <> '') then
   if varCondicao <> '' then
     varCondicao := varCondicao + ' and UDF_DIGITS(cli.INSCESTADUAL) containing ' + '''' + fClienteFiltro.edIERG.Text +  ''''
   else
     varCondicao := 'where UDF_DIGITS(cli.INSCESTADUAL) = ' + '''' + fClienteFiltro.edIERG.Text + '''';
//********************************************************************************************
 if (fClienteFiltro.edRazao.Text <> '') then
   if varCondicao <> '' then
     varCondicao := varCondicao + ' and UDF_COLLATEBR(cli.RAZAOSOCIAL) containing ' + '''' + fClienteFiltro.edRazao.Text +  ''''
   else
     varCondicao := 'where UDF_COLLATEBR(cli.RAZAOSOCIAL) containing ' + '''' + fClienteFiltro.edRazao.Text + '''';
//********************************************************************************************
 if (fClienteFiltro.edCidade.Text <> '') then
   if varCondicao <> '' then
     varCondicao := varCondicao + ' and UDF_COLLATEBR(ende.CIDADE) containing UDF_COLLATEBR(' + '''' + fClienteFiltro.edCidade.Text + '' + ''')'
   else
     varCondicao := 'where UDF_COLLATEBR(ende.CIDADE) containing UDF_COLLATEBR(' + '''' + fClienteFiltro.edCidade.Text +  ''')';
//********************************************************************************************
 if (fClienteFiltro.edtUF.Text <> '') then
   if varCondicao <> '' then
     varCondicao := varCondicao + ' and ende.UF = ' + '''' + (fClienteFiltro.edtUF.Text) +  ''''
   else
     varCondicao := 'where ende.UF = ' + '''' + (fClienteFiltro.edtUF.Text) +  '''';
//********************************************************************************************
 if (fClienteFiltro.edtDDD.Text <> '') then
   if varCondicao <> '' then
     varCondicao := varCondicao + ' and ende.DDD = ' + '''' + fClienteFiltro.edtDDD.Text +  ''''
   else
     varCondicao := 'where ende.DDD = ' + '''' + fClienteFiltro.edtDDD.Text + '''';
//********************************************************************************************
 if (fClienteFiltro.cbbRegiao.Text <> '') then
 begin
   fClienteFiltro.cdsRegiao.Locate('DESCRICAO', fClienteFiltro.cbbRegiao.Text, [loCaseInsensitive]);
   if varCondicao <> '' then
     varCondicao := varCondicao + ' and cli.REGIAO = ' + IntToStr(fClienteFiltro.cdsRegiaoCODDADOS.asInteger)
   else
     varCondicao := 'where cli.REGIAO = ' + IntToStr(fClienteFiltro.cdsRegiaoCODDADOS.asInteger);
  end;
//********************************************************************************************
  if (fClienteFiltro.cbAniversario.ItemIndex > 0) then
  begin
    if (dm.cadastroClienteTipo = 'SIMPLES') then
    begin
      if varCondicao <> '' then
        varCondicao := varCondicao + ' and UDF_MONTH(cli.DATANASC) =   '
      else
        varCondicao := ' where UDF_MONTH(cli.DATANASC) =  ';
      varCondicao := varCondicao + IntToStr(fClienteFiltro.cbAniversario.ItemIndex) +
       ' and datanasc > ' + QuotedStr('01/01/1930');
    end;
  end;  
//********************************************************************************************

 varCondicao := varSql + varCondicao;

 ordenarRelatorio;
  if cds.Active then
     cds.Close;
  cds.CommandText := '';
  cds.CommandText := varCondicao + varOrdenacao; //' order by cli.NOMECLIENTE '; //ende.CIDADE,;
  cds.Open;

  //JvDBGrid1.SetFocus;
  
end;

procedure TfListaClientes.BitBtn4Click(Sender: TObject);
begin
  if not dm.cds_empresa.Active then
    dm.cds_empresa.Open;
  VCLReport1.FileName := str_relatorio + 'rel_cliente.rep';
  if (RadioButton1.Checked = true) then
  begin
    VCLReport1.FileName := str_relatorio + 'rel_cliente.rep';
    if (fClienteFiltro.JvDatePickerEdit2.Checked = true) then
    begin
      VCLReport1.Report.Params.ParamByName('DATA1').Value := fClienteFiltro.JvDatePickerEdit2.Date;
      VCLReport1.Report.Params.ParamByName('DATA2').Value := fClienteFiltro.JvDatePickerEdit3.Date;
    end;
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport1.Title := VCLReport1.FileName;
    if varCondicao <> '' then
    begin
      VCLReport1.Report.DataInfo.Items[1].SQL := varCondicao + varOrdenacao ;//' order by ende.CIDADE ';
    end;
  end;
  if RadioButton2.Checked = true then
  begin
    VCLReport1.FileName := str_relatorio + 'rel_cliente1.rep';
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport1.Title := VCLReport1.FileName;
    if varCondicao <> '' then
    begin
      VCLReport1.Report.DataInfo.Items[1].SQL := varCondicao + varOrdenacao ;//' order by ende.CIDADE ';
    end;
  end;
  VCLReport1.Execute;
end;

procedure TfListaClientes.BitBtn5Click(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,dm.scds_usuario_proc);
  fProcurar.usuarioproc := 'VENDEDOR';
  fProcurar.BtnProcurar.Click;
  try
   fProcurar.EvDBFind1.DataField := 'NOMEUSUARIO';
   if fProcurar.ShowModal=mrOk then
    begin
     fClienteFiltro.codVen.Text := IntToStr(dm.scds_usuario_ProcCODusuario.AsInteger);
     fClienteFiltro.nomeVen.Text := dm.scds_usuario_procNOMEUSUARIO.AsString;
    end;
  finally
    dm.scds_usuario_proc.Close;
    fProcurar.Free;
  end;
end;

procedure TfListaClientes.BitBtn8Click(Sender: TObject);
begin
  if (dm.var_teste = 'consulta') then
  begin
    if (dm.cadastroClienteTipo = 'COMPLETO') then
    begin
      fClienteCadastro := TfClienteCadastro.Create(Application);
      try
        fClienteCadastro.cds_cli.Params[0].AsInteger := cdsCODCLIENTE.AsInteger;
        fClienteCadastro.cds_cli.Open;
        if fClienteCadastro.cdsEnderecoCli.Active then
          fClienteCadastro.cdsEnderecoCli.Close;
        fClienteCadastro.cdsEnderecoCli.Params[0].Clear;
        fClienteCadastro.cdsEnderecoCli.Params[1].AsInteger := cdsCODCLIENTE.AsInteger;
        fClienteCadastro.cdsEnderecoCli.Open;
        {if (not fClienteCadastro.sqlPais.Active) then
          fClienteCadastro.sqlPais.Open;
        if (fClienteCadastro.sqlPais.Locate('PAIS', fClienteCadastro.cdsEnderecoCliPAIS.asString, [loCaseInsensitive])) then
          fClienteCadastro.cbPais.ItemIndex := fClienteCadastro.sqlPais.RecNo-1;}

        fClienteCadastro.ShowModal;
      finally
        fClienteCadastro.Free;
      end;
    end;
    if (dm.cadastroClienteTipo = 'SIMPLES') then
    begin
      fCliente1 := TfCliente1.Create(Application);
      try
        fCliente1.cds_cli.Params[0].AsInteger := cdsCODCLIENTE.AsInteger;
        fCliente1.cds_cli.Open;
        if fCliente1.cds_CliEnd.Active then
          fCliente1.cds_CliEnd.Close;
        fCliente1.cds_CliEnd.Params[0].AsInteger := cdsCODCLIENTE.AsInteger;
        fCliente1.cds_CliEnd.Open;

        fCliente1.ShowModal;
      finally
        fCliente1.Free;
      end;
    end;
  end
  else
  begin
    if (dm.cadastroClienteTipo = 'COMPLETO') then
    begin
      fClienteCadastro := TfClienteCadastro.Create(Application);
      try
        fClienteCadastro.cds_cli.Params[0].AsInteger := cdsCODCLIENTE.AsInteger;
        fClienteCadastro.cds_cli.Open;
        if fClienteCadastro.cdsEnderecoCli.Active then
          fClienteCadastro.cdsEnderecoCli.Close;
        fClienteCadastro.cdsEnderecoCli.Params[0].Clear;
        fClienteCadastro.cdsEnderecoCli.Params[1].AsInteger := cdsCODCLIENTE.AsInteger;
        fClienteCadastro.cdsEnderecoCli.Open;
        {if (not fClienteCadastro.sqlPais.Active) then
          fClienteCadastro.sqlPais.Open;
        if (fClienteCadastro.sqlPais.Locate('PAIS', fClienteCadastro.cdsEnderecoCliPAIS.asString, [loCaseInsensitive])) then
          fClienteCadastro.cbPais.ItemIndex := fClienteCadastro.sqlPais.RecNo-1;}
        fClienteCadastro.ShowModal;
      finally
        fClienteCadastro.Free;
        if (dm.var_teste <> 'consulta') then
          Close;
      end;
    end;
    if (dm.cadastroClienteTipo = 'SIMPLES') then
    begin
      fCliente1 := TfCliente1.Create(Application);
      try
        fCliente1.cds_cli.Params[0].AsInteger := cdsCODCLIENTE.AsInteger;
        fCliente1.cds_cli.Open;
        if fCliente1.cds_CliEnd.Active then
          fCliente1.cds_CliEnd.Close;
        fCliente1.cds_CliEnd.Params[0].Clear;
        fCliente1.cds_CliEnd.Params[1].AsInteger := cdsCODCLIENTE.AsInteger;
        fCliente1.cds_CliEnd.Open;
        fCliente1.ShowModal;
      finally
        fCliente1.Free;
        varform := '';
      end;
    end;
  end;
end;

procedure TfListaClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //  if codcli = 0 then
  codcli := cdsCODCLIENTE.AsInteger;
  //  if nomecli = '' then
  nomecli := cdsNOMECLIENTE.AsString;
  telefonecli := cdsTEL.AsString;
  enderecocli := cdsENDERECO.AsString;
end;

procedure TfListaClientes.SpeedButton2Click(Sender: TObject);
begin
  if not dm.cds_empresa.Active then
    dm.cds_empresa.Open;
  VCLReport1.FileName := str_relatorio + 'clienteEtiqueta2.rep';
  VCLReport1.Title := VCLReport1.Filename;
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  // Número de Etiquetas por Cliente
  VCLReport1.Report.Params.ParamByName('N_ETIQUETA').Value := 1;
  IF (fClienteFiltro.edCodigo.Text <> '') then
    VCLReport1.Report.Params.ParamByName('CODCLI').Value := StrToInt(fClienteFiltro.edCodigo.Text)
  else
    VCLReport1.Report.Params.ParamByName('CODCLI').Value := 0;

  IF (fClienteFiltro.CodVen.Text <> '') then
    VCLReport1.Report.Params.ParamByName('CODVEND').Value := StrToInt(fClienteFiltro.CodVen.Text)
  else
    VCLReport1.Report.Params.ParamByName('CODVEND').Value := 0;

  IF (fClienteFiltro.EdtUF.Text <> '') then
    VCLReport1.Report.Params.ParamByName('UFCLI').Value := fClienteFiltro.edtuf.Text
  else
    VCLReport1.Report.Params.ParamByName('UFCLI').Value := 'TODOS';

  IF (fClienteFiltro.EdCidade.text <> '') then
    VCLReport1.Report.Params.ParamByName('CID').Value := fClienteFiltro.edCidade.Text
  else
    VCLReport1.Report.Params.ParamByName('CID').Value := 'TODAS AS CIDADES CADASTRADAS NO SISTEMA';

  IF (fClienteFiltro.EdtDDD.Text <> '') then
    VCLReport1.Report.Params.ParamByName('DDDCLI').Value := fClienteFiltro.edtddd.Text
  else
    VCLReport1.Report.Params.ParamByName('DDDCLI').Value := 'TODOS';


  VCLReport1.Execute;
end;

procedure TfListaClientes.SpeedButton4Click(Sender: TObject);
begin
{ if (RadioButton4.Checked = True) then
 begin
    if not dm.cds_empresa.Active then
      dm.cds_empresa.Open;
    VCLReport_etiqueta.Filename := str_relatorio + 'clienteEtiquetaUnica.rep';
    VCLReport_etiqueta.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport_etiqueta.Report.Params.ParamByName('N_ETIQUETA').Value := 1;
    IF (edCodigo.Text <> '') then
      VCLReport_etiqueta.Report.Params.ParamByName('CODCLI').Value := StrToInt(edCodigo.Text)
    else
      VCLReport_etiqueta.Report.Params.ParamByName('CODCLI').Value := 0;
    IF (CodVen.Text <> '') then
      VCLReport_etiqueta.Report.Params.ParamByName('CODVEND').Value := StrToInt(CodVen.Text)
    else
      VCLReport_etiqueta.Report.Params.ParamByName('CODVEND').Value := 0;
    IF (EdtUF.Text <> '') then
      VCLReport_etiqueta.Report.Params.ParamByName('UFCLI').Value := edtuf.Text
    else
      VCLReport_etiqueta.Report.Params.ParamByName('UFCLI').Value := 'TODOS';
    IF (EdCidade.text <> '') then
      VCLReport_etiqueta.Report.Params.ParamByName('CID').Value := edCidade.Text
    else
      VCLReport_etiqueta.Report.Params.ParamByName('CID').Value := 'TODAS AS CIDADES CADASTRADAS NO SISTEMA';
    IF (EdtDDD.Text <> '') then
      VCLReport_etiqueta.Report.Params.ParamByName('DDDCLI').Value := edtddd.Text
    else
      VCLReport_etiqueta.Report.Params.ParamByName('DDDCLI').Value := 'TODOS';
    VCLReport_etiqueta.Title := VCLReport_etiqueta.Filename;      
    VCLReport_etiqueta.Execute;
 end;
 if (RadioButton3.Checked = True) then
 begin
    if not dm.cds_empresa.Active then
      dm.cds_empresa.Open;
    VCLReport1.FileName := str_relatorio + 'clienteEtiqueta2.rep';
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    // Número de Etiquetas por Cliente
    VCLReport1.Report.Params.ParamByName('N_ETIQUETA').Value := 1;
    IF (edCodigo.Text <> '') then
      VCLReport1.Report.Params.ParamByName('CODCLI').Value := StrToInt(edCodigo.Text)
    else
      VCLReport1.Report.Params.ParamByName('CODCLI').Value := 0;
    IF (CodVen.Text <> '') then
      VCLReport1.Report.Params.ParamByName('CODVEND').Value := StrToInt(CodVen.Text)
    else
      VCLReport1.Report.Params.ParamByName('CODVEND').Value := 0;
    IF (EdtUF.Text <> '') then
      VCLReport1.Report.Params.ParamByName('UFCLI').Value := edtuf.Text
    else
      VCLReport1.Report.Params.ParamByName('UFCLI').Value := 'TODOS';
    IF (EdCidade.text <> '') then
      VCLReport1.Report.Params.ParamByName('CID').Value := edCidade.Text
    else
      VCLReport1.Report.Params.ParamByName('CID').Value := 'TODAS AS CIDADES CADASTRADAS NO SISTEMA';
    IF (EdtDDD.Text <> '') then
      VCLReport1.Report.Params.ParamByName('DDDCLI').Value := edtddd.Text
    else
      VCLReport1.Report.Params.ParamByName('DDDCLI').Value := 'TODOS';
    VCLReport1.title := VCLReport1.FileName;
    VCLReport1.Execute;
 end;

    }
    fEtiquetas_cli := TfEtiquetas_cli.Create(Application);
    try
      fEtiquetas_cli.ShowModal;
    finally
      fEtiquetas_cli.free;
    end;
end;

procedure TfListaClientes.FormShow(Sender: TObject);
begin
  sCtrlResize.CtrlResize(TForm(fListaClientes));
  btnFiltro.Click;
  EvDBFind1.SetFocus;
end;

procedure TfListaClientes.DBGrid1DblClick(Sender: TObject);
begin
//  if (varform = 'consulta') then
  if (dm.var_teste = 'consulta') then
    bitbtn8.Click//fClienteCadastro.ShowModal;
  else
    bitbtn13.Click;
end;

procedure TfListaClientes.RadioButton1Click(Sender: TObject);
begin
  if RadioButton2.Checked = true then
    RadioButton2.Checked := false;
end;

procedure TfListaClientes.RadioButton2Click(Sender: TObject);
begin
  if RadioButton1.Checked = true then
    RadioButton1.Checked := false;
end;

procedure TfListaClientes.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
  //if (varform = 'consulta') then
  if (dm.var_teste = 'consulta') then
    fClienteCadastro.ShowModal;
 end;
end;

procedure TfListaClientes.edNomeKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   //key:= #0;
   //SelectNext((Sender as TwinControl),True,True);
   //bitbtn2.Click;
 end;

end;

procedure TfListaClientes.RadioButton4Click(Sender: TObject);
begin
  if RadioButton3.Checked = true then
    RadioButton3.Checked := false;
end;

procedure TfListaClientes.RadioButton3Click(Sender: TObject);
begin
  if RadioButton4.Checked = true then
    RadioButton4.Checked := false;
end;

procedure TfListaClientes.BitBtn13Click(Sender: TObject);
begin
  close;
end;

procedure TfListaClientes.BitBtn1Click(Sender: TObject);
begin
  if not dm.Proc_end_cli.Active then
    dm.Proc_end_cli.Open;
  fProcurar:=TfProcurar.Create(self,dm.Proc_end_cli);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'CIDADE';
   if fProcurar.ShowModal=mrOk then
     fClienteFiltro.edCidade.Text := dm.Proc_end_cliCIDADE.AsString;
   finally
    dm.Proc_end_cli.Close;
    fProcurar.Free;
   end;
   //BitBtn2.Click;
end;

procedure TfListaClientes.BuscapeloNome1Click(Sender: TObject);
begin
  //BitBtn3.Click;
  fClienteFiltro.edNome.SetFocus;
end;

procedure TfListaClientes.BuscapeloCdigo1Click(Sender: TObject);
begin
  //BitBtn3.Click;
  fClienteFiltro.edCodigo.SetFocus;
end;

procedure TfListaClientes.RadioButton5Click(Sender: TObject);
begin
  //if (RadioButton5.Checked = true) then
  //begin
  //fClienteFiltro.JvDatePickerEdit2.Enabled := fClienteFiltro.RadioButton5.Checked;
  //fClienteFiltro.JvDatePickerEdit3.Enabled := fClienteFiltro.RadioButton5.Checked;
  //end
  //else begin
  //  RadioButton2.Checked := false;
  //end;
end;

procedure TfListaClientes.Exportar1Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
    case SaveDialog1.FilterIndex of
      1: SaveDoc(TJvDBGridWordExport, SaveDialog1.Filename);
      2: SaveDoc(TJvDBGridExcelExport, SaveDialog1.Filename);
      3: SaveDoc(TJvDBGridHTMLExport, SaveDialog1.Filename);
      4: SaveDoc(TJvDBGridCSVExport, SaveDialog1.Filename);
      5: SaveDoc(TJvDBGridXMLExport, SaveDialog1.Filename);
    end;
    // Open doc in default app
    //if mnuOpenFile.Checked then
      ShellExecute(Handle, 'open', PChar(SaveDialog1.Filename), nil, nil, SW_SHOWNORMAL);
  end;
end;

procedure TfListaClientes.SaveDoc(AExportClass: TJvCustomDBGridExportClass;
  const Filename: string);
var
  AExporter: TJvCustomDBGridExport;
begin
  AExporter := AExportClass.Create(self);
  try
    AExporter.Grid := JvDBGrid1;
    if AExporter is TJvDBGridCSVExport then
      TJvDBGridCSVExport(AExporter).ExportSeparator := esComma; // this to be compatible with JvCsvData
    AExporter.Filename := Filename;
    AExporter.OnProgress := DoExportProgress;
    JvProgressDialog1.Caption := AExporter.Caption;
    JvProgressDialog1.Show;
    AExporter.ExportGrid;
  finally
    AExporter.Free;
  end;

end;

procedure TfListaClientes.DoExportProgress(Sender: TObject; Min, Max,
  Position: Cardinal; const AText: string; var AContinue: Boolean);
begin
 JvProgressDialog1.Min := Min;
  JvProgressDialog1.Max := Max;
  JvProgressDialog1.Position := Position;
  JvProgressDialog1.Caption := AText;
  if Max > 0 then
    JvProgressDialog1.Text := Format('Exporting (%d%% finished)', [round(Position / Max * 100)]);
  AContinue := not JvProgressDialog1.Cancelled;
  if not AContinue or (Position >= Max) then
    JvProgressDialog1.Hide;
end;


procedure TfListaClientes.SetupData;
begin
  Data.CsvFieldDef := 'Filename:$255,Size:%,Attributes:$64,Type:$255';
//  Data.FieldDefs.Add('Filename', ftString, 255, false);
//  Data.FieldDefs.Add('Size', ftInteger, 0, false);
//  Data.FieldDefs.Add('Attributes', ftString, 64, false);
//  Data.FieldDefs.Add('Type', ftString, 255, false);
  Data.Filename := ExtractFilePath(Application.Exename) + 'TestData.csv';
  Data.Active := true;
  Data.Sort('Filename,Type,Attributes,Size', true);
  DataSource1.Dataset := Data;
end;

procedure TfListaClientes.JvDBGrid1DblClick(Sender: TObject);
begin
  if (dm.var_teste = 'consulta') then
    bitbtn8.Click//fClienteCadastro.ShowModal;
  else
    bitbtn13.Click;
end;

procedure TfListaClientes.JvDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not odd(ListaCliente.RecNo) then // se for impar
  // se a coluna ñ está selecionada
   if not (gdSelected in State) then
   begin
    //define uma COR DE FUNDO
    JvDBGrid1.Canvas.Brush.Color := $00FFEFDF;
    JvDBGrid1.Canvas.FillRect(Rect); //Pinta a celula
    //Pinta o texto padrão
    JvDBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
   end;
end;

procedure TfListaClientes.JvDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if (key = #13) then
 begin
  //if (varform = 'consulta') then
  if (dm.var_teste = 'consulta') then
    fClienteCadastro.ShowModal;
 end;
end;

procedure TfListaClientes.JvDBGrid1TitleClick(Column: TColumn);
begin
    cds.IndexFieldNames := Column.FieldName;
end;

procedure TfListaClientes.btnFiltroFormClick(Sender: TObject);
begin
  fClienteFiltro.ShowModal;
  btnFiltro.Click;
  EvDBFind1.SetFocus;
end;

procedure TfListaClientes.enviarEmail;
var insere: String;
    TD : TTransactionDesc;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  try
    cds.First;
    // Grava os clientes Selecionados na Tabela de Email
    while not cds.Eof do
    begin
      if (cdsE_MAIL.AsString = '') then
      begin
        MessageDlg('Não existe email cadastrado para o cliente : ' +
          cdsNOMECLIENTE.AsString , mtWarning, [mbOK], 0);
      end
      else begin
        insere := 'INSERT INTO EMAIL_ENVIAR (CODEMAIL, EMAIL, GRUPO, ENVIADO) ' +
          ' VALUES ( GEN_ID(GEN_EMAIL, 1) ' + ', ' +
          QuotedStr(cdsE_MAIL.AsString)     + ', ' +
          QuotedStr(FormatDateTime('mm/dd/yyyy',today)) + ', '+
          QuotedStr('N')     + ')';
        dm.sqlsisAdimin.ExecuteDirect(insere);
      end;
      cds.next;
    end;
    dm.sqlsisAdimin.Commit(TD);
  except
    on E : Exception do
    begin
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
    end;
  end;
  WinExec('prjEmail.exe', SW_NORMAL);
end;

procedure TfListaClientes.EnviarEmail1Click(Sender: TObject);
begin
  enviarEmail;
end;

procedure TfListaClientes.ordenarRelatorio;
begin
  varOrdenacao := 'ORDER BY';
  Case fClienteFiltro.cbOrdem1.ItemIndex of
    0 : varOrdenacao := varOrdenacao + ' cli.CODCLIENTE';
    1 : varOrdenacao := varOrdenacao + ' cli.NOMECLIENTE';
    2 : varOrdenacao := varOrdenacao + ' ende.CIDADE';
    3 : varOrdenacao := varOrdenacao + ' ende.UF';
    4 : varOrdenacao := varOrdenacao + ' cli.DATACADASTRO';
    5 : varOrdenacao := varOrdenacao + ' cli.DATANASC';
  end;

  Case fClienteFiltro.cbOrdem2.ItemIndex of
    0 : varOrdenacao := varOrdenacao + ', cli.CODCLIENTE';
    1 : varOrdenacao := varOrdenacao + ', cli.NOMECLIENTE';
    2 : varOrdenacao := varOrdenacao + ', ende.CIDADE';
    3 : varOrdenacao := varOrdenacao + ', ende.UF';
    4 : varOrdenacao := varOrdenacao + ', cli.DATACADASTRO';
    5 : varOrdenacao := varOrdenacao + ', cli.DATANASC';
  end;

  Case fClienteFiltro.cbOrdem3.ItemIndex of
    0 : varOrdenacao := varOrdenacao + ', cli.CODCLIENTE';
    1 : varOrdenacao := varOrdenacao + ', cli.NOMECLIENTE';
    2 : varOrdenacao := varOrdenacao + ', ende.CIDADE';
    3 : varOrdenacao := varOrdenacao + ', ende.UF';
    4 : varOrdenacao := varOrdenacao + ', cli.DATACADASTRO';
    5 : varOrdenacao := varOrdenacao + ', cli.DATANASC';
  end;
  if (varOrdenacao = 'ORDER BY') then
    varOrdenacao := '';
end;

end.
