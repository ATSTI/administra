unit uMateriais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, dxCore, dxButton, ComCtrls, Menus, XPMenu, EOneInst,
  EAppProt, ExtCtrls, ImgList, DBClient, Provider, DB, SqlExpr, Buttons,
  StdCtrls, MMJPanel, RxGIF, rpcompobase, rpvclreport, DBxpress, UCBase,
  ActnList;

type
  TfMateriais = class(TForm)
    MMJPanel3: TMMJPanel;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    MMJPanel2: TMMJPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
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
    ImageList1: TImageList;
    Timer1: TTimer;
    EvAppProtect1: TEvAppProtect;
    EvOneInstance1: TEvOneInstance;
    XPMenu1: TXPMenu;
    PopupMenu1: TPopupMenu;
    ContasPagar2: TMenuItem;
    ContasReceber2: TMenuItem;
    LanarDespesas1: TMenuItem;
    LanarReceitas1: TMenuItem;
    NotasFiscais1: TMenuItem;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Agenda1: TMenuItem;
    Sair1: TMenuItem;
    Cadastros1: TMenuItem;
    Relatrios1: TMenuItem;
    Ajuda1: TMenuItem;
    SobreoSistema1: TMenuItem;
    Ajuda2: TMenuItem;
    statusBar1: TStatusBar;
    MMJPanel1: TMMJPanel;
    dxButton1: TdxButton;
    dxButton3: TdxButton;
    dxButton4: TdxButton;
    Produtos1: TMenuItem;
    UsodoProduto1: TMenuItem;
    Estoque1: TMenuItem;
    N402EntradadeEstoque1: TMenuItem;
    ControledeQualidade1: TMenuItem;
    SadadeEstoque1: TMenuItem;
    dxButton5: TdxButton;
    RelatrioListadeProdutos1: TMenuItem;
    VCLReport_lista_produtos: TVCLReport;
    RelatrioListadeProdporLote1: TMenuItem;
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
    sds_video: TSQLDataSet;
    dsp_video: TDataSetProvider;
    cds_video: TClientDataSet;
    cds_videoLOGIN: TStringField;
    cds_videoSENHA: TStringField;
    cds_videoPERFIL: TStringField;
    cds_videoCODUSUARIO: TIntegerField;
    cds_videoMICRO: TStringField;
    cds_videoP1: TStringField;
    cds_videoP2: TStringField;
    sds_videoLOGIN: TStringField;
    sds_videoSENHA: TStringField;
    sds_videoPERFIL: TStringField;
    sds_videoCODUSUARIO: TIntegerField;
    sds_videoMICRO: TStringField;
    sds_videoP1: TStringField;
    sds_videoP2: TStringField;
    dxButton2: TdxButton;
    dxButton6: TdxButton;
    UserControlMaterial: TUserControl;
    Usuarios1: TMenuItem;
    CadastroUsuarios1: TMenuItem;
    trocarSenha1: TMenuItem;
    rocarUsuarioLogOff1: TMenuItem;
    Historico1: TMenuItem;
    Botoes: TActionList;
    acEstoque: TAction;
    acSaidaEstoque: TAction;
    acMovEstoque: TAction;
    acVerEstoque: TAction;
    acListaProdutos: TAction;
    procedure statusBar1DrawPanel(StatusBar: TStatusBar;
      Panel: TStatusPanel; const Rect: TRect);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SobreoSistema1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure UsodoProduto1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure RelatrioListadeProdutos1Click(Sender: TObject);
    procedure RelatrioListadeProdporLote1Click(Sender: TObject);
    procedure acEstoqueExecute(Sender: TObject);
    procedure acSaidaEstoqueExecute(Sender: TObject);
    procedure acVerEstoqueExecute(Sender: TObject);
    procedure acListaProdutosExecute(Sender: TObject);
    procedure acMovEstoqueExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMateriais: TfMateriais;
  videoW, videoH : string;
  ScreenHeight: LongInt;
  ScreenWidth: LongInt;
  usuario_logado: SmallInt;  

implementation

