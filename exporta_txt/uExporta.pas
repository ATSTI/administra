unit uExporta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.ExtCtrls, Vcl.Buttons, System.DateUtils;

type
  TfExporta = class(TForm)
    edtVeicCapK: TEdit;
    edtVeicCapM: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    cbMarca: TComboBox;
    Label7: TLabel;
    btnExportarProdutos: TBitBtn;
    btnFechar: TBitBtn;
    chkItensNovos: TCheckBox;
    lblProdutos: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnFecharClick(Sender: TObject);
    procedure btnExportarProdutosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function LimparString(ATExto, ACaracteres: string): string;
    procedure ExpTXT(DataSet: TDataSet; Arq: string);
  public
    { Public declarations }
  end;

var
  fExporta: TfExporta;

implementation

{$R *.dfm}

uses uDMCTe;

procedure TfExporta.btnExportarProdutosClick(Sender: TObject);
  var
  i: integer;
  sl: TStringList;
  st: string;
begin
  // testar se e so itens novos
  // criar rotina pra pegar so os novos
  ExpTXT(dm.cdsProd, 'c:\home\prod.txt');
end;

procedure TfExporta.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfExporta.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfExporta.FormShow(Sender: TObject);
begin
  if (not dm.cdsProd.Active) then
    dm.cdsProd.Open;
  lblProdutos.Caption := 'Total de Produtos : ' +
    IntToStr(dm.cdsProd.RecNo) + ' produtos.';
  if (not dm.cdsEmpresa.Active) then
    dm.cdsEmpresa.Open;
end;

procedure TfExporta.ExpTXT(DataSet: TDataSet; Arq: string);
var
  i: integer;
  sl: TStringList;
  st: string;
  cabecalho: String;
begin
  DataSet.First;
  sl := TStringList.Create;

  // cabecalho
  cabecalho := LimparString(dm.cdsEmpresa.FieldByName('CNPJ').AsString, '-') +
    FormatDateTime('yyyymmdd', today);
  sl.Add(cabecalho);

  try
    st := '';
    for i := 0 to DataSet.Fields.Count - 1 do
      st := st + DataSet.Fields[i].DisplayLabel + ';';
    sl.Add(st);
    DataSet.First;
    while not DataSet.Eof do
    begin
      st := '';
      for i := 0 to DataSet.Fields.Count - 1 do
        st := st + DataSet.Fields[i].DisplayText + ';';
      sl.Add(st);
      DataSet.Next;
    end;
    sl.SaveToFile(Arq);
  finally
     sl.free;
  end;

end;

function TfExporta.LimparString(ATExto, ACaracteres: string): string;
var
  strAux            : string;
  I                 : integer;
  Const caracteres = './-,';
begin
  strAux := '';
  for I := 1 to Length(ATexto) do
    if Pos(Copy(ATexto, I, 1), caracteres) <= 0 then
      strAux := strAux + Copy(ATexto, I, 1);
  Result := strAux;


end;

end.
