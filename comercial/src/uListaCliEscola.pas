unit uListaCliEscola;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Provider, SqlExpr, FMTBcd, Grids, DBGrids, rpcompobase,
  DBClient, DB, DBLocal, DBLocalS, Menus, StdCtrls, Buttons,
  ExtCtrls, rpvclreport, XPMenu, MMJPanel, Mask, JvExMask, JvToolEdit,
  JvMaskEdit, JvDBFindEdit, JvExStdCtrls, JvCombobox, JvDBSearchComboBox,
  JvEdit, JvDBSearchEdit;

type
  TfListaCliEscola = class(TForm)
    GroupBox1: TGroupBox;
    CBox1: TRadioButton;
    CBox2: TRadioButton;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
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
    DBGrid1: TDBGrid;
    VCLReport1: TVCLReport;
    XPMenu1: TXPMenu;
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
    ListaClienteSERIE: TStringField;
    ListaClienteSERIELETRA: TStringField;
    ListaClienteRA: TStringField;
    ListaClienteCURSO: TStringField;
    cdsSERIE: TStringField;
    cdsSERIELETRA: TStringField;
    cdsRA: TStringField;
    cdsCURSO: TStringField;
    sdsCli: TSQLDataSet;
    sdsCliSERIE: TStringField;
    sdscli1: TSQLDataSet;
    sdscli1SERIELETRA: TStringField;
    sdsCli2: TSQLDataSet;
    sdsCli2CURSO: TStringField;
    MMJPanel2: TMMJPanel;
    Label9: TLabel;
    Label10: TLabel;
    BitBtn8: TSpeedButton;
    Bevel4: TBevel;
    Bevel1: TBevel;
    SpeedButton4: TSpeedButton;
    SpeedButton2: TSpeedButton;
    BitBtn4: TSpeedButton;
    Bevel3: TBevel;
    BitBtn5: TSpeedButton;
    edNome: TJvDBSearchComboBox;
    edCodigo: TJvDBSearchEdit;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    cbResp: TJvDBSearchComboBox;
    edCodResp: TJvDBSearchEdit;
    SQLDataSet2: TSQLDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField20: TStringField;
    DataSetProvider3: TDataSetProvider;
    ClientDataSet2: TClientDataSet;
    IntegerField3: TIntegerField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField41: TStringField;
    DataSource2: TDataSource;
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure cbRespEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fListaCliEscola: TfListaCliEscola;
//  varCondicao, nomecli, RAALUNO: String;
//  codcli, codVendedor : integer;

implementation

uses UDm, uProcurar, uClienteCadastro, ufDlgLogin, uAlunoCadastro,
  sCtrlResize;

{$R *.dfm}

procedure TfListaCliEscola.DBGrid1TitleClick(Column: TColumn);
begin
    cds.IndexFieldNames := Column.FieldName;
end;

procedure TfListaCliEscola.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(ListaCliente.RecNo) then // se for impar
  // se a coluna ñ está selecionada
   if not (gdSelected in State) then
   begin
    //define uma COR DE FUNDO
    DBGrid1.Canvas.Brush.Color := $00FFEFDF;
    DBGrid1.Canvas.FillRect(Rect); //Pinta a celula
    //Pinta o texto padrão
    DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
   end;
end;

procedure TfListaCliEscola.BitBtn3Click(Sender: TObject);
begin
  ListaCliente.Close;
  edCodigo.Text := '';
  edNome.Text := '';
end;

procedure TfListaCliEscola.BitBtn2Click(Sender: TObject);
Var
 varSql: String;
