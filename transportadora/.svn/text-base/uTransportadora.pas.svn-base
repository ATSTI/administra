unit uTransportadora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, JvExControls, JvOutlookBar, uUtils, JvXPCore,
  JvXPContainer, ImgList, XPMenu, Menus, JvMenus;

type
  TfPrincipalLogistica = class(TForm)
    JvXPContainer1: TJvXPContainer;
    JvOutlookBar1: TJvOutlookBar;
    ImageList1: TImageList;
    XPMenu1: TXPMenu;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Clientes1: TMenuItem;
    Fornecedores1: TMenuItem;
    ipos1: TMenuItem;
    planos1: TMenuItem;
    abelas1: TMenuItem;
    Lanamentos1: TMenuItem;
    ConsultaLanamentos1: TMenuItem;
    Sistema1: TMenuItem;
    Sobre1: TMenuItem;
    Ajuda1: TMenuItem;
    Sair1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure ipos1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure planos1Click(Sender: TObject);
    procedure abelas1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ConsultaLanamentos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrincipalLogistica: TfPrincipalLogistica;
  Formulario : TUtils;
  
implementation

uses uTipoOperacao, uClienteCadastro, uFornecedorCadastro, uftransp, uDmTransp,
     UDm, uPlanos, uOperacoes, uOperPesquisa, uOperPesquisa1;

{$R *.dfm}

Procedure FormResize(Sender: TObject); var R : TRect; DC : HDc; Canv : TCanvas;
begin
  R := Rect( 0, 0, Screen.Width, Screen.Height );
  DC := GetWindowDC( GetDeskTopWindow );
  Canv := TCanvas.Create;
  Canv.Handle := DC;
  Canv.CopyRect(R,Canv,R);
  ReleaseDC( GetDeskTopWindow, DC );
end;

procedure TfPrincipalLogistica.FormCreate(Sender: TObject);
begin
  FormResize(Sender);
  Formulario := TUtils.Create;
end;

procedure TfPrincipalLogistica.ipos1Click(Sender: TObject);
begin
  Formulario.CriaForm(TfTipoOperacao,fTipoOperacao);
end;

procedure TfPrincipalLogistica.Clientes1Click(Sender: TObject);
begin
  Formulario.CriaForm(TfClienteCadastro,fClienteCadastro);
end;

procedure TfPrincipalLogistica.Fornecedores1Click(Sender: TObject);
begin
  Formulario.CriaForm(TfFornecedorCadastro,fFornecedorCadastro);
end;

procedure TfPrincipalLogistica.planos1Click(Sender: TObject);
begin
    //Vejo quais são as contas de Receitas para listar no lookupcombobox.
    if dm.cds_parametro.Active then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'LOGISTICA';
    dm.cds_parametro.Open;
    if (dm.cds_parametroCONFIGURADO.AsString = 'S') then
      Formulario.CriaForm(TfPlanos,fPlanos)
    else
      MessageDlg('Usuário sem acesso a esse item de menu', mtWarning, [mbOK], 0);
    dm.cds_parametro.Close;
end;

procedure TfPrincipalLogistica.abelas1Click(Sender: TObject);
begin
    if dm.cds_parametro.Active then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'LOGISTICA';
    dm.cds_parametro.Open;
    if (dm.cds_parametroCONFIGURADO.AsString = 'S') then
        Formulario.CriaForm(TfOperacoes,fOperacoes)
    else
      MessageDlg('Usuário sem acesso a esse item de menu', mtWarning, [mbOK], 0);
    dm.cds_parametro.Close;
end;

procedure TfPrincipalLogistica.Sair1Click(Sender: TObject);
begin
  Close;
end;

procedure TfPrincipalLogistica.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if MessageDlg('Você realmente deseja encerrar o sistema ?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
    Application.Terminate;
  end
  else
   abort;
end;

procedure TfPrincipalLogistica.ConsultaLanamentos1Click(Sender: TObject);
begin
    if dm.cds_parametro.Active then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'LOGISTICA';
    dm.cds_parametro.Open;
    if (dm.cds_parametroCONFIGURADO.AsString = 'S') then
          Formulario.CriaForm(TfOperPesquisa,fOperPesquisa)
    else
          Formulario.CriaForm(TfOperPesquisa1,fOperPesquisa1);
    dm.cds_parametro.Close;

end;

end.
