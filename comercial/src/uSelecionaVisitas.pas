unit uSelecionaVisitas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB, ImgList, FMTBcd,
  DBClient, Provider, SqlExpr, ExtCtrls, MMJPanel, XPMenu;

type
  TfSelecionaVisitas = class(TForm)
    DBGrid1: TDBGrid;
    ImageList1: TImageList;
    DataSource1: TDataSource;
    sdsVisita: TSQLDataSet;
    sdsVisitaCODVISITA: TIntegerField;
    sdsVisitaCODCLIENTE: TIntegerField;
    sdsVisitaVISITA: TStringField;
    sdsVisitaDATAULTIMA: TDateField;
    sdsVisitaDATAPROXIMA: TDateField;
    sdsVisitaDIAS: TIntegerField;
    dspVisita: TDataSetProvider;
    cdsVisita: TClientDataSet;
    cdsVisitaCODVISITA: TIntegerField;
    cdsVisitaCODCLIENTE: TIntegerField;
    cdsVisitaVISITA: TStringField;
    cdsVisitaDATAULTIMA: TDateField;
    cdsVisitaDATAPROXIMA: TDateField;
    cdsVisitaDIAS: TIntegerField;
    MMJPanel3: TMMJPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    XPMenu1: TXPMenu;
    sdsAgenda: TSQLDataSet;
    sdsAgendaCOD_AGENDAMENTO: TIntegerField;
    sdsAgendaCODCLIENTE: TIntegerField;
    sdsAgendaASSUNTO: TStringField;
    sdsAgendaHORA: TTimeField;
    sdsAgendaDATA: TDateField;
    sdsAgendaFONE: TStringField;
    sdsAgendaSTATUS: TStringField;
    sdsAgendaCODVENDA: TIntegerField;
    dspAgenda: TDataSetProvider;
    cdsAgenda: TClientDataSet;
    cdsAgendaCOD_AGENDAMENTO: TIntegerField;
    cdsAgendaCODCLIENTE: TIntegerField;
    cdsAgendaASSUNTO: TStringField;
    cdsAgendaHORA: TTimeField;
    cdsAgendaDATA: TDateField;
    cdsAgendaFONE: TStringField;
    cdsAgendaSTATUS: TStringField;
    cdsAgendaCODVENDA: TIntegerField;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSelecionaVisitas: TfSelecionaVisitas;

implementation

uses UDm, uVendaFinalizar;

{$R *.dfm}

//retorna o ultimo dia o mes, de uma data fornecida
function UltimoDiaMes(Mdt: TDateTime) : TDateTime;
var
  ano, mes, dia : word;
  mDtTemp : TDateTime;
begin
{  Decodedate(mDt, ano, mes, dia);
  mDtTemp := (mDt - dia) + 33;
  Decodedate(mDtTemp, ano, mes, dia);
  Result := mDtTemp - dia;}
  Decodedate(mDt, ano, mes, dia);
  mDtTemp := (mDt + diasAumenta);
  Decodedate(mDtTemp, ano, mes, dia);
  Result := mDtTemp;
  DtaTemp := Result;
end;

procedure TfSelecionaVisitas.BitBtn1Click(Sender: TObject);
begin
     cdsVisita.First;
     while not cdsVisita.Eof do
     begin
       if DBGrid1.SelectedRows.CurrentRowSelected = true then
       begin
          if (cdsAgenda.Active) then
              cdsAgenda.Close;
          cdsAgenda.Params[0].AsInteger := cdsVisitaCODCLIENTE.AsInteger;
          cdsAgenda.Params[1].AsDateTime := cdsVisitaDATAULTIMA.AsDateTime;
          cdsAgenda.Open;
          if (not cdsAgenda.IsEmpty) then
          begin
             cdsAgenda.Edit;
             cdsAgendaSTATUS.AsString := 'Finalizada';
             cdsAgenda.ApplyUpdates(0);
          end;
          cdsAgenda.Append;
          if dm.c_6_genid.Active then
            dm.c_6_genid.Close;
          dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_AGENDA, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
          dm.c_6_genid.Open;
          cdsAgendaCOD_AGENDAMENTO.AsInteger := dm.c_6_genidCODIGO.AsInteger;
          dm.c_6_genid.Close;
          cdsAgendaCODCLIENTE.AsInteger := fVendaFinalizar.cdsCODCLIENTE.AsInteger;
          cdsAgendaCODVENDA.AsInteger := fVendaFinalizar.cdsCODVENDA.AsInteger;
          cdsAgendaASSUNTO.AsString := 'Visita';
          diasAumenta := cdsVisitaDIAS.AsInteger;
          UltimoDiaMes(cdsVisitaDATAULTIMA.AsDateTime);
          cdsAgendaDATA.AsDateTime := DtaTemp;
          cdsAgenda.ApplyUpdates(0);
          if (dm.cdsVisita.Active) then
             dm.cdsVisita.Close;
          dm.cdsVisita.Params[0].Clear;
          dm.cdsVisita.Params[1].Clear;
          dm.cdsVisita.Params[2].AsInteger := cdsVisitaCODVISITA.AsInteger;
          dm.cdsVisita.Open;
          dm.cdsVisita.Edit;
          if (not dm.cdsVisitaDATAPROXIMA.IsNull) then
            dm.cdsVisitaDATAULTIMA.AsDateTime := dm.cdsVisitaDATAPROXIMA.AsDateTime
          else
            dm.cdsVisitaDATAULTIMA.AsDateTime := DtaTemp;
          dm.cdsVisitaDATAPROXIMA.AsDateTime := DtaTemp;
          dm.cdsVisita.ApplyUpdates(0);
       end;
       cdsVisita.Next;
     end;
     close;
end;


procedure TfSelecionaVisitas.FormShow(Sender: TObject);
begin
  if cdsVisita.Active then
     cdsVisita.Close;
  cdsVisita.Params[0].AsInteger := fVendaFinalizar.cdsCODCLIENTE.AsInteger;
  cdsVisita.Open;
end;


procedure TfSelecionaVisitas.BitBtn2Click(Sender: TObject);
begin
  varcancela := 'varcancela';
  close;
end;

end.
