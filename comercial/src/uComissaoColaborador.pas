unit uComissaoColaborador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  FMTBcd, DBClient, Provider, SqlExpr, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, Mask, JvExMask, JvSpin, DBXPress, JvToolEdit, JvBaseEdits;

type
  TfComissaoColaborador = class(TfPai)
    Label3: TLabel;
    cbColaborador: TComboBox;
    cbProduto: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    JvDBGrid1: TJvDBGrid;
    sComissao: TSQLDataSet;
    dComissao: TDataSetProvider;
    cComissao: TClientDataSet;
    sColaborador: TSQLDataSet;
    sColaboradorCOD_FUNCIONARIO: TIntegerField;
    sColaboradorNOME_FUNCIONARIO: TStringField;
    sProduto: TSQLDataSet;
    sProdutoCODPRODUTO: TIntegerField;
    sProdutoPRODUTO: TStringField;
    sComissaoCOD_COMISSAO: TIntegerField;
    sComissaoCOD_COLABORADOR: TIntegerField;
    sComissaoCOD_PRODUTO: TIntegerField;
    sComissaoVALORCOMISSAO: TFloatField;
    sComissaoPRODUTO: TStringField;
    cComissaoCOD_COMISSAO: TIntegerField;
    cComissaoCOD_COLABORADOR: TIntegerField;
    cComissaoCOD_PRODUTO: TIntegerField;
    cComissaoVALORCOMISSAO: TFloatField;
    cComissaoPRODUTO: TStringField;
    edComissao: TJvCalcEdit;
    procedure FormCreate(Sender: TObject);
    procedure cbColaboradorChange(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cbColaboradorKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fComissaoColaborador: TfComissaoColaborador;

implementation

uses UDm;

{$R *.dfm}

procedure TfComissaoColaborador.FormCreate(Sender: TObject);
begin
//  inherited;
  if (not sColaborador.Active) then
    sColaborador.Open;
  sColaborador.First;
  while not sColaborador.Eof do
  begin
     cbColaborador.Items.Add(sColaboradorNOME_FUNCIONARIO.AsString);
     sColaborador.Next;
  end;
  sColaborador.Close;
  if (not sProduto.Active) then
    sProduto.Open;
  sProduto.First;
  while not sProduto.Eof do
  begin
     cbProduto.Items.Add(sProdutoPRODUTO.AsString);
     sProduto.Next;
  end;
  sProduto.Close;

end;

procedure TfComissaoColaborador.cbColaboradorChange(Sender: TObject);
var id_colaborador : integer;
begin
  inherited;
  if (not sColaborador.Active) then
     sColaborador.Open;
  sColaborador.Locate('NOME_FUNCIONARIO',cbColaborador.Text, [loCaseInsensitive]);
  id_colaborador := sColaboradorCOD_FUNCIONARIO.AsInteger;
  sColaborador.Close;
  if (cComissao.Active) then
     cComissao.Close;
  cComissao.Params[0].AsInteger := id_colaborador;
  cComissao.Open;
end;

procedure TfComissaoColaborador.btnIncluirClick(Sender: TObject);
var sqlInsere: String;
  TD: TTransactionDesc;
  id_comissao, id_colaborador, id_produto : integer;
begin
    if (cbProduto.Text = '') then
    begin
      MessageDlg('Escolha um produto', mtWarning, [mbOK], 0);
      exit;
    end;
    if (edComissao.Value = 0) then
    begin
      MessageDlg('Informe o valor da Comissão', mtWarning, [mbOK], 0);
      exit;
    end;

    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    // Movimento
    DecimalSeparator := '.';
    sqlInsere := 'INSERT INTO COMISSAOCOLABORADOR(COD_COMISSAO, COD_COLABORADOR, COD_PRODUTO,'+
      ' VALORCOMISSAO) VALUES (';
    if dm.c_6_genid.Active then
       dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(ID_COMISSAO, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    id_comissao := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
    sqlInsere := sqlInsere + IntToStr(id_comissao);
    if (not sColaborador.Active) then
       sColaborador.Open;
    sColaborador.Locate('NOME_FUNCIONARIO',cbColaborador.Text, [loCaseInsensitive]);
    id_colaborador := sColaboradorCOD_FUNCIONARIO.AsInteger;
    sColaborador.Close;
    sqlInsere := sqlInsere + ', ' + IntToStr(id_colaborador);
    if (not sProduto.Active) then
       sProduto.Open;
    sProduto.Locate('PRODUTO',cbProduto.Text, [loCaseInsensitive]);
    id_produto := sProdutoCODPRODUTO.AsInteger;
    sProduto.Close;
    sqlInsere := sqlInsere + ', ' + IntToStr(id_produto);
    sqlInsere := sqlInsere + ', ' + IntToStr(edComissao.AsInteger) + ')';
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(sqlInsere);
    dm.sqlsisAdimin.Commit(TD);
    DecimalSeparator := ',';
    if (cComissao.Active) then
       cComissao.Close;
    cComissao.Params[0].AsInteger := id_colaborador;
    cComissao.Open;
    cbColaborador.SetFocus;
end;

procedure TfComissaoColaborador.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     DtSrc.DataSet.Delete;
     (DtSrc.DataSet as TClientDataSet).ApplyUpdates(0);
  end;
    //  inherited;

end;

procedure TfComissaoColaborador.btnCancelarClick(Sender: TObject);
begin
//  inherited;

end;

procedure TfComissaoColaborador.btnGravarClick(Sender: TObject);
begin
//  inherited;

end;

procedure TfComissaoColaborador.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfComissaoColaborador.cbColaboradorKeyPress(Sender: TObject;
  var Key: Char);
var id_colaborador : integer;
begin
  inherited;
 if (key = #13) then
 begin
  if (not sColaborador.Active) then
     sColaborador.Open;
  sColaborador.Locate('NOME_FUNCIONARIO',cbColaborador.Text, [loCaseInsensitive]);
  id_colaborador := sColaboradorCOD_FUNCIONARIO.AsInteger;
  sColaborador.Close;
  if (cComissao.Active) then
     cComissao.Close;
  cComissao.Params[0].AsInteger := id_colaborador;
  cComissao.Open;
 end;

end;

end.
