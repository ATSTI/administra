unit uOperacoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  DBCtrls, FMTBcd, Provider, DBClient, SqlExpr, Grids, DBGrids,
  JvExDBGrids, JvDBGrid;

type
  TfOperacoes = class(TfPai)
    sTipoOper: TSQLDataSet;
    sTipoOperCODDADOS: TIntegerField;
    sTipoOperDESCRICAO: TStringField;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    dblCodigo: TDBLookupComboBox;
    sCodigo: TSQLDataSet;
    dCodigo: TDataSetProvider;
    cCodigo: TClientDataSet;
    dtsCodigo: TDataSource;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    JvDBGrid1: TJvDBGrid;
    cCodigoCODFAIXA: TIntegerField;
    sCodigoCODFAIXA: TIntegerField;
    sCodigoCODIGOS: TIntegerField;
    cCodigoCODIGOS: TIntegerField;
    sModoDet: TSQLDataSet;
    JvDBGrid2: TJvDBGrid;
    dModoDet: TDataSetProvider;
    cModoDet: TClientDataSet;
    dtsModoDet: TDataSource;
    cModoDetCODDADOS: TIntegerField;
    cModoDetDESCRICAO: TStringField;
    cModoDetUSO: TStringField;
    cModoDetCODIGOS: TStringField;
    cModoDetOUTROS: TStringField;
    sModoDetCODDADOS: TIntegerField;
    sModoDetDESCRICAO: TStringField;
    sModoDetUSO: TStringField;
    sModoDetCODIGOS: TStringField;
    sModoDetOUTROS: TStringField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fOperacoes: TfOperacoes;

implementation

uses UDm, uDmTransp;

{$R *.dfm}

procedure TfOperacoes.FormShow(Sender: TObject);
begin
  inherited;
  if (sTipoOper.Active) then
     sTipoOper.Close;
  sTipoOper.Params[0].Clear;
  sTipoOper.Params[0].AsString := 'OPERAÇÃO';
  sTipoOper.Open;
  sTipoOper.First;
  while not sTipoOper.Eof do
  begin
    ComboBox3.Items.Add(sTipoOperDESCRICAO.AsString);
    sTipoOper.Next;
  end;
  sTipoOper.Close;
  if (sTipoOper.Active) then
     sTipoOper.Close;
  sTipoOper.Params[0].Clear;
  sTipoOper.Params[0].AsString := 'TIPO DE SERVIÇO';
  sTipoOper.Open;
  sTipoOper.First;
  while not sTipoOper.Eof do
  begin
    ComboBox5.Items.Add(sTipoOperDESCRICAO.AsString);
    sTipoOper.Next;
  end;
  sTipoOper.Close;
  if (sTipoOper.Active) then
     sTipoOper.Close;
  sTipoOper.Params[0].Clear;
  sTipoOper.Params[0].AsString := 'MODO';
  sTipoOper.Open;
  sTipoOper.First;
  while not sTipoOper.Eof do
  begin
    ComboBox4.Items.Add(sTipoOperDESCRICAO.AsString);
    sTipoOper.Next;
  end;
  sTipoOper.Close;
  if (sTipoOper.Active) then
     sTipoOper.Close;
  sTipoOper.Params[0].Clear;
  sTipoOper.Params[0].AsString := 'SETOR';
  sTipoOper.Open;
  sTipoOper.First;
  while not sTipoOper.Eof do
  begin
    ComboBox6.Items.Add(sTipoOperDESCRICAO.AsString);
    sTipoOper.Next;
  end;
  sTipoOper.Close;
  cCodigo.Open;
  dmTransp.cdsOper.Open;
end;

procedure TfOperacoes.btnGravarClick(Sender: TObject);
var
  codigoFaixa : string;
