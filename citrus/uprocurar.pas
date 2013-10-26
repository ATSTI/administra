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
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure BtnProcurarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
 constructor Create (AOWner : TComponent; DataSet : TSQLClientDataset); reintroduce;
    { Public declarations }
  end;

var
  fProcurar: TfProcurar;
    varForm1, nomecliente, fCompraNomeForn, nome_Forn: String;
    cod_Forn, codcliente, fCompraCodForn: integer;

implementation

uses UDm;

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
    If tag=0 then //opção de flag para usar % ou não
       Params[0].AsString:=EditProc.Text+'%'
    else
       Params[0].AsString:=EditProc.Text;
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
 if (EvDBFind1.Visible = True) then
    EvDBFind1.SetFocus;
end;

procedure TfProcurar.btnIncluirClick(Sender: TObject);
begin
  //=========================================================
  //Procura acessado para procurar Fornecedor
  if DtSrc.DataSet = dm.scds_forn_proc then
  begin
     {ffornecedorcadastro:=TfFornecedorCadastro.Create(Application);
     try
        ffornecedorcadastro.ShowModal;
        Close;
     finally
       varForm1 := '';
       ffornecedorcadastro.Free;
     end; }
  end;
  //=========================================================
  //Procura acessado para procurar Vendedor
  if DtSrc.DataSet = dm.scds_usuario_proc then
  begin
     {fFuncionario:=TfFuncionario.Create(Application);
     try
        //varForm1 := 'Procura';
        fFuncionario.ShowModal;
        BtnOk.Click;
     finally
       varForm1 := '';
       fFuncionario.Free;
     end;}
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

end.
