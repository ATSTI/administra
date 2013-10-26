unit uTerminalNTC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvButton, JvTransparentButton, Mask, DBCtrls, StdCtrls,
  JvExStdCtrls, JvEdit, JvValidateEdit, JvExControls, JvLabel, Grids,
  DBGrids, JvExDBGrids, JvDBGrid, jpeg, ExtCtrls, JvExExtCtrls, JvImage,
  ComCtrls, Buttons, JvExButtons, JvBitBtn, MMJPanel, uFiscalCls, uMovimento,
  uVendaCls, DBXpress, JvExMask, JvToolEdit, JvBaseEdits, JvDBControls,
  FMTBcd, DB, SqlExpr, Provider, DBClient, Menus;

type
  TfTerminalNTC = class(TForm)
    MMJPanel5: TMMJPanel;
    MMJPanel2: TMMJPanel;
    JvDBGrid1: TJvDBGrid;
    MMJPanel9: TMMJPanel;
    s_COMANDAS: TSQLDataSet;
    p_COMANDAS: TDataSetProvider;
    c_COMANDAS: TClientDataSet;
    MMJPanel3: TMMJPanel;
    pgc1: TPageControl;
    ts2: TTabSheet;
    pmCaixa: TPopupMenu;
    AbrirCaixa1: TMenuItem;
    EfetuarSangria1: TMenuItem;
    Entrada1: TMenuItem;
    Pagamentos1: TMenuItem;
    Fechamentodecaixa1: TMenuItem;
    pmCad: TPopupMenu;
    Colaboradores1: TMenuItem;
    Comandas1: TMenuItem;
    Suites1: TMenuItem;
    MMJPanel4: TMMJPanel;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    JvLabel4: TJvLabel;
    JvDBCalcEdit4: TJvDBCalcEdit;
    JvDBCalcEdit5: TJvDBCalcEdit;
    JvDBCalcEdit6: TJvDBCalcEdit;
    pmAtalhos: TPopupMenu;
    F10COMANDAS1: TMenuItem;
    F11COLABORADORES1: TMenuItem;
    CtrlPCOMANDAPL1: TMenuItem;
    CtrlCSEMCONSUMO1: TMenuItem;
    MMJPanel6: TMMJPanel;
    JvBitBtn3: TJvBitBtn;
    JvBitBtn2: TJvBitBtn;
    JvImprimir: TJvBitBtn;
    JvBitBtn6: TJvBitBtn;
    JvSair: TJvBitBtn;
    JvBitBtn1: TJvBitBtn;
    FINALIZARVENDA1: TMenuItem;
    N1: TMenuItem;
    FECHARTERMINAL1: TMenuItem;
    IMPRIMIRPRVIA1: TMenuItem;
    JvFinalizar: TJvBitBtn;
    JvExcluir: TJvBitBtn;
    JvBitBtn7: TJvBitBtn;
    MMJPanel7: TMMJPanel;
    JvTransparentButton1: TJvTransparentButton;
    JvTransparentButton2: TJvTransparentButton;
    JvTransparentButton3: TJvTransparentButton;
    JvTransparentButton4: TJvTransparentButton;
    JvTransparentButton5: TJvTransparentButton;
    JvTransparentButton6: TJvTransparentButton;
    JvTransparentButton7: TJvTransparentButton;
    JvTransparentButton8: TJvTransparentButton;
    JvTransparentButton13: TJvTransparentButton;
    JvTransparentButton14: TJvTransparentButton;
    JvTransparentButton15: TJvTransparentButton;
    JvTransparentButton12: TJvTransparentButton;
    JvTransparentButton11: TJvTransparentButton;
    JvTransparentButton10: TJvTransparentButton;
    JvTransparentButton9: TJvTransparentButton;
    JvDBGrid2: TJvDBGrid;
    JvTransparentButton16: TJvTransparentButton;
    s_COMANDASCODMOVIMENTO: TIntegerField;
    s_COMANDASDATAMOVIMENTO: TDateField;
    s_COMANDASCODCLIENTE: TIntegerField;
    s_COMANDASCODNATUREZA: TSmallintField;
    s_COMANDASSTATUS: TSmallintField;
    s_COMANDASCODUSUARIO: TSmallintField;
    s_COMANDASCODVENDEDOR: TSmallintField;
    s_COMANDASCODALMOXARIFADO: TIntegerField;
    s_COMANDASCODFORNECEDOR: TIntegerField;
    s_COMANDASDATA_SISTEMA: TSQLTimeStampField;
    s_COMANDASCOD_VEICULO: TIntegerField;
    s_COMANDASCONTROLE: TStringField;
    s_COMANDASOBS: TStringField;
    s_COMANDASTOTALMOVIMENTO: TFloatField;
    s_COMANDASCODMOVRATEIO: TIntegerField;
    s_COMANDASVALORRATEIO: TFloatField;
    s_COMANDASRATEIO: TFloatField;
    s_COMANDASCONFERIDO: TStringField;
    s_COMANDASNFCOBRANCA: TIntegerField;
    s_COMANDASORDEMATEND: TIntegerField;
    s_COMANDASNFREVENDA: TIntegerField;
    s_COMANDASCODORIGEM: TIntegerField;
    s_COMANDASKM: TStringField;
    s_COMANDASNFE: TStringField;
    s_COMANDASPRAZO_ENT: TIntegerField;
    s_COMANDASVAL_PROP: TDateField;
    s_COMANDASFORMA_PAG: TStringField;
    s_COMANDASVALOR_FRETE: TFloatField;
    s_COMANDASDATA_ENTREGA: TDateField;
    s_COMANDASPRAZO_PAGAMENTO: TStringField;
    s_COMANDASUSER_APROVA: TStringField;
    s_COMANDASCODTRANSP: TIntegerField;
    s_COMANDASTPFRETE: TStringField;
    s_COMANDASCODPEDIDO: TIntegerField;
    s_COMANDASQTD: TIntegerField;
    s_COMANDASCODCOTACAO: TIntegerField;
    s_COMANDASUSUARIOLOGADO: TStringField;
    s_COMANDASTIPO_PEDIDO: TStringField;
    s_COMANDASENTREGA: TStringField;
    s_COMANDASNOMECLIENTE: TStringField;
    ds1: TDataSource;
    EXCLUIRCOMANDA1: TMenuItem;
    JvLabel8: TJvLabel;
    c_COMANDASCODMOVIMENTO: TIntegerField;
    c_COMANDASDATAMOVIMENTO: TDateField;
    c_COMANDASCODCLIENTE: TIntegerField;
    c_COMANDASCODNATUREZA: TSmallintField;
    c_COMANDASSTATUS: TSmallintField;
    c_COMANDASCODUSUARIO: TSmallintField;
    c_COMANDASCODVENDEDOR: TSmallintField;
    c_COMANDASCODALMOXARIFADO: TIntegerField;
    c_COMANDASCODFORNECEDOR: TIntegerField;
    c_COMANDASDATA_SISTEMA: TSQLTimeStampField;
    c_COMANDASCOD_VEICULO: TIntegerField;
    c_COMANDASCONTROLE: TStringField;
    c_COMANDASOBS: TStringField;
    c_COMANDASTOTALMOVIMENTO: TFloatField;
    c_COMANDASCODMOVRATEIO: TIntegerField;
    c_COMANDASVALORRATEIO: TFloatField;
    c_COMANDASRATEIO: TFloatField;
    c_COMANDASCONFERIDO: TStringField;
    c_COMANDASNFCOBRANCA: TIntegerField;
    c_COMANDASORDEMATEND: TIntegerField;
    c_COMANDASNFREVENDA: TIntegerField;
    c_COMANDASCODORIGEM: TIntegerField;
    c_COMANDASKM: TStringField;
    c_COMANDASNFE: TStringField;
    c_COMANDASPRAZO_ENT: TIntegerField;
    c_COMANDASVAL_PROP: TDateField;
    c_COMANDASFORMA_PAG: TStringField;
    c_COMANDASVALOR_FRETE: TFloatField;
    c_COMANDASDATA_ENTREGA: TDateField;
    c_COMANDASPRAZO_PAGAMENTO: TStringField;
    c_COMANDASUSER_APROVA: TStringField;
    c_COMANDASCODTRANSP: TIntegerField;
    c_COMANDASTPFRETE: TStringField;
    c_COMANDASCODPEDIDO: TIntegerField;
    c_COMANDASQTD: TIntegerField;
    c_COMANDASCODCOTACAO: TIntegerField;
    c_COMANDASUSUARIOLOGADO: TStringField;
    c_COMANDASTIPO_PEDIDO: TStringField;
    c_COMANDASENTREGA: TStringField;
    c_COMANDASNOMECLIENTE: TStringField;
    JvLabel3: TJvLabel;
    JvLabel6: TJvLabel;
    JvLabel5: TJvLabel;
    JvLabel7: TJvLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure JvBitBtn6Click(Sender: TObject);
    procedure JvBitBtn2Click(Sender: TObject);
    procedure JvBitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AbrirCaixa1Click(Sender: TObject);
    procedure EfetuarSangria1Click(Sender: TObject);
    procedure Entrada1Click(Sender: TObject);
    procedure Pagamentos1Click(Sender: TObject);
    procedure Fechamentodecaixa1Click(Sender: TObject);
    procedure Colaboradores1Click(Sender: TObject);
    procedure Suites1Click(Sender: TObject);
    procedure Comandas1Click(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure JvSairClick(Sender: TObject);
    procedure FECHARTERMINAL1Click(Sender: TObject);
    procedure F10COMANDAS1Click(Sender: TObject);
    procedure F11COLABORADORES1Click(Sender: TObject);
    procedure JvFinalizarClick(Sender: TObject);
    procedure JvImprimirClick(Sender: TObject);
    procedure JvDBGrid2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure JvDBGrid2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    // Classes utilizadas
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
    var_PERFIL   : string;
    procedure Incluir_Produtos;
    procedure ColocaNomeNosBotoes;
    procedure EditaComandas;
    function  testaPerfil(): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTerminalNTC: TfTerminalNTC;

implementation

uses UDm, uAbrirCaixa, UDM_MOV, uIncluirProdutos, u_mesas, uSuites,
  uCadClientes2, uSangria, uEntradaCaixa, uCrTituloPagto, uMovCaixa,
  uFrequancia, uComanda, uComandaNTC, uColaboradorNTC;

{$R *.dfm}


procedure TfTerminalNTC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  v_ClassePDV.Destroy;
//  v_ClasseMov.Destroy;
end;

procedure TfTerminalNTC.JvBitBtn6Click(Sender: TObject);
var
   XY: TPoint;
begin
   if (testaPerfil = True) then
   begin
     XY := Point(10, -10);
     XY := JvBitBtn6.ClientToScreen(XY);
     pmCaixa.Popup(XY.X, XY.Y + JvBitBtn6.Height - 2);
   end;  
end;

procedure TfTerminalNTC.Incluir_Produtos;
begin
end;

procedure TfTerminalNTC.JvBitBtn2Click(Sender: TObject);
var
   XY: TPoint;
begin
   if (testaPerfil = True) then
   begin
     XY := Point(10, -10);
     XY := JvBitBtn2.ClientToScreen(XY);
     pmCad.Popup(XY.X, XY.Y + JvBitBtn2.Height - 2);
   end;  
end;

procedure TfTerminalNTC.ColocaNomeNosBotoes;
var
  i : integer;
  numeroComp : Smallint;
begin
  numeroComp := 0;
  for i := 0 to  componentCount -1 do
  begin
    if (numeroComp = 0) then
    begin
      if Components[i] is TJvTransparentButton then
      begin
        numeroComp := i-1;
      end;
    end;
  end;
  // Abre a Tabela de cadastro contendo as SUITES
  try
    v_sqlConsulta := TSQLDataSet.Create(DM);
    p_sqlConsulta := TDataSetProvider.Create(DM);
    c_sqlConsulta := TClientDataSet.Create(DM);
    v_sqlConsulta.SQLConnection := dm.sqlsisAdimin;
    p_sqlconsulta.DataSet := v_sqlConsulta;
    p_sqlconsulta.Name := 'pdsp';
    c_sqlConsulta.ProviderName := p_sqlconsulta.Name;

    var_TEXTOSQL := 'SELECT PARAMETRO FROM PARAMETRO WHERE D1 = ' + QuotedStr('SUITES') +
                  ' and D2 <> ' + QuotedStr('S');
    v_sqlConsulta.CommandText := var_TEXTOSQL;
    v_sqlConsulta.Open;
    c_sqlConsulta.Open;
    c_sqlConsulta.First;
    while not (c_sqlConsulta.Eof) do
    begin
      TJvTransparentButton(Components[c_sqlConsulta.RecNo + numeroComp]).Visible := True;
      TJvTransparentButton(Components[c_sqlConsulta.RecNo + numeroComp]).Caption := c_sqlConsulta.Fields[0].AsString;
      TJvTransparentButton(Components[c_sqlConsulta.RecNo + numeroComp]).Font.Name := 'Cooper Black';
      TJvTransparentButton(Components[c_sqlConsulta.RecNo + numeroComp]).Font.Color := clBlack;
      c_sqlConsulta.Next;
    end;
  finally
    v_sqlConsulta.Destroy;
    p_sqlConsulta.Destroy;
    c_sqlConsulta.Destroy;
  end;
end;

procedure TfTerminalNTC.JvBitBtn3Click(Sender: TObject);
begin
   if (testaPerfil = True) then
   begin
      fFrequencia := TfFrequencia.Create(Application);
      try
        fFrequencia.ShowModal;
      finally
        fFrequencia.Free;
      end;
   end;   
end;

procedure TfTerminalNTC.FormShow(Sender: TObject);
begin
   v_ClassePDV := TFiscalCls.Create;
   //  v_ClasseMov := TMovimento.Create;
   ColocaNomeNosBotoes;
   if (v_ClassePDV.VerificaCaixaAberto = True) then
     JvLabel6.Caption := v_ClassePDV.v_NomeCaixa;
   JvLabel7.Caption := nome_user;
   JvLabel3.Caption := 'Caixa      :';
   JvLabel5.Caption := 'Usuário :';
   JvLabel1.Caption := 'Total :';
   JvLabel2.Caption := 'Pago  :';
   JvLabel4.Caption := 'à Pagar :';
   EditaComandas; // Mostas Comandas em Aberto...
   JvLabel8.Caption := c_COMANDASNOMECLIENTE.AsString;   
end;

procedure TfTerminalNTC.AbrirCaixa1Click(Sender: TObject);
begin
  fAbrirCaixa := TfAbrirCaixa.create(Application);
  try
    fAbrirCaixa.ShowModal;
    if (DM.USACONTROLECAIXA = 'SIM') then
    begin
      { if Panel2.Enabled = False then
          Panel2.Enabled := True;
       if MMJPanel6.Enabled = False then
          MMJPanel6.Enabled := True;
          }
    end;
  finally
    fAbrirCaixa.Free;
  end;
end;

procedure TfTerminalNTC.EfetuarSangria1Click(Sender: TObject);
begin
  fSangria := TfSangria.create(Application);
  try
    fSangria.ShowModal;
  finally
    fSangria.Free;
  end;
end;

procedure TfTerminalNTC.Entrada1Click(Sender: TObject);
begin
  fEntradaCaixa := TfEntradaCaixa.create(Application);
  try
    fEntradaCaixa.ShowModal;
  finally
    fEntradaCaixa.Free;
  end;
end;

procedure TfTerminalNTC.Pagamentos1Click(Sender: TObject);
begin
  fcrTituloPagto.ShowModal;
end;

procedure TfTerminalNTC.Fechamentodecaixa1Click(Sender: TObject);
begin
  fMovCaixa := TfMovCaixa.Create(Application);
  try
    fMovCaixa.ShowModal;
  finally
    fMovCaixa.Free;
  end;
end;

procedure TfTerminalNTC.Colaboradores1Click(Sender: TObject);
begin
  fCadClientes2 := TfCadClientes2.Create(Application);
  try
    fCadClientes2.ShowModal;
  finally
    fCadClientes2.Free;
  end;
end;

procedure TfTerminalNTC.Suites1Click(Sender: TObject);
begin
  fSuites := TfSuites.Create(Application);
  try
    fSuites.ShowModal;
  finally
    fSuites.Free;
  end;
end;

procedure TfTerminalNTC.Comandas1Click(Sender: TObject);
begin
  F_MESAS := TF_MESAS.Create(Application);
  try
    F_MESAS.ShowModal;
  finally
    F_MESAS.Free;
  end;
end;

procedure TfTerminalNTC.JvBitBtn1Click(Sender: TObject);
var
   XY: TPoint;
begin
     XY := Point(10, -10);
     XY := JvBitBtn1.ClientToScreen(XY);
     pmAtalhos.Popup(XY.X, XY.Y + JvBitBtn1.Height - 2);
end;

procedure TfTerminalNTC.JvSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfTerminalNTC.FECHARTERMINAL1Click(Sender: TObject);
begin
  JvSair.Click;
end;

procedure TfTerminalNTC.F10COMANDAS1Click(Sender: TObject);
begin
  fComandaNTC := TfComandaNTC.Create(Application);
  try
    fComandaNTC.ShowModal;
  finally
    fComandaNTC.Free;
  end;
end;

procedure TfTerminalNTC.F11COLABORADORES1Click(Sender: TObject);
begin
  fColaboradorNTC := TfColaboradorNTC.Create(Application);
  try
    fColaboradorNTC.ShowModal;
  finally
    fColaboradorNTC.Free;
  end;
end;

function TfTerminalNTC.testaPerfil: Boolean;
var
  perfil : string;
begin
   perfil := '';
   var_PERFIL := '';
   var_PERFIL :=  v_ClassePDV.BuscaPerfilUsuario(nome_user);
   if (DM_MOV.s_parametro.Active) then
      DM_MOV.s_parametro.Close;
   DM_MOV.s_parametro.Params[0].AsString := 'PERFILSEMAUTORIZACAO';
   DM_MOV.s_parametro.Open;
   perfil := DM_MOV.s_parametroD1.AsString;
   DM_MOV.s_parametro.Close;
   if (var_PERFIL = perfil) then
   begin
      ShowMessage('Usuário não tem permissão para acessar este item de menu !');
      perfil := '';
      var_PERFIL := '';
      Result := False;
      Exit;
   end;
   Result := True;
end;

procedure TfTerminalNTC.JvFinalizarClick(Sender: TObject);
begin
   if (testaPerfil = True) then
   begin

   end;
end;

procedure TfTerminalNTC.JvImprimirClick(Sender: TObject);
begin
   if (testaPerfil = True) then
   begin

   end;
end;

procedure TfTerminalNTC.EditaComandas;
begin
    if (c_COMANDAS.Active) then
      c_COMANDAS.Close;
    c_COMANDAS.CommandText := 'SELECT m.*, cl.COD_CLI, cl.NOMECLIENTE FROM MOVIMENTO m ' +
                    ' inner join CLIENTES cl on cl.CODCLIENTE = m.CODCLIENTE ' +
                    ' WHERE m.CODNATUREZA = 3 and m.STATUS = 0 ';
    c_COMANDAS.Open;                
end;

procedure TfTerminalNTC.JvDBGrid2MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   JvLabel8.Caption := c_COMANDASNOMECLIENTE.AsString;
end;

procedure TfTerminalNTC.JvDBGrid2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   JvLabel8.Caption := c_COMANDASNOMECLIENTE.AsString;
end;

end.
