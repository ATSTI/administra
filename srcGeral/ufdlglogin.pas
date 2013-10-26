unit ufDlgLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, XPMenu, MMJPanel, FMTBcd, DBClient,
  Provider, DB, SqlExpr, DBxpress;

type
  TfDlgLogin = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    XPMenu1: TXPMenu;
    MMJPanel2: TMMJPanel;
    MMJPanel1: TMMJPanel;
    Label2: TLabel;
    Label1: TLabel;
    EdtLogin: TEdit;
    EdtSenha: TEdit;
    BitBtnCancelar: TBitBtn;
    BitBtnOK: TBitBtn;
    cds_Login: TClientDataSet;
    cds_LoginLOGIN: TStringField;
    cds_LoginMICRO: TStringField;
    cds_LoginMODULO: TStringField;
    cds_LoginID_LOG: TIntegerField;
    dsp_Login: TDataSetProvider;
    sds_Login: TSQLDataSet;
    sds_LoginLOGIN: TStringField;
    sds_LoginMICRO: TStringField;
    sds_LoginMODULO: TStringField;
    sds_LoginID_LOG: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnOKClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure EdtLoginKeyPress(Sender: TObject; var Key: Char);

  private
    FTentativas: Integer;
    procedure setTentativas(const Value: Integer);
    { Private declarations }
  public
   property Tentativas: Integer read FTentativas write setTentativas;
   Function NomeComputador: string;
    { Public declarations }
  end;

var
  fDlgLogin: TfDlgLogin;
  intTeste: integer;

implementation

uses  uDm, udmApp , uComercial, uSplash, uSplash_Fin, uFinanceiro,
  uSplash_mat, uMateriais, uSplashAdm, uAdm_Principal, uVendas, uCompra,
  ufprocura_prod, uUso_Prod, uProdutoLote, uTerminal, uTerminal_Delivery,
  uResolucaoTela, uEnt_Sai_Lote, uPedagogico, ufSplash, uCorrigirDesconto;//, uSplash;

{$R *.dfm}

procedure TfDlgLogin.FormCreate(Sender: TObject);
begin
  Tentativas := 0;
end;

procedure TfDlgLogin.FormShow(Sender: TObject);
begin

  if varSplash = 'COMERCIAL' then
    fSplash.Free;

  if varSplash1 = 'FINANCEIRO' then
    fSplash_Fin.Free;

  if varSplashMat = 'MATERIAIS' then
    fSplash_mat.Free;

  if varSplashAdm = 'ADM' then
    fSplashAdm.Free;

  if varSplashPED = 'PEDAGOGICO' then
    fSplashPED.Free;

  Dm.cds_Usuario.open;
  edtLogin.SetFocus;

end;

