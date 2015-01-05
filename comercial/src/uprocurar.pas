unit uProcurar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ExtCtrls, ComCtrls, Grids, DBGrids, StdCtrls, Buttons,
  DBLocals, EDBFind, dxCore, dxButton, rpcompobase, rpvclreport, DBCtrls;

type
  TfProcurar = class(TForm)
    DtSrc: TDataSource;
    StsBr: TStatusBar;
    Panel1: TPanel;
    BtnOk: TBitBtn;
    BtnCancel: TBitBtn;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    EditProc: TEdit;
    BtnProcurar: TBitBtn;
    EvDBFind1: TEvDBFind;
    btnIncluir: TBitBtn;
    Label1: TLabel;
    btnImprimir: TBitBtn;
    rep: TVCLReport;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    BitBtn1: TBitBtn;
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure BtnProcurarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimirClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    usuarioproc : string;
    codProdProc : Integer;
    codProProc  : String;
    DescProProc : String;
    precoVenda  : Double;

 constructor Create (AOWner : TComponent; DataSet : TSQLClientDataset); reintroduce;
    { Public declarations }
  end;

var
  fProcurar: TfProcurar;
    varForm1, nomecliente, fCompraNomeForn, nome_Forn: String;
    cod_Forn, codcliente, fCompraCodForn: integer;

implementation

uses UDM, uFornecedorCadastro, ufuncionario, uClienteCadastro,
  uClientePlano, UDmSaude, uClienteFiltro;

{$R *.dfm}

procedure TfProcurar.DBGrid1TitleClick(Column: TColumn);
begin
  with DtSrc.dataset as TSQLClientDataset do
    IndexFieldNames:=Column.FieldName;
end;

procedure TfProcurar.BtnProcurarClick(Sender: TObject);
begin
 with DtSrc.dataset as TSQLClientDataset do // Atenção : declara DBlocalS em uses
  begin
    Close;
    if (DtSrc.DataSet <> dm.scds_cli_proc) then
    begin
      If tag=0 then //opção de flag para usar % ou não
      begin
        Params[0].AsString:=EditProc.Text+'%';
        if DtSrc.DataSet = dm.scds_usuario_proc then
        begin
          Params.ParamByName('pPerfil').AsString := usuarioproc;
          Params.ParamByName('pPerfil1').AsString := 'AMBOS';
        end;
        if DtSrc.DataSet = dm.scds_prod then
        begin
          if (EditProc.Text = '') then
            Params.ParamByName('PRODUTO').AsString := 'TODOS';
        end;
      end
      else begin
        Params[0].AsString:=EditProc.Text;
        if DtSrc.DataSet = dm.scds_usuario_proc then
        begin
           Params.ParamByName('pPerfil').AsString := usuarioproc;
           Params.ParamByName('pPerfil1').AsString := 'AMBOS';
        end;
      end;
    end;
    Open;
    BtnOk.Enabled:=not IsEmpty;
    if IsEmpty then
       StsBr.SimpleText:=format('Nenum registro foi encontrado com "%s"',[EditProc.text])
    else
     StsBr.SimpleText:=
     format('%d registros encontrados com "%s"',[recordcount,EditProc.text]);
   end;
end;

constructor TfProcurar.Create(AOWner: TComponent; DataSet: TSQLClientDataset);
begin
  inherited create(AOWner);
   DtSrc.DataSet:=DataSet;
end;

procedure TfProcurar.FormShow(Sender: TObject);
begin
 if (RadioGroup2.Visible = True) then
     RadioGroup2.ItemIndex := 2;
 if (EvDBFind1.Visible = True) then
    EvDBFind1.SetFocus;
end;

procedure TfProcurar.btnIncluirClick(Sender: TObject);
begin
  //=========================================================
  //Procura acessado para procurar Fornecedor
  if DtSrc.DataSet = dm.scds_forn_proc then
  begin
     ffornecedorcadastro:=TfFornecedorCadastro.Create(Application);
     try
        ffornecedorcadastro.ShowModal;
        Close;
     finally
       varForm1 := '';
       ffornecedorcadastro.Free;
     end;
  end;
  //=========================================================
  //Procura acessado para procurar Vendedor
  if DtSrc.DataSet = dm.scds_usuario_proc then
  begin
     varForm1 := 'Procura';
     fFuncionario:=TfFuncionario.Create(Application);
     try
        fFuncionario.ShowModal;
        BtnOk.Click;
     finally
       varForm1 := '';
       fFuncionario.Free;
     end;
  end;

end;

procedure TfProcurar.BtnOkClick(Sender: TObject);
begin
  if (dm.scds_usuario_proc.Active) then
  begin
    cod_vendedor := dm.scds_usuario_procCODUSUARIO.AsInteger;
    nome_vendedor := dm.scds_usuario_procNOMEUSUARIO.AsString;
  end;

end;