uses uSobre, uProdutoCadastro, uUso_Prod, uEntra_Sai_estoque,
  ufprocura_prod, uFiltroEstoque, UDm, ufDlgLogin,
  sCtrlResize;

{$R *.dfm}

(**********************************************************************)
Function Saudacao : string;
begin
 result:='Boa-noite!';
 if (time>=0.25) and (time<0.5) then result:='Bom-dia!';
 if (time>=0.5) and (time<0.80) then result:='Boa-tarde!';
end;
(**********************************************************************)


procedure TfMateriais.statusBar1DrawPanel(StatusBar: TStatusBar;
  Panel: TStatusPanel; const Rect: TRect);
begin
 StatusBar1.Canvas.FillRect(rect);
 StatusBar1.Canvas.TextOut(Rect.Left+18,rect.Top,Panel.Text);
 ImageList1.Draw(StatusBar.Canvas,rect.Left,rect.Top,Panel.Index+0)
end;

procedure TfMateriais.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[1].Text := TimetoStr(Time);
end;

procedure TfMateriais.FormCreate(Sender: TObject);
begin
  sCtrlResize.CtrlResize(TForm(fMateriais));
  StatusBar1.Panels[2].Text:=Saudacao+' Hoje é '+formatdatetime('dddddd',date);
end;

procedure TfMateriais.FormClose(Sender: TObject; var Action: TCloseAction);
var
 deleta : String;
 TD: TTransactionDesc;