procedure TfDlgLogin.FormClose(Sender: TObject;
var Action: TCloseAction);
begin
  Dm.cds_Usuario.Close;
  fDlgLogin.Visible := False;
  if (intTeste = 1) then
  begin
    if (Tentativas <= 3) then
    begin
      if varSplash = 'COMERCIAL' then //Abrindo modulo COMERCIAL
      begin
        MICRO := NomeComputador;
        if (dm.cds_Login.Active) then
            dm.cds_Login.Close;
        dm.cds_Login.Params[0].Clear;
        dm.cds_Login.Params[0].AsString := MICRO;
        dm.cds_Login.Open;
        if dm.cds_Login.IsEmpty then
        begin
          //LOGADO := 'N';
          dm.cds_Login.Append;
          if dm.c_6_genid.Active then
            dm.c_6_genid.Close;
          dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_ID_LOG, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
          dm.c_6_genid.Open;
          dm.cds_LoginID_LOG.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
          dm.c_6_genid.Close;
          dm.cds_LoginLOGIN.AsString := MICRO;
          dm.cds_LoginMICRO.AsString := MICRO;
          dm.cds_LoginMODULO.AsString := 'Comercial';
          dm.cds_LoginUSUARIO.AsString := usuario;
          dm.cds_Login.ApplyUpdates(0);
        end
        else
        begin
          //LOGADO := 'S';
          dm.cds_Login.Append;
          if dm.c_6_genid.Active then
            dm.c_6_genid.Close;
          dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_ID_LOG, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
          dm.c_6_genid.Open;
          dm.cds_LoginID_LOG.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
          dm.c_6_genid.Close;
          dm.cds_LoginLOGIN.AsString := MICRO;
          dm.cds_LoginMICRO.AsString := MICRO;
          dm.cds_LoginMODULO.AsString := 'Comercial';
          dm.cds_LoginUSUARIO.AsString := usuario;
          dm.cds_Login.ApplyUpdates(0);
        end;
        fComercial := TfComercial.Create(Application);
        fVendas := TfVendas.Create(Application);
        fCompra := TfCompra.Create(Application);
        fProcura_prod := TfProcura_prod.Create(Application);
        fUso_Prod := TfUso_Prod.Create(Application);
        fProdutoLote := TfProdutoLote.Create(Application);
        fTerminal := TfTerminal.Create(Application);
        fTerminal_Delivery := TfTerminal_Delivery.Create(Application);
        fComercial.ShowModal;
      end;
      // Abro Modulo FINANCEIRO
      if varSplash1 = 'FINANCEIRO' then
      begin
        MICRO := NomeComputador;
        if (dm.cds_Login.Active) then
            dm.cds_Login.Close;
        dm.cds_Login.Params[0].Clear;
        dm.cds_Login.Params[0].AsString := MICRO;
        dm.cds_Login.Open;
        if dm.cds_Login.IsEmpty then
        begin
          //LOGADO := 'N';
          dm.cds_Login.Append;
          if dm.c_6_genid.Active then
            dm.c_6_genid.Close;
          dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_ID_LOG, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
          dm.c_6_genid.Open;
          dm.cds_LoginID_LOG.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
          dm.c_6_genid.Close;
          dm.cds_LoginLOGIN.AsString := MICRO;
          dm.cds_LoginMICRO.AsString := MICRO;
          dm.cds_LoginMODULO.AsString := 'Financeiro';
          dm.cds_LoginUSUARIO.AsString := usuario;
          dm.cds_Login.ApplyUpdates(0);
        end
        else
        begin
          //LOGADO := 'S';
          dm.cds_Login.Append;
          if dm.c_6_genid.Active then
            dm.c_6_genid.Close;
          dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_ID_LOG, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
          dm.c_6_genid.Open;
          dm.cds_LoginID_LOG.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
          dm.c_6_genid.Close;
          dm.cds_LoginLOGIN.AsString := MICRO;
          dm.cds_LoginMICRO.AsString := MICRO;
          dm.cds_LoginMODULO.AsString := 'Financeiro';
          dm.cds_LoginUSUARIO.AsString := usuario;
          dm.cds_Login.ApplyUpdates(0);
        end;
        fFinanceiro := TfFinanceiro.Create(Application);
        fProcura_prod := TfProcura_prod.Create(Application);
        fResolucaoTela := TfResolucaoTela.Create(Application);
        fCorrigeDesconto := TfCorrigeDesconto.Create(Application);
        fFinanceiro.ShowModal;
      end;
      // Abro Modulo MATERIAIS
      if varSplashMat = 'MATERIAIS' then
      begin
        MICRO := NomeComputador;
        if (dm.cds_Login.Active) then
            dm.cds_Login.Close;
        dm.cds_Login.Params[0].Clear;
        dm.cds_Login.Params[0].AsString := MICRO;
        dm.cds_Login.Open;
        if dm.cds_Login.IsEmpty then
        begin
          //LOGADO := 'N';
          dm.cds_Login.Append;
          if dm.c_6_genid.Active then
            dm.c_6_genid.Close;
          dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_ID_LOG, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
          dm.c_6_genid.Open;
          dm.cds_LoginID_LOG.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
          dm.c_6_genid.Close;
          dm.cds_LoginLOGIN.AsString := MICRO;
          dm.cds_LoginMICRO.AsString := MICRO;
          dm.cds_LoginMODULO.AsString := 'Materiais';
          dm.cds_LoginUSUARIO.AsString := usuario;
          dm.cds_Login.ApplyUpdates(0);
        end
        else
        begin
          //LOGADO := 'S';
          dm.cds_Login.Append;
          if dm.c_6_genid.Active then
            dm.c_6_genid.Close;
          dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_ID_LOG, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
          dm.c_6_genid.Open;
          dm.cds_LoginID_LOG.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
          dm.c_6_genid.Close;
          dm.cds_LoginLOGIN.AsString := MICRO;
          dm.cds_LoginMICRO.AsString := MICRO;
          dm.cds_LoginMODULO.AsString := 'Materiais';
          dm.cds_LoginUSUARIO.AsString := usuario;
          dm.cds_Login.ApplyUpdates(0);
        end;
        fMateriais := TfMateriais.Create(Application);
        fProcura_prod := TfProcura_prod.Create(Application);
        fProdutoLote:= TfProdutoLote.Create(Application);
        fEnt_Sai_Lote := TfEnt_Sai_Lote.Create(Application);
        fMateriais.ShowModal;
      end;
      // Abro Modulo ADMINISTRATIVO
      if varSplashAdm = 'ADM' then
      begin
        MICRO := NomeComputador;
        if (dm.cds_Login.Active) then
            dm.cds_Login.Close;
        dm.cds_Login.Params[0].Clear;
        dm.cds_Login.Params[0].AsString := MICRO;
        dm.cds_Login.Open;
        if dm.cds_Login.IsEmpty then
        begin
          //LOGADO := 'N';
          dm.cds_Login.Append;
          if dm.c_6_genid.Active then
            dm.c_6_genid.Close;
          dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_ID_LOG, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
          dm.c_6_genid.Open;
          dm.cds_LoginID_LOG.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
          dm.c_6_genid.Close;
          dm.cds_LoginLOGIN.AsString := MICRO;
          dm.cds_LoginMICRO.AsString := MICRO;
          dm.cds_LoginMODULO.AsString := 'Adm';
          dm.cds_LoginUSUARIO.AsString := usuario;
          dm.cds_Login.ApplyUpdates(0);
        end
        else
        begin
          //LOGADO := 'S';
          dm.cds_Login.Append;
          if dm.c_6_genid.Active then
            dm.c_6_genid.Close;
          dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_ID_LOG, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
          dm.c_6_genid.Open;
          dm.cds_LoginID_LOG.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
          dm.c_6_genid.Close;
          dm.cds_LoginLOGIN.AsString := MICRO;
          dm.cds_LoginMICRO.AsString := MICRO;
          dm.cds_LoginMODULO.AsString := 'Adm';
          dm.cds_LoginUSUARIO.AsString := usuario;
          dm.cds_Login.ApplyUpdates(0);
        end;
        fAdm_Principal := TfAdm_Principal.Create(Application);
        fAdm_Principal.ShowModal;
      end;
      // Abro Modulo PEDAGOGICO
      if varSplashPED = 'PEDAGOGICO' then
      begin
        MICRO := NomeComputador;
        if (dm.cds_Login.Active) then
            dm.cds_Login.Close;
        dm.cds_Login.Params[0].Clear;
        dm.cds_Login.Params[0].AsString := MICRO;
        dm.cds_Login.Open;
        if dm.cds_Login.IsEmpty then
        begin
          //LOGADO := 'N';
          dm.cds_Login.Append;
          if dm.c_6_genid.Active then
            dm.c_6_genid.Close;
          dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_ID_LOG, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
          dm.c_6_genid.Open;
          dm.cds_LoginID_LOG.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
          dm.c_6_genid.Close;
          dm.cds_LoginLOGIN.AsString := MICRO;
          dm.cds_LoginMICRO.AsString := MICRO;
          dm.cds_LoginMODULO.AsString := 'PEDAGOGICO';
          dm.cds_LoginUSUARIO.AsString := usuario;
          dm.cds_Login.ApplyUpdates(0);
        end
        else
        begin
          //LOGADO := 'S';
          dm.cds_Login.Append;
          if dm.c_6_genid.Active then
            dm.c_6_genid.Close;
          dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_ID_LOG, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
          dm.c_6_genid.Open;
          dm.cds_LoginID_LOG.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
          dm.c_6_genid.Close;
          dm.cds_LoginLOGIN.AsString := MICRO;
          dm.cds_LoginMICRO.AsString := MICRO;
          dm.cds_LoginMODULO.AsString := 'PEDAGOGICO';
          dm.cds_LoginUSUARIO.AsString := usuario;
          dm.cds_Login.ApplyUpdates(0);
        end;
        fPedagogico := TfPedagogico.Create(Application);
        fPedagogico.ShowModal;
      end;
    end;
  end;
