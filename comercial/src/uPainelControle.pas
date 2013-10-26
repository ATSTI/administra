unit uPainelControle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DBClient, Provider, DB, SqlExpr, ExtCtrls, TeeProcs,
  TeEngine, Chart, DbChart, StdCtrls, Series, Menus, DateUtils;

type
  TfPainelControle = class(TForm)
    GroupBox1: TGroupBox;
    DBChart1: TDBChart;
    sdsVenda: TSQLDataSet;
    dspVenda: TDataSetProvider;
    cdsVenda: TClientDataSet;
    Series1: TBarSeries;
    cdsVendaVENDA: TFloatField;
    cdsVendaMES: TStringField;
    cdsVendaUDF_MONTH: TSmallintField;
    sdsPedidoVenda: TSQLDataSet;
    dspPedidoVenda: TDataSetProvider;
    cdsPedidoVenda: TClientDataSet;
    GroupBox3: TGroupBox;
    DBChart3: TDBChart;
    BarSeries2: TBarSeries;
    cdsPedidoVendaMESANO: TStringField;
    cdsPedidoVendaVALORVENDA: TFloatField;
    cdsPedidoVendaVALORPEDIDO: TFloatField;
    Series2: TBarSeries;
    cdsPedidoVendaMESANOV: TIntegerField;
    PopupMenu1: TPopupMenu;
    MudarPerododesteGrfico1: TMenuItem;
    MudarPerododeTodososGrficos1: TMenuItem;
    AtualizarGrficos1: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    GroupBox2: TGroupBox;
    DBChart2: TDBChart;
    sdsVendaCliente: TSQLDataSet;
    dspVendaCliente: TDataSetProvider;
    cdsVendaCliente: TClientDataSet;
    PopupMenu3: TPopupMenu;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    cdsVendaClienteCLIENTE: TStringField;
    cdsVendaClienteVENDA: TFloatField;
    BarSeries1: TPieSeries;
    GroupBox4: TGroupBox;
    DBChart4: TDBChart;
    PieSeries1: TPieSeries;
    sdsVendaProduto: TSQLDataSet;
    dspVendaProduto: TDataSetProvider;
    cdsVendaProduto: TClientDataSet;
    PopupMenu4: TPopupMenu;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    cdsVendaProdutoPRODUTO: TStringField;
    cdsVendaProdutoVENDA: TFloatField;
    ImprimiresteGrfico1: TMenuItem;
    ImprimiresteGrfico2: TMenuItem;
    ImprimiresteGrfico3: TMenuItem;
    ImprimiresteGrfico4: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure DBChart1DblClick(Sender: TObject);
    procedure AtualizarGrficos1Click(Sender: TObject);
    procedure MudarPerododesteGrfico1Click(Sender: TObject);
    procedure MudarPerododeTodososGrficos1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure ImprimiresteGrfico1Click(Sender: TObject);
    procedure ImprimiresteGrfico2Click(Sender: TObject);
    procedure ImprimiresteGrfico3Click(Sender: TObject);
    procedure ImprimiresteGrfico4Click(Sender: TObject);
  private
    dataInicio, dataFinal : TDateTime;
    procedure AbreGrafico1(DataIni: TDateTime; DataFim : TDateTime);
    procedure AbreGrafico2(DataIni: TDateTime; DataFim : TDateTime);
    procedure AbreGrafico3(DataIni: TDateTime; DataFim : TDateTime);
    procedure AbreGrafico4(DataIni: TDateTime; DataFim : TDateTime);
    procedure trocaPeriodo;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPainelControle: TfPainelControle;

implementation

uses UDm, uPeriodo;

{$R *.dfm}

procedure TfPainelControle.AbreGrafico1(DataIni: TDateTime; DataFim : TDateTime);
begin
  if (cdsVenda.Active) then
    cdsVenda.Close;
  cdsVenda.Params.ParamByName('dataIni').asDateTime := DataIni;
  cdsVenda.Params.ParamByName('dataFim').asDateTime := DataFim;
  cdsVenda.Open;
end;