procedure TfProcurar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (dm.scds_usuario_proc.Active) then
  begin
    cod_vendedor := dm.scds_usuario_procCODUSUARIO.AsInteger;
    nome_vendedor := dm.scds_usuario_procNOMEUSUARIO.AsString;
  end;
  if (dm.scds_prod.active) then
  begin
    codProdProc := dm.scds_prodCodProduto.asInteger;
    codProProc  := dm.scds_prodCodPro.asString;
    DescProProc := dm.scds_prodProduto.asString;
    precoVenda  := dm.scds_ProdVALOR_PRAZO.AsFloat;
  end;
end;

procedure TfProcurar.btnImprimirClick(Sender: TObject);
begin
  // Fornecedor
  if (DtSrc.DataSet = dm.scds_forn_proc) then
  begin
    rep.FileName := str_relatorio + 'fornecedorCadastro.rep';
  end;
  if (DtSrc.DataSet = dm.proc_transp) then
  begin
    rep.FileName := str_relatorio + 'transportadoraCadastro.rep';
  end;
  rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  rep.Execute;
end;

procedure TfProcurar.RadioGroup1Click(Sender: TObject);
begin
  if (radioGroup1.ItemIndex = 0) then
    dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1
  else
    dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 2;
  BtnProcurar.Click;
end;

procedure TfProcurar.RadioGroup2Click(Sender: TObject);
begin
  if (radioGroup2.ItemIndex = 0) then
    dm.scds_forn_proc.Params.ParamByName('pSegmento').AsInteger := 2; //Compra
  if (radioGroup2.ItemIndex = 1) then
    dm.scds_forn_proc.Params.ParamByName('pSegmento').AsInteger := 3; //Despesa
  if (radioGroup2.ItemIndex = 2) then
    dm.scds_forn_proc.Params.ParamByName('pSegmento').AsInteger := 1; //Compra e Despesa
  BtnProcurar.Click;
end;

procedure TfProcurar.DBGrid1DblClick(Sender: TObject);
begin
   if ((BtnOk.Enabled = True) and (BtnOk.Visible = True)) then
     BtnOk.Click;
end;

procedure TfProcurar.BitBtn1Click(Sender: TObject);
var sForn, varCondicao: String;
begin
  fClienteFiltro.Caption := 'Filtro Fornecedor';
  fClienteFiltro.GroupBox3.Caption := 'Fornecedor';
  fClienteFiltro.GroupBox2.Caption := 'Comprador';
  fClienteFiltro.GroupBox5.Visible := False;
  fClienteFiltro.GroupBox8.Visible := False;

  fClienteFiltro.ShowModal;
  varCondicao := '';
  sForn := ' select cli.CODFORNECEDOR, cli.NOMEFORNECEDOR, cli.RAZAOSOCIAL, ende.DDD, ' +
    ' ende.TELEFONE,  cli.PRAZOPAGAMENTO, cli.CFOP, ende.UF , cli.CODFISCAL ' +
    '  from FORNECEDOR cli ' +
    '  left outer join ENDERECOFORNECEDOR ende on ende.CODFORNECEDOR = cli.CODFORNECEDOR ' +
    ' where ((cli.NOMEFORNECEDOR like :pFORNECEDOR) ' +
    '    or (cli.RAZAOSOCIAL like :pRAZAO) or (cli.CODFORNECEDOR = :pCODFORNECEDOR)) ' +
    '   and  (cli.status = :pStatus) ' +
    '   and  (((cli.segmento = :pSegmento) or (cli.segmento = 1) ) or (:pSegmento = 1 )) ' +
    '   and ( (ende.TIPOEND = 0) or (ende.TIPOEND is null) ) ';

 if (fClienteFiltro.codVen.Text <> '') then
   varCondicao := varCondicao + ' and cli.CODUSUARIO = ' + fClienteFiltro.codVen.Text;
//********************************************************************************************
 //if (fClienteFiltro.NomeVen.Text <> '') then
 //  varCondicao := varCondicao + ' and UDF_COLLATEBR(usu.NOMEUSUARIO) containing ' + '''' + fClienteFiltro.nomeVen.Text +  '''';
//********************************************************************************************
 if (fClienteFiltro.CBox3.Checked = true) then
   varCondicao := varCondicao + ' and ((ende.e_mail is not null) and (ende.e_mail <> ' +
     QuotedStr('') + '))';
//********************************************************************************************
 if (fClienteFiltro.CBox4.Checked = true) then
    varCondicao := varCondicao + ' and ((ende.e_mail = ' + QuotedStr('') + ')or(ende.e_mail is null)) ';
//********************************************************************************************
 if (fClienteFiltro.CBox1.Checked = true) then
   varCondicao := varCondicao + ' and cli.STATUS = 1 ';
//********************************************************************************************
 if (fClienteFiltro.CBox2.Checked = true) then
   varCondicao := varCondicao + ' and cli.STATUS = 2 ';
  //********************************************************************************************

 if (fClienteFiltro.cbfisica.Checked = true) then
    varCondicao := varCondicao + ' and cli.TIPOFIRMA = 0 ';
