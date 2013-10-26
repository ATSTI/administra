unit uBoletimAluno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EDBFind, StdCtrls, Grids, DBGrids, Buttons, ExtCtrls, FMTBcd,
  DB, SqlExpr, DBClient, Provider, rpcompobase, rpvclreport, XPMenu;

type
  TfBoletimAluno = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Panel2: TPanel;
    BitBtn4: TBitBtn;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    EditRA: TEvDBFind;
    Edit2: TEvDBFind;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    TableNomeEscola: TSQLDataSet;
    TableNomeEscolaEMPRESA: TStringField;
    TableNomeEscolaRAZAO: TStringField;
    TableNomeEscolaCNPJ_CPF: TStringField;
    TableNomeEscolaENDERECO: TStringField;
    TableNomeEscolaLOGRADOURO: TStringField;
    TableNomeEscolaBAIRRO: TStringField;
    TableNomeEscolaCIDADE: TStringField;
    TableNomeEscolaUF: TStringField;
    TableNomeEscolaCEP: TStringField;
    TableNomeEscolaDDD: TStringField;
    TableNomeEscolaFONE: TStringField;
    TableNomeEscolaFONE_1: TStringField;
    TableNomeEscolaFONE_2: TStringField;
    TableNomeEscolaFAX: TStringField;
    TableNomeEscolaE_MAIL: TStringField;
    TableNomeEscolaWEB: TStringField;
    TableNomeEscolaLOGOTIPO: TGraphicField;
    TableNomeEscolaSLOGAN: TStringField;
    TableNomeEscolaOUTRAS_INFO: TStringField;
    TableNomeEscolaCODIGO: TIntegerField;
    TableNomeEscolaTIPO: TStringField;
    TableNomeEscolaIE_RG: TStringField;
    TableNomeEscolaCODIGO_CONTA: TIntegerField;
    TableNomeEscolaDIVERSOS1: TStringField;
    TableNomeEscolaDIVERSOS2: TStringField;
    TableNomeEscolaDIVERSOS3: TStringField;
    TableNomeEscolaANOLETIVO: TIntegerField;
    TableNomeEscolaMEDIA_ESCOLA: TFloatField;
    TableNomeEscolaPORTA: TIntegerField;
    TableNomeEscolaSMTP: TStringField;
    TableNomeEscolaSENHA: TStringField;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    scds_tablealuno: TClientDataSet;
    scds_tablealunoRA: TStringField;
    scds_tablealunoNOME: TStringField;
    scds_tablealunoSERIELETRA: TStringField;
    scds_tablealunoDATANASCIMENTO: TSQLTimeStampField;
    scds_tablealunoTIPOENSINO: TStringField;
    sdsRA: TStringField;
    sdsNOME: TStringField;
    sdsSERIELETRA: TStringField;
    sdsDATANASCIMENTO: TSQLTimeStampField;
    sdsTIPOENSINO: TStringField;
    ds_alunos: TDataSource;
    TablePeriodo: TSQLDataSet;
    TablePeriodoIDPERIODO: TIntegerField;
    TablePeriodoPERIODO: TStringField;
    TablePeriodoNOTAFINAL: TStringField;
    repBol: TVCLReport;
    XPMenu1: TXPMenu;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBoletimAluno: TfBoletimAluno;

implementation

uses UDm;

{$R *.dfm}

procedure TfBoletimAluno.FormShow(Sender: TObject);
begin
    if not TableNomeEscola.Active then
           TableNomeEscola.Open;
    Edit1.Text := IntToStr(TableNomeEscolaANOLETIVO.AsInteger);
    TableNomeEscola.Close;
    if not scds_tablealuno.Active then
           scds_tablealuno.Open;
end;

procedure TfBoletimAluno.DBGrid1TitleClick(Column: TColumn);
begin
  scds_tablealuno.IndexFieldNames := column.FieldName;
end;

procedure TfBoletimAluno.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if scds_tablealuno.Active then
     scds_tablealuno.Close;
end;

procedure TfBoletimAluno.FormDestroy(Sender: TObject);
begin
    if scds_tablealuno.Active then
       scds_tablealuno.Close;
end;

procedure TfBoletimAluno.BitBtn4Click(Sender: TObject);
begin
  if not TableNomeEscola.Active then
    TableNomeEscola.Open;
  repBol.FileName := str_relatorio + 'boletim_ra_recup.rep';
  repBol.Report.Params.ParamByName('PRA').Value := scds_tablealunoRA.AsString;
  repBol.Report.Params.ParamByName('PANO').Value := TableNomeEscolaANOLETIVO.AsInteger;
  repBol.Execute;
end;

procedure TfBoletimAluno.BitBtn2Click(Sender: TObject);
begin
  if not TableNomeEscola.Active then
    TableNomeEscola.Open;
  repBol.FileName := str_relatorio + 'boletim_ra.rep';
  repBol.Report.Params.ParamByName('PRA').Value := scds_tablealunoRA.AsString;
  repBol.Report.Params.ParamByName('PANO').Value := TableNomeEscolaANOLETIVO.AsInteger;
  repBol.Execute;
end;

procedure TfBoletimAluno.BitBtn3Click(Sender: TObject);
begin
  close;
end;

end.
