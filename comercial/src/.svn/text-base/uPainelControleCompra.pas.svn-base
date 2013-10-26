unit uPainelControleCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, DbChart, StdCtrls,
  FMTBcd, DB, Menus, DBClient, Provider, SqlExpr;

type
  TfPainelControleCompra = class(TForm)
    GroupBox4: TGroupBox;
    DBChart4: TDBChart;
    BarSeries3: TBarSeries;
    BarSeries4: TBarSeries;
    sdsPedidoCompra: TSQLDataSet;
    dspPedidoCompra: TDataSetProvider;
    cdsPedidoCompra: TClientDataSet;
    StringField2: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    IntegerField1: TIntegerField;
    PopupMenu4: TPopupMenu;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    GroupBox2: TGroupBox;
    DBChart2: TDBChart;
    BarSeries1: TBarSeries;
    sdsCompras: TSQLDataSet;
    dspCompras: TDataSetProvider;
    cdsCompras: TClientDataSet;
    StringField1: TStringField;
    SmallintField1: TSmallintField;
    cdsComprasCOMPRA: TFloatField;
    PopupMenu3: TPopupMenu;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
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
  fPainelControleCompra: TfPainelControleCompra;

implementation

uses UDm;

{$R *.dfm}

{ TfPainelControleCompra }

procedure TfPainelControleCompra.AbreGrafico1(DataIni, DataFim: TDateTime);
begin

end;

procedure TfPainelControleCompra.AbreGrafico2(DataIni, DataFim: TDateTime);
begin

end;

procedure TfPainelControleCompra.AbreGrafico3(DataIni, DataFim: TDateTime);
begin
  if (cdsCompras.Active) then
    cdsCompras.Close;
  cdsCompras.Params.ParamByName('dataIni').asDateTime := DataIni;
  cdsCompras.Params.ParamByName('dataFim').asDateTime := DataFim;
  cdsCompras.Open;
end;

procedure TfPainelControleCompra.AbreGrafico4(DataIni, DataFim: TDateTime);
begin
  if (cdsPedidoCompra.Active) then
    cdsPedidoCompra.Close;
  cdsPedidoCompra.Params.ParamByName('dataIni').asDateTime := DataIni;
  cdsPedidoCompra.Params.ParamByName('dataFim').asDateTime := DataFim;
  cdsPedidoCompra.Open;
end;

procedure TfPainelControleCompra.trocaPeriodo;
begin

end;

end.
