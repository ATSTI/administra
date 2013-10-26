unit uBaixaretorno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, Grids, DBGrids, DBClient, Provider, SqlExpr,
  StdCtrls, DBCtrls, Buttons;

type
  TfBaixaretorno = class(TForm)
    DataSource1: TDataSource;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    DBGrid1: TDBGrid;
    DBText2: TDBText;
    DBText3: TDBText;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cdsCODRECEBIMENTO: TIntegerField;
    cdsTITULO: TStringField;
    cdsEMISSAO: TDateField;
    cdsCODCLIENTE: TIntegerField;
    cdsDATAVENCIMENTO: TDateField;
    cdsDATARECEBIMENTO: TDateField;
    cdsCAIXA: TSmallintField;
    cdsCONTADEBITO: TIntegerField;
    cdsCONTACREDITO: TIntegerField;
    cdsSTATUS: TStringField;
    cdsVIA: TStringField;
    cdsFORMARECEBIMENTO: TStringField;
    cdsDATABAIXA: TDateField;
    cdsHISTORICO: TStringField;
    cdsCODVENDA: TIntegerField;
    cdsCODALMOXARIFADO: TSmallintField;
    cdsCODVENDEDOR: TSmallintField;
    cdsCODUSUARIO: TSmallintField;
    cdsN_DOCUMENTO: TStringField;
    cdsDATASISTEMA: TSQLTimeStampField;
    cdsVALORRECEBIDO: TFloatField;
    cdsJUROS: TFloatField;
    cdsDESCONTO: TFloatField;
    cdsPERDA: TFloatField;
    cdsTROCA: TFloatField;
    cdsFUNRURAL: TFloatField;
    cdsVALOR_PRIM_VIA: TFloatField;
    cdsVALOR_RESTO: TFloatField;
    cdsVALORTITULO: TFloatField;
    cdsOUTRO_CREDITO: TFloatField;
    cdsOUTRO_DEBITO: TFloatField;
    cdsPARCELAS: TIntegerField;
    cdsDUP_REC_NF: TStringField;
    cdsNF: TIntegerField;
    cdsDP: TIntegerField;
    cdsBL: TIntegerField;
    cdsCODORIGEM: TIntegerField;
    cdsCODIGO_DE_BARRAS: TStringField;
    cdsIMAGE_COD_BARRAS: TGraphicField;
    cdsDV: TStringField;
    cdsNOMECLIENTE: TStringField;
    sdsCODRECEBIMENTO: TIntegerField;
    sdsTITULO: TStringField;
    sdsEMISSAO: TDateField;
    sdsCODCLIENTE: TIntegerField;
    sdsDATAVENCIMENTO: TDateField;
    sdsDATARECEBIMENTO: TDateField;
    sdsCAIXA: TSmallintField;
    sdsCONTADEBITO: TIntegerField;
    sdsCONTACREDITO: TIntegerField;
    sdsSTATUS: TStringField;
    sdsVIA: TStringField;
    sdsFORMARECEBIMENTO: TStringField;
    sdsDATABAIXA: TDateField;
    sdsHISTORICO: TStringField;
    sdsCODVENDA: TIntegerField;
    sdsCODALMOXARIFADO: TSmallintField;
    sdsCODVENDEDOR: TSmallintField;
    sdsCODUSUARIO: TSmallintField;
    sdsN_DOCUMENTO: TStringField;
    sdsDATASISTEMA: TSQLTimeStampField;
    sdsVALORRECEBIDO: TFloatField;
    sdsJUROS: TFloatField;
    sdsDESCONTO: TFloatField;
    sdsPERDA: TFloatField;
    sdsTROCA: TFloatField;
    sdsFUNRURAL: TFloatField;
    sdsVALOR_PRIM_VIA: TFloatField;
    sdsVALOR_RESTO: TFloatField;
    sdsVALORTITULO: TFloatField;
    sdsOUTRO_CREDITO: TFloatField;
    sdsOUTRO_DEBITO: TFloatField;
    sdsPARCELAS: TIntegerField;
    sdsDUP_REC_NF: TStringField;
    sdsNF: TIntegerField;
    sdsDP: TIntegerField;
    sdsBL: TIntegerField;
    sdsCODORIGEM: TIntegerField;
    sdsCODIGO_DE_BARRAS: TStringField;
    sdsIMAGE_COD_BARRAS: TGraphicField;
    sdsDV: TStringField;
    sdsNOMECLIENTE: TStringField;
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBaixaretorno: TfBaixaretorno;

implementation

uses UDM, uArquivoRetorno;

{$R *.dfm}

procedure TfBaixaretorno.FormShow(Sender: TObject);
begin
  if cds.Active then
    cds.Close;
  cds.Params[0].AsInteger := codigo;
  cds.Open;
  Label1.Caption := FloatToStr(v_resto);
end;

procedure TfBaixaretorno.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TfBaixaretorno.BitBtn1Click(Sender: TObject);
begin
     if v_resto >= cdsVALOR_RESTO.AsFloat then
     begin
        if cdsSTATUS.AsString = 'Pendente' then
        begin
          if cds.State in [dsBrowse] then
             cds.Edit;
          cdsDATABAIXA.AsDateTime := now;
          cdsSTATUS.AsString := 'Pago';
          cdsVALORRECEBIDO.AsFloat := cdsVALOR_RESTO.AsFloat;
          cds.ApplyUpdates(0);
          v_pago := v_resto;
          v_titulo := cdsVALOR_RESTO.AsFloat;
          v_resto := v_pago - v_titulo;
          Label1.Caption := FloatToStr(v_resto);
          n_titulo := cdsTITULO.AsInteger;
          //atualizo o memo
          texto_memo := '';
          texto_memo := texto_memo + 'CBR643 : ';
          texto_memo := 'Título nº: ' + IntToStr(fArquivoRetorno.cdsTITULO.AsInteger) + ' Data: ' +
              fArquivoRetorno.cdsDATA.AsString + ' valor R$ : ' +
              FloatToStr(fArquivoRetorno.cdsVALOR.AsFloat);
          texto_memo := texto_memo + ' | Baixado - (Cód.: ' + IntToStr(cdsCODCLIENTE.AsInteger);
          texto_memo := texto_memo + ' Cliente : ' + cdsNOMECLIENTE.AsString;
          texto_memo := texto_memo + ' Título : ' + cdsTITULO.AsString;
          texto_memo := texto_memo + ' Valor R$ : ' + FloatToStr(cdsVALORRECEBIDO.AsFloat) + ')';
          fArquivoRetorno.Memo1.Lines.Add(texto_memo);
        end;
     end
     else
     begin
        MessageDlg('Valor restante menor que valor da parcela', mtWarning, [mbOK], 0);
     end;

     if cds.Active then
       cds.Close;
     cds.Params[0].AsInteger := codigo;
     cds.Open;
     
end;

end.
