unit uListaClientesSaude;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Provider, SqlExpr, FMTBcd, Grids, DBGrids, rpcompobase,
  DBClient, DB, DBLocal, DBLocalS, Menus, StdCtrls, Buttons,
  ExtCtrls, rpvclreport, XPMenu, JvExStdCtrls, JvCombobox,
  JvDBSearchComboBox, Mask, DBCtrls;

type
  TfListaClienteSaude = class(TForm)
    Panel3: TPanel;
    BitBtn4: TSpeedButton;
    BitBtn3: TSpeedButton;
    BitBtn5: TSpeedButton;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    BitBtn2: TSpeedButton;
    BitBtn8: TSpeedButton;
    BitBtn9: TBitBtn;
    Label9: TLabel;
    Label10: TLabel;
    GroupBox1: TGroupBox;
    CBox1: TRadioButton;
    CBox2: TRadioButton;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    edCodigo: TEdit;
    GroupBox4: TGroupBox;
    SpeedButton3: TSpeedButton;
    Label6: TLabel;
    edCidade: TEdit;
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
    dsp: TDataSetProvider;
    cds: TClientDataSet;
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
    GroupBox5: TGroupBox;
    Label5: TLabel;
    edtUF: TEdit;
    edtDDD: TEdit;
    Label7: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    VCLReport_etiqueta: TVCLReport;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    edCodCCusto: TComboBox;
    Label11: TLabel;
    JvDBSearchComboBox1: TJvDBSearchComboBox;
    edNome: TEdit;
    JvDBSearchComboBox2: TJvDBSearchComboBox;
    SpeedButton1: TSpeedButton;
    ListaClienteRA: TStringField;
    ListaClienteCODCLIENTE: TIntegerField;
    ListaClienteNOMECLIENTE: TStringField;
    ListaClienteRAZAOSOCIAL: TStringField;
    ListaClienteSTATUS: TSmallintField;
    ListaClienteDATANASC: TDateField;
    ListaClienteTELEFONE: TStringField;
    ListaClienteTELEFONE1: TStringField;
    ListaClienteTELEFONE2: TStringField;
    ListaClienteFAX: TStringField;
    cdsRA: TStringField;
    cdsCODCLIENTE: TIntegerField;
    cdsNOMECLIENTE: TStringField;
    cdsRAZAOSOCIAL: TStringField;
    cdsSTATUS: TSmallintField;
    cdsDATANASC: TDateField;
    cdsTELEFONE: TStringField;
    cdsTELEFONE1: TStringField;
    cdsTELEFONE2: TStringField;
    cdsFAX: TStringField;
    ListaClienteCONTATO: TStringField;
    cdsCONTATO: TStringField;
    ListaClienteCOD_FAIXA: TIntegerField;
    cdsCOD_FAIXA: TIntegerField;
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
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fListaClienteSaude: TfListaClienteSaude;
  varCondicao: String;
  nomecli , RAALUNO : string;
  codcli, codVendedor : integer;
  var_testeSa : string; //, nome_user, varform

implementation

uses UDm, uProcurar, uClienteCadastro, ufDlgLogin;

{$R *.dfm}

procedure TfListaClienteSaude.DBGrid1TitleClick(Column: TColumn);
begin
    cds.IndexFieldNames := Column.FieldName;
end;

procedure TfListaClienteSaude.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
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

procedure TfListaClienteSaude.BitBtn3Click(Sender: TObject);
begin
  ListaCliente.Close;
  edCodigo.Text := '';
  edNome.Text := '';
  edCidade.Text := '';
end;