//********************************************************************************************
 if (fClienteFiltro.cbjuridica.Checked = true) then
   varCondicao := varCondicao + ' and cli.TIPOFIRMA = 1 ';
  //********************************************************************************************

  if (fClienteFiltro.JvDatePickerEdit2.Checked = true) then
  begin
    varCondicao := varCondicao + ' and cli.DATACADASTRO between ';
    varCondicao := varCondicao + QuotedStr(FormatDateTime('mm/dd/yyyy', fClienteFiltro.JvDatePickerEdit2.Date));
    varCondicao := varCondicao +  ' and ' + QuotedStr(FormatDateTime('mm/dd/yyyy', fClienteFiltro.JvDatePickerEdit3.Date));
  end;
//********************************************************************************************
 if (fClienteFiltro.edCodigo.Text <> '') then
   varCondicao := varCondicao + ' and cli.CODFORNECEDOR = ' + fClienteFiltro.edCodigo.Text;
//********************************************************************************************
 if (fClienteFiltro.edNome.Text <> '') then
   varCondicao := varCondicao + ' and UDF_COLLATEBR(cli.NOMEFORNECEDOR) containing ' + '''' + fClienteFiltro.edNome.Text +  '''';
//********************************************************************************************
 if (fClienteFiltro.edCNPJCPF.Text <> '') then
   varCondicao := varCondicao + ' and UDF_DIGITS(cli.CNPJ) containing ' + '''' + fClienteFiltro.edCNPJCPF.Text +  '''';
//********************************************************************************************
 if (fClienteFiltro.edIERG.Text <> '') then
   varCondicao := varCondicao + ' and UDF_DIGITS(cli.INSCESTADUAL) containing ' + '''' + fClienteFiltro.edIERG.Text +  '''';
//********************************************************************************************
 if (fClienteFiltro.edRazao.Text <> '') then
   varCondicao := varCondicao + ' and UDF_COLLATEBR(cli.RAZAOSOCIAL) containing ' + '''' + fClienteFiltro.edRazao.Text +  '''';
//********************************************************************************************
 if (fClienteFiltro.edCidade.Text <> '') then
   varCondicao := varCondicao + ' and UDF_COLLATEBR(ende.CIDADE) containing UDF_COLLATEBR(' + '''' + fClienteFiltro.edCidade.Text + '' + ''')';
//********************************************************************************************
 if (fClienteFiltro.edtUF.Text <> '') then
   varCondicao := varCondicao + ' and ende.UF = ' + '''' + (fClienteFiltro.edtUF.Text) +  '''';
//********************************************************************************************
 if (fClienteFiltro.edtDDD.Text <> '') then
   varCondicao := varCondicao + ' and ende.DDD = ' + '''' + fClienteFiltro.edtDDD.Text +  '''';
//********************************************************************************************
 //if (fClienteFiltro.cbbRegiao.Text <> '') then
 //begin
 //  fClienteFiltro.cdsRegiao.Locate('DESCRICAO', fClienteFiltro.cbbRegiao.Text, [loCaseInsensitive]);
 //  varCondicao := varCondicao + ' and cli.REGIAO = ' + IntToStr(fClienteFiltro.cdsRegiaoCODDADOS.asInteger);
 // end;
//********************************************************************************************
 { if (fClienteFiltro.cbAniversario.ItemIndex > 0) then
  begin
    if (dm.cadastroClienteTipo = 'SIMPLES') then
    begin
      varCondicao := varCondicao + ' and UDF_MONTH(cli.DATANASC) =   ';
      varCondicao := varCondicao + IntToStr(fClienteFiltro.cbAniversario.ItemIndex) +
       ' and datanasc > ' + QuotedStr('01/01/1930');
    end;
  end;}
//********************************************************************************************

  sForn := sForn + varCondicao + ' order by cli.NOMEFORNECEDOR';
  dm.scds_forn_proc.Close;
  dm.scds_forn_proc.CommandText := sForn;
  dm.scds_forn_proc.Params.CreateParam(ftString, 'pFORNECEDOR', ptInput);
  dm.scds_forn_proc.Params.CreateParam(ftString, 'pRAZAO', ptInput);
  dm.scds_forn_proc.Params.CreateParam(ftInteger, 'pCODFORNECEDOR', ptInput);
  dm.scds_forn_proc.Params.CreateParam(ftSmallint, 'pStatus', ptInput);
  dm.scds_forn_proc.Params.CreateParam(ftSmallint, 'pSegmento', ptInput);
  dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
  dm.scds_forn_proc.Params.ParamByName('pSegmento').AsInteger := 0;
  BtnProcurar.Click;
  EvDBFind1.SetFocus;
  fClienteFiltro.GroupBox3.Caption := 'Cliente';
  fClienteFiltro.GroupBox2.Caption := 'Vendedor';
  fClienteFiltro.GroupBox5.Visible := True;
  fClienteFiltro.GroupBox8.Visible := True;
  fClienteFiltro.Caption := 'Filtro Cliente';
end;

end.