begin
  dm.varCondicao:= '';
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
   'ende.UF, cli.CODBANCO, cli.PRAZORECEBIMENTO, cli.OBS, cli.SERIE, ' +
   'cli.SERIELETRA, cli.RA, cli.CURSO, rep.NOME_REPRCLI, ' +
   'usu.NOMEUSUARIO, fun.NOME_FUNCIONARIO, fun.TELEFONE, fun.CELULAR from CLIENTES cli ' +
   'left outer join ENDERECOCLIENTE ende on ende.CODCLIENTE=cli.CODCLIENTE ' +
   'left outer join USUARIO usu on usu.CODUSUARIO = cli.CODUSUARIO ' +
   'left outer join REPR_CLIENTE rep on rep.COD_CLIENTE=cli.CODCLIENTE ' +
   'left outer join FUNCIONARIO fun on fun.CODUSUARIO = cli.CODUSUARIO ';

 dm.varCondicao := 'where ende.TIPOEND = 0 ';

//********************************************************************************************
 if CBox1.Checked = true then
   if dm.varCondicao <> '' then
      dm.varCondicao := dm.varCondicao + ' and cli.STATUS = 1 '
   else
   dm.varCondicao := 'where cli.STATUS = 1 ';
//********************************************************************************************
 if CBox2.Checked = true then
   if dm.varCondicao <> '' then
      dm.varCondicao := dm.varCondicao + ' and cli.STATUS = 2 '
   else
   dm.varCondicao := 'where cli.STATUS = 2 ';
//********************************************************************************************
 if edCodigo.Text <> '' then
   if dm.varCondicao <> '' then
      dm.varCondicao := dm.varCondicao + ' and cli.RA = ' + '''' + edCodigo.Text + ''''
   else
   dm.varCondicao := 'where cli.RA = ' + '''' + edCodigo.Text + '''';
//********************************************************************************************
{ if edNome.Text <> '' then
   if varCondicao <> '' then
     varCondicao := varCondicao + ' and UDF_COLLATEBR(cli.NOMECLIENTE) containing ' + '''' + edNome.Text +  ''''
   else
     varCondicao := 'where UDF_COLLATEBR(cli.NOMECLIENTE) containing ' + '''' + edNome.Text + '''';

//********************************************************************************************
 if ComboBox1.Text <> '' then
   if varCondicao <> '' then
     varCondicao := varCondicao + ' and cli.SERIE = ' + '''' + ComboBox1.Text +  ''''
   else
     varCondicao := 'where cli.SERIE = ' + '''' + ComboBox1.Text + '''';
//********************************************************************************************
 if ComboBox2.Text <> '' then
   if varCondicao <> '' then
     varCondicao := varCondicao + ' and cli.SERIELETRA = ' + '''' + ComboBox2.Text +  ''''
   else
     varCondicao := 'where cli.SERIELETRA = ' + '''' + ComboBox2.Text + '''';
//********************************************************************************************
 if ComboBox3.Text <> '' then
   if varCondicao <> '' then
     varCondicao := varCondicao + ' and cli.CURSO = ' + '''' + ComboBox3.Text +  ''''
   else
     varCondicao := 'where cli.CURSO = ' + '''' + ComboBox3.Text + '''';
//********************************************************************************************
}
 dm.varCondicao := varSql + dm.varCondicao + ' order by cli.NOMECLIENTE';

  if cds.Active then
     cds.Close;
  cds.CommandText := '';
  cds.CommandText := dm.varCondicao;
  cds.Open;
  DBGrid1.SetFocus;

end;

procedure TfListaCliEscola.BitBtn4Click(Sender: TObject);
begin
  if dm.varCondicao <> '' then
  begin
    if not dm.cds_empresa.Active then
      dm.cds_empresa.Open;
    VCLReport1.FileName := str_relatorio + 'rel_cliente.rep';
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport1.Report.DataInfo.Items[1].SQL := dm.varCondicao;
    VCLReport1.Execute;
  end;
end;

procedure TfListaCliEscola.SpeedButton3Click(Sender: TObject);
begin
  if not dm.Proc_end_cli.Active then
    dm.Proc_end_cli.Open;
  fProcurar:=TfProcurar.Create(self,dm.Proc_end_cli);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'CIDADE';
   finally
    dm.Proc_end_cli.Close;
    fProcurar.Free;
   end;
end;

procedure TfListaCliEscola.FormCreate(Sender: TObject);
begin
  if (DM.videoW <> '1920') then
    sCtrlResize.CtrlResize(TForm(fListaCliEscola));