begin
  if (dblCodigo.Text = '') then
  begin
       MessageDlg('É preciso informar a faixa', mtWarning, [mbOK], 0);
       dblCodigo.SetFocus;
       exit;
  end;
  codigoFaixa := '';
  if (ComboBox3.Text <> '') then  // Combo Operação
  begin
     if (sTipoOper.Active) then
        sTipoOper.Close;
     sTipoOper.Params[0].Clear;
     sTipoOper.Params[0].AsString := 'OPERAÇÃO';
     sTipoOper.Open;
     sTipoOper.Locate('DESCRICAO', ComboBox3.Text,[loCaseInsensitive]);
     codigoFaixa := IntToStr(sTipoOperCODDADOS.AsInteger);
     sTipoOper.Close;
  end;

  if (ComboBox5.Text <> '') then // Combo Tipo Serviço
  begin
     if (sTipoOper.Active) then
        sTipoOper.Close;
     sTipoOper.Params[0].Clear;
     sTipoOper.Params[0].AsString := 'TIPO DE SERVIÇO';
     sTipoOper.Open;
     sTipoOper.Locate('DESCRICAO', ComboBox5.Text,[loCaseInsensitive]);
     codigoFaixa := codigoFaixa + IntToStr(sTipoOperCODDADOS.AsInteger);
     sTipoOper.Close;
  end;


  if (ComboBox4.Text <> '') then  // Combo Modo
  begin
    { if (not cModoDet.IsEmpty) then
       cModoDet.First;
       while not cModoDet.eof do
       begin
           codigoFaixa := codigoFaixa + IntToStr(cModoDetCODDADOS.AsInteger);
           cModoDet.Next;
       end;}
     if (sTipoOper.Active) then
        sTipoOper.Close;
     sTipoOper.Params[0].Clear;
     sTipoOper.Params[0].AsString := 'MODO';
     sTipoOper.Open;
     sTipoOper.Locate('DESCRICAO', ComboBox4.Text,[loCaseInsensitive]);
     codigoFaixa := codigoFaixa + IntToStr(sTipoOperCODDADOS.AsInteger);
     sTipoOper.Close;
  end;

  if (ComboBox6.Text <> '') then  // Combo Setor
  begin
     if (sTipoOper.Active) then
        sTipoOper.Close;
     sTipoOper.Params[0].Clear;
     sTipoOper.Params[0].AsString := 'SETOR';
     sTipoOper.Open;
     sTipoOper.Locate('DESCRICAO', ComboBox6.Text,[loCaseInsensitive]);
     codigoFaixa := codigoFaixa + IntToStr(sTipoOperCODDADOS.AsInteger);
     sTipoOper.Close;
  end;
  if (cCodigoCODIGOS.AsInteger = 1) then
      dmTransp.cdsOperTIPO.AsString := 'Tabela 1';
  if (cCodigoCODIGOS.AsInteger = 2) then
      dmTransp.cdsOperTIPO.AsString := 'Tabela 2';
  dmTransp.cdsOperCODFAIXADET.AsInteger := StrToInt(codigoFaixa);

  {if (not cModoDet.IsEmpty) then
    cModoDet.First;
    while not cModoDet.eof do
    begin
       cModoDet.Edit;
       cModoDetCODIGOS.AsString := codigoFaixa;
       cModoDet.Post;
       cModoDet.Next;
    end;
    cModoDet.ApplyUpdates(0);
    }
  codigoFaixa := '';

  inherited;

end;

procedure TfOperacoes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cCodigo.close;
  dmTransp.cdsOper.close;
  cModoDet.Close;
  inherited;

end;

procedure TfOperacoes.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if (ComboBox4.Text = '') then
  begin
    MessageDlg('Preencha o campo MODO', mtWarning, [mbOK], 0);
    exit;
  end;
  if (DtSrc.State in [dsInsert]) then
  begin
    //Abre a c_genid para pegar o número do CODPAGAMENTO
    cModoDet.Open;
    cModoDet.Append;
    if dmTransp.c_6_genid.Active then
      dmTransp.c_6_genid.Close;
    dmTransp.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_DADOS_COMBOS, 1) as INTEGER) as CODIGO FROM RDB$DATABASE';
    dmTransp.c_6_genid.Open;
    cModoDetCODDADOS.AsInteger := dmTransp.c_6_genid.fields[0].AsInteger;
    dmTransp.c_6_genid.Close;
    cModoDetUSO.asString := 'MODODET';
    cModoDetDESCRICAO.asString := ComboBox4.Text;
    cModoDet.ApplyUpdates(0);
   end;
end;

end.
