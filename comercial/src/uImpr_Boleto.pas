unit uImpr_Boleto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel, rpcompobase,
  rpvclreport, rplabelitem, DB, FMTBcd, SqlExpr, DBCtrls, dbxpress;

type
  TfImpr_Boleto = class(TForm)
    Bradesco: TVCLReport;
    brasil: TVCLReport;
    repBoleto: TVCLReport;
    MMJPanel1: TMMJPanel;
    MMJPanel2: TMMJPanel;
    Label9: TLabel;
    Label10: TLabel;
    btnSair: TBitBtn;
    XPMenu1: TXPMenu;
    sqlBanco: TSQLDataSet;
    sqlBancoCODBANCO: TSmallintField;
    sqlBancoBANCO: TStringField;
    sqlBancoNOMEBANCO: TStringField;
    sqlBancoINSTRUCOES: TGraphicField;
    caixa: TVCLReport;
    lblBoleto: TLabel;
    edBoleto: TEdit;
    RadioGroup2: TRadioGroup;
    RadioGroup1: TRadioGroup;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    codVendaBoleto : integer;
    strBoletoBrasil: string;
  end;

var
  fImpr_Boleto: TfImpr_Boleto;
  varEspecie, varAceite, varInformativo : string;

implementation

uses uComercial, uVendaFinalizar, UDm, Math, ufcrSaude;

{$R *.dfm}

procedure TfImpr_Boleto.BitBtn2Click(Sender: TObject);
var
  text12,text13,text14:TRpLabel;
  TD: TTransactionDesc;
  str1: string;
  Save_Cursor:TCursor;
  i : integer;
begin
  i := 0;
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }

  if (edBoleto.Text <> '') then
  if MessageDlg('Deseja inserir numeração nos títulos para os boletos ?',mtConfirmation,
             [mbYes,mbNo],0) = mrYes then
  begin
    try
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      dm.sqlsisAdimin.StartTransaction(TD);
      fcrProcSaude.scdsCr_proc.DisableControls;
      fcrProcSaude.scdsCr_proc.First;
      While not fcrProcSaude.scdsCr_proc.Eof do
      begin
        if (fcrProcSaude.scdsCr_procDUP_REC_NF.AsString = 'S') then
        begin
          str1 := 'update RECEBIMENTO set TITULO = ' +
            IntToStr(StrToInt(edBoleto.Text) + i);
          str1 := str1 + ' where CODRECEBIMENTO = ';
          str1 := str1 + IntToStr(fcrProcSaude.scdsCr_procCODRECEBIMENTO.AsInteger);
          dm.sqlsisAdimin.ExecuteDirect(str1);
          i := i + 1;
        end;
        fcrProcSaude.scdsCr_proc.Next;
      end;
      dm.sqlsisAdimin.Commit(TD);
      MessageDlg('Número boletos alterados com sucesso.', mtConfirmation,
         [mbOk], 0);
     except
      dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
      MessageDlg('Erro no sistema, Números não alterados.', mtError,
        [mbOk], 0);
    end;
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;

 if RadioGroup1.ItemIndex = 0 then
 begin
  Bradesco.FileName := str_relatorio + 'BOLETO_bradesco.rep';
  Bradesco.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  if (fVendaFinalizar <> nil) then
    Bradesco.Report.Params.ParamByName('PVENDA').Value := fVendaFinalizar.cdsCODVENDA.AsInteger
  else
    Bradesco.Report.Params.ParamByName('PVENDA').Value := codVendaBoleto;
  text12:=TRpLabel(Bradesco.Report.FindComponent('TRpLabel4'));
  text13:=TRpLabel(Bradesco.Report.FindComponent('TRpLabel10'));
  text14:=TRpLabel(Bradesco.Report.FindComponent('TRpLabel25'));
  if Assigned(text12) then
    text12.Text := varEspecie;
  if Assigned(text13) then
    text13.Text := varAceite;
  if Assigned(text14) then
    text14.Text := varInformativo;
  Bradesco.Execute;
 end;
 if RadioGroup1.ItemIndex = 1 then
 begin
  brasil.FileName := str_relatorio + 'BOLETO_brasil.rep';
  brasil.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  if (fVendaFinalizar <> nil) then
 // if (fVendaFinalizar.cds.Active) then
    brasil.Report.Params.ParamByName('PVENDA').Value := fVendaFinalizar.cdsCODVENDA.AsInteger
  else begin
    brasil.Report.Params.ParamByName('PVENDA').Value := 0;
    brasil.Report.DataInfo.Items[0].SQL:= strBoletoBrasil;
  end;
  text12:=TRpLabel(brasil.Report.FindComponent('TRpLabel4'));
  text13:=TRpLabel(brasil.Report.FindComponent('TRpLabel10'));
  text14:=TRpLabel(brasil.Report.FindComponent('TRpLabel0'));
  if Assigned(text12) then
    text12.Text := varEspecie;
  if Assigned(text13) then
    text13.Text := varAceite;
  if Assigned(text14) then
    text14.Text := varInformativo;
   brasil.Execute;
 end;
 if RadioGroup1.ItemIndex = 2 then
 begin
  repBoleto.FileName := str_relatorio + 'boleto.rep';
  repBoleto.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;  
  repBoleto.Report.Params.ParamByName('PVENDA').Value := fVendaFinalizar.cdsCODVENDA.AsInteger;
  text12:=TRpLabel(repBoleto.Report.FindComponent('TRpLabel4'));
  text13:=TRpLabel(repBoleto.Report.FindComponent('TRpLabel10'));
  text14:=TRpLabel(repBoleto.Report.FindComponent('TRpLabel25'));
  if Assigned(text12) then
    text12.Text := varEspecie;
  if Assigned(text13) then
    text13.Text := varAceite;
  if Assigned(text14) then
    text14.Text := varInformativo;
  repBoleto.Execute;
 end;

 if RadioGroup1.ItemIndex = 3 then // Nossa Caixa
 begin
  caixa.FileName := str_relatorio + 'boleto_caixa.rep';
  caixa.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;  
  caixa.Report.Params.ParamByName('PVENDA').Value := fVendaFinalizar.cdsCODVENDA.AsInteger;
  text12:=TRpLabel(caixa.Report.FindComponent('TRpLabel4'));
  text13:=TRpLabel(caixa.Report.FindComponent('TRpLabel10'));
  text14:=TRpLabel(caixa.Report.FindComponent('TRpLabel25'));
  if Assigned(text12) then
    text12.Text := varEspecie;
  if Assigned(text13) then
    text13.Text := varAceite;
  if Assigned(text14) then
    text14.Text := varInformativo;
  caixa.Execute;
 end;

