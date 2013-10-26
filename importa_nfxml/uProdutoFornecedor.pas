unit uProdutoFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid,
  FMTBcd, DB, DBClient, Provider, SqlExpr, Buttons, dbxpress;

type
  TfProdutoFornec = class(TForm)
    Label1: TLabel;
    edCodProduto: TEdit;
    Label2: TLabel;
    edCodProdutoFornec: TEdit;
    Label3: TLabel;
    edCodFornec: TEdit;
    edProduto: TEdit;
    edProdutoFornec: TEdit;
    edFornec: TEdit;
    JvDBUltimGrid1: TJvDBUltimGrid;
    sdsProdutoFornec: TSQLDataSet;
    dspProdutoFornec: TDataSetProvider;
    cdsProdutoFornec: TClientDataSet;
    dsProdutoFornec: TDataSource;
    cdsProdutoFornecCODPRODUTO: TIntegerField;
    cdsProdutoFornecCODFORNECEDOR: TIntegerField;
    cdsProdutoFornecCODPRODFORNEC: TStringField;
    sqlBusca: TSQLQuery;
    btnInsere: TBitBtn;
    BitBtn1: TBitBtn;
    cdsProdutoFornecPRODUTO: TStringField;
    cdsProdutoFornecCP: TIntegerField;
    cdsProdutoFornecCODPRO: TStringField;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure edCodProdutoExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnInsereClick(Sender: TObject);
    procedure JvDBUltimGrid1CellClick(Column: TColumn);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    codFornec : String;
    nomeFornec: String;
    codProdFornec: String;
    codProduto: String;
    prodDescricao: String;
    prodDescricaoFornec: String;
    { Public declarations }
  end;

var
  fProdutoFornec: TfProdutoFornec;

implementation

uses uimporta_nfxml, uProdutoProc;

{$R *.dfm}

procedure TfProdutoFornec.FormShow(Sender: TObject);
begin
  cdsProdutoFornec.CommandText := 'SELECT pf.*, p.PRODUTO, p.CODPRODUTO CP, p.CODPRO' +
    ' FROM PRODUTO_FORNECEDOR pf' +
    ' LEFT OUTER JOIN PRODUTOS P ON P.CODPRODUTO = pf.CODPRODUTO ' +
    ' WHERE pf.CODFORNECEDOR = ' + codFornec;
  cdsProdutoFornec.Open;
  edCodProdutoFornec.Text := codProdFornec;
  edCodFornec.Text := codFornec;
  edFornec.Text := nomeFornec;
  edProdutoFornec.Text := prodDescricaoFornec;
  edCodProduto.Text := codProduto;
  edProduto.Text := prodDescricao;
end;

procedure TfProdutoFornec.edCodProdutoExit(Sender: TObject);
begin
  if (sqlBusca.Active) then
      sqlBusca.Close;
  sqlBusca.SQL.Clear;
  sqlBusca.SQL.Add('SELECT CODPRODUTO, PRODUTO FROM PRODUTOS WHERE CODPRO = ' +
    QuotedStr(edCodProduto.Text));
  sqlBusca.Open;
  if (sqlBusca.IsEmpty) then
  begin
    MessageDlg('Produto não encontrado.', mtWarning, [mbOK], 0);
    exit;
  end;
  codProduto := IntToStr(sqlBusca.Fields[0].asInteger);
  edProduto.Text := sqlBusca.Fields[1].AsString;
end;

procedure TfProdutoFornec.BitBtn1Click(Sender: TObject);
begin
  fProdutoProc.showmodal;
  edCodProduto.Text := fProdutoProc.codProdProc;
  edProduto.Text := fProdutoProc.produtoDescProc;
  codProduto := fProdutoProc.codProdutoProc;
end;

procedure TfProdutoFornec.btnInsereClick(Sender: TObject);
var strInsere: String;
TD: TTransactionDesc;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  strInsere := 'INSERT INTO PRODUTO_FORNECEDOR (' +
    'CODPRODUTO, CODFORNECEDOR, CODPRODFORNEC) VALUES ( ' +
    codProduto +
    ', ' + edCodFornec.Text +
    ', ' + edCodProdutoFornec.Text +  ')';
  fImporta_XML.sqlConn.StartTransaction(TD);
  try
    fImporta_XML.sqlConn.ExecuteDirect(strInsere);
    fImporta_XML.sqlConn.Commit(TD);
    MessageDlg('Inserido com sucesso.', mtInformation, [mbOK], 0);
  except
    on E : Exception do
    begin
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      fImporta_XML.sqlConn.Rollback(TD); //on failure, undo the changes}
    end;
  end;
  cdsProdutoFornec.Close;
  cdsProdutoFornec.Open;
end;

procedure TfProdutoFornec.JvDBUltimGrid1CellClick(Column: TColumn);
begin
  edCodProduto.Text := cdsProdutoFornecCODPRO.AsString;
  codProduto := IntToStr(cdsProdutoFornecCP.asInteger);
  edProduto.Text := cdsProdutoFornecPRODUTO.AsString;
  edCodProdutoFornec.Text := cdsProdutoFornecCODPRODFORNEC.AsString;
  edProdutoFornec.Text := cdsProdutoFornecPRODUTO.AsString;
end;

procedure TfProdutoFornec.BitBtn2Click(Sender: TObject);
var strExclui: String;
TD: TTransactionDesc;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  strExclui := 'DELETE FROM PRODUTO_FORNECEDOR ' +
    ' WHERE CODFORNECEDOR = ' + edCodFornec.Text +
    '   AND CODPRODFORNEC = ' + edCodProdutoFornec.Text;
  fImporta_XML.sqlConn.StartTransaction(TD);
  try
    fImporta_XML.sqlConn.ExecuteDirect(strExclui);
    fImporta_XML.sqlConn.Commit(TD);
    MessageDlg('Excluido com sucesso.', mtInformation, [mbOK], 0);
  except
    on E : Exception do
    begin
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      fImporta_XML.sqlConn.Rollback(TD); //on failure, undo the changes}
    end;
  end;
  cdsProdutoFornec.Close;
  cdsProdutoFornec.Open;
end;

procedure TfProdutoFornec.BitBtn3Click(Sender: TObject);
begin
  if (sqlBusca.Active) then
      sqlBusca.Close;
  sqlBusca.SQL.Clear;
  sqlBusca.SQL.Add('SELECT CODPRODUTO, PRODUTO FROM PRODUTOS WHERE COD_BARRA = ' +
    QuotedStr(edCodProduto.Text));
  sqlBusca.Open;
  if (sqlBusca.IsEmpty) then
  begin
    MessageDlg('Produto não encontrado.', mtWarning, [mbOK], 0);
    exit;
  end;
  codProduto := IntToStr(sqlBusca.Fields[0].asInteger);
  edCodProduto.Text := codProduto;
  edProduto.Text := sqlBusca.Fields[1].AsString;
end;

end.
