unit unitExclusao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCore, dxButton, ExtCtrls, DBClient, DB, dbxpress;

type
  TformExclusao = class(TForm)
    Panel2: TPanel;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    dxButton3: TdxButton;
    procedure dxButton1Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
  private
    TD: TTransactionDesc;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formExclusao: TformExclusao;

implementation

uses UDm, UDMNF, uNF, uNotaf,
  uNotafc;

{$R *.dfm}

procedure TformExclusao.dxButton1Click(Sender: TObject);
begin
  if (DMNF.FormExiste(fNF) = True) then
  begin
    if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                  [mbYes,mbNo],0) = mrYes then
    begin
      if (dmnf.cds_nfPROTOCOLOENV.AsString <> '') then
      begin
        MessageDlg('NF já enviada, não pode ser excluida do sistema.', mtWarning, [mbOK], 0);
        exit;
      end;
      if (dmnf.cds_nfPROTOCOLOCANC.AsString <> '') then
      begin
        MessageDlg('NF CANCELADA no SEFAZ, não pode ser excluida do sistema.', mtWarning, [mbOK], 0);
        exit;
      end;
       dmnf.DtSrc_NF.DataSet.Delete;
       (dmnf.DtSrc_NF.DataSet as TClientDataSet).ApplyUpdates(0);
    end
    else
      Abort;
  end;
  if (DMNF.FormExiste(fNotaF) = True) then
  begin
    if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                  [mbYes,mbNo],0) = mrYes then
    begin
      if (dmnf.cds_nfPROTOCOLOENV.AsString <> '') then
      begin
        MessageDlg('NF já enviada, não pode ser excluida do sistema.', mtWarning, [mbOK], 0);
        exit;
      end;
      if (dmnf.cds_nfPROTOCOLOCANC.AsString <> '') then
      begin
        MessageDlg('NF CANCELADA no SEFAZ, não pode ser excluida do sistema.', mtWarning, [mbOK], 0);
        exit;
      end;
      fNotaf.gravaSerie(dmnf.cds_vendaNOTAFISCAL.AsInteger);
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      dm.sqlsisAdimin.StartTransaction(TD);
      Try
        if (not dmnf.DtSrcVenda.DataSet.IsEmpty) then
        begin
          dm.sqlsisAdimin.ExecuteDirect('update movimento set nfe = null' +
            ' where CODMOVIMENTO = ' +  dmnf.cds_MovimentoCONTROLE.AsString);
          dm.sqlsisAdimin.ExecuteDirect('DELETE FROM VENDA WHERE CODVENDA = ' +
            IntToStr(dmnf.cds_vendaCODVENDA.AsInteger));
        end;
        dm.sqlsisAdimin.ExecuteDirect('DELETE FROM MOVIMENTO WHERE CODMOVIMENTO = ' +
          IntToStr(dmnf.cds_MovimentoCODMOVIMENTO.AsInteger));
        dm.sqlsisAdimin.ExecuteDirect('DELETE FROM NOTAFISCAL WHERE NUMNF = ' +
          IntToStr(dmnf.cds_nfNUMNF.AsInteger));
        dm.sqlsisAdimin.Commit(TD);
      except
        on E : Exception do
        begin
          ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
          dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
          exit;
        end;
      end;
      dmnf.DtSrc_NF.DataSet.Close;
      dmnf.DtSrcVenda.DataSet.Close;
      dmnf.cds_Movimento.Close;
      dmnf.cds_Mov_det.Close;
      MessageDlg('Registro excluido com sucesso.',mtConfirmation, [mbOK],0);
      close;
    end
    else
      Abort;
  end;
  if (DMNF.FormExiste(fNotaFc) = True) then
  begin
    if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                  [mbYes,mbNo],0) = mrYes then
    begin
      if (dmnf.cds_nfPROTOCOLOENV.AsString <> '') then
      begin
        MessageDlg('NF já enviada, não pode ser excluida do sistema.', mtWarning, [mbOK], 0);
        exit;
      end;
      if (dmnf.cds_nfPROTOCOLOCANC.AsString <> '') then
      begin
        MessageDlg('NF CANCELADA no SEFAZ, não pode ser excluida do sistema.', mtWarning, [mbOK], 0);
        exit;
      end;
      if (not dmnf.DtSrc_NF1.DataSet.IsEmpty) then
      begin
        if (dmnf.DtSrc_Compra.DataSet.IsEmpty) then
        begin
          DMNF.cds_compra.Params[0].AsInteger := dmnf.cds_nf1CODVENDA.AsInteger;
          DMNF.cds_compra.Params[1].Clear;
          DMNF.cds_compra.Open;
        end;
        dm.sqlsisAdimin.StartTransaction(TD);
        Try
          dm.sqlsisAdimin.ExecuteDirect('DELETE FROM COMPRA WHERE CODCOMPRA = ' +
            IntToStr(dmnf.cds_compraCODCOMPRA.AsInteger));
          dm.sqlsisAdimin.ExecuteDirect('DELETE FROM MOVIMENTO WHERE CODMOVIMENTO = ' +
            IntToStr(dmnf.cds_MovimentoCODMOVIMENTO.AsInteger));
          dm.sqlsisAdimin.ExecuteDirect('DELETE FROM NOTAFISCAL WHERE NUMNF = ' +
            IntToStr(dmnf.cds_nf1NUMNF.AsInteger));
          dm.sqlsisAdimin.Commit(TD);
        except
          on E : Exception do
          begin
            ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
            dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
            exit;
          end;
        end;
        dmnf.DtSrc_NF1.DataSet.Close;
        dmnf.cds_Movimento.Close;
        dmnf.DtSrc_Compra.DataSet.Close;
        dmnf.cds_Mov_det.Close;
        MessageDlg('Registro excluido com sucesso.',mtConfirmation, [mbOK],0);
        close;
      end;
    end
    else
      Abort;
  end;