procedure TfListaClienteSaude.BitBtn2Click(Sender: TObject);
Var  varSql: String;
begin
   varCondicao:= '';
   varSql:='select DISTINCT cli.codcliente, cli.RA, cli.NOMECLIENTE, cli.RAZAOSOCIAL, cli.COD_FAIXA, ' +
   'cli.SEGMENTO, cli.CODUSUARIO, cli.STATUS, cli.CONTATO, cli.DATANASC, cli.CNPJ, cli.INSCESTADUAL, '+
   '       (CASE when ende.DDD is null then  ende.TELEFONE ELSE ' +
   QuotedStr('(') + ' || ende.DDD || ' + QuotedStr(')') + ' || ende.TELEFONE END ) as TELEFONE , ' +
   '       (CASE when ende.DDD1 is null then  ende.TELEFONE1 ELSE ' +
   QuotedStr('(') + ' || ende.DDD1 || ' + QuotedStr(')') + ' || ende.TELEFONE1 END ) as TELEFONE1, ' +
   '       (CASE when ende.DDD2 is null then  ende.TELEFONE2 ELSE ' +
   QuotedStr('(') + ' || ende.DDD2 || ' + QuotedStr(')') + ' || ende.TELEFONE2 END ) as TELEFONE2, ' +
   '       (CASE when ende.DDD3 is null then  ende.FAX ELSE ' +
   QuotedStr('(') + ' || ende.DDD3 || ' + QuotedStr(')') + ' || ende.FAX END ) as FAX, ende.CIDADE, ' +
   'ende.UF, cli.CODBANCO, cli.PRAZORECEBIMENTO, cli.OBS, rep.NOME_REPRCLI, ' +
   'usu.NOMEUSUARIO, fun.NOME_FUNCIONARIO, fun.TELEFONE, fun.CELULAR from CLIENTES cli ' +
   'left outer join ENDERECOCLIENTE ende on ende.CODCLIENTE=cli.CODCLIENTE ' +
   'left outer join USUARIO usu on usu.CODUSUARIO = cli.CODUSUARIO ' +
   'left outer join REPR_CLIENTE rep on rep.COD_CLIENTE=cli.CODCLIENTE ' +
   'left outer join FUNCIONARIO fun on fun.CODUSUARIO = cli.CODUSUARIO ';

 varCondicao := 'where cli.grupo_cliente = ';
 varCondicao := varCondicao + QuotedStr(edCodCCusto.Text);
//********************************************************************************************
 if CBox1.Checked = true then
   if varCondicao <> '' then
      varCondicao := varCondicao + ' and cli.STATUS = 0 '
   else
   varCondicao := 'where cli.STATUS = 0 ';
//********************************************************************************************
 if CBox2.Checked = true then
   if varCondicao <> '' then
      varCondicao := varCondicao + ' and cli.STATUS = 1 '
   else
   varCondicao := 'where cli.STATUS =  ';
//********************************************************************************************
 if edCodigo.Text <> '' then
   if varCondicao <> '' then
      varCondicao := varCondicao + ' and cli.RA = ' + QuotedStr(edCodigo.Text)
   else
   varCondicao := 'where cli.RA = ' + QuotedStr(edCodigo.Text);
//********************************************************************************************
 if edNome.Text <> '' then
   if varCondicao <> '' then
     varCondicao := varCondicao + ' and UDF_COLLATEBR(cli.RAZAOSOCIAL) containing ' + '''' + edNome.Text +  ''''
   else
     varCondicao := 'where UDF_COLLATEBR(cli.RAZAOSOCIAL) containing ' + '''' + edNome.Text + '''';
//********************************************************************************************
 if edCidade.Text <> '' then
   if varCondicao <> '' then
     varCondicao := varCondicao + ' and UDF_COLLATEBR(ende.CIDADE) containing  ' + '''' + edCidade.Text + '' + ''''
   else
     varCondicao := 'where UDF_COLLATEBR(ende.CIDADE) containing ' + '''' + edCidade.Text +  '''';
//********************************************************************************************
 if edtUF.Text <> '' then
   if varCondicao <> '' then
     varCondicao := varCondicao + ' and ende.UF = ' + '''' + edtUF.Text +  ''''
   else
     varCondicao := 'where ende.UF = ' + '''' + edtUF.Text +  '''';
//********************************************************************************************
 if edtDDD.Text <> '' then
   if varCondicao <> '' then
     varCondicao := varCondicao + ' and ende.DDD = ' + '''' + edtDDD.Text +  ''''
   else
     varCondicao := 'where ende.DDD = ' + '''' + edtDDD.Text + '''';
//********************************************************************************************
 varCondicao := varSql + varCondicao + ' order by cli.NOMECLIENTE'; //ende.CIDADE,

  if cds.Active then
     cds.Close;

  cds.CommandText := '';
  cds.CommandText := varCondicao;

  cds.Open;
   JvDBSearchComboBox1.SetFocus;
//   DBGrid1.SetFocus;

end;

