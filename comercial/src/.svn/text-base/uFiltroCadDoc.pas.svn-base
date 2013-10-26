unit uFiltroCadDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, Grids, DBGrids, SqlExpr, Provider, DBClient,
  StdCtrls, Buttons, EDBFind, Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, Menus;

type
  TfFiltroCadDoc = class(TForm)
    btnvoltar: TBitBtn;
    cdsCad: TClientDataSet;
    dspCa: TDataSetProvider;
    dsCad: TDataSource;
    sqlCad: TSQLDataSet;
    DBGrid1: TDBGrid;
    sqlCadID: TIntegerField;
    sqlCadCODDOC: TStringField;
    sqlCadDESCR: TStringField;
    sqlCadANODESC: TFloatField;
    sqlCadMETODO: TStringField;
    sqlCadLEI1: TStringField;
    sqlCadLEI2: TStringField;
    sqlCadOBS: TStringField;
    sqlCadSEQUENCIA: TStringField;
    sqlCadMICROF: TStringField;
    sqlCadDIGITA: TStringField;
    sqlCadPRAZO: TStringField;
    sqlCadFORDESTR: TStringField;
    sqlCadFISCAL: TStringField;
    sqlCadANEXO: TMemoField;
    sqlCadCODSIS: TStringField;
    cdsCadID: TIntegerField;
    cdsCadCODDOC: TStringField;
    cdsCadDESCR: TStringField;
    cdsCadANODESC: TFloatField;
    cdsCadMETODO: TStringField;
    cdsCadLEI1: TStringField;
    cdsCadLEI2: TStringField;
    cdsCadOBS: TStringField;
    cdsCadSEQUENCIA: TStringField;
    cdsCadMICROF: TStringField;
    cdsCadDIGITA: TStringField;
    cdsCadPRAZO: TStringField;
    cdsCadFORDESTR: TStringField;
    cdsCadFISCAL: TStringField;
    cdsCadANEXO: TMemoField;
    cdsCadCODSIS: TStringField;
    EvDBFind1: TEvDBFind;
    EvDBFind2: TEvDBFind;
    BitBtn1: TBitBtn;
    hoje: TJvDatePickerEdit;
    Label1: TLabel;
    Label2: TLabel;
    EvDBFind3: TEvDBFind;
    Label3: TLabel;
    PopupMenu1: TPopupMenu;
    Sair1: TMenuItem;
    procedure btnvoltarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFiltroCadDoc: TfFiltroCadDoc;

implementation

uses UDm, uCadDoc, uCorreio;

{$R *.dfm}

procedure TfFiltroCadDoc.btnvoltarClick(Sender: TObject);
begin
  if(FCadDoc.cdsC.Active) then
    FCadDoc.cdsC.Close;
    FCadDoc.cdsC.Params[0].AsInteger := cdsCadID.AsInteger;
  FCadDoc.cdsC.Open;
  fFiltroCadDoc.Close;
end;

procedure TfFiltroCadDoc.BitBtn1Click(Sender: TObject);
var data ,soma : String;
 dia, mes, ano : word;

begin
  data := hoje.Text;    
  DecodeDate(StrToDate(data),ano,mes,dia);
  ano := (ano + StrToInt(cdsCadANODESC.Text));

  if(fCorreio.DtSrc.DataSet.State in [dsInsert,dsEdit,dsBrowse]) then
  begin
    fCorreio.DBEdit8.Text := cdsCadCODDOC.Text;
    fCorreio.Edit1.Text := cdsCadDESCR.Text;
    fCorreio.DBEdit15.Text := (IntToStr(mes) + IntToStr(ano));

  end;
  fFiltroCadDoc.Close;
end;

procedure TfFiltroCadDoc.FormShow(Sender: TObject);
begin
  if(cdsCad.Active) then
  cdsCad.Close;
  cdsCad.Open;

end;

procedure TfFiltroCadDoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfFiltroCadDoc.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if gdSelected in State then
    DBGrid1.Canvas.Font.Color := clRed 
else
    DBGrid1.Canvas.Font.Color := clBlack; 
DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State); 

end;

end.
