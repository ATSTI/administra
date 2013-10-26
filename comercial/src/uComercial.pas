unit uComercial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Menus, XPMenu, dxCore, dxButton, ExtCtrls, MMJPanel,DB,
  Buttons, StdCtrls, FMTBcd, DBClient, Provider, SqlExpr, EOneInst, ImgList,
  rpcompobase, rpvclreport, DBxpress, UCBase, ActnList, EAppProt,
  JvExControls, JvLabel, RxGIF;

type
  TfComercial = class(TForm)
    XPMenu1: TXPMenu;
    PopupMenu1: TPopupMenu;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Clientes: TMenuItem;
    Fornecedores: TMenuItem;
    produtos: TMenuItem;
    usoprod: TMenuItem;
    comissao: TMenuItem;
    Agenda: TMenuItem;
    Lanamentos1: TMenuItem;
    compras: TMenuItem;
    venda: TMenuItem;
    NotasFiscais: TMenuItem;
    Relatrios1: TMenuItem;
    Ajuda1: TMenuItem;
    SobreoSistema1: TMenuItem;
    Ajuda2: TMenuItem;
    StatusBar1: TStatusBar;
    transportadoras: TMenuItem;
    MMJPanel1: TMMJPanel;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    dxButton3: TdxButton;
    MMJPanel2: TMMJPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    dxButton4: TdxButton;
    dxButton5: TdxButton;
    Terminal: TMenuItem;
    Sair1: TMenuItem;
    Vendas1: TMenuItem;
    sds_parametro: TSQLDataSet;
    sds_parametroDESCRICAO: TStringField;
    sds_parametroPARAMETRO: TStringField;
    sds_parametroCONFIGURADO: TStringField;
    sds_parametroDADOS: TStringField;
    sds_parametroD1: TStringField;
    sds_parametroD2: TStringField;
    sds_parametroD3: TStringField;
    sds_parametroD4: TStringField;
    sds_parametroD5: TStringField;
    sds_parametroD6: TStringField;
    sds_parametroD7: TStringField;
    sds_parametroD8: TStringField;
    sds_parametroD9: TStringField;
    sds_parametroINSTRUCOES: TStringField;
    dsp: TDataSetProvider;
    cds_parametro: TClientDataSet;
    cds_parametroDESCRICAO: TStringField;
    cds_parametroPARAMETRO: TStringField;
    cds_parametroCONFIGURADO: TStringField;
    cds_parametroDADOS: TStringField;
    cds_parametroD1: TStringField;
    cds_parametroD2: TStringField;
    cds_parametroD3: TStringField;
    cds_parametroD4: TStringField;
    cds_parametroD5: TStringField;
    cds_parametroD6: TStringField;
    cds_parametroD7: TStringField;
    cds_parametroD8: TStringField;
    cds_parametroD9: TStringField;
    cds_parametroINSTRUCOES: TStringField;
    Estoque1: TMenuItem;
    N1: TMenuItem;
    Compras1: TMenuItem;
    SriaNotaFiscal1: TMenuItem;
    NotasFiscais1: TMenuItem;
    Timer1: TTimer;
    ImageList1: TImageList;
    RelatriodeVendasporProduto1: TMenuItem;
    Lotes1: TMenuItem;
    RelatrioListadeProdutos1: TMenuItem;
    RelatrioListadeProdporLote1: TMenuItem;
    ListaClientes1: TMenuItem;
    VCLReport_lista_produtos: TVCLReport;
    ListausoProduto1: TMenuItem;
    erminal1: TMenuItem;
    SpeedButton4: TSpeedButton;
    Clientes1: TMenuItem;
    RelatrioVendasprSrieSubGrupoetc1: TMenuItem;
    sds_Login: TSQLDataSet;
    sds_LoginLOGIN: TStringField;
    sds_LoginMICRO: TStringField;
    sds_LoginMODULO: TStringField;
    sds_LoginID_LOG: TIntegerField;
    dsp_Login: TDataSetProvider;
    cds_Login: TClientDataSet;
    cds_LoginLOGIN: TStringField;
    cds_LoginMICRO: TStringField;
    cds_LoginMODULO: TStringField;
    cds_LoginID_LOG: TIntegerField;
    dxButton6: TdxButton;
    Visitas1: TMenuItem;
    SpeedButton5: TSpeedButton;
    Romaneio1: TMenuItem;
    EvOneInstance1: TEvOneInstance;
    RelatrioNotasCompras1: TMenuItem;
    sds_video: TSQLDataSet;
    sds_parametroLOGIN: TStringField;
    sds_parametroSENHA: TStringField;
    sds_parametroPERFIL: TStringField;
    sds_parametroCODUSUARIO: TIntegerField;
    sds_videoMICRO: TStringField;
    sds_videoP1: TStringField;
    sds_videoP2: TStringField;
    dsp_video: TDataSetProvider;
    cds_video: TClientDataSet;
    cds_parametroLOGIN: TStringField;
    cds_parametroSENHA: TStringField;
    cds_parametroPERFIL: TStringField;
    cds_parametroCODUSUARIO: TIntegerField;
    cds_videoMICRO: TStringField;
    cds_videoP1: TStringField;
    cds_videoP2: TStringField;
    ListadeCompras1: TMenuItem;
    RelatriodeCompras1: TMenuItem;
    CorrigirEstoque1: TMenuItem;
    RelatriodeComprasVendaICMS1: TMenuItem;
    mnDevCompra: TMenuItem;
    DevolucaoVendas1: TMenuItem;
    UserControlComercial: TUserControl;
    N2: TMenuItem;
    Usuarios1: TMenuItem;
    rocarSenha1: TMenuItem;
    RocarUsuarioLogOff1: TMenuItem;
    Historico1: TMenuItem;
    Botoes: TActionList;
    acCompras: TAction;
    acVendas: TAction;
    acNFiscais: TAction;
    acTerminal: TAction;
    acEstoque: TAction;
    acClientes: TAction;
    acAgenda: TAction;
    EvAppProtect1: TEvAppProtect;
    acNFExporta: TAction;
    NotaFiscalExporta1: TMenuItem;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure ClientesClick(Sender: TObject);
    procedure FornecedoresClick(Sender: TObject);
    procedure produtosClick(Sender: TObject);
    procedure comissaoClick(Sender: TObject);
    procedure SriaNotaFiscal1Click(Sender: TObject);
    procedure transportadorasClick(Sender: TObject);
    procedure AgendaClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure StatusBar1DrawPanel(StatusBar: TStatusBar;
      Panel: TStatusPanel; const Rect: TRect);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SobreoSistema1Click(Sender: TObject);
    procedure usoprodClick(Sender: TObject);
    procedure RelatriodeVendasporProduto1Click(Sender: TObject);
    procedure Lotes1Click(Sender: TObject);
    procedure RelatrioListadeProdutos1Click(Sender: TObject);
    procedure RelatrioListadeProdporLote1Click(Sender: TObject);
    procedure ListaClientes1Click(Sender: TObject);
    procedure ListausoProduto1Click(Sender: TObject);
    procedure RelatrioVendasprSrieSubGrupoetc1Click(Sender: TObject);
    procedure dxButton6Click(Sender: TObject);
    procedure Visitas1Click(Sender: TObject);
    procedure Romaneio1Click(Sender: TObject);
    procedure RelatrioNotasCompras1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ListadeCompras1Click(Sender: TObject);
    procedure RelatriodeCompras1Click(Sender: TObject);
    procedure CorrigirEstoque1Click(Sender: TObject);
    procedure RelatriodeComprasVendaICMS1Click(Sender: TObject);
    procedure mnDevCompraClick(Sender: TObject);
    procedure DevolucaoVendas1Click(Sender: TObject);
    procedure acComprasExecute(Sender: TObject);
    procedure acVendasExecute(Sender: TObject);
    procedure acNFiscaisExecute(Sender: TObject);
    procedure acTerminalExecute(Sender: TObject);
    procedure acEstoqueExecute(Sender: TObject);
    procedure acClientesExecute(Sender: TObject);
    procedure acAgendaExecute(Sender: TObject);
    procedure acNFExportaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function GetVersion: string;
    Function NomeComputador: string;
  end;