end;

procedure TfImpr_Boleto.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TfImpr_Boleto.FormCreate(Sender: TObject);
begin
  if DM.videoW <> '' then
  begin
   ScreenWidth := StrToInt(DM.videoW);
   ScreenHeight := StrToInt(DM.videoH);
   scaled := true;
   if (screen.width <> ScreenWidth) then
   begin
     height := longint(height) * longint(screen.height) DIV ScreenHeight;
     width := longint(width) * longint(screen.width) DIV ScreenWidth;
     scaleBy(screen.width, ScreenWidth);
   end;
  end;
end;

procedure TfImpr_Boleto.RadioGroup1Click(Sender: TObject);
begin
{  If (RadioGroup1.ItemIndex = 3) Then
   sqlBanco.Locate('BANCO','Nossa Caixa', [loCaseInsensitive]);}
end;

procedure TfImpr_Boleto.BitBtn1Click(Sender: TObject);
begin

 if(RadioGroup2.ItemIndex = 0) then
   WinExec('boletobradesco', SW_SHOWNORMAL);

 if(RadioGroup2.ItemIndex = 1) then
   WinExec('boletobrasil', SW_SHOWNORMAL);

 if(RadioGroup2.ItemIndex = 2) then
   WinExec('boletobrasilCR', SW_SHOWNORMAL);

 if(RadioGroup2.ItemIndex = 3) then
   WinExec('boletoitauCR', SW_SHOWNORMAL);

 if(RadioGroup2.ItemIndex = 5) then
   WinExec('boleto', SW_SHOWNORMAL);

 if(RadioGroup2.ItemIndex = 4) then
   WinExec('boleto_sicrediCR', SW_SHOWNORMAL);
end;

end.
