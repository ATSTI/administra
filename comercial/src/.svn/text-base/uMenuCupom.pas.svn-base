unit uMenuCupom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Menus, FMTBcd, SqlExpr, Provider, DB,
  DBClient, DBXPress;

type
  TfMenuCupom = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    PopupMenu1: TPopupMenu;
    cCaixaControle: TClientDataSet;
    cCaixaControleIDCAIXACONTROLE: TIntegerField;
    cCaixaControleCODCAIXA: TIntegerField;
    cCaixaControleCODUSUARIO: TIntegerField;
    cCaixaControleDATAFECHAMENTO: TDateField;
    cCaixaControleSITUACAO: TStringField;
    cCaixaControleMAQUINA: TStringField;
    cCaixaControleDATAABERTURA: TDateField;
    cCaixaControleVALORABRE: TFloatField;
    cCaixaControleVALORFECHA: TFloatField;
    cCaixaControleNOMECAIXA: TStringField;
    dCaixaControle: TDataSetProvider;
    sCaixaControle: TSQLDataSet;
    sCaixaControleIDCAIXACONTROLE: TIntegerField;
    sCaixaControleCODCAIXA: TIntegerField;
    sCaixaControleCODUSUARIO: TIntegerField;
    sCaixaControleDATAFECHAMENTO: TDateField;
    sCaixaControleSITUACAO: TStringField;
    sCaixaControleMAQUINA: TStringField;
    sCaixaControleDATAABERTURA: TDateField;
    sCaixaControleVALORABRE: TFloatField;
    sCaixaControleVALORFECHA: TFloatField;
    sCaixaControleNOMECAIXA: TStringField;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    Label1: TLabel;
    btnSPED: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure btnSPEDClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Cancelavenda;
  end;

var
  fMenuCupom: TfMenuCupom;

implementation

uses Principal, UnitDeclaracoes, UDm, uAliquita, uMensagens, uGeraSPED;

{$R *.dfm}

procedure TfMenuCupom.BitBtn1Click(Sender: TObject);
begin
// if (dm.situacaoCaixa = 'Fechado') then
// begin
   iRetorno := Bematech_FI_LeituraX();
   frmPrincipal.Analisa_iRetorno();
   frmPrincipal.Retorno_Impressora();
  { if (not cCaixaControle.Active) then
     cCaixaControle.Open;
   cCaixaControle.Append;
   cCaixaControleCODUSUARIO.AsInteger := usulog;
   cCaixaControleNOMECAIXA.AsString := 'Caixa Interno';
   cCaixaControleDATAFECHAMENTO.AsDateTime := now; //Populo pq o campo é obrigatório
   cCaixaControleSITUACAO.AsString := 'A';
   cCaixaControleMAQUINA.AsString := MICRO;
   cCaixaControleDATAABERTURA.AsDateTime := Now;
   cCaixaControleVALORABRE.Value := 0;
   cCaixaControle.ApplyUpdates(0);
   cCaixaControle.Close;
 //  dm.situacaoCaixa := 'Aberto';
 end
 else
 begin
   MessageDlg('Leirura X já efetuada', mtWarning, [mbOK], 0);
   exit;
 end;}
end;

procedure TfMenuCupom.BitBtn2Click(Sender: TObject);
begin
{ if (dm.situacaoCaixa = 'Fechado') then
 begin
   MessageDlg(' Redução Z já Foi Executada ', mtWarning, [mbOK], 0);
   exit;
 end; }
 //If MessageDlg('A Redução Z impossibilitará novas impressões'+#13
   //                 +'de Cupons Fiscais!'+#13+#13+'Continua ?', mtConfirmation,
     //               [mbYes, mbNo], 0) = mrYes then
