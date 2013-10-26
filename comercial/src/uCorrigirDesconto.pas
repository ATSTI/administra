unit uCorrigirDesconto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, Provider, DBClient, Grids, DBGrids,
  StdCtrls, EDBFind, Buttons, Mask, DBCtrls, Menus, DBXpress;

type
  TfCorrigeDesconto = class(TForm)
    DBGrid1: TDBGrid;
    cds_cli: TClientDataSet;
    dsp_cli: TDataSetProvider;
    sds_cli: TSQLDataSet;
    DtSrc: TDataSource;
    EvDBFind1: TEvDBFind;
    EvDBFind2: TEvDBFind;
    sds_cliCODCLIENTE: TIntegerField;
    sds_cliNOMECLIENTE: TStringField;
    sds_cliRA: TStringField;
    sds_cliSERIELETRA: TStringField;
    sds_cliDESCONTO: TFloatField;
    sds_cliANUIDADE: TFloatField;
    sds_cliMENSALIDADE: TFloatField;
    sds_cliPARCELA: TIntegerField;
    sds_cliPARCELAGERADAS: TIntegerField;
    cds_cliCODCLIENTE: TIntegerField;
    cds_cliNOMECLIENTE: TStringField;
    cds_cliRA: TStringField;
    cds_cliSERIELETRA: TStringField;
    cds_cliDESCONTO: TFloatField;
    cds_cliANUIDADE: TFloatField;
    cds_cliMENSALIDADE: TFloatField;
    cds_cliPARCELA: TIntegerField;
    cds_cliPARCELAGERADAS: TIntegerField;
    DBEdit5: TDBEdit;
    btnGravar: TBitBtn;
    PopupMenu1: TPopupMenu;
    Gravar1: TMenuItem;
    Sair1: TMenuItem;
    Label4: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    btnSair: TBitBtn;
    sds_cliCOD_FAIXA: TIntegerField;
    cds_cliCOD_FAIXA: TIntegerField;
    Label3: TLabel;
    sdsFaixa: TSQLDataSet;
    sdsFaixaCODFAIXA: TIntegerField;
    sdsFaixaDESCRICAO: TStringField;
    sdsFaixaIDADE_MIN: TSmallintField;
    sdsFaixaIDADE_MAX: TSmallintField;
    sdsFaixaVALOR_PLANO: TFloatField;
    sdsFaixaDESCONTO: TFloatField;
    sdsFaixaUSO: TStringField;
    sdsFaixaPARCELA: TIntegerField;
    sdsFaixaVALORPARCELA: TFloatField;
    dspFaixa: TDataSetProvider;
    cdsFaixa: TClientDataSet;
    cdsFaixaCODFAIXA: TIntegerField;
    cdsFaixaDESCRICAO: TStringField;
    cdsFaixaIDADE_MIN: TSmallintField;
    cdsFaixaIDADE_MAX: TSmallintField;
    cdsFaixaVALOR_PLANO: TFloatField;
    cdsFaixaDESCONTO: TFloatField;
    cdsFaixaUSO: TStringField;
    cdsFaixaPARCELA: TIntegerField;
    cdsFaixaVALORPARCELA: TFloatField;
    DtSrcFaixa: TDataSource;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    sds_cliSITUACAOESCOLAR: TStringField;
    cds_cliSITUACAOESCOLAR: TStringField;
    sdscli1: TSQLDataSet;
    ComboBox2: TComboBox;
    Label12: TLabel;
    BitBtn1: TBitBtn;
    SQLEscola: TSQLConnection;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    cdsTabAluno: TClientDataSet;
    SQLDataSet1RA: TStringField;
    SQLDataSet1COD_FAIXA1: TIntegerField;
    cdsTabAlunoRA: TStringField;
    cdsTabAlunoCOD_FAIXA1: TIntegerField;
    DBEdit2: TDBEdit;
    sdscli1SERIELETRA: TStringField;
    sdscli1TURNO: TStringField;
    sdscli1TIPOENSINO: TStringField;
    sdscli1SERIE: TStringField;
    sdscli1DESC_CLASSE: TStringField;
    sds_cliANOLETIVO: TStringField;
    cds_cliANOLETIVO: TStringField;
    sds_cliPARCELA_1: TIntegerField;
    cds_cliPARCELA_1: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGravarClick(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCorrigeDesconto: TfCorrigeDesconto;

implementation

uses UDm;

{$R *.dfm}

procedure TfCorrigeDesconto.FormShow(Sender: TObject);
begin
    cdsFaixa.Open;
    if (not sdsCli1.Active) then
      sdsCli1.Open;
    sdsCli1.First;
    while not sdsCli1.Eof do
    begin
      ComboBox2.Items.Add(sdscli1DESC_CLASSE.AsString);
      sdsCli1.Next;
    end;
    sdsCli1.Close;  
end;

procedure TfCorrigeDesconto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   cds_cli.Close;
end;

procedure TfCorrigeDesconto.btnGravarClick(Sender: TObject);
begin
  if (cdsTabAluno.Active) then
    cdsTabAluno.Close;
  cdsTabAluno.Params[0].AsString := cds_cliRA.AsString;
  cdsTabAluno.Open;
  if (not cdsTabAluno.IsEmpty) then
  begin
     cdsTabAluno.Edit;
     cdsTabAlunoCOD_FAIXA1.AsInteger := cds_cliCOD_FAIXA.AsInteger;
     cdsTabAluno.ApplyUpdates(0);
     cdsTabAluno.Close;
  end;
  (DtSrc.DataSet as TClientDataset).ApplyUpdates(0);
  cds_cli.Next;
  EvDBFind2.SetFocus;
end;

procedure TfCorrigeDesconto.DtSrcStateChange(Sender: TObject);
begin
  btnGravar.Enabled:=DtSrc.State in [dsInsert,dsEdit]
end;

procedure TfCorrigeDesconto.Sair1Click(Sender: TObject);
begin
  Close;
end;

procedure TfCorrigeDesconto.BitBtn1Click(Sender: TObject);
var
  str1 : string;
begin

  if (not sdscli1.Active) then
     sdscli1.Open;
  if (sdscli1.Locate('DESC_CLASSE', ComboBox2.Text, [loCaseInsensitive])) then
    str1 := sdscli1SERIELETRA.AsString;

  if (cds_cli.Active) then
    cds_cli.Close;
  cds_cli.Params[0].AsString := str1;
  cds_cli.Open;
  ComboBox2.SetFocus;

end;

procedure TfCorrigeDesconto.FormCreate(Sender: TObject);
begin
 SQLEscola.Connected := False;
 SQLEscola.LoadParamsFromIniFile('dbxconnections.ini');
end;

procedure TfCorrigeDesconto.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

end.
