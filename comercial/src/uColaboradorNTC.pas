unit uColaboradorNTC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExControls, JvLabel, ExtCtrls, MMJPanel, uFiscalCls,
  uMovimento, uVendaCls, DB, SqlExpr, Provider, DBClient, DBXpress,
  JvComponentBase, JvFormTransparent;

type
  TfColaboradorNTC = class(TForm)
    MMJPanel9: TMMJPanel;
    JvLabel3: TJvLabel;
    edtCodBarra: TEdit;
    JvTransparentForm1: TJvTransparentForm;
    procedure edtCodBarraKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    v_ClassePDV   : TFiscalCls;
    v_ClasseMov   : TMovimento;
    v_ClasseVenda : TVendaCls;
    v_sqlConsulta : TSQLDataSet;
    p_sqlconsulta : TDataSetProvider;
    c_sqlConsulta : TClientDataSet;
    // Variaveis
    var_codMovimento : Integer;
    TD: TTransactionDesc;
    var_TEXTOSQL : string;
    procedure EditaComanda;
    procedure InsereComanda;
    procedure Incluir_Produtos;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fColaboradorNTC: TfColaboradorNTC;

implementation

uses UDM_MOV, UDm;

{$R *.dfm}

procedure TfColaboradorNTC.EditaComanda;
begin
   if (DM_MOV.c_movimento.Active) then
       DM_MOV.c_movimento.Close;
   var_TEXTOSQL := 'select mov.* ,cli.NOMECLIENTE,usu.NOMEUSUARIO from MOVIMENTO mov ' +
                   'inner join CLIENTES cli on cli.CODCLIENTE = mov.CODCLIENTE ' +
                   'inner join USUARIO usu on usu.CODUSUARIO= mov.CODUSUARIO ' +
                   'where mov.CODMOVIMENTO = ' + IntToStr(v_ClassePDV.v_CodMovimento);
   DM_MOV.c_movimento.CommandText := var_TEXTOSQL;
   DM_MOV.c_movimento.Open;

   if (DM_MOV.c_movdet.Active) then
     DM_MOV.c_movdet.Close;
   DM_MOV.c_movdet.Params[0].AsInteger := v_ClassePDV.v_CodMovimento;
   DM_MOV.c_movdet.Open;
end;

procedure TfColaboradorNTC.edtCodBarraKeyPress(Sender: TObject; var Key: Char);
begin
   if (Key = #27) then
   begin
      Close;
   end
   else
   begin
     // se a tecla precionada não for numero e nem o Enter =#13 executa o tab = pula para proximo campo
     if ((not (Key in['0'..'9',Chr(8)])) and (key <> #13)) then
        Key:= #0;

     if (key = #13) then
     begin
       if (edtCodBarra.Text = '') then
       begin
         ShowMessage('Digite o código do COLABORADOR');
         Exit;
       end;

       if (v_ClassePDV.VerificaCaixaAberto = False) then
       begin
         ShowMessage('não existe "CAIXA" aberto');
         Exit;
       end;
       //v_ClassePDV.var_TipoCliente := 0; // Clientes
       v_ClassePDV.var_TipoCliente := 2; // Colaborador

       if (v_ClassePDV.PegaStatusdoMovimento(StrToInt(edtCodBarra.Text), v_ClassePDV.v_DataCaixa) = 'SEMAUTORIZACAO') then
       begin
         ShowMessage('Usuario não tem Permissão para abertura de "COLABORADORES"');
         Exit;
       end;
       if (v_ClassePDV.PegaStatusdoMovimento(StrToInt(edtCodBarra.Text), v_ClassePDV.v_DataCaixa) = 'FINALIZADA') then
       begin
         ShowMessage('Comanda Finalizada');
         Exit;
       end;
       if (v_ClassePDV.PegaStatusdoMovimento(StrToInt(edtCodBarra.Text), v_ClassePDV.v_DataCaixa) = 'CANCELADA') then
       begin
         ShowMessage('Comanda Cancelada');
         Exit;
       end;
       if (v_ClassePDV.PegaStatusdoMovimento(StrToInt(edtCodBarra.Text), v_ClassePDV.v_DataCaixa) = 'BLOQUEADO') then
       begin
         ShowMessage('Colaborador Bloqueado para consumo.');
         Exit;
       end;
       if (v_ClassePDV.PegaStatusdoMovimento(StrToInt(edtCodBarra.Text), v_ClassePDV.v_DataCaixa) = 'ABERTA') then
       begin
          EditaComanda;
          if (MessageDlg('Lançar produtos ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
            Incluir_Produtos;
       end;
       if (v_ClassePDV.PegaStatusdoMovimento(StrToInt(edtCodBarra.Text), v_ClassePDV.v_DataCaixa) = 'ABRIRCOMANDA') then
       begin
          InsereComanda;
          EditaComanda;
          if (MessageDlg('Lançar produtos ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
            Incluir_Produtos;
       end;
     end;
   end;
end;

procedure TfColaboradorNTC.Incluir_Produtos;
begin
 {
  fIncluirProdutos := TfIncluirProdutos.Create(Application);
  try
     fIncluirProdutos.ShowModal;
  finally
     fIncluirProdutos.Free;
  end;
  }
end;

procedure TfColaboradorNTC.InsereComanda;
begin
  v_ClassePDV.var_TipoCliente := 2; // Colaborador
  v_ClasseMov.CodCliente := v_ClassePDV.PegaCodigoCliente(edtCodBarra.Text, v_ClassePDV.var_TipoCliente);
  v_ClasseMov.Status := 0;
  v_ClasseMov.CodNatureza := 3; // Venda
  v_ClasseMov.CodCCusto := v_ClassePDV.v_Cod_Caixa;
  v_ClasseMov.CodUsuario := usulog;
  v_ClasseMov.DataMov := v_ClassePDV.v_DataCaixa;
  v_ClasseMov.TipoPedido := 'F'; //C = Comanda F = Funcionarios

  try
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
    var_codMovimento := v_ClasseMov.inserirMovimento(0); //Zero insere novo movimento e retorna o codMovimento
    dm.sqlsisAdimin.Commit(TD);
  except
    on E : Exception do
    begin
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
    end;
  end;
end;

procedure TfColaboradorNTC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  v_ClassePDV.Destroy;
  v_ClasseMov.Destroy;
end;

procedure TfColaboradorNTC.FormShow(Sender: TObject);
begin
   v_ClassePDV := TFiscalCls.Create;
   v_ClasseMov := TMovimento.Create;
end;

end.
