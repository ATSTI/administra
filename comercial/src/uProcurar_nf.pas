unit uProcurar_nf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ExtCtrls, ComCtrls, Grids, DBGrids, StdCtrls, Buttons,
  DBLocals, EDBFind, dxCore, dxButton, rpcompobase, rpvclreport, DBCtrls;

type
  TfProcurar_nf = class(TForm)
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
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure BtnProcurarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimirClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    novoCliente : String;
    usuarioproc : string;
 constructor Create (AOWner : TComponent; DataSet : TSQLClientDataset); reintroduce;
 function FormExiste(aberto: Tform): Boolean;
    { Public declarations }
  end;

var
  fProcurar_nf: TfProcurar_nf;
    varForm1, nomecliente, fCompraNomeForn, nome_Forn: String;
    cod_Forn, codcliente, fCompraCodForn: integer;

implementation

uses UDM, uFornecedorCadastro, ufuncionario, uClienteCadastro,
  uClientePlano, UDmSaude, sCtrlResize, UDMNF, uNF, uProcurar, uNotaf,
  uCliente1, uTerminal2;

{$R *.dfm}

procedure TfProcurar_nf.DBGrid1TitleClick(Column: TColumn);
begin
  with DtSrc.dataset as TSQLClientDataset do
    IndexFieldNames:=Column.FieldName;
end;

procedure TfProcurar_nf.BtnProcurarClick(Sender: TObject);
begin
 with DtSrc.dataset as TSQLClientDataset do // Atenção : declara DBlocalS em uses
  begin
    Close;
    If tag=0 then //opção de flag para usar % ou não
    begin
       Params[0].AsString:=EditProc.Text+'%';
      if DtSrc.DataSet = dm.scds_usuario_proc then
      begin
        Params.ParamByName('pPerfil').AsString := usuarioproc;
        Params.ParamByName('pPerfil1').AsString := 'AMBOS';
      end
      end
    else
    begin
       Params[0].AsString:=EditProc.Text;
    if DtSrc.DataSet = dm.scds_usuario_proc then
    begin
       Params.ParamByName('pPerfil').AsString := usuarioproc;
       Params.ParamByName('pPerfil1').AsString := 'AMBOS';
    end
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

constructor TfProcurar_nf.Create(AOWner: TComponent; DataSet: TSQLClientDataset);
begin
  inherited create(AOWner);
   DtSrc.DataSet:=DataSet;
   novoCliente := 'N';
end;

procedure TfProcurar_nf.FormShow(Sender: TObject);
begin
  sCtrlResize.CtrlResize(TForm(fProcurar_nf));
 if (EvDBFind1.Visible = True) then
    EvDBFind1.SetFocus;
end;

procedure TfProcurar_nf.btnIncluirClick(Sender: TObject);
var jafez: string;
begin
  //=========================================================
  //Procura acessado para procurar Fornecedor
  jafez := 'N';
  if (DtSrc.DataSet = dm.scds_forn_proc) then
  begin
  end;
  if (DtSrc.DataSet = dmnf.scds_cli_proc) then
  begin
    //=========================================================
    //Procura acessado para procurar Cliente
    if (dm.cadastroClienteTipo = 'COMPLETO') then
    begin
      fClienteCadastro := TfClienteCadastro.Create(Application);
      try
        jafez := 'S';
        fClienteCadastro.ShowModal;
      finally
        fClienteCadastro.Free;
        varform := '';
      end;
    end;
    if (dm.cadastroClienteTipo = 'SIMPLES') then
    begin
      fCliente1 := TfCliente1.Create(Application);
      try
        jafez := 'S';
        fCliente1.ModoIncluir := 'S';
        novoCliente := 'S';
        fCliente1.ShowModal;
      finally
        fCliente1.Free;
        varform := '';
      end;
    end;
  end;

  //Procura acessado para procurar Cliente
  if ((dmnf.FormExiste(fTerminal2) = True) and (jafez = 'N')) then
  begin
    fCliente1 :=TfCliente1.Create(Application);
    try
        if (fCliente1.cds_cli.Active) then
            fCliente1.cds_cli.Close;
        fCliente1.cds_cli.Params[0].AsInteger := fTerminal2.scds_cli_procCODCLIENTE.AsInteger;
        fCliente1.cds_cli.Open;
        if (fCliente1.cds_CliEnd.Active) then
           fCliente1.cds_CliEnd.Close;
        fCliente1.cds_CliEnd.Params[0].AsInteger := fCliente1.cds_cliCODCLIENTE.AsInteger;
        fCliente1.cds_CliEnd.Open;

        fCliente1.ShowModal;
        if (fCliente1.cds_cli.Active) then
          fCliente1.cds_cli.Close;
        if (fCliente1.cds_CliEnd.Active) then
           fCliente1.cds_CliEnd.Close;
    finally
      fCliente1.free;
    end;
  end;
  BtnCancel.Click;
end;

procedure TfProcurar_nf.BtnOkClick(Sender: TObject);
begin
  if (dm.scds_usuario_proc.Active) then
  begin
    cod_vendedor := dm.scds_usuario_procCODUSUARIO.AsInteger;
    nome_vendedor := dm.scds_usuario_procNOMEUSUARIO.AsString;
  end;
  if (dmnf.scds_cli_proc.Active) then
  begin
    dm.codcli := dmnf.scds_cli_procCODCLIENTE.AsInteger;
    dm.varNomeCliente := dmnf.scds_cli_procNOMECLIENTE.AsString;
  end;
end;

procedure TfProcurar_nf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (dm.scds_usuario_proc.Active) then
  begin
    cod_vendedor := dm.scds_usuario_procCODUSUARIO.AsInteger;
    nome_vendedor := dm.scds_usuario_procNOMEUSUARIO.AsString;
  end;
 { if (dmnf.scds_cli_proc.Active) then
  begin
    dm.codcli := dmnf.scds_cli_procCODCLIENTE.AsInteger;
    dm.varNomeCliente := dmnf.scds_cli_procNOMECLIENTE.AsString;
  end;}

end;

procedure TfProcurar_nf.btnImprimirClick(Sender: TObject);
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

procedure TfProcurar_nf.RadioGroup1Click(Sender: TObject);
begin
  if (radioGroup1.ItemIndex = 0) then
    dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1
  else
    dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 2;
  BtnProcurar.Click;  
end;

function TfProcurar_nf.FormExiste(aberto: Tform): Boolean;
var
  I:Integer;
begin
    FormExiste := false;
    for I := 0 to Screen.FormCount -1 do
    if Screen.Forms[i] = aberto then
    begin
    FormExiste := true;
    Break;
    end
end;

end.
