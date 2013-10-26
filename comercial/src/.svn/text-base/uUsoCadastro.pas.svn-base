unit uUsoCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  FMTBcd, DBCtrls, Grids, DBGrids, Mask, DBClient, Provider, SqlExpr, dbxpress;

type
  TfUsoCadastro = class(TfPai)
    sds_uso: TSQLDataSet;
    sds_usoCOD_PRODUTO: TIntegerField;
    sds_usoCOD_USO: TIntegerField;
    sds_usoDESCRICAO: TStringField;
    sds_usoANO_DE: TIntegerField;
    sds_usoANO_ATE: TIntegerField;
    dsp_uso: TDataSetProvider;
    cds_uso: TClientDataSet;
    cds_usoCOD_PRODUTO: TIntegerField;
    cds_usoCOD_USO: TIntegerField;
    cds_usoDESCRICAO: TStringField;
    cds_usoANO_DE: TIntegerField;
    cds_usoANO_ATE: TIntegerField;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBText2: TDBText;
    procedure btnIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fUsoCadastro: TfUsoCadastro;

implementation

uses uComercial, UDm, uProdutoCadastro, sCtrlResize;

{$R *.dfm}

procedure TfUsoCadastro.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBEdit1.Text := 'A';
  DBEdit1.SetFocus;
  DBEdit1.Text := '';
end;

procedure TfUsoCadastro.FormCreate(Sender: TObject);
begin
//  inherited;
   if cds_uso.Active then
     cds_uso.Close;
   cds_uso.Params[0].Clear;
   cds_uso.Params[0].AsInteger := dm.cds_produtoCODPRODUTO.AsInteger;
   cds_uso.Open;
end;

procedure TfUsoCadastro.DBEdit1Exit(Sender: TObject);
begin
  inherited;
  if (cds_uso.State in [dsInsert]) then
    btnGravar.SetFocus;
end;

procedure TfUsoCadastro.DtSrcStateChange(Sender: TObject);
begin
  Incluir  := 'S';
  Excluir  := 'S';
  Alterar  := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure TfUsoCadastro.btnGravarClick(Sender: TObject);
var  TD: TTransactionDesc;
begin
  if (DtSrc.State in [dsInsert]) then
  begin
    TD.TransactionID  := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    Try
      dm.sqlsisAdimin.StartTransaction(TD);
      dm.sqlsisAdimin.ExecuteDirect('INSERT INTO USO_PRODUTO (COD_PRODUTO, DESCRICAO)' +
        ' VALUES(' + InttoStr(dm.cds_produtoCODPRODUTO.AsInteger) + ', ' + QuotedStr(DBEdit1.Text)+ ')');
      dm.sqlsisAdimin.Commit(TD);
      MessageDlg('Gravado com sucesso.', mtInformation,
           [mbOk], 0);
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
      end;
    end;
  end;
  if (DtSrc.State in [dsEdit]) then
  begin
    TD.TransactionID  := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    Try
      dm.sqlsisAdimin.StartTransaction(TD);
      dm.sqlsisAdimin.ExecuteDirect('UPDATE USO_PRODUTO SET DESCRICAO = ' +
        QuotedStr(DBEdit1.Text) + ' WHERE COD_USO = ' + InttoStr(cds_usoCOD_USO.AsInteger));
      dm.sqlsisAdimin.Commit(TD);
      MessageDlg('Alterado com sucesso.', mtInformation,
           [mbOk], 0);
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
      end;
    end;
  end;
  cds_uso.Cancel;
  cds_uso.Close;
  cds_uso.Open;
end;

procedure TfUsoCadastro.FormShow(Sender: TObject);
begin
//  inherited;
   sCtrlResize.CtrlResize(TForm(fUsoCadastro));
   if (cds_uso.IsEmpty) then
     btnIncluir.Click
   else
     btnIncluir.SetFocus;
end;

end.
