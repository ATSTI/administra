unit uSangria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvToolEdit, Grids, DBGrids, JvExDBGrids, JvDBGrid, StdCtrls,
  Mask, JvExMask, JvBaseEdits, Buttons, ExtCtrls, MMJPanel, uFiscalCls,
  JvExStdCtrls, JvEdit, JvValidateEdit, DB, FMTBcd, Provider, DBClient,
  SqlExpr;


type
  TfSangria = class(TForm)
    MMJPanel2: TMMJPanel;
    btnSair: TBitBtn;
    btnSaida: TBitBtn;
    lbl2: TLabel;
    lbl1: TLabel;
    JvDateEdit1: TJvDateEdit;
    edt1: TEdit;
    sSangria: TSQLDataSet;
    sSangriaCODCONT: TIntegerField;
    sSangriaCODORIGEM: TIntegerField;
    sSangriaTIPOORIGEM: TStringField;
    sSangriaDATA: TDateField;
    sSangriaCODUSUARIO: TSmallintField;
    sSangriaCODCCUSTO: TIntegerField;
    sSangriaCODSERVICO: TSmallintField;
    sSangriaSTATUS: TSmallintField;
    sSangriaCONTA: TStringField;
    sSangriaVALORCREDITO: TFloatField;
    sSangriaVALORDEBITO: TFloatField;
    sSangriaVALORORCADO: TFloatField;
    sSangriaQTDECREDITO: TFloatField;
    sSangriaQTDEDEBITO: TFloatField;
    sSangriaQTDEORCADO: TFloatField;
    sSangriaCODCONCILIACAO: TStringField;
    cSangria: TClientDataSet;
    pSangria: TDataSetProvider;
    dsSangria: TDataSource;
    cSangriaCODCONT: TIntegerField;
    cSangriaCODORIGEM: TIntegerField;
    cSangriaTIPOORIGEM: TStringField;
    cSangriaDATA: TDateField;
    cSangriaCODUSUARIO: TSmallintField;
    cSangriaCODCCUSTO: TIntegerField;
    cSangriaCODSERVICO: TSmallintField;
    cSangriaSTATUS: TSmallintField;
    cSangriaCONTA: TStringField;
    cSangriaVALORCREDITO: TFloatField;
    cSangriaVALORDEBITO: TFloatField;
    cSangriaVALORORCADO: TFloatField;
    cSangriaQTDECREDITO: TFloatField;
    cSangriaQTDEDEBITO: TFloatField;
    cSangriaQTDEORCADO: TFloatField;
    cSangriaCODCONCILIACAO: TStringField;
    sSangriaHISTORICO: TStringField;
    cSangriaHISTORICO: TStringField;
    JvValor: TJvValidateEdit;
    edthist: TEdit;
    lbl4: TLabel;
    lbl5: TLabel;
    bvl1: TBevel;
    procedure btnSaidaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    var_nomecaixa, var_cDebito, var_cCredito : string;
    var_codCaixa, var_codCCustoCD, var_codCCustoCC : Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSangria: TfSangria;

implementation

uses uAts_R, UDm, UDM_MOV;

{$R *.dfm}

procedure TfSangria.btnSaidaClick(Sender: TObject);
var
  FSangria : TFiscalCls;
  sangria : Double;
begin
  if (edthist.Text = '') then
  begin
    ShowMessage('Informe o Histórico !');
    Exit;
  end;

  if (JvValor.AsFloat = 0) then
  begin
    ShowMessage('Informe o Valor da Sangria !');
    Exit;
  end;
  sangria := JvValor.Value;
  Try
    FSangria := TFiscalCls.Create;
    FSangria.VerificaCaixaAberto();
    var_codCaixa  := FSangria.v_idcaixa;  // Codigo do caixa na tabela CAIXA_CONTROLE
    var_nomecaixa := FSangria.v_NomeCaixa;

    if (DM_MOV.s_parametro.Active) then
       DM_MOV.s_parametro.Close;
    DM_MOV.s_parametro.Params[0].AsString := 'CONTACAIXASANGRIA';
    DM_MOV.s_parametro.Open;
    var_cCredito := DM_MOV.s_parametroD1.AsString;
    var_codCCustoCC := FSangria.v_Cod_Caixa;

    DM_MOV.s_parametro.Close;
    DM_MOV.s_parametro.Params[0].AsString := 'CONTACAIXAINTERNA';
    DM_MOV.s_parametro.Open;
    var_cDebito := DM_MOV.s_parametroD1.AsString;
    DM_MOV.s_parametro.Close;
    var_codCCustoCD := FSangria.v_Cod_Caixa;
    try
      FSangria.SangriadeCaixa(var_codCaixa,usulog,var_codCCustoCD, var_codCCustoCC,var_cDebito,var_cCredito,sangria,edthist.Text);
      MessageDlg('Sangria gravada com sucesso.', mtInformation, [mbOK], 0);
    except
      MessageDlg('Erro na gravacao da Sangria.', mtError, [mbOK], 0);
    end;
  Finally
    //Screen.Cursor := Save_Cursor;
    FSangria.Free;
  end;
end;

procedure TfSangria.FormShow(Sender: TObject);
var
  FSangria : TFiscalCls;
  var_Retorno  : Boolean;
  var_Retorno1 : string;
begin
  Try
    FSangria := TFiscalCls.Create;
    FSangria.VerificaCaixaAberto();
    edt1.Text := FSangria.v_NomeCaixa;
    JvDateEdit1.Text := DateToStr(FSangria.v_DataCaixa);
    edthist.Text := 'SANGRIA';
  Finally
    FSangria.Free;
  end;
end;

procedure TfSangria.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
