unit uImpBoletim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, DBCtrls, StdCtrls, Buttons, Mask, ExtCtrls,
  rpcompobase, rpvclreport, XPMenu;

type
  TfImpBoletim = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    mdta1: TMaskEdit;
    Panel2: TPanel;
    BotaoImprimir: TBitBtn;
    BitBtn1: TBitBtn;
    BotaoConfirmar: TBitBtn;
    BotaoFechar: TBitBtn;
    dbLookClasse: TDBLookupComboBox;
    dsSeries: TDataSource;
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
    VCLReport1: TVCLReport;
    XPMenu1: TXPMenu;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbLookClasseExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BotaoImprimirClick(Sender: TObject);
    procedure BotaoConfirmarClick(Sender: TObject);
    procedure BotaoFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fImpBoletim: TfImpBoletim;

implementation

uses UDm;

{$R *.dfm}

procedure TfImpBoletim.FormShow(Sender: TObject);
begin
   dm.TableSeries.Open;
   if not TableNomeEscola.Active then
      TableNomeEscola.Open;
end;

procedure TfImpBoletim.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   dm.TableSeries.Close;
   if TableNomeEscola.Active then
      TableNomeEscola.Close;
end;

procedure TfImpBoletim.dbLookClasseExit(Sender: TObject);
begin
   if (dbLookClasse.Text <> '') then
   if (not dm.TableSeries.Locate('SERIELETRA',dbLookClasse.KeyValue, [loCaseInsensitive])) then
   begin
      Application.MessageBox('Escolha uma Classe!','Aviso', MB_ICONERROR);
      dbLookClasse.SetFocus;
   end;
end;

procedure TfImpBoletim.BitBtn1Click(Sender: TObject);
begin
   if (not dm.TableSeries.Locate('SERIELETRA',(dbLookClasse.KeyValue), [loCaseInsensitive])) then
   begin
     Application.MessageBox('Escolha uma Turma' , 'Aviso', MB_ICONERROR);
     dbLookClasse.SetFocus;
   end
   else
   begin
     if not TableNomeEscola.Active then
       TableNomeEscola.Open;
     VCLReport1.FileName := str_relatorio + 'mapa_notas.rep';
     VCLReport1.Report.Params.ParamByName('PRMCLASSE').Value := dbLookClasse.KeyValue;
     VCLReport1.Report.Params.ParamByName('PANO').Value := TableNomeEscolaANOLETIVO.AsInteger;
     VCLReport1.Execute;
   end;
end;

procedure TfImpBoletim.FormCreate(Sender: TObject);
begin
  mdta1.Text := DateTimeToStr(Now);
end;

procedure TfImpBoletim.BotaoImprimirClick(Sender: TObject);
begin
   if (not dm.TableSeries.Locate('SERIELETRA',(dbLookClasse.KeyValue), [loCaseInsensitive])) then
   begin
     Application.MessageBox('Escolha a Classe' , 'Aviso', MB_ICONERROR);
     dbLookClasse.SetFocus;
   end
   else
   begin
     if not TableNomeEscola.Active then
       TableNomeEscola.Open;
     VCLReport1.FileName := str_relatorio + 'boletim_grafico.rep';
     VCLReport1.Report.Params.ParamByName('PRMCLASSE').Value := dbLookClasse.KeyValue;
     VCLReport1.Report.Params.ParamByName('PANO').Value := TableNomeEscolaANOLETIVO.AsInteger;
     VCLReport1.Report.Params.ParamByName('PDATA').Value := mdta1.Text;
     VCLReport1.Execute;
   end;
end;

procedure TfImpBoletim.BotaoConfirmarClick(Sender: TObject);
begin
   if (not dm.TableSeries.Locate('SERIELETRA',(dbLookClasse.KeyValue), [loCaseInsensitive])) then
   begin
     Application.MessageBox('Escolha a Classe' , 'Aviso', MB_ICONERROR);
     dbLookClasse.SetFocus;
   end
   else
   begin
     if not TableNomeEscola.Active then
       TableNomeEscola.Open;
     VCLReport1.FileName := str_relatorio + 'mapaNotaVermelha.rep';
     VCLReport1.Report.Params.ParamByName('PRMCLASSE').Value := dbLookClasse.KeyValue;
     VCLReport1.Report.Params.ParamByName('PANO').Value := TableNomeEscolaANOLETIVO.AsInteger;
     VCLReport1.Execute;
   end;
end;

procedure TfImpBoletim.BotaoFecharClick(Sender: TObject);
begin
  Close;
end;

end.
