unit uVendaRelPorNotaFiscalLote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, Buttons, rpcompobase, rpvclreport;

type
  TfVendaRelPorNotaFiscalLote = class(TForm)
    GroupBox3: TGroupBox;
    btnSair: TBitBtn;
    BitBtn4: TBitBtn;
    GroupBox2: TGroupBox;
    edNotaFiscal: TEdit;
    GroupBox4: TGroupBox;
    edCodFornec: TEdit;
    rep: TVCLReport;
    edFornec: TEdit;
    BitBtn8: TBitBtn;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fVendaRelPorNotaFiscalLote: TfVendaRelPorNotaFiscalLote;

implementation

uses uProcurar, UDm;

{$R *.dfm}



procedure TfVendaRelPorNotaFiscalLote.BitBtn4Click(Sender: TObject);
var str, strCond: String;
begin
  strCond := '';
  str := 'select * from VENDAPORNFLOTE ';
  if (edNotaFiscal.Text <> '') then
    strCond :=  'WHERE NOTAFISCAL = ' + QuotedStr(edNotaFiscal.Text);
  if (edCodFornec.Text <> '') then
  begin
    if (strCond = '') then
      strCond :=  'WHERE CODFORNEC = ' + edCodFornec.Text
    else
      strCond :=  strCond + ' AND CODFORNEC = ' + edCodFornec.Text;
  end;
  strCond := strCond + ' order by  notafiscal, tipo, codpro,  datavenda, lote';
  rep.Filename := str_relatorio + 'vendaPorNFLote.rep';
  rep.Title    := rep.Filename;
  rep.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  rep.Report.DataInfo.Items[0].SQL := str + strCond;

  rep.Execute;

end;

procedure TfVendaRelPorNotaFiscalLote.BitBtn8Click(Sender: TObject);
begin
  fProcurar:=TfProcurar.create(self,dm.scds_forn_proc);
  try
    fProcurar.btnImprimir.Visible := true;
    fProcurar.RadioGroup1.Visible := true;
    dm.scds_forn_proc.Params.ParamByName('pStatus').AsInteger := 1;
    dm.scds_forn_proc.Params.ParamByName('pSegmento').AsInteger := 0;    
    fProcurar.BtnProcurar.Click;
    fProcurar.EvDBFind1.DataField := 'NOMEFORNECEDOR';
    fProcurar.RadioGroup2.Visible := True;
    if fProcurar.ShowModal=mrOk then
    begin
     edCodFornec.Text := IntToStr(dm.scds_forn_procCODFORNECEDOR.asInteger);
     edFornec.Text    := dm.scds_forn_procNOMEFORNECEDOR.asString;
    end;
  Finally
    dm.scds_forn_proc.close;
    fProcurar.Free;
  end;
end;

procedure TfVendaRelPorNotaFiscalLote.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
