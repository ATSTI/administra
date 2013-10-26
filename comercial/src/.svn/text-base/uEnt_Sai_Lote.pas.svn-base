unit uEnt_Sai_Lote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DBClient, Provider, DB, SqlExpr, XPMenu, StdCtrls,
  Buttons, Mask, DBCtrls;

type
  TfEnt_Sai_Lote = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    BitBtn1: TBitBtn;
    XPMenu1: TXPMenu;
    DataSource1: TDataSource;
    ssds_lote: TSQLDataSet;
    ssds_loteCODPROD: TStringField;
    ssds_loteCODMOV: TIntegerField;
    ssds_loteTIPOMOVIMENTO: TStringField;
    ssds_lotePRODUTO: TStringField;
    ssds_loteGRUPO: TStringField;
    ssds_loteSUBGRUPOPROD: TStringField;
    ssds_loteSALDOINIACUM: TFloatField;
    ssds_loteENTRADA: TFloatField;
    ssds_loteSAIDA: TFloatField;
    ssds_loteSALDOFIMACUM: TFloatField;
    ssds_lotePRECOUNIT: TFloatField;
    ssds_loteVALORESTOQUE: TFloatField;
    ssds_loteVALORVENDA: TFloatField;
    ssds_loteLOTES: TStringField;
    ssds_loteCCUSTOS: TIntegerField;
    ssds_loteDTAFAB: TDateField;
    ssds_loteDTAVCTO: TDateField;
    dsp_lote: TDataSetProvider;
    sds_lote: TClientDataSet;
    sds_loteCODPROD: TStringField;
    sds_loteCODMOV: TIntegerField;
    sds_loteTIPOMOVIMENTO: TStringField;
    sds_lotePRODUTO: TStringField;
    sds_loteGRUPO: TStringField;
    sds_loteSUBGRUPOPROD: TStringField;
    sds_loteSALDOINIACUM: TFloatField;
    sds_loteENTRADA: TFloatField;
    sds_loteSAIDA: TFloatField;
    sds_loteSALDOFIMACUM: TFloatField;
    sds_lotePRECOUNIT: TFloatField;
    sds_loteVALORESTOQUE: TFloatField;
    sds_loteVALORVENDA: TFloatField;
    sds_loteLOTES: TStringField;
    sds_loteCCUSTOS: TIntegerField;
    sds_loteDTAFAB: TDateField;
    sds_loteDTAVCTO: TDateField;
    procedure DBEdit1Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEnt_Sai_Lote: TfEnt_Sai_Lote;
  entra_sai :string;

implementation

uses UDm, uEntra_Sai_estoque;

{$R *.dfm}

procedure TfEnt_Sai_Lote.DBEdit1Exit(Sender: TObject);
begin
  if entra_sai = 'sai' then
  begin
      if sds_lote.Active then
         sds_lote.Close;
      sds_lote.Params[0].AsDateTime := StrToDate('01/01/1981');
      sds_lote.Params[1].AsDateTime := fEntra_Sai_estoque.cds_MovimentoDATAMOVIMENTO.AsDateTime;
      sds_lote.Params[2].AsInteger := fEntra_Sai_estoque.cds_Mov_detCODPRODUTO.AsInteger;
      sds_lote.Params[3].AsInteger := fEntra_Sai_estoque.cds_Mov_detCODPRODUTO.AsInteger;
      sds_lote.Params[4].AsString :=  'TODOS SUBGRUPOS DO CADASTRO CATEGORIA';
      sds_lote.Params[5].AsSmallInt := 100;
      sds_lote.Params[6].AsInteger := 1;
      sds_lote.Params[7].AsString := 'TODAS AS MARCAS CADASTRADAS NO SISTEMA';
      sds_lote.Params[8].AsString := DBEdit1.Text;
      sds_lote.Open;
      if sds_lote.IsEmpty then
      begin
        MessageDlg('Lote não existe', mtWarning, [mbOK], 0);
        exit;
      end;
      sds_lote.Last;
      fEntra_Sai_estoque.cds_Mov_detDTAFAB.AsDateTime := sds_loteDTAFAB.AsDateTime;
      fEntra_Sai_estoque.cds_Mov_detDTAVCTO.AsDateTime := sds_loteDTAVCTO.AsDateTime;
      Label4.Visible := true;
      Label5.Visible := true;
      Label6.Caption := FloatToStr(sds_loteSALDOFIMACUM.AsFloat);
      Label6.Visible := true;
  end;
end;

procedure TfEnt_Sai_Lote.BitBtn1Click(Sender: TObject);
begin
  if entra_sai = 'sai' then
  begin
    if sds_loteSALDOFIMACUM.AsFloat > 0 then
     close
    else
    begin
     MessageDlg('não há estoque deste Lote.', mtWarning, [mbOK], 0);
     Label4.Visible := false;
     Label5.Visible := false;
     Label6.Visible := false;
     close;
     fEntra_Sai_estoque.dbeProduto.Text := '';
    end;
  end;
  close;
end;

procedure TfEnt_Sai_Lote.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfEnt_Sai_Lote.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Label4.Visible := False;
  Label5.Visible := False;
  Label6.Visible := False;
  if (sds_lote.Active) then
    sds_lote.Close;
end;

end.