end;

procedure TfListaCliEscola.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TfListaCliEscola.BitBtn8Click(Sender: TObject);
begin

 { if (cds.State in [dsInactive]) then
    exit;

  if (varform = 'consulta') then
    fClienteCadastro.ShowModal;

  if (varform = '') then
    BitBtn5.Click;

  if (varform = 'cadalunopedagogigo') then
  begin
      RA := cdsRA.AsString;
      close;
  end;

  if (varform= 'consultapedagogico') then
  begin
    RA := cdsRA.AsString;
    fAlunoCadastro := TfAlunoCadastro.Create(Application);
    try
      fAlunoCadastro.btnProcurar.Enabled := False;
      fAlunoCadastro.ShowModal;
    finally
      fAlunoCadastro.Free;
    end;
  end;   }


  dm.codcli := cdsCODCLIENTE.AsInteger;
  if (varform = 'consultapedagogico') then
  begin
    fClienteCadastro.ShowModal;
  end
  else
  begin
     fClienteCadastro:=TfClienteCadastro.Create(Application);
     try
      fClienteCadastro.cds_cli.Params[0].AsInteger := cdsCODCLIENTE.AsInteger;
      fClienteCadastro.cds_cli.Open;
      if fClienteCadastro.cdsEnderecoCli.Active then
         fClienteCadastro.cdsEnderecoCli.Close;
      fClienteCadastro.cdsEnderecoCli.Params[0].Clear;
      fClienteCadastro.cdsEnderecoCli.Params[1].AsInteger := cdsCODCLIENTE.AsInteger;
      fClienteCadastro.cdsEnderecoCli.Open;
      //fClienteCadastro.btnIncluir.Click;
      fClienteCadastro.ShowModal;
     finally
       fClienteCadastro.Free;
     end;
  end;

end;

procedure TfListaCliEscola.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //  if codcli = 0 then
  dm.codcli := cdsCODCLIENTE.AsInteger;
  //  if nomecli = '' then
  dm.nomecli := cdsNOMECLIENTE.AsString;

  dm.RAALUNO := cdsRA.AsString;

  //RA := cdsRA.AsString;

  if (cds.Active) then
      cds.Close;
end;

procedure TfListaCliEscola.SpeedButton2Click(Sender: TObject);
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

  VCLReport1.Report.Params.ParamByName('CODVEND').Value := 0;
  VCLReport1.Report.Params.ParamByName('UFCLI').Value := 'TODOS';
  VCLReport1.Report.Params.ParamByName('CID').Value := 'TODAS AS CIDADES CADASTRADAS NO SISTEMA';
  VCLReport1.Report.Params.ParamByName('DDDCLI').Value := 'TODOS';
  VCLReport1.Execute;
end;

procedure TfListaCliEscola.SpeedButton4Click(Sender: TObject);
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

  VCLReport_etiqueta.Report.Params.ParamByName('CODVEND').Value := 0;
  VCLReport_etiqueta.Report.Params.ParamByName('UFCLI').Value := 'TODOS';
  VCLReport_etiqueta.Report.Params.ParamByName('CID').Value := 'TODAS AS CIDADES CADASTRADAS NO SISTEMA';
  VCLReport_etiqueta.Report.Params.ParamByName('DDDCLI').Value := 'TODOS';
  VCLReport_etiqueta.Execute;
end;

procedure TfListaCliEscola.FormShow(Sender: TObject);
begin
  if (not cds.Active) then
    cds.Open;
  edNome.SetFocus;
end;