end;

procedure TformExclusao.dxButton2Click(Sender: TObject);
Var  TD : TTransactionDesc;
str : String;
begin
  if ((DMNF.FormExiste(fNF) = True) or (DMNF.FormExiste(fNotaF) = True)) then
  begin
    if MessageDlg('Atenção, confirmando essa operação o sistema vai alterar o status para'+#13+#10+' "CANCELADO", não será excluido do sistema.',mtConfirmation,
                    [mbYes,mbNo],0) = mrYes then
    begin
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;

      dm.sqlsisAdimin.StartTransaction(TD);
      try
        str := 'UPDATE NOTAFISCAL SET ';
        str := str + ' STATUS = ' + QuotedStr('C');
        str := str + ' WHERE NUMNF = ' + InttoStr(dmnf.cds_nfNUMNF.AsInteger);
        dm.sqlsisAdimin.ExecuteDirect(str);
       if (dmnf.cds_venda.State in [dsBrowse]) then
          dmnf.cds_venda.Edit;
       dmnf.cds_vendaSTATUS.AsInteger := 14;
       dmnf.cds_venda.ApplyUpdates(0);
       if (dmnf.cds_Movimento.State in [dsBrowse]) then
         dmnf.cds_Movimento.Edit;
       dmnf.cds_MovimentoCODNATUREZA.AsInteger := 14;
       dmnf.cds_MovimentoCONTROLE.Clear;
       dmnf.cds_Movimento.ApplyUpdates(0);

        dm.sqlsisAdimin.Commit(TD);
      except
        on E : Exception do
        begin
          ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
          dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
        end;
      end;

    end;
  end
  else if (DMNF.FormExiste(fNotaFc) = True) then
  begin
    if MessageDlg('Atenção, confirmando essa operação o sistema vai alterar o status para'+#13+#10+' "CANCELADO", não será excluido do sistema.',mtConfirmation,
                    [mbYes,mbNo],0) = mrYes then
    begin
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;

      dm.sqlsisAdimin.StartTransaction(TD);
      try
        str := 'UPDATE NOTAFISCAL SET ';
        str := str + ' STATUS = ' + QuotedStr('C');
        str := str + ' WHERE NUMNF = ' + InttoStr(dmnf.cds_nfNUMNF.AsInteger);
        dm.sqlsisAdimin.ExecuteDirect(str);
        dm.sqlsisAdimin.Commit(TD);
      except
        on E : Exception do
        begin
          ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
          dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
        end;
      end;


       if (dmnf.cds_compra.State in [dsBrowse]) then
          dmnf.cds_compra.Edit;
       dmnf.cds_compraSTATUS.AsInteger := 14;
       dmnf.cds_compra.ApplyUpdates(0);
       if (dmnf.cds_Movimento.State in [dsBrowse]) then
         dmnf.cds_Movimento.Edit;
       dmnf.cds_MovimentoCODNATUREZA.AsInteger := 14;
       dmnf.cds_Movimento.ApplyUpdates(0);
    end;
  end;
end;

procedure TformExclusao.dxButton3Click(Sender: TObject);
begin
  close;
end;

end.
