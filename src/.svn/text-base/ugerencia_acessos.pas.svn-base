unit uGerencia_Acessos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, XPMenu, Menus, DBCtrls, dxCore, dxButton, DB,
  Buttons, MMJPanel;

type
  TfGerencia_Acessos = class(TForm)
    MainMenu1: TMainMenu;
    Sistem1: TMenuItem;
    Sair1: TMenuItem;
    Cadastro1: TMenuItem;
    Clnica1: TMenuItem;
    Srie1: TMenuItem;
    Grupo1: TMenuItem;
    Funcionrio1: TMenuItem;
    Scios1: TMenuItem;
    Vendedor1: TMenuItem;
    Cobradores1: TMenuItem;
    Mensalidades1: TMenuItem;
    Lanamentos1: TMenuItem;
    Obito1: TMenuItem;
    Consultas1: TMenuItem;
    Movimentao1: TMenuItem;
    GerarLotes1: TMenuItem;
    ContasaPagar1: TMenuItem;
    PesqContasaReceber1: TMenuItem;
    ReceberLotes1: TMenuItem;
    Pesquisa1: TMenuItem;
    Pesqbitos1: TMenuItem;
    SociosDesligados1: TMenuItem;
    Relatrios1: TMenuItem;
    bitos1: TMenuItem;
    Circular1: TMenuItem;
    Contrato1: TMenuItem;
    Carteirinha1: TMenuItem;
    XPMenu1: TXPMenu;
    Panel8: TPanel;
    Panel9: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Panel10: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Panel11: TPanel;
    dxButton7: TdxButton;
    PACESSO: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel3: TPanel;
    DBRadioGroup7: TDBRadioGroup;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup4: TDBRadioGroup;
    Panel4: TPanel;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    dxButton3: TdxButton;
    Panel1: TPanel;
    Panel5: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Panel6: TPanel;
    DBRadioGroup6: TDBRadioGroup;
    Panel7: TPanel;
    dxButton4: TdxButton;
    dxButton5: TdxButton;
    dxButton6: TdxButton;
    DataSource1: TDataSource;
    MMJPanel1: TMMJPanel;
    SpeedButton6: TSpeedButton;
    MMJPanel2: TMMJPanel;
    Label13: TLabel;
    Label14: TLabel;
    VerLogs1: TMenuItem;
    Bairro1: TMenuItem;
    Municipio1: TMenuItem;
    Cartrio1: TMenuItem;
    Urnas1: TMenuItem;
    Fornecedores1: TMenuItem;
    Compras1: TMenuItem;
    SpeedButton1: TSpeedButton;
    Bancos1: TMenuItem;
    Mdico1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
    procedure Clnica1Click(Sender: TObject);
    procedure Srie1Click(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
    procedure Grupo1Click(Sender: TObject);
    procedure Funcionrio1Click(Sender: TObject);
    procedure Scios1Click(Sender: TObject);
    procedure Vendedor1Click(Sender: TObject);
    procedure Cobradores1Click(Sender: TObject);
    procedure Mensalidades1Click(Sender: TObject);
    procedure Obito1Click(Sender: TObject);
    procedure Consultas1Click(Sender: TObject);
    procedure LanarDespesas1Click(Sender: TObject);
    procedure LanarReceitas1Click(Sender: TObject);
    procedure GerarLotes1Click(Sender: TObject);
    procedure ContasaPagar1Click(Sender: TObject);
    procedure PesqContasaReceber1Click(Sender: TObject);
    procedure ReceberLotes1Click(Sender: TObject);
    procedure Pesqbitos1Click(Sender: TObject);
    procedure SociosDesligados1Click(Sender: TObject);
    procedure bitos1Click(Sender: TObject);
    procedure Circular1Click(Sender: TObject);
    procedure Contrato1Click(Sender: TObject);
    procedure Carteirinha1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure VerLogs1Click(Sender: TObject);
    procedure Bairro1Click(Sender: TObject);
    procedure Municipio1Click(Sender: TObject);
    procedure Cartrio1Click(Sender: TObject);
    procedure Urnas1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Compras1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Bancos1Click(Sender: TObject);
    procedure Mdico1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fGerencia_Acessos: TfGerencia_Acessos;

implementation

uses UDM, uBanco;

{$R *.dfm}

procedure TfGerencia_Acessos.FormShow(Sender: TObject);
begin
//  if Panel8.Visible = False then
//    Panel8.Visible := True;

  Label9.Caption := dm.CDSSenhaLogin.AsString;
  Label11.Caption := '';
end;

procedure TfGerencia_Acessos.Empresa1Click(Sender: TObject);
begin
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Empresa';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Empresa';
   dm.cdsPermissaoCHAVE.AsString :=
     DM.cds_SenhaLOGIN.AsString + 'Empresa';
  end;

  if Panel8.Visible = True then
     Panel8.Visible:=false;

  if PACESSO.Visible = False then
     PACESSO.Visible:=True;

  if Panel1.Visible = True then
     Panel1.Visible:=false;

  Label1.Caption := DM.cds_SenhaLOGIN.AsString;
  Label3.Caption := 'Empresa';

end;

procedure TfGerencia_Acessos.Clnica1Click(Sender: TObject);
begin
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Clinica';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Clinica';
   dm.cdsPermissaoCHAVE.AsString :=
     DM.cds_SenhaLOGIN.AsString + 'Clinica';
  end;

  if Panel8.Visible = True then
     Panel8.Visible:=false;

  if PACESSO.Visible = False then
     PACESSO.Visible:=True;

  if Panel1.Visible = True then
     Panel1.Visible:=false;

  Label1.Caption := DM.cds_SenhaLOGIN.AsString;
  Label3.Caption := 'Clinica';
end;

procedure TfGerencia_Acessos.Srie1Click(Sender: TObject);
begin
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Série';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Série';
   dm.cdsPermissaoCHAVE.AsString :=
     DM.cds_SenhaLOGIN.AsString + 'Série';
  end;

  if Panel8.Visible = True then
     Panel8.Visible:=false;

  if PACESSO.Visible = False then
     PACESSO.Visible:=True;

  if Panel1.Visible = True then
     Panel1.Visible:=false;

  Label1.Caption := DM.cds_SenhaLOGIN.AsString;
  Label3.Caption := 'Série';
end;

procedure TfGerencia_Acessos.dxButton1Click(Sender: TObject);
begin
  if dm.cdsPermissao.State in [dsInsert, dsEdit] then
     dm.cdsPermissao.ApplyUpdates(0);
end;

procedure TfGerencia_Acessos.dxButton2Click(Sender: TObject);
begin
  dm.cdsPermissao.Cancel;
end;

procedure TfGerencia_Acessos.dxButton3Click(Sender: TObject);
begin
//  if Panel8.Visible = False then
//     Panel8.Visible:=True;

  if PACESSO.Visible = True then
     PACESSO.Visible:=False;

  if Panel1.Visible = True then
     Panel1.Visible:=False;
end;


procedure TfGerencia_Acessos.Grupo1Click(Sender: TObject);
begin
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Grupo';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Grupo';
   dm.cdsPermissaoCHAVE.AsString :=
     DM.cds_SenhaLOGIN.AsString + 'Grupo';
  end;

  if Panel8.Visible = True then
     Panel8.Visible:=false;

  if PACESSO.Visible = False then
     PACESSO.Visible:=True;

  if Panel1.Visible = True then
     Panel1.Visible:=false;

  Label1.Caption := DM.cds_SenhaLOGIN.AsString;
  Label3.Caption := 'Grupo';
end;

procedure TfGerencia_Acessos.Funcionrio1Click(Sender: TObject);
begin
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Funcionários';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Funcionários';
   dm.cdsPermissaoCHAVE.AsString :=
     DM.cds_SenhaLOGIN.AsString + 'Funcionários';
  end;

  if Panel8.Visible = True then
     Panel8.Visible:=false;

  if PACESSO.Visible = False then
     PACESSO.Visible:=True;

  if Panel1.Visible = True then
     Panel1.Visible:=false;

  Label1.Caption := DM.cds_SenhaLOGIN.AsString;
  Label3.Caption := 'Funcionários';
end;

procedure TfGerencia_Acessos.Scios1Click(Sender: TObject);
begin
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Sócios';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Sócios';
   dm.cdsPermissaoCHAVE.AsString :=
     DM.cds_SenhaLOGIN.AsString + 'Sócios';
  end;

  if Panel8.Visible = True then
     Panel8.Visible:=false;

  if PACESSO.Visible = False then
     PACESSO.Visible:=True;

  if Panel1.Visible = True then
     Panel1.Visible:=false;

  Label1.Caption := DM.cds_SenhaLOGIN.AsString;
  Label3.Caption := 'Sócios';
end;

procedure TfGerencia_Acessos.Vendedor1Click(Sender: TObject);
begin
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Vendedores';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Vendedores';
   dm.cdsPermissaoCHAVE.AsString :=
     DM.cds_SenhaLOGIN.AsString + 'Vendedores';
  end;

  if Panel8.Visible = True then
     Panel8.Visible:=false;

  if PACESSO.Visible = False then
     PACESSO.Visible:=True;

  if Panel1.Visible = True then
     Panel1.Visible:=false;

  Label1.Caption := DM.cds_SenhaLOGIN.AsString;
  Label3.Caption := 'Vendedores';
end;

procedure TfGerencia_Acessos.Cobradores1Click(Sender: TObject);
begin
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Cobradores';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Cobradores';
   dm.cdsPermissaoCHAVE.AsString :=
     DM.cds_SenhaLOGIN.AsString + 'Cobradores';
  end;

  if Panel8.Visible = True then
     Panel8.Visible:=false;

  if PACESSO.Visible = False then
     PACESSO.Visible:=True;

  if Panel1.Visible = True then
     Panel1.Visible:=false;

  Label1.Caption := DM.cds_SenhaLOGIN.AsString;
  Label3.Caption := 'Cobradores';
end;

procedure TfGerencia_Acessos.Mensalidades1Click(Sender: TObject);
begin
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Mensalidades';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Mensalidades';
   dm.cdsPermissaoCHAVE.AsString :=
     DM.cds_SenhaLOGIN.AsString + 'Mensalidades';
  end;

  if Panel8.Visible = True then
     Panel8.Visible:=false;

  if PACESSO.Visible = False then
     PACESSO.Visible:=True;

  if Panel1.Visible = True then
     Panel1.Visible:=false;

  Label1.Caption := DM.cds_SenhaLOGIN.AsString;
  Label3.Caption := 'Mensalidades';
end;

procedure TfGerencia_Acessos.Obito1Click(Sender: TObject);
begin
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Óbitos';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Óbitos';
   dm.cdsPermissaoCHAVE.AsString :=
     DM.cds_SenhaLOGIN.AsString + 'Óbitos';
  end;

  if Panel8.Visible = True then
     Panel8.Visible:=false;

  if PACESSO.Visible = False then
     PACESSO.Visible:=True;

  if Panel1.Visible = True then
     Panel1.Visible:=false;

  Label1.Caption := DM.cds_SenhaLOGIN.AsString;
  Label3.Caption := 'Óbitos';
end;

procedure TfGerencia_Acessos.Consultas1Click(Sender: TObject);
begin
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Consultas';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Consultas';
   dm.cdsPermissaoCHAVE.AsString :=
     DM.cds_SenhaLOGIN.AsString + 'Consultas';
  end;

  if Panel8.Visible = True then
     Panel8.Visible:=false;

  if PACESSO.Visible = False then
     PACESSO.Visible:=True;

  if Panel1.Visible = True then
     Panel1.Visible:=false;

  Label1.Caption := DM.cds_SenhaLOGIN.AsString;
  Label3.Caption := 'Consultas';
end;

procedure TfGerencia_Acessos.LanarDespesas1Click(Sender: TObject);
begin
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Despesas';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Despesas';
   dm.cdsPermissaoCHAVE.AsString :=
     DM.cds_SenhaLOGIN.AsString + 'Despesas';
  end;

  if Panel8.Visible = True then
     Panel8.Visible:=false;

  if PACESSO.Visible = False then
     PACESSO.Visible:=True;

  if Panel1.Visible = True then
     Panel1.Visible:=false;

  Label1.Caption := DM.cds_SenhaLOGIN.AsString;
  Label3.Caption := 'Despesas';
end;

procedure TfGerencia_Acessos.LanarReceitas1Click(Sender: TObject);
begin
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Receitas';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Receitas';
   dm.cdsPermissaoCHAVE.AsString :=
     DM.cds_SenhaLOGIN.AsString + 'Receitas';
  end;

  if Panel8.Visible = True then
     Panel8.Visible:=false;

  if PACESSO.Visible = False then
     PACESSO.Visible:=True;

  if Panel1.Visible = True then
     Panel1.Visible:=false;

  Label1.Caption := DM.cds_SenhaLOGIN.AsString;
  Label3.Caption := 'Receitas';
end;

procedure TfGerencia_Acessos.GerarLotes1Click(Sender: TObject);
begin
   if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Gerar Lotes';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Gerar Lotes';
   dm.cdsPermissaoCHAVE.AsString :=
     DM.cds_SenhaLOGIN.AsString + 'Gerar Lotes';
  end;

  if Panel8.Visible = True then
     Panel8.Visible:=false;

  if PACESSO.Visible = True then
     PACESSO.Visible:=False;

  if Panel1.Visible = False then
     Panel1.Visible:=True;

  Label5.Caption := DM.cds_SenhaLOGIN.AsString;
  Label7.Caption := 'Gerar Lotes';
end;

procedure TfGerencia_Acessos.ContasaPagar1Click(Sender: TObject);
begin
   if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Contas a Pagar';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Contas a Pagar';
   dm.cdsPermissaoCHAVE.AsString :=
     DM.cds_SenhaLOGIN.AsString + 'Contas a Pagar';
  end;

  if Panel8.Visible = True then
     Panel8.Visible:=false;

  if PACESSO.Visible = True then
     PACESSO.Visible:=False;

  if Panel1.Visible = False then
     Panel1.Visible:=True;

  Label7.Caption := DM.cds_SenhaLOGIN.AsString;
  Label7.Caption := 'Contas a Pagar';
end;

procedure TfGerencia_Acessos.PesqContasaReceber1Click(Sender: TObject);
begin
   if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Receber Óbitos';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Receber Óbitos';
   dm.cdsPermissaoCHAVE.AsString :=
     DM.cds_SenhaLOGIN.AsString + 'Receber Óbitos';
  end;

  if Panel8.Visible = True then
     Panel8.Visible:=false;

  if PACESSO.Visible = True then
     PACESSO.Visible:=False;

  if Panel1.Visible = False then
     Panel1.Visible:=True;

  Label5.Caption := DM.cds_SenhaLOGIN.AsString;
  Label7.Caption := 'Receber Óbitos';
end;

procedure TfGerencia_Acessos.ReceberLotes1Click(Sender: TObject);
begin
   if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Receber Mensalidades';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Receber Mensalidades';
   dm.cdsPermissaoCHAVE.AsString :=
     DM.cds_SenhaLOGIN.AsString + 'Receber Mensalidades';
  end;

  if Panel8.Visible = True then
     Panel8.Visible:=false;

  if PACESSO.Visible = True then
     PACESSO.Visible:=False;

  if Panel1.Visible = False then
     Panel1.Visible:=True;

  Label5.Caption := DM.cds_SenhaLOGIN.AsString;
  Label7.Caption := 'Receber Mensalidades';
end;

procedure TfGerencia_Acessos.Pesqbitos1Click(Sender: TObject);
begin
   if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Pesq. Óbitos';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Pesq. Óbitos';
   dm.cdsPermissaoCHAVE.AsString :=
     DM.cds_SenhaLOGIN.AsString + 'Pesq. Óbitos';
  end;

  if Panel8.Visible = True then
     Panel8.Visible:=false;

  if PACESSO.Visible = True then
     PACESSO.Visible:=False;

  if Panel1.Visible = False then
     Panel1.Visible:=True;

  Label5.Caption := DM.cds_SenhaLOGIN.AsString;
  Label7.Caption := 'Pesq. Óbitos';
end;

procedure TfGerencia_Acessos.SociosDesligados1Click(Sender: TObject);
begin
   if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Sócios Cancelados';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Sócios Cancelados';
   dm.cdsPermissaoCHAVE.AsString :=
     DM.cds_SenhaLOGIN.AsString + 'Sócios Cancelados';
  end;

  if Panel8.Visible = True then
     Panel8.Visible:=false;

  if PACESSO.Visible = True then
     PACESSO.Visible:=False;

  if Panel1.Visible = False then
     Panel1.Visible:=True;

  Label5.Caption := DM.cds_SenhaLOGIN.AsString;
  Label7.Caption := 'Sócios Cancelados';
end;

procedure TfGerencia_Acessos.bitos1Click(Sender: TObject);
begin
   if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Rel. Óbitos';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Rel. Óbitos';
   dm.cdsPermissaoCHAVE.AsString :=
     DM.cds_SenhaLOGIN.AsString + 'Rel. Óbitos';
  end;

  if Panel8.Visible = True then
     Panel8.Visible:=false;

  if PACESSO.Visible = True then
     PACESSO.Visible:=False;

  if Panel1.Visible = False then
     Panel1.Visible:=True;

  Label5.Caption := DM.cds_SenhaLOGIN.AsString;
  Label7.Caption := 'Rel. Óbitos';
end;

procedure TfGerencia_Acessos.Circular1Click(Sender: TObject);
begin
   if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Rel. Circular';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Rel. Circular';
   dm.cdsPermissaoCHAVE.AsString :=
     DM.cds_SenhaLOGIN.AsString + 'Rel. Circular';
  end;

  if Panel8.Visible = True then
     Panel8.Visible:=false;

  if PACESSO.Visible = True then
     PACESSO.Visible:=False;

  if Panel1.Visible = False then
     Panel1.Visible:=True;

  Label5.Caption := DM.cds_SenhaLOGIN.AsString;
  Label7.Caption := 'Rel. Circular';
end;

procedure TfGerencia_Acessos.Contrato1Click(Sender: TObject);
begin
   if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Rel. Contrato';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Rel. Contrato';
   dm.cdsPermissaoCHAVE.AsString :=
     DM.cds_SenhaLOGIN.AsString + 'Rel. Contrato';
  end;

  if Panel8.Visible = True then
     Panel8.Visible:=false;

  if PACESSO.Visible = True then
     PACESSO.Visible:=False;

  if Panel1.Visible = False then
     Panel1.Visible:=True;

  Label5.Caption := DM.cds_SenhaLOGIN.AsString;
  Label7.Caption := 'Rel. Contrato';
end;

procedure TfGerencia_Acessos.Carteirinha1Click(Sender: TObject);
begin
   if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Rel. Carteirinha';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Rel. Carteirinha';
   dm.cdsPermissaoCHAVE.AsString :=
     DM.cds_SenhaLOGIN.AsString + 'Rel. Carteirinha';
  end;

  if Panel8.Visible = True then
     Panel8.Visible:=false;

  if PACESSO.Visible = True then
     PACESSO.Visible:=False;

  if Panel1.Visible = False then
     Panel1.Visible:=True;

  Label5.Caption := DM.cds_SenhaLOGIN.AsString;
  Label7.Caption := 'Rel. Carteirinha';
end;

procedure TfGerencia_Acessos.Sair1Click(Sender: TObject);
begin
 close;
end;

procedure TfGerencia_Acessos.VerLogs1Click(Sender: TObject);
begin
   if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Ver Logs';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Ver Logs';
   dm.cdsPermissaoCHAVE.AsString :=
     DM.cds_SenhaLOGIN.AsString + 'Ver Logs';
  end;

  if Panel8.Visible = True then
     Panel8.Visible:=false;

  if PACESSO.Visible = True then
     PACESSO.Visible:=False;

  if Panel1.Visible = False then
     Panel1.Visible:=True;

  Label5.Caption := DM.cds_SenhaLOGIN.AsString;
  Label7.Caption := 'Ver Logs';
end;

procedure TfGerencia_Acessos.Bairro1Click(Sender: TObject);
begin
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Bairro';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Bairro';
   dm.cdsPermissaoCHAVE.AsString :=
     DM.cds_SenhaLOGIN.AsString + 'Bairro';
  end;

  if Panel8.Visible = True then
     Panel8.Visible:=false;

  if PACESSO.Visible = False then
     PACESSO.Visible:=True;

  if Panel1.Visible = True then
     Panel1.Visible:=false;

  Label1.Caption := DM.cds_SenhaLOGIN.AsString;
  Label3.Caption := 'Bairro';

end;

procedure TfGerencia_Acessos.Municipio1Click(Sender: TObject);
begin
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Municipio';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Municipio';
   dm.cdsPermissaoCHAVE.AsString :=
     DM.cds_SenhaLOGIN.AsString + 'Municipio';
  end;

  if Panel8.Visible = True then
     Panel8.Visible:=false;

  if PACESSO.Visible = False then
     PACESSO.Visible:=True;

  if Panel1.Visible = True then
     Panel1.Visible:=false;

  Label1.Caption := DM.cds_SenhaLOGIN.AsString;
  Label3.Caption := 'Municipio';
end;

procedure TfGerencia_Acessos.Cartrio1Click(Sender: TObject);
begin
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Cartório';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Cartório';
   dm.cdsPermissaoCHAVE.AsString :=
     DM.cds_SenhaLOGIN.AsString + 'Cartório';
  end;

  if Panel8.Visible = True then
     Panel8.Visible:=false;

  if PACESSO.Visible = False then
     PACESSO.Visible:=True;

  if Panel1.Visible = True then
     Panel1.Visible:=false;

  Label1.Caption := DM.cds_SenhaLOGIN.AsString;
  Label3.Caption := 'Cartório';

end;

procedure TfGerencia_Acessos.Urnas1Click(Sender: TObject);
begin
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Produtos';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Produtos';
   dm.cdsPermissaoCHAVE.AsString :=
     DM.cds_SenhaLOGIN.AsString + 'Produtos';
  end;

  if Panel8.Visible = True then
     Panel8.Visible:=false;

  if PACESSO.Visible = False then
     PACESSO.Visible:=True;

  if Panel1.Visible = True then
     Panel1.Visible:=false;

  Label1.Caption := DM.cds_SenhaLOGIN.AsString;
  Label3.Caption := 'Produtos';


end;

procedure TfGerencia_Acessos.Fornecedores1Click(Sender: TObject);
begin
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Fornecedor';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Fornecedor';
   dm.cdsPermissaoCHAVE.AsString :=
     DM.cds_SenhaLOGIN.AsString + 'Fornecedor';
  end;

  if Panel8.Visible = True then
     Panel8.Visible:=false;

  if PACESSO.Visible = False then
     PACESSO.Visible:=True;

  if Panel1.Visible = True then
     Panel1.Visible:=false;

  Label1.Caption := DM.cds_SenhaLOGIN.AsString;
  Label3.Caption := 'Fornecedor';

end;

procedure TfGerencia_Acessos.Compras1Click(Sender: TObject);
begin
   if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Compras';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Compras';
   dm.cdsPermissaoCHAVE.AsString :=
     DM.cds_SenhaLOGIN.AsString + 'Compras';
  end;

  if Panel8.Visible = True then
     Panel8.Visible:=false;

  if PACESSO.Visible = True then
     PACESSO.Visible:=False;

  if Panel1.Visible = False then
     Panel1.Visible:=True;

  Label5.Caption := DM.cds_SenhaLOGIN.AsString;
  Label7.Caption := 'Compras';

end;

procedure TfGerencia_Acessos.SpeedButton6Click(Sender: TObject);
begin
  // Acesso a Tabela Empresa
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Empresa';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Empresa';
   dm.cdsPermissaoCHAVE.AsString := DM.cds_SenhaLOGIN.AsString + 'Empresa';
   dm.cdsPermissaoINCLUIR.AsString := 'S';
   dm.cdsPermissaoEXCLUIR.AsString := 'S';
   dm.cdsPermissaoALTERAR.AsString := 'S';
   dm.cdsPermissaoCONSULTAR.AsString := 'S';
   dm.cdsPermissao.ApplyUpdates(0);
   dm.cdsPermissao.Close;
  end;
  // Acesso a Tabela Clinica
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Clinica';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Clinica';
   dm.cdsPermissaoCHAVE.AsString := DM.cds_SenhaLOGIN.AsString + 'Clinica';
   dm.cdsPermissaoINCLUIR.AsString := 'S';
   dm.cdsPermissaoEXCLUIR.AsString := 'S';
   dm.cdsPermissaoALTERAR.AsString := 'S';
   dm.cdsPermissaoCONSULTAR.AsString := 'S';
   dm.cdsPermissao.ApplyUpdates(0);
   dm.cdsPermissao.Close;
  end;
  // Acesso a Tabela Série
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Série';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Série';
   dm.cdsPermissaoCHAVE.AsString := DM.cds_SenhaLOGIN.AsString + 'Série';
   dm.cdsPermissaoINCLUIR.AsString := 'S';
   dm.cdsPermissaoEXCLUIR.AsString := 'S';
   dm.cdsPermissaoALTERAR.AsString := 'S';
   dm.cdsPermissaoCONSULTAR.AsString := 'S';
   dm.cdsPermissao.ApplyUpdates(0);
   dm.cdsPermissao.Close;
  end;
  // Acesso a Tabela Grupo
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Grupo';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Grupo';
   dm.cdsPermissaoCHAVE.AsString := DM.cds_SenhaLOGIN.AsString + 'Grupo';
   dm.cdsPermissaoINCLUIR.AsString := 'S';
   dm.cdsPermissaoEXCLUIR.AsString := 'S';
   dm.cdsPermissaoALTERAR.AsString := 'S';
   dm.cdsPermissaoCONSULTAR.AsString := 'S';
   dm.cdsPermissao.ApplyUpdates(0);
   dm.cdsPermissao.Close;
  end;
  // Acesso a Tabela Grupo
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Funcionários';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Funcionários';
   dm.cdsPermissaoCHAVE.AsString := DM.cds_SenhaLOGIN.AsString + 'Funcionários';
   dm.cdsPermissaoINCLUIR.AsString := 'S';
   dm.cdsPermissaoEXCLUIR.AsString := 'S';
   dm.cdsPermissaoALTERAR.AsString := 'S';
   dm.cdsPermissaoCONSULTAR.AsString := 'S';
   dm.cdsPermissao.ApplyUpdates(0);
   dm.cdsPermissao.Close;
  end;
  // Acesso a Tabela Sócios
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Sócios';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Sócios';
   dm.cdsPermissaoCHAVE.AsString := DM.cds_SenhaLOGIN.AsString + 'Sócios';
   dm.cdsPermissaoINCLUIR.AsString := 'S';
   dm.cdsPermissaoEXCLUIR.AsString := 'S';
   dm.cdsPermissaoALTERAR.AsString := 'S';
   dm.cdsPermissaoCONSULTAR.AsString := 'S';
   dm.cdsPermissao.ApplyUpdates(0);
   dm.cdsPermissao.Close;
  end;
  // Acesso a Tabela Vendedores
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Vendedores';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Vendedores';
   dm.cdsPermissaoCHAVE.AsString := DM.cds_SenhaLOGIN.AsString + 'Vendedores';
   dm.cdsPermissaoINCLUIR.AsString := 'S';
   dm.cdsPermissaoEXCLUIR.AsString := 'S';
   dm.cdsPermissaoALTERAR.AsString := 'S';
   dm.cdsPermissaoCONSULTAR.AsString := 'S';
   dm.cdsPermissao.ApplyUpdates(0);
   dm.cdsPermissao.Close;
  end;
  // Acesso a Tabela Cobradores
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Cobradores';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Cobradores';
   dm.cdsPermissaoCHAVE.AsString := DM.cds_SenhaLOGIN.AsString + 'Cobradores';
   dm.cdsPermissaoINCLUIR.AsString := 'S';
   dm.cdsPermissaoEXCLUIR.AsString := 'S';
   dm.cdsPermissaoALTERAR.AsString := 'S';
   dm.cdsPermissaoCONSULTAR.AsString := 'S';
   dm.cdsPermissao.ApplyUpdates(0);
   dm.cdsPermissao.Close;
  end;
  // Acesso a Tabela Mensalidades
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Mensalidades';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Mensalidades';
   dm.cdsPermissaoCHAVE.AsString := DM.cds_SenhaLOGIN.AsString + 'Mensalidades';
   dm.cdsPermissaoINCLUIR.AsString := 'S';
   dm.cdsPermissaoEXCLUIR.AsString := 'S';
   dm.cdsPermissaoALTERAR.AsString := 'S';
   dm.cdsPermissaoCONSULTAR.AsString := 'S';
   dm.cdsPermissao.ApplyUpdates(0);
   dm.cdsPermissao.Close;
  end;
  // Acesso a Tabela Óbitos
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Óbitos';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Óbitos';
   dm.cdsPermissaoCHAVE.AsString := DM.cds_SenhaLOGIN.AsString + 'Óbitos';
   dm.cdsPermissaoINCLUIR.AsString := 'S';
   dm.cdsPermissaoEXCLUIR.AsString := 'S';
   dm.cdsPermissaoALTERAR.AsString := 'S';
   dm.cdsPermissaoCONSULTAR.AsString := 'S';
   dm.cdsPermissao.ApplyUpdates(0);
   dm.cdsPermissao.Close;
  end;
  // Acesso a Tabela Consultas
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Consultas';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Consultas';
   dm.cdsPermissaoCHAVE.AsString := DM.cds_SenhaLOGIN.AsString + 'Consultas';
   dm.cdsPermissaoINCLUIR.AsString := 'S';
   dm.cdsPermissaoEXCLUIR.AsString := 'S';
   dm.cdsPermissaoALTERAR.AsString := 'S';
   dm.cdsPermissaoCONSULTAR.AsString := 'S';
   dm.cdsPermissao.ApplyUpdates(0);
   dm.cdsPermissao.Close;
  end;
  // Acesso a Tabela Despesas
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Despesas';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Despesas';
   dm.cdsPermissaoCHAVE.AsString := DM.cds_SenhaLOGIN.AsString + 'Despesas';
   dm.cdsPermissaoINCLUIR.AsString := 'S';
   dm.cdsPermissaoEXCLUIR.AsString := 'S';
   dm.cdsPermissaoALTERAR.AsString := 'S';
   dm.cdsPermissaoCONSULTAR.AsString := 'S';
   dm.cdsPermissao.ApplyUpdates(0);
   dm.cdsPermissao.Close;
  end;
  // Acesso a Tabela Receitas
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Receitas';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Receitas';
   dm.cdsPermissaoCHAVE.AsString := DM.cds_SenhaLOGIN.AsString + 'Receitas';
   dm.cdsPermissaoINCLUIR.AsString := 'S';
   dm.cdsPermissaoEXCLUIR.AsString := 'S';
   dm.cdsPermissaoALTERAR.AsString := 'S';
   dm.cdsPermissaoCONSULTAR.AsString := 'S';
   dm.cdsPermissao.ApplyUpdates(0);
   dm.cdsPermissao.Close;
  end;
  // Acesso a Tabela Gerar Lotes
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Gerar Lotes';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Gerar Lotes';
   dm.cdsPermissaoCHAVE.AsString := DM.cds_SenhaLOGIN.AsString + 'Gerar Lotes';
   dm.cdsPermissaoINCLUIR.AsString := 'S';
   dm.cdsPermissaoEXCLUIR.AsString := 'S';
   dm.cdsPermissaoALTERAR.AsString := 'S';
   dm.cdsPermissaoCONSULTAR.AsString := 'S';
   dm.cdsPermissao.ApplyUpdates(0);
   dm.cdsPermissao.Close;
  end;
  // Acesso a Tabela Contas a Pagar
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Contas a Pagar';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Contas a Pagar';
   dm.cdsPermissaoCHAVE.AsString := DM.cds_SenhaLOGIN.AsString + 'Contas a Pagar';
   dm.cdsPermissaoINCLUIR.AsString := 'S';
   dm.cdsPermissaoEXCLUIR.AsString := 'S';
   dm.cdsPermissaoALTERAR.AsString := 'S';
   dm.cdsPermissaoCONSULTAR.AsString := 'S';
   dm.cdsPermissao.ApplyUpdates(0);
   dm.cdsPermissao.Close;
  end;
  // Acesso a Tabela Receber Óbitos
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Receber Óbitos';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Receber Óbitos';
   dm.cdsPermissaoCHAVE.AsString := DM.cds_SenhaLOGIN.AsString + 'Receber Óbitos';
   dm.cdsPermissaoINCLUIR.AsString := 'S';
   dm.cdsPermissaoEXCLUIR.AsString := 'S';
   dm.cdsPermissaoALTERAR.AsString := 'S';
   dm.cdsPermissaoCONSULTAR.AsString := 'S';
   dm.cdsPermissao.ApplyUpdates(0);
   dm.cdsPermissao.Close;
  end;
  // Acesso a Tabela Receber Mensalidades
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Receber Mensalidades';
  dm.cdsPermissao.Open;                          
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Receber Mensalidades';
   dm.cdsPermissaoCHAVE.AsString := DM.cds_SenhaLOGIN.AsString + 'Receber Mensalidades';
   dm.cdsPermissaoINCLUIR.AsString := 'S';
   dm.cdsPermissaoEXCLUIR.AsString := 'S';
   dm.cdsPermissaoALTERAR.AsString := 'S';
   dm.cdsPermissaoCONSULTAR.AsString := 'S';
   dm.cdsPermissao.ApplyUpdates(0);
   dm.cdsPermissao.Close;
  end;
  // Acesso a Tabela Pesq. Óbitos
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Pesq. Óbitos';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Pesq. Óbitos';
   dm.cdsPermissaoCHAVE.AsString := DM.cds_SenhaLOGIN.AsString + 'Pesq. Óbitos';
   dm.cdsPermissaoINCLUIR.AsString := 'S';
   dm.cdsPermissaoEXCLUIR.AsString := 'S';
   dm.cdsPermissaoALTERAR.AsString := 'S';
   dm.cdsPermissaoCONSULTAR.AsString := 'S';
   dm.cdsPermissao.ApplyUpdates(0);
   dm.cdsPermissao.Close;
  end;
  // Acesso a Tabela Sócios Cancelados
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Sócios Cancelados';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Sócios Cancelados';
   dm.cdsPermissaoCHAVE.AsString := DM.cds_SenhaLOGIN.AsString + 'Sócios Cancelados';
   dm.cdsPermissaoINCLUIR.AsString := 'S';
   dm.cdsPermissaoEXCLUIR.AsString := 'S';
   dm.cdsPermissaoALTERAR.AsString := 'S';
   dm.cdsPermissaoCONSULTAR.AsString := 'S';
   dm.cdsPermissao.ApplyUpdates(0);
   dm.cdsPermissao.Close;
  end;
  // Acesso a Tabela Rel. Óbitos
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Rel. Óbitos';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Rel. Óbitos';
   dm.cdsPermissaoCHAVE.AsString := DM.cds_SenhaLOGIN.AsString + 'Rel. Óbitos';
   dm.cdsPermissaoINCLUIR.AsString := 'S';
   dm.cdsPermissaoEXCLUIR.AsString := 'S';
   dm.cdsPermissaoALTERAR.AsString := 'S';
   dm.cdsPermissaoCONSULTAR.AsString := 'S';
   dm.cdsPermissao.ApplyUpdates(0);
   dm.cdsPermissao.Close;
  end;
  // Acesso a Tabela Rel. Circular
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Rel. Circular';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Rel. Circular';
   dm.cdsPermissaoCHAVE.AsString := DM.cds_SenhaLOGIN.AsString + 'Rel. Circular';
   dm.cdsPermissaoINCLUIR.AsString := 'S';
   dm.cdsPermissaoEXCLUIR.AsString := 'S';
   dm.cdsPermissaoALTERAR.AsString := 'S';
   dm.cdsPermissaoCONSULTAR.AsString := 'S';
   dm.cdsPermissao.ApplyUpdates(0);
   dm.cdsPermissao.Close;
  end;
  // Acesso a Tabela Rel. Contrato
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Rel. Contrato';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Rel. Contrato';
   dm.cdsPermissaoCHAVE.AsString := DM.cds_SenhaLOGIN.AsString + 'Rel. Contrato';
   dm.cdsPermissaoINCLUIR.AsString := 'S';
   dm.cdsPermissaoEXCLUIR.AsString := 'S';
   dm.cdsPermissaoALTERAR.AsString := 'S';
   dm.cdsPermissaoCONSULTAR.AsString := 'S';
   dm.cdsPermissao.ApplyUpdates(0);
   dm.cdsPermissao.Close;
  end;
  // Acesso a Tabela Rel. Carteirinha
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Rel. Carteirinha';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Rel. Carteirinha';
   dm.cdsPermissaoCHAVE.AsString := DM.cds_SenhaLOGIN.AsString + 'Rel. Carteirinha';
   dm.cdsPermissaoINCLUIR.AsString := 'S';
   dm.cdsPermissaoEXCLUIR.AsString := 'S';
   dm.cdsPermissaoALTERAR.AsString := 'S';
   dm.cdsPermissaoCONSULTAR.AsString := 'S';
   dm.cdsPermissao.ApplyUpdates(0);
   dm.cdsPermissao.Close;
  end;
  // Acesso a Tabela Ver Logs
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Ver Logs';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Ver Logs';
   dm.cdsPermissaoCHAVE.AsString := DM.cds_SenhaLOGIN.AsString + 'Ver Logs';
   dm.cdsPermissaoINCLUIR.AsString := 'S';
   dm.cdsPermissaoEXCLUIR.AsString := 'S';
   dm.cdsPermissaoALTERAR.AsString := 'S';
   dm.cdsPermissaoCONSULTAR.AsString := 'S';
   dm.cdsPermissao.ApplyUpdates(0);
   dm.cdsPermissao.Close;
  end;
  // Acesso a Tabela Bairro
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Bairro';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Bairro';
   dm.cdsPermissaoCHAVE.AsString := DM.cds_SenhaLOGIN.AsString + 'Bairro';
   dm.cdsPermissaoINCLUIR.AsString := 'S';
   dm.cdsPermissaoEXCLUIR.AsString := 'S';
   dm.cdsPermissaoALTERAR.AsString := 'S';
   dm.cdsPermissaoCONSULTAR.AsString := 'S';
   dm.cdsPermissao.ApplyUpdates(0);
   dm.cdsPermissao.Close;
  end;
  // Acesso a Tabela Municipio
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Municipio';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Municipio';
   dm.cdsPermissaoCHAVE.AsString := DM.cds_SenhaLOGIN.AsString + 'Municipio';
   dm.cdsPermissaoINCLUIR.AsString := 'S';
   dm.cdsPermissaoEXCLUIR.AsString := 'S';
   dm.cdsPermissaoALTERAR.AsString := 'S';
   dm.cdsPermissaoCONSULTAR.AsString := 'S';
   dm.cdsPermissao.ApplyUpdates(0);
   dm.cdsPermissao.Close;
  end;
  // Acesso a Tabela Cartório
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Cartório';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Cartório';
   dm.cdsPermissaoCHAVE.AsString := DM.cds_SenhaLOGIN.AsString + 'Cartório';
   dm.cdsPermissaoINCLUIR.AsString := 'S';
   dm.cdsPermissaoEXCLUIR.AsString := 'S';
   dm.cdsPermissaoALTERAR.AsString := 'S';
   dm.cdsPermissaoCONSULTAR.AsString := 'S';
   dm.cdsPermissao.ApplyUpdates(0);
   dm.cdsPermissao.Close;
  end;
  // Acesso a Tabela Produtos
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Produtos';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Produtos';
   dm.cdsPermissaoCHAVE.AsString := DM.cds_SenhaLOGIN.AsString + 'Produtos';
   dm.cdsPermissaoINCLUIR.AsString := 'S';
   dm.cdsPermissaoEXCLUIR.AsString := 'S';
   dm.cdsPermissaoALTERAR.AsString := 'S';
   dm.cdsPermissaoCONSULTAR.AsString := 'S';
   dm.cdsPermissao.ApplyUpdates(0);
   dm.cdsPermissao.Close;
  end;
  // Acesso a Tabela Fornecedor
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Fornecedor';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Fornecedor';
   dm.cdsPermissaoCHAVE.AsString := DM.cds_SenhaLOGIN.AsString + 'Fornecedor';
   dm.cdsPermissaoINCLUIR.AsString := 'S';
   dm.cdsPermissaoEXCLUIR.AsString := 'S';
   dm.cdsPermissaoALTERAR.AsString := 'S';
   dm.cdsPermissaoCONSULTAR.AsString := 'S';
   dm.cdsPermissao.ApplyUpdates(0);
   dm.cdsPermissao.Close;
  end;
  // Acesso a Tabela Compras
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].Clear;
  dm.cdsPermissao.Params[1].Clear;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'Compras';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'Compras';
   dm.cdsPermissaoCHAVE.AsString := DM.cds_SenhaLOGIN.AsString + 'Compras';
   dm.cdsPermissaoINCLUIR.AsString := 'S';
   dm.cdsPermissaoEXCLUIR.AsString := 'S';
   dm.cdsPermissaoALTERAR.AsString := 'S';
   dm.cdsPermissaoCONSULTAR.AsString := 'S';
   dm.cdsPermissao.ApplyUpdates(0);
  end;