procedure TfListaCliEscola.DBGrid1DblClick(Sender: TObject);
begin
{  if (cds.State in [dsInactive]) then
    exit;
  if (varform = 'cadastroaluno') then
  begin
      RA := cdsRA.AsString;
      close;      
  end;

  if (varform = 'consultaescola') then
  begin
    //fClienteCadastro.ShowModal;
    RA := cdsRA.AsString;
    fAlunoCadastro := TfAlunoCadastro.Create(Application);
    try
      fAlunoCadastro.btnProcurar.Enabled := False;
      fAlunoCadastro.ShowModal;
    finally
      fAlunoCadastro.Free;
    end;
  end;}
 { codcli := cdsCODCLIENTE.AsInteger;
  if (varform = 'consulta') then
    fClienteCadastro.ShowModal;
  if (varform = '') then
    BitBtn5.Click;

  //***** aqui abri o procura pelo modulo pedagogico ******
  if (varform= 'consultapedagogico') then
  begin
      //fClienteCadastro.ShowModal;
      RA := cdsRA.AsString;
      fAlunoCadastro := TfAlunoCadastro.Create(Application);
      try
        fAlunoCadastro.btnProcurar.Enabled := False;
        fAlunoCadastro.ShowModal;
      finally
        fAlunoCadastro.Free;
      end;
  end;

  //***** aqui abri o procura pelo Form Cadastro de Alunos do Modulo Pedagogico ******
  if (varform= 'cadalunopedagogigo') then
     BitBtn5.Click;        }
  //******************************************************
   dm.codcli := cdsCODCLIENTE.AsInteger;
   if (varform = 'consultapedagogico') then
     fClienteCadastro.ShowModal;
end;

procedure TfListaCliEscola.DBGrid1ColEnter(Sender: TObject);
begin
 { if (cds.State in [dsInactive]) then
    exit;
  if (varform = 'cadastroaluno') then
  begin
      RA := cdsRA.AsString;
      close;
  end;

  if (varform = 'consultaescola') then
  begin
    //fClienteCadastro.ShowModal;
    RA := cdsRA.AsString;
    fAlunoCadastro := TfAlunoCadastro.Create(Application);
    try
      fAlunoCadastro.btnProcurar.Enabled := False;
      fAlunoCadastro.ShowModal;
    finally
      fAlunoCadastro.Free;
    end;
  end;}
 {  codcli := cdsCODCLIENTE.AsInteger;

  //***** aqui abri o procura pelo Form Principal do Modulo Financeiro ******
   if (varform= 'consultaescola') then
    fClienteCadastro.ShowModal;

  //***** aqui abri o procura pelo Form Cadastro de Cliente do Modulo Financeiro ******
  if (varform = '') then
    BitBtn5.Click;

  //***** aqui abri o procura pelo modulo pedagogico ******
  if (varform= 'consultapedagogico') then
  begin
      //fClienteCadastro.ShowModal;
      RA := cdsRA.AsString;
      fAlunoCadastro := TfAlunoCadastro.Create(Application);
      try
        fAlunoCadastro.btnProcurar.Enabled := False;
        fAlunoCadastro.ShowModal;
      finally
        fAlunoCadastro.Free;
      end;  }
  {end;

  //***** aqui abri o procura pelo Form Cadastro de Alunos do Modulo Pedagogico ******
  if (varform= 'cadalunopedagogigo') then
     BitBtn5.Click;
  //******************************************************
   }
end;

procedure TfListaCliEscola.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
{   if (key = #13) then
   begin
      if (varform= 'consultapedagogico') then
      begin
        RA := cdsRA.AsString;
        fAlunoCadastro := TfAlunoCadastro.Create(Application);
        try
          fAlunoCadastro.btnProcurar.Enabled := False;
          fAlunoCadastro.ShowModal;
        finally
          fAlunoCadastro.Free;
        end;
      end;
   end;  }
  dm.codcli := cdsCODCLIENTE.AsInteger;
 if (key = #13) then
 begin
   if (varform = 'consultapedagogico') then
     fClienteCadastro.ShowModal;
 end;   
end;

procedure TfListaCliEscola.cbRespEnter(Sender: TObject);
begin
  if (ClientDataSet2.Active) then
    ClientDataSet2.Close;
  if (cbResp.Text <> '') then
    ClientDataSet2.Params.ParamByName('PRAZAO').asString := cbResp.Text
  else
    ClientDataSet2.Params.ParamByName('PRAZAO').asString := 'TODOS';
  ClientDataSet2.Open;  
end;

end.