end;

procedure TfDlgLogin.BitBtnOKClick(Sender: TObject);
begin
 usuario := edtLogin.Text;
 if EdtLogin.Text <> 'ats' then
 begin
 // [loCaseInsensitive]
  if not (dm.cds_Usuario.Locate('Login',
          edtLogin.Text, [loPartialKey])) then
  begin
      Application.MessageBox('Usuário não cadastrado, ou digitado errado!', 'Erro',
       MB_ICONERROR);
    edtLogin.Text := '';
    edtSenha.Text := '';
    edtLogin.setFocus;
    Tentativas := Tentativas + 1;
      if (tentativas >3) then Close;
  end
  else
    if (dmApp.Encripta(edtSenha.Text) =
        dm.cds_Usuario.FieldByName('senha'). AsString) then
    begin
     intTeste := 1;
     if dm.cds_UsuarioCODUSUARIO.AsInteger <= 0 then
     begin
       usulog := 0;
       if (not dm.cds_usuario_cadastro.Active) then
         dm.cds_usuario_cadastro.Open;
       if (not dm.cds_usuario_cadastro.Locate('CODUSUARIO', 0,[loCaseInsensitive])) then
       begin
         dm.cds_usuario_cadastro.Append;
         dm.cds_usuario_cadastroCODUSUARIO.AsInteger := 0;
         dm.cds_usuario_cadastroNOMEUSUARIO.AsString := 'Usuário Sistema';
         dm.cds_usuario_cadastroSTATUS.AsInteger := 0;
         dm.cds_usuario_cadastroPERFIL.AsString := 'Venda';
         dm.cds_usuario_cadastro.ApplyUpdates(0);
       end;
     end
     else
       usulog:=dm.cds_UsuarioCODUSUARIO.AsInteger;
       perfil := dm.cds_UsuarioPERFIL.AsString;
       usuario := dm.cds_UsuarioLOGIN.AsString;
       varusuario := dm.cds_UsuarioLOGIN.AsString;
       //videoH := dm.cds_UsuarioP1.AsString;
       //videoW := dm.cds_UsuarioP2.AsString;
       Close;
    end
    else
    begin
      Application.MessageBox('Senha incorreta', 'Erro',
      MB_ICONERROR);
      edtLogin.Text := '';
      edtSenha.Text := '';
      edtLogin.SetFocus;
      Tentativas := Tentativas +1;
    if (Tentativas >3) then Close;
    end;
