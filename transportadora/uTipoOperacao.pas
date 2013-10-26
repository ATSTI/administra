unit uTipoOperacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, Mask, DBCtrls, Grids, DBGrids;

type
  TfTipoOperacao = class(TfPai_new)
    Label2: TLabel;
    DBGrid1: TDBGrid;
    DBEdit2: TDBEdit;
    ComboBox1: TComboBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    procedure btnGravarClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTipoOperacao: TfTipoOperacao;

implementation

uses uDmTransp;

{$R *.dfm}

procedure TfTipoOperacao.btnGravarClick(Sender: TObject);
begin
  if (ComboBox1.Text = '') then
  begin
    MessageDlg('Preencha o campo TIPO', mtWarning, [mbOK], 0);
    exit;
  end;
  if (DtSrc.State in [dsInsert]) then
  begin
    //Abre a c_genid para pegar o número do CODPAGAMENTO
    if dmTransp.c_6_genid.Active then
      dmTransp.c_6_genid.Close;
    dmTransp.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_DADOS_COMBOS, 1) as INTEGER) as CODIGO FROM RDB$DATABASE';
    dmTransp.c_6_genid.Open;
    dmTransp.cdsTipoOperCODDADOS.AsInteger := dmTransp.c_6_genid.fields[0].AsInteger;
    dmTransp.c_6_genid.Close;
    dmTransp.cdsTipoOperUSO.asString := ComboBox1.Text;
  end;
  inherited;
end;

procedure TfTipoOperacao.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  if (btnGravar.Visible) then
    btnGravar.SetFocus;
end;

procedure TfTipoOperacao.btnIncluirClick(Sender: TObject);
begin
  inherited;
  if (ComboBox1.Text = '') then
      ComboBox1.SetFocus
  else
      dbEdit2.SetFocus;
end;

procedure TfTipoOperacao.FormShow(Sender: TObject);
begin
  inherited;
  if (dmTransp.cdsTipoOper.Active) then
      dmTransp.cdsTipoOper.Close;
  dmTransp.cdsTipoOper.Params[0].Clear;
  dmTransp.cdsTipoOper.Params[1].AsString := 'todos os tipos de uso';
  dmTransp.cdsTipoOper.Open;
  if (dmTransp.cdsTipoOper.IsEmpty) then
      dmTransp.cdsTipoOper.Close;
end;

procedure TfTipoOperacao.ComboBox1Exit(Sender: TObject);
begin
  inherited;
  if (not dmTransp.cdsTipoOper.Active) then
  begin
     ComboBox1.Text := '';
     btnIncluir.SetFocus;
  end;

end;

procedure TfTipoOperacao.BitBtn1Click(Sender: TObject);
begin
  inherited;
    if (dmTransp.cdsTipoOper.Active) then
      if (ComboBox1.Text <> '') then
      begin
        if (dmTransp.cdsTipoOper.Active) then
            dmTransp.cdsTipoOper.Close;
        dmTransp.cdsTipoOper.Params[1].Clear;
        dmTransp.cdsTipoOper.Params[0].AsString := ComboBox1.Text;
        dmTransp.cdsTipoOper.Open;
      end;
end;

end.