var
  fComercial: TfComercial;
  //ScreenHeight: LongInt;
  //ScreenWidth: LongInt;
  //usuario_logado: SmallInt;

implementation

uses uVendas, ufprocura_prod, uVendaFinalizar, uMostra_Contas, uCheques_bol,
  uClienteCadastro, uFornecedorCadastro, uProdutoCadastro,
  uComissaoCadastro, uCompra, uCompraFinalizar, uSeriaNF, uRateioPag, UDm,
  uftransp, ufNotafiscalProc, uSobre, uUso_Prod, uRelVendas, uITENS_NF,
  uLotes, uTerminal, uListaClientes, ufListaProd, uRel_vendas,
  uTerminal_Delivery, uTipoVisita, uAgendamento, uRomaneio, ufDlgLogin,
  uFiltroMovimento, uListadeCompra, uRel, uEstoqueCorrige, uTerminalLoja,
  uLote, uNotaFiscalExporta, sCtrlResize;

{$R *.dfm}

(**********************************************************************)
Function Saudacao : string;
begin
 result:='Boa-noite!';
 if (time>=0.25) and (time<0.5) then result:='Bom-dia!';
 if (time>=0.5) and (time<0.80) then result:='Boa-tarde!';
end;
(**********************************************************************)

Procedure FormResize(Sender: TObject); var R : TRect; DC : HDc; Canv : TCanvas;
begin
  R := Rect( 0, 0, Screen.Width, Screen.Height );
  DC := GetWindowDC( GetDeskTopWindow );
  Canv := TCanvas.Create;
  Canv.Handle := DC;
  Canv.CopyRect(R,Canv,R);
  ReleaseDC( GetDeskTopWindow, DC );