end;

procedure TfGerencia_Acessos.Bancos1Click(Sender: TObject);
begin
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'banco';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'banco';
   dm.cdsPermissaoCHAVE.AsString :=
     DM.cds_SenhaLOGIN.AsString + 'banco';
  end;

  if Panel8.Visible = True then
     Panel8.Visible:=false;

  if PACESSO.Visible = False then
     PACESSO.Visible:=True;

  if Panel1.Visible = True then
     Panel1.Visible:=false;

  Label1.Caption := DM.cds_SenhaLOGIN.AsString;
  Label3.Caption := 'banco';


end;

procedure TfGerencia_Acessos.Mdico1Click(Sender: TObject);
begin
  if dm.cdsPermissao.Active then
    dm.cdsPermissao.Close;
  dm.cdsPermissao.Params[0].AsString := DM.cds_SenhaLOGIN.AsString;
  dm.cdsPermissao.Params[1].AsString := 'medico';
  dm.cdsPermissao.Open;
  if dm.cdsPermissao.IsEmpty then
  begin
   dm.cdsPermissao.Append;
   dm.cdsPermissaoLOGIN.AsString := DM.cds_SenhaLOGIN.AsString;
   dm.cdsPermissaoTABELA.AsString := 'medico';
   dm.cdsPermissaoCHAVE.AsString :=
     DM.cds_SenhaLOGIN.AsString + 'medico';
  end;

  if Panel8.Visible = True then
     Panel8.Visible:=false;

  if PACESSO.Visible = False then
     PACESSO.Visible:=True;

  if Panel1.Visible = True then
     Panel1.Visible:=false;

  Label1.Caption := DM.cds_SenhaLOGIN.AsString;
  Label3.Caption := 'medico';
end;

end.