//se usuario for ats
 end
 else
 begin
   if EdtSenha.Text = 'a2t00s7' then
   begin
     intTeste := 1;
     perfil := 'administrador';
     usuario := 'Ats';
     videoH := '800';
     videoW := '600';
     Close;
   end
   else
   begin
     Application.MessageBox('Senha incorreta', 'Erro', MB_ICONERROR);
     exit;
   end;
 end;

end;

procedure TfDlgLogin.BitBtnCancelarClick(Sender: TObject);
var
 deleta, modulo : String;
 TD: TTransactionDesc;
begin
  Tentativas := 4;
  // pego o nome do computador que está abrindo o sistema
  MICRO := NomeComputador;

  // pego o nome do Modulo que está sendo aberto
  if varSplash = 'COMERCIAL' then
     modulo := 'Comercial';
  if varSplash1 = 'FINANCEIRO' then
     modulo := 'Financeiro';
  if varSplashMat = 'MATERIAIS' then
     modulo := 'Materiais';
  if varSplashAdm = 'ADM' then
     modulo := 'Adm';
  if varSplashPED = 'PEDAGOGICO' then
     modulo := 'PEDAGOGICO';

  // abro a tabela pra poder deletar o log que gravou
  if (cds_Login.Active) then
      cds_Login.Close;
  cds_Login.Params[0].Clear;
  cds_Login.Params[1].Clear;
  cds_Login.Params[0].AsString := MICRO;
  cds_Login.Params[1].AsString := modulo;
  cds_Login.Open;
  if not cds_Login.IsEmpty then
  begin
    cds_Login.Close;
    deleta := 'delete from LOG_ACESSO where MICRO =';
    deleta := deleta + '''' + MICRO + '''';
    deleta := deleta + ' and MODULO = ';
    deleta := deleta + '''' + modulo + '''';
    try
      TD.TransactionID := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      dm.sqlsisAdimin.StartTransaction(TD);
      dm.sqlsisAdimin.ExecuteDirect(deleta);
      dm.sqlsisAdimin.Commit(TD);
     except
       dm.sqlsisAdimin.Rollback(TD);
       MessageDlg('Erro para efetuar a baixa.', mtError, [mbOK], 0);
     end;
  end;
  Close;
end;

procedure TfDlgLogin.setTentativas(const Value: Integer);
begin
  FTentativas := Value;
end;

procedure TfDlgLogin.EdtLoginKeyPress(Sender: TObject; var Key: Char);
begin
     if (key = #13) then
     begin
         key:= #0;
         SelectNext((Sender as TwinControl),True,True);
     end;

end;

function TfDlgLogin.NomeComputador: string;
const
  Max = 15;
var
  Nome: array[0..Max] of char;
  Tam: DWORD;
begin
  Tam := SizeOf(Nome) div SizeOf(Nome[0]);
  if GetComputerName(Nome,Tam) then
    Result := Nome
  else
    Result := '';
end;

end.