end;


procedure TfComercial.FormCreate(Sender: TObject);
begin
  sCtrlResize.CtrlResize(TForm(fComercial));
  DM.MODULOUSERCONTROL := 'comercial';
  //Label3.Caption := ' ATS - Admin versão: ' + GetVersion;
  StatusBar1.Panels[2].Text:=Saudacao+' Hoje é '+formatdatetime('dddddd',date);
  if (dm.moduloUsado = 'AUTOMOTIVA') then
  begin
    dxButton2.Caption := 'Ordem Serv.(CTRL+V)';
    dxButton5.Caption := 'Proc. Peças(CTRL+E)';
    //dxButton4.Enabled := False;
    dxButton6.Enabled := False;
    MainMenu1.Items.Items[0].Items[4].Caption := 'Cad. Peças/Serviços';
  end;
  if (dm.moduloUsado = 'CITRUS') then
  begin
    dxButton1.Caption := 'Ent./Colheita(CTRL+C)';
    dxButton5.Caption := 'Proc. Frutos(CTRL+E)';
    dxButton6.Enabled := False;
    MainMenu1.Items.Items[0].Items[4].Caption := 'Cad. Frutas';
  end;

end;

procedure TfComercial.SpeedButton3Click(Sender: TObject);
var
 deleta : String;
 TD: TTransactionDesc;