procedure TfListaClienteSaude.BitBtn4Click(Sender: TObject);
begin

    if varCondicao <> '' then
    begin
      if not dm.cds_empresa.Active then
        dm.cds_empresa.Open;
      if RadioButton1.Checked = true then
        VCLReport1.FileName := str_relatorio + 'rel_cliente.rep';
      if RadioButton2.Checked = true then
        VCLReport1.FileName := str_relatorio + 'rel_cliente1.rep';

      VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
      VCLReport1.Report.DataInfo.Items[1].SQL:=varCondicao;
      VCLReport1.Execute;
    end;

end;

procedure TfListaClienteSaude.SpeedButton3Click(Sender: TObject);
begin
  if not dm.Proc_end_cli.Active then
    dm.Proc_end_cli.Open;
  fProcurar:=TfProcurar.Create(self,dm.Proc_end_cli);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'CIDADE';
   if fProcurar.ShowModal=mrOk then
     edCidade.Text := dm.Proc_end_cliCIDADE.AsString;
   finally
    dm.Proc_end_cli.Close;
    fProcurar.Free;
   end;
end;

procedure TfListaClienteSaude.FormCreate(Sender: TObject);
begin
  if (dm.usuario.Active) then
     dm.usuario.Close;
  dm.usuario.Params[0].AsString := usuario;
  dm.usuario.Open;
  if (not dm.usuario.IsEmpty) then
  begin
       dm.videoW := dm.UsuarioP1.AsString;
       dm.videoH := dm.UsuarioP2.AsString;
  end;
  if dm.videoW = '800' then
    Position := poDesigned;
  if dm.videoW <> '' then
  begin
   ScreenWidth := StrToInt(dm.videoW);
   ScreenHeight := StrToInt(dm.videoH);
   scaled := true;
   if (screen.width <> ScreenWidth) then
   begin
     height := longint(height) * longint(screen.height) DIV ScreenHeight;
     width := longint(width) * longint(screen.width) DIV ScreenWidth;
     scaleBy(screen.width, ScreenWidth);
   end;
  end;

  //Vejo quais são as contas de Receitas para listar no lookupcombobox.
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTRORECEITA';
  dm.cds_parametro.Open;

  if dm.cds_ccusto.Active then
    dm.cds_ccusto.Close;
  dm.cds_ccusto.Params[0].AsString := dm.cds_parametroDADOS.AsString;
  dm.cds_ccusto.Open;
  // populo a combobox
  DM.cds_ccusto.First;
  while not DM.cds_ccusto.Eof do
  begin
    edCodCCusto.Items.Add(dm.cds_ccustoNOME.AsString);
    DM.cds_ccusto.Next;
  end;
  dm.cds_parametro.Close;

  edCodCCusto.ItemIndex := 0;

end;

procedure TfListaClienteSaude.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TfListaClienteSaude.BitBtn8Click(Sender: TObject);
begin
  if (var_testeSa = 'consulta') then
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
       if (var_testeSa <> 'consulta') then
         Close;
     end;
  end;
end;

procedure TfListaClienteSaude.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //  if codcli = 0 then
  codcli := cdsCODCLIENTE.AsInteger;
  //  if nomecli = '' then
  nomecli := cdsNOMECLIENTE.AsString;
  RAALUNO := cdsRA.AsString;


end;

procedure TfListaClienteSaude.SpeedButton2Click(Sender: TObject);
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
  // Cod_ven não usa aqui.
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


  VCLReport1.Execute;
end;

procedure TfListaClienteSaude.SpeedButton4Click(Sender: TObject);
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


  VCLReport_etiqueta.Execute;





  end;

procedure TfListaClienteSaude.FormShow(Sender: TObject);
begin
{  if(cds.Active) then
    cds.Close;
  cds.Open;
 } 
  JvDBSearchComboBox1.SetFocus;
end;

procedure TfListaClienteSaude.DBGrid1DblClick(Sender: TObject);
begin
//  if (varform = 'consulta') then
  if (var_testeSa = 'consulta') then
    fClienteCadastro.ShowModal;
end;

procedure TfListaClienteSaude.RadioButton1Click(Sender: TObject);
begin
  if RadioButton2.Checked = true then
    RadioButton2.Checked := false;
end;

procedure TfListaClienteSaude.RadioButton2Click(Sender: TObject);
begin
  if RadioButton1.Checked = true then
    RadioButton1.Checked := false;
end;

procedure TfListaClienteSaude.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
  //if (varform = 'consulta') then
  if (var_testeSa = 'consulta') then
    fClienteCadastro.ShowModal;
 end;
end;

end.