//  Begin

  //if (MessageDlg('Confirma REDUÇÃO Z', mtCustom, [mbYes, mbNo], 0) = mrYes) then
  if (MessageDlg('Confrima a Redução Z, '+#13+#10+'Obs.: Se a Redução estiver sendo Executada no mesmo dia em que foi feita a Leitura X'+#13+#10+'NÃO SERÁ POSSIVEL EFETUAR VENDAS NESSE DIA..A LEITURA X SÓ PODERA SER '+#13+#10+'EFETUADA NO DIA SEGUINTE.', mtWarning, [mbYes, mbNo], 0) in [mrYes, mrNone]) then
  begin
    iRetorno := Bematech_FI_ReducaoZ('', '');
    frmPrincipal.Analisa_iRetorno();
    frmPrincipal.Retorno_Impressora();
 end
 else
 begin
   showmessage('Redução Z Cancelada');
 end;
{    if (cCaixaControle.Active) then
      cCaixaControle.Close;
    cCaixaControle.Params[0].AsString := 'A';
    cCaixaControle.Open;
    if (not cCaixaControle.IsEmpty) then
      cCaixaControle.Edit;
    cCaixaControleDATAFECHAMENTO.AsDateTime := now; //Populo pq o campo é obrigatório
    cCaixaControleSITUACAO.AsString := 'F';
    cCaixaControleVALORFECHA.Value := 0;
    cCaixaControle.ApplyUpdates(0);
    cCaixaControle.Close;
    dm.situacaoCaixa := 'Fechado';
  End;}
end;

procedure TfMenuCupom.BitBtn3Click(Sender: TObject);
begin
{ if (dm.situacaoCaixa = 'Fechado') then
 begin
   MessageDlg(' Execute Leitura X ', mtWarning, [mbOK], 0);
   exit;
 end;
  if MessageDlg('Deseja realmente Cancelar esse registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
 }
    iRetorno := Bematech_FI_CancelaCupom();
    frmPrincipal.Analisa_iRetorno();
    frmPrincipal.Retorno_Impressora();
    try
      Cancelavenda;
    except
      ShowMessage('Erro ao cancelar Venda');
    end;
//  end


end;

procedure TfMenuCupom.BitBtn4Click(Sender: TObject);
begin
  close
end;

procedure TfMenuCupom.Cancelavenda;
var
  TD: TTransactionDesc;
  strSql : string;
begin
   strSql := 'Update recebimento set status = ';
   strSql := strSql + QuotedStr('5-');
   strSql := strSql + ' where CODVENDA = ';
   strSql := strSql + IntToStr(dm.varCOD_VENDA);
   dm.sqlsisAdimin.StartTransaction(TD);
   dm.sqlsisAdimin.ExecuteDirect(strSql);
   Try
       dm.sqlsisAdimin.Commit(TD);
   except
       dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
       MessageDlg('Erro ao Cancelar o Recebimento .', mtError,
           [mbOk], 0);
   end;

 {  strSql := 'DELETE FROM recebimento where CODVENDA = ';
   strSql := strSql + IntToStr(dm.varCOD_VENDA);
   dm.sqlsisAdimin.StartTransaction(TD);
   dm.sqlsisAdimin.ExecuteDirect(strSql);
   Try
       dm.sqlsisAdimin.Commit(TD);
   except
       dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes
       MessageDlg('Erro ao Deletar Recebimento .', mtError,
           [mbOk], 0);
   end;                                                            }

   strSql := 'DELETE FROM VENDA where CODVENDA = ';
   strSql := strSql + IntToStr(dm.varCOD_VENDA);
   dm.sqlsisAdimin.StartTransaction(TD);
   dm.sqlsisAdimin.ExecuteDirect(strSql);
   Try
       dm.sqlsisAdimin.Commit(TD);
   except
       dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
       MessageDlg('Erro ao Deletar a VENDA .', mtError,
           [mbOk], 0);
   end;

   strSql := 'Update MOVIMENTO SET STATUS = ';
   strSql := strSql + IntToStr(2);
   strSql := strSql + ', ' + ' CODNATUREZA = ';
   strSql := strSql + IntToStr(14);
   strSql := strSql + ' where CODMOVIMENTO = ';
   strSql := strSql + IntToStr(dm.varCOD_MOV);
   dm.sqlsisAdimin.StartTransaction(TD);
   dm.sqlsisAdimin.ExecuteDirect(strSql);
   Try
       dm.sqlsisAdimin.Commit(TD);
   except
       dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
       MessageDlg('Erro ao Cancelar o Movimento .', mtError,
           [mbOk], 0);
   end;
   
end;

procedure TfMenuCupom.BitBtn5Click(Sender: TObject);
begin
  fAliquota := TfAliquota.Create(Application);
  try
    fAliquota.ShowModal;
  finally
    fAliquota.Free;
  end;
end;

procedure TfMenuCupom.BitBtn6Click(Sender: TObject);
begin
  fMensagens.ShowModal;
end;

procedure TfMenuCupom.BitBtn7Click(Sender: TObject);
begin
  iRetorno := Bematech_FI_VerificaImpressoraLigada();
  if iRetorno = -6 then
    Application.MessageBox('A Impressora se encontra DESLIGADA.', 'Atenção', MB_IconInformation + MB_OK)
  else
    Application.MessageBox('A Impressora se encontra LIGADA.', 'Atenção', MB_IconInformation + MB_OK);

  frmPrincipal.Analisa_iRetorno();
  frmPrincipal.Retorno_Impressora();
  
end;

procedure TfMenuCupom.BitBtn8Click(Sender: TObject);
  var sModo: string;
      iConta: integer;
begin
  for iConta := 1 to 1 do
    sModo := sModo + ' ';
  iRetorno := Bematech_FI_VerificaModoOperacao( sModo );
  if sModo = '1' then
    Application.MessageBox('A Impressora se encontra em Operação Normal.', 'Atenção', MB_IconInformation + MB_OK)
  else
    Application.MessageBox('A Impressora se encontra em Intervenção Técnica.', 'Atenção', MB_IconInformation + MB_OK);

  frmPrincipal.Analisa_iRetorno();
  frmPrincipal.Retorno_Impressora();
end;

procedure TfMenuCupom.BitBtn9Click(Sender: TObject);
begin
  iRetorno := Bematech_FI_ProgramaHorarioVerao();
  frmPrincipal.Analisa_iRetorno();
  frmPrincipal.Retorno_Impressora();
end;

procedure TfMenuCupom.btnSPEDClick(Sender: TObject);
begin
  fGeraSPED := TfGeraSPED.Create(Application);
  try
    fGeraSPED.ShowModal;
  finally
    fGeraSPED.Free;
  end;
end;

end.