begin
  if MessageDlg('Você realmente deseja encerrar o sistema ?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
    MICRO := NomeComputador;
    if (cds_Login.Active) then
        cds_Login.Close;
    cds_Login.Params[0].Clear;
    cds_Login.Params[1].Clear;
    cds_Login.Params[0].AsString := MICRO;
    cds_Login.Params[0].AsString := 'Comercial';
    cds_Login.Open;
    if not dm.cds_Login.IsEmpty then
    begin
        cds_Login.Close;
        deleta := 'delete from LOG_ACESSO where MICRO =';
        deleta := deleta + '''' + MICRO + '''';
        deleta := deleta + ' and MODULO = ';
        deleta := deleta + QuotedStr('Comercial');
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
    Application.Terminate;
  end
  else
   abort;
end;

procedure TfComercial.ClientesClick(Sender: TObject);
begin
  if (varform <> '') then
    varform := '';
  fClienteCadastro := TfClienteCadastro.Create(Application);
  try
    fClienteCadastro.ShowModal;
  finally
    fClienteCadastro.Free;
    varform := '';
  end;
end;

procedure TfComercial.FornecedoresClick(Sender: TObject);
begin
  fFornecedorCadastro := TfFornecedorCadastro.Create(Application);
  try
    fFornecedorCadastro.ShowModal;
  finally
    fFornecedorCadastro.Free;
  end;
end;

procedure TfComercial.produtosClick(Sender: TObject);
begin
  fProdutoCadastro := TfProdutoCadastro.Create(Application);
  try
    fProdutoCadastro.ShowModal;
  finally
    fProdutoCadastro.Free;
  end;
end;

procedure TfComercial.comissaoClick(Sender: TObject);
begin
  fComissaoCadastro := TfComissaoCadastro.Create(Application);
  try
    fComissaoCadastro.ShowModal;
  finally
    fComissaoCadastro.Free;
  end;
end;

procedure TfComercial.SriaNotaFiscal1Click(Sender: TObject);
begin
 fSeriaNF := TfSeriaNF.Create(Application);
 try
  fSeriaNF.ShowModal;
 finally
  fSeriaNF.Free;
 end;
end;

procedure TfComercial.transportadorasClick(Sender: TObject);
begin
   ftransp := Tftransp.Create(Application);
   try
     ftransp.ShowModal;
   finally
     ftransp.Free;
   end;
end;

procedure TfComercial.AgendaClick(Sender: TObject);
begin
  WinExec('C:\home\sisAdmin\Agenda\PrjtAgenda.EXE', SW_SHOWNORMAL);
end;

procedure TfComercial.Timer1Timer(Sender: TObject);
begin
 StatusBar1.Panels[1].Text := TimetoStr(Time);
end;

procedure TfComercial.StatusBar1DrawPanel(StatusBar: TStatusBar;
  Panel: TStatusPanel; const Rect: TRect);
begin
 statusBar1.Canvas.Brush.Color:=clSilver;//$00AEB7D2;
 StatusBar1.Canvas.FillRect(rect);
 StatusBar1.Canvas.TextOut(Rect.Left+18,rect.Top,Panel.Text);
 ImageList1.Draw(StatusBar.Canvas,rect.Left,rect.Top,Panel.Index+0)
end;

procedure TfComercial.FormClose(Sender: TObject; var Action: TCloseAction);
var
 deleta : String;
 TD: TTransactionDesc;
begin
  if MessageDlg('Você realmente deseja encerrar o sistema ?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
    MICRO := NomeComputador;
    if (cds_Login.Active) then
        cds_Login.Close;
    cds_Login.Params[0].Clear;
    cds_Login.Params[1].Clear;
    cds_Login.Params[0].AsString := MICRO;
    cds_Login.Params[0].AsString := 'Comercial';
    cds_Login.Open;
    if not dm.cds_Login.IsEmpty then
    begin
        cds_Login.Close;
        deleta := 'delete from LOG_ACESSO where MICRO =';
        deleta := deleta + '''' + MICRO + '''';
        deleta := deleta + ' and MODULO = ';
        deleta := deleta + QuotedStr('Comercial');
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
    Application.Terminate;
  end
  else
   abort;
end;

procedure TfComercial.SobreoSistema1Click(Sender: TObject);
begin
  fSobre := TfSobre.Create(Application);
  try
    fSobre.ShowModal;
  finally
    fSobre.Free;
  end;
end;

procedure TfComercial.usoprodClick(Sender: TObject);
begin
  fUso_Prod := TfUso_Prod.Create(Application);
  try
    fUso_Prod.ShowModal;
  finally
    fUso_Prod.Free;
  end;
end;

procedure TfComercial.RelatriodeVendasporProduto1Click(Sender: TObject);
begin
  fRelVenda := TfRelVenda.Create(Application);
  try
    fRelVenda.ShowModal;
  finally
    fRelVenda.Free;
  end;

end;

procedure TfComercial.Lotes1Click(Sender: TObject);
begin
  if (dm.moduloUsado = 'CITRUS') then
  begin
    fLote := TfLote.Create(Application);
    try
      fLote.ShowModal;
    finally
      fLote.Free;
    end;
  end
  else begin
    fLotes := TfLotes.Create(Application);
    try
      fLotes.ShowModal;
    finally
      fLotes.Free;
    end;
  end;
end;

procedure TfComercial.RelatrioListadeProdutos1Click(Sender: TObject);
begin
{  VCLReport_lista_produtos.FileName := str_relatorio + 'lista_produtos.rep';
  VCLReport_lista_produtos.Execute;}
  fProcura_prod.ShowModal;
end;

procedure TfComercial.RelatrioListadeProdporLote1Click(Sender: TObject);
begin
  VCLReport_lista_produtos.FileName := str_relatorio + 'lista_produtosLotes.rep';
  VCLReport_lista_produtos.report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;  
  VCLReport_lista_produtos.Execute;
end;

procedure TfComercial.ListaClientes1Click(Sender: TObject);
begin
  fListaClientes:=TfListaClientes.Create(Application);
  // fListaClientes.edNome.SetFocus;
   try
   fListaClientes.ShowModal;
   finally
       fListaClientes.Free;
     // dbEdit2.SetFocus;
    end;
end;

function TfComercial.GetVersion: string;
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;
begin
  Result := '';
  VerInfoSize := GetFileVersionInfoSize(PChar(ParamStr(0)), Dummy);
  if VerInfoSize = 0 then Exit;
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(PChar(ParamStr(0)), 0, VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
  with VerValue^ do
  begin
    Result := IntToStr(dwFileVersionMS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionMS and $FFFF);
    Result := Result + '.' + IntToStr(dwFileVersionLS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionLS and $FFFF);
  end;
  FreeMem(VerInfo, VerInfoSize);
end;

procedure TfComercial.ListausoProduto1Click(Sender: TObject);
begin
  fListaProd:=TfListaProd.Create(Application);
  // fListaClientes.edNome.SetFocus;
  try
    fListaProd.ShowModal;
  finally
    fListaProd.Free;
    // dbEdit2.SetFocus;
  end;
end;

procedure TfComercial.RelatrioVendasprSrieSubGrupoetc1Click(
  Sender: TObject);
begin
  fRel_Vendas:=TfRel_Vendas.Create(Application);
  try
    fRel_Vendas.BitBtn3.Visible := False;
    fRel_Vendas.ShowModal;
  finally
    fRel_Vendas.Free;
  end;
end;

function TfComercial.NomeComputador: string;
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

procedure TfComercial.dxButton6Click(Sender: TObject);
begin
  {fFiltroMovimento := TfFiltroMovimento.Create(Application);
  try
    fFiltroMovimento.BitBtn8.Enabled := False;
    fFiltroMovimento.ShowModal;
  finally
    fFiltroMovimento.Free;
  end;}
  //fTerminal_Delivery.ShowModal;
  fTerminal_Delivery := TfTerminal_Delivery.Create(Application);
  try
    //fTerminal_Delivery.BitBtn8.Enabled := False;
    fTerminal_Delivery.ShowModal;
  finally
    fTerminal_Delivery.Free;
  end;
end;

procedure TfComercial.Visitas1Click(Sender: TObject);
begin
  fTipoVisita := TfTipoVisita.Create(Application);
  try
     fTipoVisita.ShowModal;
  finally
     fTipoVisita.Free;
  end;
end;

procedure TfComercial.Romaneio1Click(Sender: TObject);
begin
   fRomaneio := TfRomaneio.Create(Application);
   try
      fRomaneio.ShowModal;
   finally
      fRomaneio.Free;
   end;
end;

procedure TfComercial.RelatrioNotasCompras1Click(Sender: TObject);
begin
  {Notas de Compras }
  VCLReport_lista_produtos.FileName := str_relatorio + 'rel_notasCompras.rep';
  VCLReport_lista_produtos.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport_lista_produtos.Execute;
end;

procedure TfComercial.FormShow(Sender: TObject);
begin
    //Se tiver Agendamento para o dia abro a agenda
     if (dm.cds_ag.Active) then
        dm.cds_ag.Close;
     dm.cds_ag.Params[0].Clear;
     dm.cds_ag.Params[1].AsInteger := 9999999;
     dm.cds_ag.Params[2].Value := Now;
     dm.cds_ag.Params[3].Value := Now;
     dm.cds_ag.Params[4].Clear;
     dm.cds_ag.Params[5].AsInteger := 9999999;
     dm.cds_ag.Open;
     if (not dm.cds_ag.IsEmpty) then
     begin
        dm.cds_ag.Close;
        SpeedButton5.Click;
     end
     else
     begin
        dm.cds_ag.Close;
         if (dm.ag_dia.Active) then
            dm.ag_dia.Close;
         dm.ag_dia.Params[0].Value := now;
         dm.ag_dia.Open;
         if (dm.ag_dia.IsEmpty) then
            dm.ag_dia.Close
         else
         begin
            dm.ag_dia.Close;
            SpeedButton5.Click;
         end;
     end;
    //************************************************************

end;

procedure TfComercial.ListadeCompras1Click(Sender: TObject);
begin
  fListadeCompra := TfListadeCompra.Create(Application);
  try
    fListadeCompra.ShowModal;
  finally
    fListadeCompra.Free;
  end;
end;

procedure TfComercial.RelatriodeCompras1Click(Sender: TObject);
begin
  fRel := TfRel.Create(Application);
  try
    fRel.ShowModal;
  finally
    fRel.Free;
  end;
end;

procedure TfComercial.CorrigirEstoque1Click(Sender: TObject);
begin
  {Corrige o Estoque }
  fEstoqueCorrige := TfEstoqueCorrige.Create(Application);
  try
    fEstoqueCorrige.ShowModal;
  finally
    fEstoqueCorrige.Free;
  end;

end;

procedure TfComercial.RelatriodeComprasVendaICMS1Click(Sender: TObject);
begin
  fRel_Vendas:=TfRel_Vendas.Create(Application);
  try
    fRel_Vendas.GroupBox1.Visible := false;
    fRel_Vendas.RadioButton1.Visible := False;
    fRel_Vendas.RadioButton2.Visible := False;
    fRel_Vendas.RadioButton3.Visible := False;
    fRel_Vendas.RadioButton4.Visible := False;
    fRel_Vendas.btnImprimir.Visible := False;
    fRel_Vendas.ComboBox1.Visible := False;
    fRel_Vendas.ComboBox2.Visible := False;
    fRel_Vendas.Label3.Visible := False;
    fRel_Vendas.Label4.Visible := False;
    fRel_Vendas.ShowModal;
  finally
    fRel_Vendas.Free;
  end;
end;

procedure TfComercial.mnDevCompraClick(Sender: TObject);
begin
  fRateioPag := TfRateioPag.Create(Application);
  fCompraFinalizar := TfCompraFinalizar.Create(Application);
  fCheques_bol := TfCheques_bol.Create(Application);
  try
    DM.tipoCompra := 'DEVOLUCAO';
    fCompra.ShowModal;
  finally
    fRateioPag.Free;
    fCompraFinalizar.Free;
    fCheques_bol.Free;
  end;
end;

procedure TfComercial.DevolucaoVendas1Click(Sender: TObject);
begin
 fMostra_Contas := TfMostra_Contas.Create(Application);
 fVendaFinalizar := TfVendaFinalizar.Create(Application);
 fCheques_bol := TfCheques_bol.Create(Application);
 try
   DM.tipoVenda := 'DEVOLUCAO';
   fVendas.ShowModal;
 finally
  fCheques_bol.Free;
  fMostra_Contas.Free;
  fVendaFinalizar.Free;
 end;

end;

procedure TfComercial.acComprasExecute(Sender: TObject);
begin
  //fRateioPag := TfRateioPag.Create(Application);
  //fCompraFinalizar := TfCompraFinalizar.Create(Application);
 // fCheques_bol := TfCheques_bol.Create(Application);
  //try
    DM.tipoCompra := 'COMPRA';
    fCompra.ShowModal;
  //finally
    //fRateioPag.Free;
    //fCompraFinalizar := nil;
    //fCompraFinalizar.Free;
    //fCheques_bol.Free;
  //end;
end;

procedure TfComercial.acVendasExecute(Sender: TObject);
begin
 //fMostra_Contas := TfMostra_Contas.Create(Application);
 //fVendaFinalizar := TfVendaFinalizar.Create(Application);
 //fCheques_bol := TfCheques_bol.Create(Application);
 //try
   DM.tipoVenda := 'VENDA';
   fVendas.ShowModal;
 //finally
  //fCheques_bol.Free;
  //fMostra_Contas.Free;
  //fVendaFinalizar.Free;
 //end;
end;

procedure TfComercial.acNFiscaisExecute(Sender: TObject);
begin
   fNotaFiscalProc := TfNotaFiscalProc.Create(Application);
   try
      fNotaFiscalProc.ShowModal;
   finally
      fNotaFiscalProc.Free;
   end;
end;

procedure TfComercial.acTerminalExecute(Sender: TObject);
begin
  //fTerminal_Delivery.ShowModal;
  fTerminal.ShowModal;

{ fTerminalLoja := TfTerminalLoja.Create(Application);
 try
   fTerminalLoja.ShowModal;
 finally
   fTerminalLoja.Free;
 end;}
end;

procedure TfComercial.acEstoqueExecute(Sender: TObject);
begin
  fProcura_prod.btnIncluir.Visible := true;
  fProcura_prod.ShowModal;
  fProcura_prod.cbMarca.Text := '';
end;

procedure TfComercial.acClientesExecute(Sender: TObject);
begin
   fListaClientes:=TfListaClientes.Create(Application);
   //fClienteCadastro := TfClienteCadastro.Create(Application);
   try
     varform := 'consulta';
     dm.var_teste := 'consulta';
     fListaClientes.ShowModal;
   finally
     //fClienteCadastro.Free;
     fListaClientes.Free;
     varform := '';
     dm.var_teste := '';
   end;
end;

procedure TfComercial.acAgendaExecute(Sender: TObject);
begin
  fAgendamento := TfAgendamento.Create(Application);
  try
    fAgendamento.ShowModal;
  finally
    fAgendamento.Free;
  end;
end;

procedure TfComercial.acNFExportaExecute(Sender: TObject);
begin
  fNotaFiscalExporta := TfNotaFiscalExporta.Create(Application);
  try
    fNotaFiscalExporta.ShowModal;
  finally
    fNotaFiscalExporta.Free;
  end;

end;

end.