begin
  if MessageDlg('Você realmente deseja encerrar o sistema ?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
    if (cds_Login.Active) then
        cds_Login.Close;
    cds_Login.Params[0].Clear;
    cds_Login.Params[1].Clear;
    cds_Login.Params[0].AsString := MICRO;
    cds_Login.Params[1].AsString := 'Materiais';
    cds_Login.Open;
    if not cds_Login.IsEmpty then
    begin
        cds_Login.Close;
        deleta := 'delete from LOG_ACESSO where MICRO =';
        deleta := deleta + '''' + MICRO + '''';
        deleta := deleta + ' and MODULO = ';
        deleta := deleta + QuotedStr('Materiais');
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

procedure TfMateriais.SobreoSistema1Click(Sender: TObject);
begin
  fSobre := TfSobre.Create(Application);
  try
    fSobre.ShowModal;
  finally
    fSobre.Free;
  end;
end;

procedure TfMateriais.Produtos1Click(Sender: TObject);
begin
  fProdutoCadastro := TfProdutoCadastro.Create(Application);
  try
    fProdutoCadastro.ShowModal;
  finally
    fProdutoCadastro.Free;
  end;
end;

procedure TfMateriais.UsodoProduto1Click(Sender: TObject);
begin
  fUso_Prod := TfUso_Prod.Create(Application);
  try
    fUso_Prod.ShowModal;
  finally
    fUso_Prod.Free;
  end;
end;

procedure TfMateriais.SpeedButton3Click(Sender: TObject);
var
 deleta : String;
 TD: TTransactionDesc;
begin
  if MessageDlg('Você realmente deseja encerrar o sistema ?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
    if (cds_Login.Active) then
        cds_Login.Close;
    cds_Login.Params[0].Clear;
    cds_Login.Params[1].Clear;
    cds_Login.Params[0].AsString := MICRO;
    cds_Login.Params[1].AsString := 'Materiais';
    cds_Login.Open;
    if not cds_Login.IsEmpty then
    begin
        cds_Login.Close;
        deleta := 'delete from LOG_ACESSO where MICRO =';
        deleta := deleta + '''' + MICRO + '''';
        deleta := deleta + ' and MODULO = ';
        deleta := deleta + QuotedStr('Materiais');
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

procedure TfMateriais.Sair1Click(Sender: TObject);
begin
  close;
end;

procedure TfMateriais.RelatrioListadeProdutos1Click(Sender: TObject);
begin
  VCLReport_lista_produtos.FileName := str_relatorio + 'lista_produtos.rep';
  VCLReport_lista_produtos.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;  
  VCLReport_lista_produtos.Execute;
end;

procedure TfMateriais.RelatrioListadeProdporLote1Click(Sender: TObject);
begin
  VCLReport_lista_produtos.FileName := str_relatorio + 'lista_produtosLotes.rep';
  VCLReport_lista_produtos.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;  
  VCLReport_lista_produtos.Execute;
end;

procedure TfMateriais.acEstoqueExecute(Sender: TObject);
begin
 fEntra_Sai_estoque := TfEntra_Sai_estoque.Create(Application);
 try
   with fEntra_Sai_estoque do
   begin
     label1.visible := False;
     dbEdit1.Visible := False;
     Label2.Visible := False;
     Combobox1.Visible := False;
     Label11.Visible := False;
     Edit1.Visible := False;
     label13.Top := label13.Top - 15;
     MaskEdit1.Top := MaskEdit1.Top - 15;
     Label3.Top := Label3.Top - 15;
     Combobox2.Top := Combobox2.Top - 15;
     Label12.Top := Label12.Top - 15;
     Edit2.Top := Edit2.Top - 15;
     entsai := 0;
     Label15.Caption := 'Entrada de Mercadorias de Estoque';

     cbCodigo.DataField := '';
     cbNome.DataField := '';
     if (cdsB.Active) then
       cdsB.Close;
     cdsB.CommandText := 'SELECT CODFORNECEDOR, NOMEFORNECEDOR FROM FORNECEDOR WHERE ' +
       ' STATUS = 1';
     cdsB.Open;
     cbCodigo.DataField := 'CODFORNECEDOR';
     cbNome.DataField := 'NOMEFORNECEDOR';

     ShowModal;
   end;
 finally
   fEntra_Sai_estoque.Free;
 end;
end;

procedure TfMateriais.acSaidaEstoqueExecute(Sender: TObject);
begin
 fEntra_Sai_estoque := TfEntra_Sai_estoque.Create(Application);
 try
   with fEntra_Sai_estoque do
   begin
     label13.visible := False;
     MaskEdit1.Visible := False;
     Label3.Visible := False;
     Combobox2.Visible := False;
     Label12.Visible := False;
     Edit2.Visible := False;
     label1.Top := label1.Top + 15;
     DbEdit1.Top := DbEdit1.Top + 15;
     Label2.Top := Label2.Top + 15;
     Combobox1.Top := Combobox1.Top + 15;
     Label11.Top := Label11.Top + 15;
     Edit1.Top := Edit1.Top + 15;
     entsai := 1;
     Label15.Caption := 'Saida de Mercadorias de Estoque';

     cbCodigo.DataField := '';
     cbNome.DataField := '';
     if (cdsB.Active) then
       cdsB.Close;
     cdsB.CommandText := 'SELECT CODCLIENTE, NOMECLIENTE FROM CLIENTES WHERE ' +
       ' STATUS = 1';
     cdsB.Open;
     cbCodigo.DataField := 'CODCLIENTE';
     cbNome.DataField := 'NOMECLIENTE';

     ShowModal;
   end;
 finally
   fEntra_Sai_estoque.Free;
 end;
end;

procedure TfMateriais.acVerEstoqueExecute(Sender: TObject);
begin
 fFiltroEstoque := TfFiltroEstoque.Create(Application);
 try
   fFiltroEstoque.ShowModal;
 finally
   fFiltroEstoque.Free;
 end;
end;

procedure TfMateriais.acListaProdutosExecute(Sender: TObject);
begin
  fProcura_prod.btnIncluir.Visible := true;
  fProcura_prod.ShowModal;
end;

procedure TfMateriais.acMovEstoqueExecute(Sender: TObject);
begin
  fEntra_Sai_estoque := TfEntra_Sai_estoque.Create(Application);
  try
   with fEntra_Sai_estoque do
   begin
     entsai := 1;
     Label14.visible := False;
     Label16.visible := False;
     cbCodigo.visible := False;
     cbNome.visible := False;
     Label15.Caption := 'Movimento de Mercadorias no Estoque';
     ShowModal;
   end;
  finally
   fEntra_Sai_estoque.Free;
  end;
end;

end.