procedure TfPainelControle.AbreGrafico2(DataIni: TDateTime; DataFim : TDateTime);
begin
  if (cdsPedidoVenda.Active) then
    cdsPedidoVenda.Close;
  cdsPedidoVenda.Params.ParamByName('dataIni').asDateTime := DataIni;
  cdsPedidoVenda.Params.ParamByName('dataFim').asDateTime := DataFim;
  cdsPedidoVenda.Open;
end;

procedure TfPainelControle.AbreGrafico3(DataIni: TDateTime; DataFim : TDateTime);
begin
  if (cdsVendaCliente.Active) then
    cdsVendaCliente.Close;
  cdsVendaCliente.Params.ParamByName('dataIni').asDateTime := DataIni;
  cdsVendaCliente.Params.ParamByName('dataFim').asDateTime := DataFim;
  cdsVendaCliente.Open;
end;

procedure TfPainelControle.AbreGrafico4(DataIni: TDateTime; DataFim : TDateTime);
begin
  if (cdsVendaProduto.Active) then
    cdsVendaProduto.Close;
  cdsVendaProduto.Params.ParamByName('dataIni').asDateTime := DataIni;
  cdsVendaProduto.Params.ParamByName('dataFim').asDateTime := DataFim;
  cdsVendaProduto.Open;
end;

procedure TfPainelControle.FormShow(Sender: TObject);
begin
  dataInicio := StrToDate('01/01/' + IntToStr(YearOf(Today)));
  dataFinal  := StrToDate('31/12/' + InttoStr(YearOf(Today)));
  // Abre Graficos
  AtualizarGrficos1.Click;
end;

procedure TfPainelControle.DBChart1DblClick(Sender: TObject);
begin
  fPeriodo := TfPeriodo.Create(Application);
  try
    fPeriodo.ShowModal;
    dataInicio := fPeriodo.DataIni;
    dataFinal  := fPeriodo.DataFim;
  finally
    fPeriodo.Free;
  end;
end;

procedure TfPainelControle.AtualizarGrficos1Click(Sender: TObject);
begin
  AbreGrafico1(dataInicio, dataFinal);
  AbreGrafico2(dataInicio, dataFinal);
  AbreGrafico3(dataInicio, dataFinal);
  AbreGrafico4(dataInicio, dataFinal);
end;

procedure TfPainelControle.MudarPerododesteGrfico1Click(Sender: TObject);
begin
  trocaPeriodo;
  AbreGrafico1(dataInicio, dataFinal);
end;

procedure TfPainelControle.MudarPerododeTodososGrficos1Click(
  Sender: TObject);
begin
  trocaPeriodo;
  AtualizarGrficos1.Click;
end;

procedure TfPainelControle.trocaPeriodo;
begin
  fPeriodo := TfPeriodo.Create(Application);
  try
    fPeriodo.ShowModal;
    dataInicio := fPeriodo.DataIni;
    dataFinal  := fPeriodo.DataFim;
  finally
    fPeriodo.Free;
  end;
end;

procedure TfPainelControle.MenuItem1Click(Sender: TObject);
begin
  trocaPeriodo;
  AbreGrafico2(dataInicio, dataFinal);
end;

procedure TfPainelControle.MenuItem4Click(Sender: TObject);
begin
  trocaPeriodo;
  AbreGrafico3(dataInicio, dataFinal);
end;

procedure TfPainelControle.MenuItem7Click(Sender: TObject);
begin
  trocaPeriodo;
  AbreGrafico4(dataInicio, dataFinal);
end;

procedure TfPainelControle.ImprimiresteGrfico1Click(Sender: TObject);
begin
  DBChart1.print;
end;

procedure TfPainelControle.ImprimiresteGrfico2Click(Sender: TObject);
begin
  DBChart3.print;
end;

procedure TfPainelControle.ImprimiresteGrfico3Click(Sender: TObject);
begin
  DBChart2.print;
end;

procedure TfPainelControle.ImprimiresteGrfico4Click(Sender: TObject);
begin
  DBChart4.print;
end;

end.
